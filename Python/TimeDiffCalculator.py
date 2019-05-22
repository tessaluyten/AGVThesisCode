##############
# This script checks new data in trace file and puts data into the database
# Created by Tessa Luyten
##############


import pyodbc
import json
import time
import _thread
import re
from enum import Enum


class Jobtype(Enum):
    WAIT_FTS = 1
    ON_FTS = 2
    ON_RBG1 = 3
    ON_RBG2 = 4
    ON_RBG3 = 5
    ON_FT7 = 6


def database_connection(data):
    while True:
        try:
            conn = pyodbc.connect('Driver={SQL Server};'
                                  'Server=%s;'
                                  'Database=%s;'
                                  'Trusted_Connection=no;'
                                  'UID=%s;'
                                  'PWD=%s;' % (data['connection']['db_server'],
                                               data['connection']['db_name'],
                                               data['connection']['db_user'],
                                               data['connection']['db_pass']))
            cursor = conn.cursor()
            return [conn, cursor]
        except Exception as e:
            print(e)


def check_end_exists(basecase, record_list):
    barcode = basecase[5].lstrip("0")[:4]
    filtered = [case for case in record_list if case[2] == basecase[2] and case[4] == basecase[4]
            and barcode in case[5] and case[0] > basecase[0]]
    if len(filtered) == 0:
        return None
    return filtered[0]


def calculate_timediff(start, end):
    return (end[0] - start[0]).total_seconds()


def insertrow(start, end, data, jobtype, cursor, conn):
    timediff = calculate_timediff(start, end)

    insert_query = "INSERT INTO {0} (StartTime, TimeDiff, currentSource, currentDestination, " \
                   "Barcode, JobType, OriginalSource, OriginalDestination) VALUES (?,?,?,?,?,?,?,?)"
    table = data['connection']['timediff_table_name']
    insert_query = insert_query.format(table)
    barcode = start[5].lstrip("0")[:4]
    query_data = (start[0].strftime('%Y-%m-%d %H:%M:%S.%f')[:-3], timediff, start[3], end[3], barcode, jobtype, start[2], end[4])
    cursor.execute(insert_query, query_data)
    conn.commit()


def getSelectQuery(data, conditionstring):
    select_query = "SELECT Time, Type, Source, Location, Destination, Barcode FROM {0} " \
                   "WHERE {1} AND Type = ? AND TraceType = ? ORDER BY Time ASC"
    table = data['connection']['table_name']
    select_query = select_query.format(table, conditionstring)
    return select_query


def getJobType(index, configextension):
    if "FTS" in configextension:
        if index == 0:
            return Jobtype.WAIT_FTS.name
        else:
            return Jobtype.ON_FTS.name
    elif "FT7" in configextension:
        return Jobtype.ON_FT7.name
    elif "RBG" in configextension:
        return Jobtype((int(configextension[-1:]) + 2)).name
    else:
        return None


def getIntermediates(basecase, endcase, intermediate_list):
    barcode = basecase[5].lstrip("0")[:4]
    return [case for case in intermediate_list if case[2] == basecase[2] and case[4] == basecase[4]
                and barcode in case[5] and endcase[0] > case[0] > basecase[0]]


def checkValidTableName(table_name):
    checkregex = r'[A-Za-z_]+'
    matches = re.findall(checkregex, table_name)
    if len(matches) != 1:
        raise ValueError("Invalid table name in settings, please change")


def time_diff(configextension):
    while True:
        try:
            with open('settingsFiveThreads.json') as json_data_file:
                data = json.load(json_data_file)
                json_data_file.close()
                checkValidTableName(data['connection']['timediff_table_name'])
                break
        except Exception as e:
            print(e)
            time.sleep(180)

    connvals = database_connection(data)
    conn = connvals[0]
    cursor = connvals[1]

    while True:
        try:
            select_query_base = getSelectQuery(data, 'Source = Location')
            query_data = ("SENT", configextension)
            cursor.execute(select_query_base, query_data)
            base_list = cursor.fetchall()

            select_query_end = getSelectQuery(data, 'Location = Destination')
            query_data = ("RECV", configextension)
            cursor.execute(select_query_end, query_data)
            end_list = cursor.fetchall()

            select_query_intermediate = getSelectQuery(data, 'Source != Location AND Location != Destination'
                                                             ' AND Source != Destination')
            query_data = ("RECV", configextension)
            cursor.execute(select_query_intermediate, query_data)
            intermediate_list = cursor.fetchall()

        except Exception as e:
            print(e)
            connvals = database_connection(data)
            conn = connvals[0]
            cursor = connvals[1]

        try:
            for base in base_list:
                timediff_calculated_query = "SELECT 1 FROM {0} WHERE StartTime = ? and Barcode = ?"
                table = data['connection']['timediff_table_name']
                timediff_calculated_query = timediff_calculated_query.format(table)
                query_data = (base[0].strftime('%Y-%m-%d %H:%M:%S.%f')[:-3], base[5].lstrip("0")[:4])
                cursor.execute(timediff_calculated_query, query_data)
                timediff_calculated_list = cursor.fetchall()

                if len(timediff_calculated_list) == 0:
                    end = check_end_exists(base, end_list)
                    print(end)
                    if end is None:
                        continue

                    intermediates = getIntermediates(base, end, intermediate_list)

                    finalList = [base] + intermediates + [end]
                    i = 0
                    while i < len(finalList)-1:
                        jobtype = getJobType(i, configextension)
                        insertrow(finalList[i], finalList[i+1], data, jobtype, cursor, conn)
                        i += 1

        except Exception as e:
            print(e)

        time.sleep(60)


try:
    _thread.start_new_thread(time_diff, ("FTS",))
    _thread.start_new_thread(time_diff, ("RBG1",))
    _thread.start_new_thread(time_diff, ("RBG2",))
    _thread.start_new_thread(time_diff, ("RBG3",))
    _thread.start_new_thread(time_diff, ("FT7",))

except Exception as e:
    print(e)
    print("Error: unable to start thread")

while True:
    time.sleep(1)
