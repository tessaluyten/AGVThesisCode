##############
# This script checks new data in trace file and puts data into the database
# Created by Tessa Luyten
##############

import re
import datetime
import time
import pyodbc
import json
import _thread


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


def checkValidTableName(table_name):
    checkregex = r'[A-Za-z_]+'
    matches = re.findall(checkregex, table_name)
    if len(matches) != 1:
        raise ValueError("Invalid table name in settings, please change")


def database_parser(configextension):
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

    regex = r'%s' % data['files'+configextension]['regex']
    lastRead = datetime.datetime(1, 1, 1)

    while True:
        try:
            logfile = reversed(open(data['files'+configextension]['file_name'], 'r').readlines())
            updatedTime = False
            lastReadNew = lastRead

            for line in logfile:
                match = re.search(regex, line)
                if match:
                    row = []
                    for groupNum in range(1, len(match.groups())+1):
                        row.append(match.group(groupNum))

                    row[0] = datetime.datetime.strptime(row[0], '%d.%m.%Y %H:%M:%S,%f')

                    if row[0] <= lastRead:
                        break

                    if not updatedTime:
                        updatedTime = True
                        lastReadNew = row[0]

                    formatargs = [row[0].strftime('%Y-%m-%d %H:%M:%S.%f')[:-3], row[1], row[8],
                            row[0].strftime('%Y-%m-%d %H:%M:%S.%f')[:-3]]
                    table_name = data['connection']['table_name']

                    for n in range(1, len(match.groups())):
                        row[n] = row[n].strip()
                        if row[n] == "":
                            row[n] = None
                        formatargs.append(row[n])
                    formatargs.append(configextension)

                    insert_query = data['files'+configextension]['sql_query'].format(table_name)

                    try:
                        print(insert_query)
                        cursor.execute(insert_query, tuple(formatargs))
                        conn.commit()
                    except pyodbc.Error as e:
                        print(e)
                        connvals = database_connection(data)
                        conn = connvals[0]
                        cursor = connvals[1]

            lastRead = lastReadNew
            time.sleep(60)

        except KeyboardInterrupt:
            raise
        except Exception as e:
            print(e)
            time.sleep(5)


try:
    _thread.start_new_thread(database_parser, ("FTS",))
    _thread.start_new_thread(database_parser, ("FT7",))
    _thread.start_new_thread(database_parser, ("RBG1",))
    _thread.start_new_thread(database_parser, ("RBG2",))
    _thread.start_new_thread(database_parser, ("RBG3",))


except Exception as e:
    print(e)
    print("Error: unable to start thread")

while True:
    time.sleep(1)
