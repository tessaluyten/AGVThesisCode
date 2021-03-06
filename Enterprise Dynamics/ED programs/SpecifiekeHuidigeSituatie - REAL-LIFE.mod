{Enterprise Dynamics startup information}

if(StartingED, SoftStartED([]));


{Model information}

AddLayer([Main], 1, 1, 0);


{Load required atoms}

int011;
int035([Product], pDir([Atoms\BASIC MODELING\Product.atm]));
int035([Server], pDir([Atoms\BASIC MODELING\Server.atm]));
int035([Sink], pDir([Atoms\BASIC MODELING\Sink.atm]));
int035([Network Controller], pDir([Atoms\NETWORK\Network Controller.atm]));
int035([Network Node], pDir([Atoms\NETWORK\Network Node.atm]));
int035([Node Manipulator], pDir([Atoms\NETWORK\Node Manipulator.atm]));
int035([ArrivalList], pDir([Atoms\TIME\ArrivalList.atm]));
int035([Advanced Transporter], pDir([Atoms\TRANSPORT\FLOORBOUND\Advanced Transporter.atm]));
int035([Destinator], pDir([Atoms\TRANSPORT\FLOORBOUND\Destinator.atm]));
int035([Dispatcher], pDir([Atoms\TRANSPORT\FLOORBOUND\Dispatcher.atm]));
int012;


{Atom: 1DD1}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, s, [1DD1], 1, false);
SetExprAtt(1, [300]);
SetExprAtt(2, [{.~1|1. Specific channel: always send to channel ~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.0|1. No setup time.}0]);
SetExprAtt(8, [4DS[Label([Pallet],i):=2
]4DS]);
SetExprAtt(9, [Icon(i) := 25]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt(14, 300);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|1. Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 0);
SetExprAtt(30, [mttf]);
SetAtt(31, 7929.4833313381);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int023([1DD1], 0, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:1.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(394);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(28, 8, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: 1DC4}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1DC4], 1, false);
SetExprAtt(1, [1062]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|2. Fixed setup time: every product has a setup time of ~10~.}10]);
SetExprAtt(8, [4DS[Label([Pallet],i):=6]4DS]);
SetExprAtt(9, [Icon(i) := 25]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt(14, 1062);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|1. Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 0);
SetExprAtt(30, [mttf]);
SetAtt(31, 497);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int023([1DC4], 0, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:3.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(395);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(25, 8, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: 1DC3}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1DC3], 1, false);
SetExprAtt(1, [300]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|2. Fixed setup time: every product has a setup time of ~10~.}10]);
SetExprAtt(8, [4DS[Label([Pallet],i):=2]4DS]);
SetExprAtt(9, [Icon(i) := 25]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt(14, 300);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openic(~1,c)|6. Channel ~1~.}openic(1,c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 0);
SetExprAtt(30, [mttf]);
SetAtt(31, 1863.5);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int023([1DC3], 0, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:4.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(396);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(22, 8, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: 1DC2}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1DC2], 1, false);
SetExprAtt(1, [300]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|2. Fixed setup time: every product has a setup time of ~10~.}10]);
SetExprAtt(8, [4DS[Label([Pallet],i):=2]4DS]);
SetExprAtt(9, [4DS[Do(
Icon(i) := 25,
OpenInput(AtomByName([1DC2],Model))
)]4DS]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt(14, 300);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 0);
SetExprAtt(30, [mttf]);
SetAtt(31, 194);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int023([1DC2], 0, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:5.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(397);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(19, 8, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: 1DC1}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1DC1], 1, false);
SetExprAtt(1, [300]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|2. Fixed setup time: every product has a setup time of ~10~.}10]);
SetExprAtt(8, [4DS[Label([Pallet],i):=2]4DS]);
SetExprAtt(9, [Icon(i) := 25]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt(14, 300);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 0);
SetExprAtt(30, [mttf]);
SetAtt(31, 805.5);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int023([1DC1], 0, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:6.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(398);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(16, 8, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: 1DB2}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1DB2], 1, false);
SetExprAtt(1, [1100]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|2. Fixed setup time: every product has a setup time of ~10~.}10]);
SetExprAtt(8, [4DS[Label([Pallet],i):=5]4DS]);
SetExprAtt(9, [Icon(i) := 25]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt(14, 1100);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 0);
SetExprAtt(30, [mttf]);
SetAtt(31, 216);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int023([1DB2], 0, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:7.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(399);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(13, 8, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: 1DI1}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1DI1], 1, false);
SetExprAtt(1, [440]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|2. Fixed setup time: every product has a setup time of ~10~.}10]);
SetExprAtt(8, [4DS[Label([Pallet],i):=8]4DS]);
SetExprAtt(9, [Icon(i) := 25]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt(14, 440);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 0);
SetExprAtt(30, [mttf]);
SetAtt(31, 1195);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int023([1DI1], 0, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:8.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(400);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(-13, 8, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: 1DK1}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1DK1], 1, false);
SetExprAtt(1, [300]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|2. Fixed setup time: every product has a setup time of ~10~.}10]);
SetExprAtt(8, [4DS[Label([Pallet],i):=2]4DS]);
SetExprAtt(9, [0]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt(14, 300);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 0);
SetExprAtt(30, [mttf]);
SetAtt(31, 724);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int023([1DK1], 0, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:12.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(401);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(-17, 15, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: 1DK2}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1DK2], 1, false);
SetExprAtt(1, [300]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|2. Fixed setup time: every product has a setup time of ~10~.}10]);
SetExprAtt(8, [4DS[Label([Pallet],i):=2]4DS]);
SetExprAtt(9, [Icon(i) := 25]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt(14, 300);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 0);
SetExprAtt(30, [mttf]);
SetAtt(31, 3639.66666587591);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int023([1DK2], 0, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:13.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(402);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(-17, 18, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: 1DH1}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1DH1], 1, false);
SetExprAtt(1, [300]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|~0~.}0]);
SetExprAtt(8, [4DS[Label([Pallet],i):=2]4DS]);
SetExprAtt(9, [0]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt(14, 300);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 0);
SetExprAtt(30, [mttf]);
SetAtt(31, 1371.5);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int023([1DH1], 0, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:9.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(403);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(-2, 12, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: 1DF1}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1DF1], 1, false);
SetExprAtt(1, [300]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|2. Fixed setup time: every product has a setup time of ~10~.}10]);
SetExprAtt(8, [4DS[Label([Pallet],i):=2

]4DS]);
SetExprAtt(9, [4DS[Do(
Icon(i) := 25,
OpenInput(AtomByName([1DF1],Model))
)]4DS]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt(14, 300);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 0);
SetExprAtt(30, [mttf]);
SetAtt(31, 2242.25);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int023([1DF1], 0, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:15.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(404);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(29, 22, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: 1DF2}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1DF2], 1, false);
SetExprAtt(1, [300]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|2. Fixed setup time: every product has a setup time of ~10~.}10]);
SetExprAtt(8, [4DS[Label([Pallet],i):=2
]4DS]);
SetExprAtt(9, [Icon(i) := 25]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt(14, 300);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 0);
SetExprAtt(30, [mttf]);
SetAtt(31, 1015);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int023([1DF2], 0, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:16.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(405);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(32, 22, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: 1DG1}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1DG1], 1, false);
SetExprAtt(1, [300
]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|2. Fixed setup time: every product has a setup time of ~10~.}10]);
SetExprAtt(8, [4DS[Label([Pallet],i):=2]4DS]);
SetExprAtt(9, [Icon(i) := 25]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt(14, 300);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 0);
SetExprAtt(30, [mttf]);
SetAtt(31, 1498.25);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int023([1DG1], 0, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:17.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(406);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(36, 22, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: AGV2}

sets;
AtomByName([Advanced Transporter], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Advanced Transporter'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [AGV2], 1, false);
SetAtt(1, 0);
SetAtt(2, 1);
SetAtt(3, 38.5);
SetAtt(4, 30);
SetAtt(5, 0);
SetAtt(6, 1);
SetExprAtt(7, [0.5]);
SetExprAtt(8, [1]);
SetExprAtt(9, [1]);
SetAtt(10, 0);
SetAtt(11, 1);
SetExprAtt(12, [4DS[{.~1|~If(
  Label([Pallet],first(c))=1,
  0,
  If(
    Label([Pallet],first(c))=2,
    1
  )
)~.}If(
  Label([Pallet],first(c))=1,
  0,
  If(
    Label([Pallet],first(c))=2,
    1
  )
)]4DS]);
SetExprAtt(13, [30]);
SetExprAtt(14, [30]);
SetExprAtt(15, [1]);
SetExprAtt(16, [4DS[Trace(Label([Pallet], i))]4DS]);
SetExprAtt(17, [0]);
SetAtt(18, 0);
SetExprAtt(19, [4DS[{.label([~1],i)|2. Atom label --> the offset is found on label ~LabelName~ of the atom to be picked or placed..}label([LabelName],i)]4DS]);
SetExprAtt(20, [{.yabsloc(c,model)-yabsloc(in(2,c),model)|3. Horizontal line --> the transporter travels in a horizontal line. ~Only use this option to define the Y offsets!~.}yabsloc(c,model)-yabsloc(in(2,c),model)]);
SetExprAtt(21, [{.yabsloc(c,model)-yabsloc(in(2,c),model)|3. Horizontal line --> the transporter travels in a horizontal line. ~Only use this option to define the Y offsets!~.}yabsloc(c,model)-yabsloc(in(2,c),model)]);
SetExprAtt(22, [4DS[{.label([~1],i)|2. Atom label (for placing) --> the offset is found on label ~column~ of the atom to be picked or placed..}label([column],i)]4DS]);
SetExprAtt(23, [{.yabsloc(c,model)-yabsloc(in(2,c),model)|3. Horizontal line --> the transporter travels in a horizontal line. ~Only use this option to define the Y offsets!~.}yabsloc(c,model)-yabsloc(in(2,c),model)]);
SetExprAtt(24, [4DS[{.label([~1],i)|2. Atom label (for placing) --> the offset is found on the label ~row~ of the first ranked atom of the destination..}label([row],i)]4DS]);
SetAtt(25, 6);
SetAtt(26, 1);
SetAtt(27, 1);
SetTextAtt(28, [LabelName]);
SetAtt(29, 0);
SetAtt(30, 0);
SetAtt(31, 1);
SetAtt(32, 1);
SetAtt(33, 0);
SetAtt(34, 1);
SetAtt(35, 1);
SetAtt(36, 0);
SetAtt(37, 1700.5);
SetExprAtt(38, [0.5]);
SetAtt(39, 0);
SetAtt(40, 0);
SetExprAtt(41, [0]);
SetAtt(42, 0);
SetAtt(43, 0);
SetAtt(44, 72572832);
SetAtt(45, 72573792);
SetAtt(46, 72574752);
SetAtt(47, 72571872);
SetAtt(48, 1);
SetAtt(49, 0);
SetAtt(50, 30);
SetAtt(51, 0);
SetAtt(52, 0);
SetAtt(53, 0);
SetAtt(54, 0);
SetTextAtt(55, [LabelName]);
SetAtt(56, 1);
SetAtt(57, 1);
SetAtt(58, 0);
SetAtt(59, 0);
SetTextAtt(60, [N1-35]);
SetAtt(61, 1);
SetAtt(62, 0);
SetExprAtt(63, [4DS[{.if(att([angledifference],c)>~1,~3,~2)|2. Use two different corner speeds: if road angle is between min.angle and ~50~°,choose speed of ~1.5~ m/s, if angle is larger then choose ~0.5~ m/s.}if(att([angledifference],c)>50,0.5,1.5)]4DS]);
SetAtt(64, 0);
SetAtt(65, 270);
SetAtt(66, 90);
SetAtt(67, 10);
SetAtt(68, 72575712);
SetAtt(69, 0);
SetExprAtt(70, [750]);
SetExprAtt(71, [{.~1|1. Constant: ~50~ Ah.}50]);
SetExprAtt(72, [{.~1|1. Constant: ~100~ Ah.}100]);
SetExprAtt(73, [10]);
SetExprAtt(74, [20]);
SetAtt(75, 750);
SetAtt(76, 100);
SetAtt(77, 0);
SetAtt(78, 0);
SetExprAtt(79, [0]);
SetAtt(80, 0);
SetAtt(81, 799631040);
SetAtt(82, 2);
SetAtt(83, 72576672);
SetAtt(84, 72577632);
SetAtt(85, 72578592);
SetAtt(86, 0);
SetAtt(87, 0);
SetExprAtt(88, [{.~1|1. Constant: ~100~ Ah.}100]);
SetExprAtt(89, [{.~1|1. Constant: ~10~ Ah.}10]);
SetExprAtt(90, [{.~1|1. Constant: ~100~ Ah.}100]);
SetAtt(91, 0);
SetAtt(92, 0.5);
SetAtt(93, 0);
SetAtt(94, 5000);
SetAtt(95, 0);
SetAtt(96, 0);
SetExprAtt(97, [0]);
SetAtt(98, 0);
SetAtt(99, 0);
SetAtt(100, 1);
SetAtt(101, 0);
int023([AGV2], 767720, 66675);
Set(Icon(a), 
	RegisterIcon([\\stud-home.icts.kuleuven.be\r0625319\Desktop\AGV_ED.jpg], [AGV_ED.jpg], 1, 0, 0, 255, 255, false, 0));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Transporter2.ico]));
Set(DdbRec, [>t-transporter:1.>n1:3.>n2:1.>n3:33.>d1:1000000000000.>d2:1000000000000.>d4:1000000000000.>previousedstnode:3.>t-dest:1.>t-network:1.>t-nodeconnections-n1:1.>t-node1:1.>t-turntime:3.>d3:85.>t-start:1.]);
SetChannels(3, 4);
SetChannelRanges(3, 3, 4, 4);
int001(408);
int013(1, 0, true, false, 0, 0, [Product Origin], [Product Destination]);
int013(2, 0, true, false, 1, 1, [Current goal (Origin or Destination)], [Next network node on path]);
int013(3, 0, true, false, 1, 1, [Do not connect], [Previous network node on path]);
int013(4, 0, true, false, 0, 0, [], [Link to network]);
SetLoc(38.5, 30, 0);
SetSize(3, 2, 1);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: Dispatcher}

sets;
AtomByName([Dispatcher], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Dispatcher'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Dispatcher], 1, false);
SetExprAtt(1, [4DS[{.~1|~if(OR(label([Pallet],in(3,cs))=1,label([Pallet],in(3,cs))=2,label([Pallet],in(3,cs))=3,label([Pallet],in(3,cs))=4,label([Pallet],in(3,cs))=5),1,(if(label([Pallet],in(3,cs))=6,2,(if(label([Pallet],in(3,cs))=7,3,(if(label([Pallet],in(3,cs))=8,4)))))))~.}if(OR(label([Pallet],in(3,cs))=1,label([Pallet],in(3,cs))=2,label([Pallet],in(3,cs))=3,label([Pallet],in(3,cs))=4,label([Pallet],in(3,cs))=5),1,(if(label([Pallet],in(3,cs))=6,2,(if(label([Pallet],in(3,cs))=7,3,(if(label([Pallet],in(3,cs))=8,4)))))))]4DS]);
SetAtt(2, 0);
SetExprAtt(3, [4DS[{.[no sort required]|1. FIFO --> first in first out..}[no sort required]]4DS]);
SetAtt(4, 0);
SetExprAtt(5, [in(message,c)]);
SetExprAtt(6, [first(in(message,c))]);
SetAtt(7, 4);
SetAtt(8, 0);
SetAtt(9, 0);
SetAtt(10, 0);
SetAtt(11, 0);
SetAtt(12, 1);
SetAtt(13, 0);
SetAtt(14, 1);
SetAtt(15, 0);
SetAtt(16, 0);
SetAtt(17, 0);
SetAtt(18, 0);
int023([Dispatcher], 16711808, 96);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Dispatcher.ico]));
Set(DdbRec, [>t-dispatcher:1.]);
SetChannels(19, 5);
SetChannelRanges(1, 255, 1, 255);
int001(409);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
int013(3, 0, true, true, 0, 0, [], []);
int013(4, 0, true, true, 0, 0, [], []);
int013(5, 0, true, true, 0, 0, [], []);
int013(6, 0, true, true, 0, 0, [], []);
int013(7, 0, true, true, 0, 0, [], []);
int013(8, 0, true, true, 0, 0, [], []);
int013(9, 0, true, true, 0, 0, [], []);
int013(10, 0, true, true, 0, 0, [], []);
int013(11, 0, true, true, 0, 0, [], []);
int013(12, 0, true, true, 0, 0, [], []);
int013(13, 0, true, true, 0, 0, [], []);
int013(14, 0, true, true, 0, 0, [], []);
int013(15, 0, true, true, 0, 0, [], []);
int013(16, 0, true, true, 0, 0, [], []);
int013(17, 0, true, true, 0, 0, [], []);
int013(18, 0, true, true, 0, 0, [], []);
int013(19, 0, true, true, 0, 0, [], []);
SetLoc(-5, 0, 0);
SetSize(4, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
int018;


{Atom: Destinator}

sets;
AtomByName([Destinator], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Destinator'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Destinator], 1, false);
SetExprAtt(1, [1]);
SetAtt(2, 10);
SetAtt(3, 0);
SetAtt(4, 0);
SetExprAtt(5, [in(ic(c),c)]);
SetAtt(6, 1);
int020(2, true, true, false);
int023([Destinator], 16711808, 96);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Destinator.ico]));
Set(DdbRec, [>t-destinator:1.]);
SetChannels(5, 19);
SetChannelRanges(1, 255, 1, 255);
int001(410);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
int013(3, 0, true, true, 0, 0, [], []);
int013(4, 0, true, true, 0, 0, [], []);
int013(5, 0, true, true, 0, 0, [], []);
int013(6, 0, true, true, 0, 0, [], []);
int013(7, 0, true, true, 0, 0, [], []);
int013(8, 0, true, true, 0, 0, [], []);
int013(9, 0, true, true, 0, 0, [], []);
int013(10, 0, true, true, 0, 0, [], []);
int013(11, 0, true, true, 0, 0, [], []);
int013(12, 0, true, true, 0, 0, [], []);
int013(13, 0, true, true, 0, 0, [], []);
int013(14, 0, true, true, 0, 0, [], []);
int013(15, 0, true, true, 0, 0, [], []);
int013(16, 0, true, true, 0, 0, [], []);
int013(17, 0, true, true, 0, 0, [], []);
int013(18, 0, true, true, 0, 0, [], []);
int013(19, 0, true, true, 0, 0, [], []);
SetLoc(-9, 0, 0);
SetSize(4, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
int018;


{Atom: N1-1}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-1], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-1], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-netreference:72571872.>t-node1:1.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(411);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(28, 6, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-2}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-2], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 2);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-2], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-netreference:72571872.>t-node1:2.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(412);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(47, 6, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(2, 4);
int015(0, 0, [``
1
2
]);
int015(1, 0, [1
1
1
]);
int015(2, 0, [2
0
0
]);
int015(3, 0, [3
0
0
]);
int015(4, 0, [4
0
0
]);
SetStatus(0);
int018;


{Atom: N1-3}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-3], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 3);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-3], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-netreference:72571872.>t-node1:3.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(413);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(25, 6, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-4}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-4], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 4);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-4], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-netreference:72571872.>t-node1:4.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(414);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(22, 6, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-5}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-5], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 5);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-5], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-netreference:72571872.>t-node1:5.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(415);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(19, 6, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-6}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-6], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 6);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-6], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-netreference:72571872.>t-node1:6.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(416);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(16, 6, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-7}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-7], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 7);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-7], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-netreference:72571872.>t-node1:7.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(417);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(13, 6, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-8}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-8], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 8);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-8], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-netreference:72571872.>t-node1:8.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(418);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(-13, 6, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-9}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-9], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 9);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-9], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-netreference:72571872.>t-node1:9.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(419);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(3, 12, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-10}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-10], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 10);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-10], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-netreference:72571872.>t-node1:10.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(420);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(-19, 6, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-11}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-11], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 11);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-11], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-netreference:72571872.>t-node1:11.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(421);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(-19, 9, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-12}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-12], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 12);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-12], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-netreference:72571872.>t-node1:12.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(422);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(-19, 15, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-13}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-13], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 13);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-13], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-netreference:72571872.>t-node1:13.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(423);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(-19, 18, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-14}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-14], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 14);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-14], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-netreference:72571872.>t-node1:14.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(424);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(-19, 30, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-15}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-15], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 15);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-15], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-netreference:72571872.>t-node1:15.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(425);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(29, 27, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-16}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-16], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 16);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-16], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-netreference:72571872.>t-node1:16.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(426);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(32, 27, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-17}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-17], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 17);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-17], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-netreference:72571872.>t-node1:17.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(427);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(36, 27, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-18}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-18], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 18);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-18], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-netreference:72571872.>t-node1:18.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(428);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(3, 6, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(2, 4);
int015(0, 0, [``
1
2
]);
int015(1, 0, [1
1
1
]);
int015(2, 0, [2
0
0
]);
int015(3, 0, [3
0
0
]);
int015(4, 0, [4
0
0
]);
SetStatus(0);
int018;


{Atom: N1-19}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-19], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 19);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-19], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-netreference:72571872.>t-node1:19.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(429);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(3, 30, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: Network Controller}

sets;
AtomByName([Network Controller], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Controller'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Network Controller], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 72572832);
SetAtt(4, 72573792);
SetAtt(5, 72574752);
SetAtt(6, 1);
SetAtt(7, 72575712);
SetAtt(8, 72576672);
SetAtt(9, 72577632);
SetAtt(10, 72578592);
int023([Network Controller], 0, 530528);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkController.ico]));
int001(430);
SetLoc(-13, 0, 0);
SetSize(4, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(73, 73);
int015(0, 0, [``
`N1-1`
`N1-2`
`N1-3`
`N1-4`
`N1-5`
`N1-6`
`N1-7`
`N1-8`
`N1-9`
`N1-10`
`N1-11`
`N1-12`
`N1-13`
`N1-14`
`N1-15`
`N1-16`
`N1-17`
`N1-18`
`N1-19`
`N1-20`
`N1-21`
`N1-22`
`N1-23`
`N1-24`
`N1-25`
`N1-26`
`N1-27`
`N1-28`
`N1-29`
`N1-30`
`N1-31`
`N1-32`
`N1-33`
`N1-34`
`N1-35`
`N1-36`
`N1-37`
`N1-38`
`N1-39`
`N1-40`
`N1-41`
`N1-42`
`N1-43`
`N1-44`
`N1-45`
`N1-46`
`N1-47`
`N1-48`
`N1-49`
`N1-50`
`N1-51`
`N1-52`
`N1-53`
`N1-54`
`N1-55`
`N1-56`
`N1-57`
`N1-58`
`N1-59`
`N1-60`
`N1-61`
`N1-62`
`N1-63`
`N1-64`
`N1-65`
`N1-66`
`N1-67`
`N1-68`
`N1-69`
`N1-70`
`N1-71`
`N1-72`
`N1-73`
]);
int015(1, 0, [`N1-1`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(2, 0, [`N1-2`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(3, 0, [`N1-3`
1
]);
int015(4, 0, [`N1-4`
``
``
1
]);
int015(5, 0, [`N1-5`
``
``
``
1
]);
int015(6, 0, [`N1-6`
``
``
``
``
1
]);
int015(7, 0, [`N1-7`
``
``
``
``
``
1
]);
int015(8, 0, [`N1-8`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(9, 0, [`N1-9`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(10, 0, [`N1-10`
``
``
``
``
``
``
``
1
]);
int015(11, 0, [`N1-11`
``
``
``
``
``
``
``
``
``
1
]);
int015(12, 0, [`N1-12`
``
``
``
``
``
``
``
``
``
``
1
]);
int015(13, 0, [`N1-13`
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(14, 0, [`N1-14`
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(15, 0, [`N1-15`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(16, 0, [`N1-16`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(17, 0, [`N1-17`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(18, 0, [`N1-18`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(19, 0, [`N1-19`
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(20, 0, [`N1-20`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(21, 0, [`N1-21`
``
1
]);
int015(22, 0, [`N1-22`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(23, 0, [`N1-23`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(24, 0, [`N1-24`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(25, 0, [`N1-25`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(26, 0, [`N1-26`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
``
``
``
``
``
``
``
``
``
1
]);
int015(27, 0, [`N1-27`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(28, 0, [`N1-28`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
``
1
]);
int015(29, 0, [`N1-29`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(30, 0, [`N1-30`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(31, 0, [`N1-31`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(32, 0, [`N1-32`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(33, 0, [`N1-33`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(34, 0, [`N1-34`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(35, 0, [`N1-35`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(36, 0, [`N1-36`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(37, 0, [`N1-37`
``
1
]);
int015(38, 0, [`N1-38`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(39, 0, [`N1-39`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(40, 0, [`N1-40`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(41, 0, [`N1-41`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(42, 0, [`N1-42`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(43, 0, [`N1-43`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(44, 0, [`N1-44`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(45, 0, [`N1-45`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(46, 0, [`N1-46`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(47, 0, [`N1-47`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(48, 0, [`N1-48`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(49, 0, [`N1-49`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(50, 0, [`N1-50`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(51, 0, [`N1-51`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(52, 0, [`N1-52`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(53, 0, [`N1-53`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(54, 0, [`N1-54`
``
``
``
``
``
``
1
]);
int015(55, 0, [`N1-55`
]);
int015(56, 0, [`N1-56`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(57, 0, [`N1-57`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(58, 0, [`N1-58`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(59, 0, [`N1-59`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(60, 0, [`N1-60`
``
``
``
``
``
``
``
``
1
]);
int015(61, 0, [`N1-61`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(62, 0, [`N1-62`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(63, 0, [`N1-63`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(64, 0, [`N1-64`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(65, 0, [`N1-65`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(66, 0, [`N1-66`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(67, 0, [`N1-67`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(68, 0, [`N1-68`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(69, 0, [`N1-69`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(70, 0, [`N1-70`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(71, 0, [`N1-71`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
int015(72, 0, [`N1-72`
]);
int015(73, 0, [`N1-73`
]);
SetStatus(0);
int018;


{Atom: Distance Table}

sets;
BaseClass;
CreateAtom(a, s, [Distance Table], 1, false);
int023([Distance Table], 0, 2164);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
int001(431);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(73, 73);
int015(0, 0, [``
`N1-1`
`N1-2`
`N1-3`
`N1-4`
`N1-5`
`N1-6`
`N1-7`
`N1-8`
`N1-9`
`N1-10`
`N1-11`
`N1-12`
`N1-13`
`N1-14`
`N1-15`
`N1-16`
`N1-17`
`N1-18`
`N1-19`
`N1-20`
`N1-21`
`N1-22`
`N1-23`
`N1-24`
`N1-25`
`N1-26`
`N1-27`
`N1-28`
`N1-29`
`N1-30`
`N1-31`
`N1-32`
`N1-33`
`N1-34`
`N1-35`
`N1-36`
`N1-37`
`N1-38`
`N1-39`
`N1-40`
`N1-41`
`N1-42`
`N1-43`
`N1-44`
`N1-45`
`N1-46`
`N1-47`
`N1-48`
`N1-49`
`N1-50`
`N1-51`
`N1-52`
`N1-53`
`N1-54`
`N1-55`
`N1-56`
`N1-57`
`N1-58`
`N1-59`
`N1-60`
`N1-61`
`N1-62`
`N1-63`
`N1-64`
`N1-65`
`N1-66`
`N1-67`
`N1-68`
`N1-69`
`N1-70`
`N1-71`
`N1-72`
`N1-73`
]);
int015(1, 0, [`N1-1`
0
19
119
116
113
110
107
139
99
133
130
124
121
109
58
55
51
105
87
29
152
108
114
84
80
83
168
163
146
106
43
136
34
47
52
148
15
142
135
127
120
101
91
70
64
61
111
124
76
72
64
58
102
104
169
23
40
96
84
90
102
95
86
165
159
154
10
5
44
148
143
109
87
]);
int015(2, 0, [`N1-2`
103
0
100
97
94
91
88
120
80
114
111
105
102
90
39
36
32
86
68
10
133
89
95
65
61
64
149
144
127
87
24
117
15
28
33
129
118
123
116
108
101
82
72
51
45
42
92
105
57
53
45
39
83
85
150
4
21
77
65
71
83
76
67
146
140
135
113
108
25
129
124
90
68
]);
int015(3, 0, [`N1-3`
3
22
0
119
116
113
110
142
102
136
133
127
124
112
61
58
54
108
90
32
155
111
117
87
83
86
171
166
149
109
46
139
37
50
55
151
18
145
138
130
123
104
94
73
67
64
114
127
79
75
67
61
105
107
172
26
43
99
87
93
105
98
89
168
162
157
13
8
47
151
146
112
90
]);
int015(4, 0, [`N1-4`
6
25
3
0
119
116
113
145
105
139
136
130
127
115
64
61
57
111
93
35
158
114
120
90
86
89
174
169
152
112
49
142
40
53
58
154
21
148
141
133
126
107
97
76
70
67
117
130
82
78
70
64
108
110
175
29
46
102
90
96
108
101
92
171
165
160
16
11
50
154
149
115
93
]);
int015(5, 0, [`N1-5`
9
28
6
3
0
119
116
148
108
142
139
133
130
118
67
64
60
114
96
38
161
117
123
93
89
92
177
172
155
115
52
145
43
56
61
157
24
151
144
136
129
110
100
79
73
70
120
133
85
81
73
67
111
113
178
32
49
105
93
99
111
104
95
174
168
163
19
14
53
157
152
118
96
]);
int015(6, 0, [`N1-6`
12
31
9
6
3
0
119
151
111
145
142
136
133
121
70
67
63
117
99
41
164
120
126
96
92
95
180
175
158
118
55
148
46
59
64
160
27
154
147
139
132
113
103
82
76
73
123
136
88
84
76
70
114
116
181
35
52
108
96
102
114
107
98
177
171
166
22
17
56
160
155
121
99
]);
int015(7, 0, [`N1-7`
15
34
12
9
6
3
0
154
114
148
145
139
136
124
73
70
66
120
102
44
167
123
129
99
95
98
183
178
161
121
58
151
49
62
67
163
30
157
150
142
135
116
106
85
79
76
126
139
91
87
79
73
117
119
184
38
55
111
99
105
117
110
101
180
174
169
25
20
59
163
158
124
102
]);
int015(8, 0, [`N1-8`
169
66
166
163
160
157
154
0
146
180
177
171
168
156
105
102
98
16
134
76
63
19
25
131
127
130
215
210
193
153
90
183
81
94
99
59
184
53
46
38
31
148
138
117
111
108
158
171
123
119
111
105
149
151
216
70
87
143
131
137
149
142
133
212
206
201
179
174
91
9
4
20
134
]);
int015(9, 0, [`N1-9`
159
56
156
153
150
147
144
176
0
170
167
161
158
146
95
92
88
6
124
66
53
9
15
121
117
120
205
200
183
143
80
173
71
84
89
49
174
43
36
28
21
138
128
107
101
98
148
161
113
109
101
95
3
141
206
60
77
133
121
127
139
132
123
202
196
191
169
164
81
185
180
10
124
]);
int015(10, 0, [`N1-10`
175
72
172
169
166
163
160
6
152
0
183
177
174
162
111
108
104
22
140
82
69
25
31
137
133
136
221
216
199
159
96
189
87
100
105
65
190
59
52
44
37
154
144
123
117
114
164
177
129
125
117
111
155
157
222
76
93
149
137
143
155
148
139
218
212
207
185
180
97
15
10
26
140
]);
int015(11, 0, [`N1-11`
178
75
175
172
169
166
163
9
155
3
0
180
177
165
114
111
107
25
143
85
72
28
34
140
136
139
224
219
202
162
99
192
90
103
108
68
193
62
55
47
40
157
147
126
120
117
167
180
132
128
120
114
158
160
225
79
96
152
140
146
158
151
142
221
215
210
188
183
100
18
13
29
143
]);
int015(12, 0, [`N1-12`
184
81
181
178
175
172
169
15
161
9
6
0
183
171
120
117
113
31
149
91
78
34
40
146
142
145
230
225
208
168
105
198
96
109
114
74
199
68
61
53
46
163
153
132
126
123
173
186
138
134
126
120
164
166
231
85
102
158
146
152
164
157
148
227
221
216
194
189
106
24
19
35
149
]);
int015(13, 0, [`N1-13`
187
84
184
181
178
175
172
18
164
12
9
3
0
174
123
120
116
34
152
94
81
37
43
149
145
148
233
228
211
171
108
201
99
112
117
77
202
71
64
56
49
166
156
135
129
126
176
189
141
137
129
123
167
169
234
88
105
161
149
155
167
160
151
230
224
219
197
192
109
27
22
38
152
]);
int015(14, 0, [`N1-14`
199
96
196
193
190
187
184
30
176
24
21
15
12
0
135
132
128
46
164
106
93
49
55
161
157
160
245
240
223
183
120
213
111
124
129
89
214
83
76
68
61
178
168
147
141
138
188
201
153
149
141
135
179
181
246
100
117
173
161
167
179
172
163
242
236
231
209
204
121
39
34
50
164
]);
int015(15, 0, [`N1-15`
64
83
61
58
55
52
49
81
41
75
72
66
63
51
0
119
115
47
29
93
94
50
56
26
22
147
232
227
210
170
107
200
98
111
116
90
79
84
77
69
62
43
33
12
6
3
175
188
140
136
128
122
44
46
233
87
104
38
26
32
166
159
150
229
223
218
74
69
108
90
85
51
151
]);
int015(16, 0, [`N1-16`
67
86
64
61
58
55
52
84
44
78
75
69
66
54
3
0
118
50
32
96
97
53
59
29
25
150
235
230
213
173
110
203
101
114
119
93
82
87
80
72
65
46
36
15
9
6
178
191
143
139
131
125
47
49
236
90
107
41
29
35
169
162
153
232
226
221
77
72
111
93
88
54
154
]);
int015(17, 0, [`N1-17`
71
90
68
65
62
59
56
88
48
82
79
73
70
58
7
4
0
54
36
100
101
57
63
33
29
154
239
234
217
177
114
207
105
118
123
97
86
91
84
76
69
50
40
19
13
10
182
195
147
143
135
129
51
53
240
94
111
45
33
39
173
166
157
236
230
225
81
76
115
97
92
58
158
]);
int015(18, 0, [`N1-18`
153
50
150
147
144
141
138
170
130
164
161
155
152
140
89
86
82
0
118
60
47
3
9
115
111
114
199
194
177
137
74
167
65
78
83
43
168
37
30
22
15
132
122
101
95
92
142
155
107
103
95
89
133
135
200
54
71
127
115
121
133
126
117
196
190
185
163
158
75
179
174
4
118
]);
int015(19, 0, [`N1-19`
221
118
218
215
212
209
206
52
198
46
43
37
34
22
157
154
150
68
0
128
115
71
77
183
179
182
267
262
245
205
142
235
133
146
151
111
236
105
98
90
83
200
190
169
163
160
210
223
175
171
163
157
201
203
268
122
139
195
183
189
201
194
185
264
258
253
231
226
143
61
56
72
186
]);
int015(20, 0, [`N1-20`
93
112
90
87
84
81
78
110
70
104
101
95
92
80
29
26
22
76
58
0
123
79
85
55
51
54
139
134
117
77
14
107
5
18
23
119
108
113
106
98
91
72
62
41
35
32
82
95
47
43
35
29
73
75
140
116
11
67
55
61
73
66
57
136
130
125
103
98
15
119
114
80
58
]);
int015(21, 0, [`N1-21`
106
3
103
100
97
94
91
123
83
117
114
108
105
93
42
39
35
89
71
13
0
92
98
68
64
67
152
147
130
90
27
120
18
31
36
132
121
126
119
111
104
85
75
54
48
45
95
108
60
56
48
42
86
88
153
7
24
80
68
74
86
79
70
149
143
138
116
111
28
132
127
93
71
]);
int015(22, 0, [`N1-22`
150
47
147
144
141
138
135
167
127
161
158
152
149
137
86
83
79
133
115
57
44
0
6
112
108
111
196
191
174
134
71
164
62
75
80
40
165
34
27
19
12
129
119
98
92
89
139
152
104
100
92
86
130
132
197
51
68
124
112
118
130
123
114
193
187
182
160
155
72
176
171
137
115
]);
int015(23, 0, [`N1-23`
144
41
141
138
135
132
129
161
121
155
152
146
143
131
80
77
73
127
109
51
38
130
0
106
102
105
190
185
168
128
65
158
56
69
74
34
159
28
21
13
6
123
113
92
86
83
133
146
98
94
86
80
124
126
191
45
62
118
106
112
124
117
108
187
181
176
154
149
66
170
165
131
109
]);
int015(24, 0, [`N1-24`
174
71
171
168
165
162
159
55
15
49
46
40
37
25
110
107
103
21
3
81
68
24
30
0
132
135
220
215
198
158
95
188
86
99
104
64
189
58
51
43
36
153
143
122
116
113
163
176
128
124
116
110
18
156
221
75
92
148
136
6
154
147
138
217
211
206
184
179
96
64
59
25
139
]);
int015(25, 0, [`N1-25`
42
61
39
36
33
30
27
59
19
53
50
44
41
29
100
97
93
25
7
71
72
28
34
4
0
125
210
205
188
148
85
178
76
89
94
68
57
62
55
47
40
21
11
112
106
103
153
166
118
114
106
100
22
24
211
65
82
16
4
10
144
137
128
207
201
196
52
47
86
68
63
29
129
]);
int015(26, 0, [`N1-26`
45
64
42
39
36
33
30
62
22
56
53
47
44
32
103
100
96
28
10
74
75
31
37
7
3
0
85
80
63
23
88
53
79
92
97
71
60
65
58
50
43
24
14
115
109
106
28
41
121
117
109
103
25
27
86
68
85
19
7
13
19
12
3
82
76
71
55
50
89
71
66
32
4
]);
int015(27, 0, [`N1-27`
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
0
5
22
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
45
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
41
35
30
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
]);
int015(28, 0, [`N1-28`
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
5
0
17
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
40
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
36
30
25
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
]);
int015(29, 0, [`N1-29`
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
22
17
0
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
23
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
19
13
8
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
]);
int015(30, 0, [`N1-30`
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
62
57
40
0
8.98846567431158E307
30
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
5
18
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
63
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
59
53
48
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
]);
int015(31, 0, [`N1-31`
85
104
82
79
76
73
70
102
62
96
93
87
84
72
143
140
136
68
50
114
115
71
77
47
43
40
125
120
103
63
0
93
119
4
9
111
100
105
98
90
83
64
54
155
149
146
68
81
33
29
21
15
65
67
126
108
125
59
47
53
59
52
43
122
116
111
95
90
129
111
106
72
44
]);
int015(32, 0, [`N1-32`
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
32
27
10
8.98846567431158E307
8.98846567431158E307
0
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
33
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
29
23
18
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
]);
int015(33, 0, [`N1-33`
88
107
85
82
79
76
73
105
65
99
96
90
87
75
24
21
17
71
53
117
118
74
80
50
46
49
134
129
112
72
9
102
0
13
18
114
103
108
101
93
86
67
57
36
30
27
77
90
42
38
30
24
68
70
135
111
6
62
50
56
68
61
52
131
125
120
98
93
10
114
109
75
53
]);
int015(34, 0, [`N1-34`
81
100
78
75
72
69
66
98
58
92
89
83
80
68
139
136
132
64
46
110
111
67
73
43
39
36
121
116
99
59
124
89
115
0
5
107
96
101
94
86
79
60
50
151
145
142
64
77
29
25
17
11
61
63
122
104
121
55
43
49
55
48
39
118
112
107
91
86
125
107
102
68
40
]);
int015(35, 0, [`N1-35`
76
95
73
70
67
64
61
93
53
87
84
78
75
63
134
131
127
59
41
105
106
62
68
38
34
31
116
111
94
54
119
84
110
123
0
102
91
96
89
81
74
55
45
146
140
137
59
72
24
20
12
6
56
58
117
99
116
50
38
44
50
43
34
113
107
102
86
81
120
102
97
63
35
]);
int015(36, 0, [`N1-36`
110
7
107
104
101
98
95
127
87
121
118
112
109
97
46
43
39
93
75
17
4
96
102
72
68
71
156
151
134
94
31
124
22
35
40
0
125
130
123
115
108
89
79
58
52
49
99
112
64
60
52
46
90
92
157
11
28
84
72
78
90
83
74
153
147
142
120
115
32
136
131
97
75
]);
int015(37, 0, [`N1-37`
107
4
104
101
98
95
92
124
84
118
115
109
106
94
43
40
36
90
72
14
137
93
99
69
65
68
153
148
131
91
28
121
19
32
37
133
0
127
120
112
105
86
76
55
49
46
96
109
61
57
49
43
87
89
154
8
25
81
69
75
87
80
71
150
144
139
117
112
29
133
128
94
72
]);
int015(38, 0, [`N1-38`
116
13
113
110
107
104
101
133
93
127
124
118
115
103
52
49
45
99
81
23
10
102
108
78
74
77
162
157
140
100
37
130
28
41
46
6
131
0
129
121
114
95
85
64
58
55
105
118
70
66
58
52
96
98
163
17
34
90
78
84
96
89
80
159
153
148
126
121
38
142
137
103
81
]);
int015(39, 0, [`N1-39`
123
20
120
117
114
111
108
140
100
134
131
125
122
110
59
56
52
106
88
30
17
109
115
85
81
84
169
164
147
107
44
137
35
48
53
13
138
7
0
128
121
102
92
71
65
62
112
125
77
73
65
59
103
105
170
24
41
97
85
91
103
96
87
166
160
155
133
128
45
149
144
110
88
]);
int015(40, 0, [`N1-40`
131
28
128
125
122
119
116
148
108
142
139
133
130
118
67
64
60
114
96
38
25
117
123
93
89
92
177
172
155
115
52
145
43
56
61
21
146
15
8
0
129
110
100
79
73
70
120
133
85
81
73
67
111
113
178
32
49
105
93
99
111
104
95
174
168
163
141
136
53
157
152
118
96
]);
int015(41, 0, [`N1-41`
138
35
135
132
129
126
123
155
115
149
146
140
137
125
74
71
67
121
103
45
32
124
130
100
96
99
184
179
162
122
59
152
50
63
68
28
153
22
15
7
0
117
107
86
80
77
127
140
92
88
80
74
118
120
185
39
56
112
100
106
118
111
102
181
175
170
148
143
60
164
159
125
103
]);
int015(42, 0, [`N1-42`
21
40
18
15
12
9
6
160
120
154
151
145
142
130
79
76
72
126
108
50
173
129
135
105
101
104
189
184
167
127
64
157
55
68
73
169
36
163
156
148
141
0
112
91
85
82
132
145
97
93
85
79
123
3
190
44
61
117
105
111
123
116
107
186
180
175
31
26
65
169
164
130
108
]);
int015(43, 0, [`N1-43`
31
50
28
25
22
19
16
170
130
164
161
155
152
140
89
86
82
136
118
60
183
139
145
115
111
114
199
194
177
137
74
167
65
78
83
179
46
173
166
158
151
10
0
101
95
92
142
155
107
103
95
89
133
13
200
54
71
5
115
121
133
126
117
196
190
185
41
36
75
179
174
140
118
]);
int015(44, 0, [`N1-44`
52
71
49
46
43
40
37
69
29
63
60
54
51
39
110
107
103
35
17
81
82
38
44
14
10
135
220
215
198
158
95
188
86
99
104
78
67
72
65
57
50
31
21
0
116
113
163
176
128
124
116
110
32
34
221
75
92
26
14
20
154
147
138
217
211
206
62
57
96
78
73
39
139
]);
int015(45, 0, [`N1-45`
58
77
55
52
49
46
43
75
35
69
66
60
57
45
116
113
109
41
23
87
88
44
50
20
16
141
226
221
204
164
101
194
92
105
110
84
73
78
71
63
56
37
27
6
0
119
169
182
134
130
122
116
38
40
227
81
98
32
20
26
160
153
144
223
217
212
68
63
102
84
79
45
145
]);
int015(46, 0, [`N1-46`
61
80
58
55
52
49
46
78
38
72
69
63
60
48
119
116
112
44
26
90
91
47
53
23
19
144
229
224
207
167
104
197
95
108
113
87
76
81
74
66
59
40
30
9
3
0
172
185
137
133
125
119
41
43
230
84
101
35
23
29
163
156
147
226
220
215
71
66
105
87
82
48
148
]);
int015(47, 0, [`N1-47`
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
57
52
35
8.98846567431158E307
8.98846567431158E307
25
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
0
13
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
58
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
54
48
43
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
]);
int015(48, 0, [`N1-48`
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
44
39
22
8.98846567431158E307
8.98846567431158E307
12
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
0
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
45
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
41
35
30
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
]);
int015(49, 0, [`N1-49`
52
71
49
46
43
40
37
69
29
63
60
54
51
39
110
107
103
35
17
81
82
38
44
14
10
7
92
87
70
30
95
60
86
99
104
78
67
72
65
57
50
31
21
122
116
113
35
48
0
124
116
110
32
34
93
75
92
26
14
20
26
19
10
89
83
78
62
57
96
78
73
39
11
]);
int015(50, 0, [`N1-50`
56
75
53
50
47
44
41
73
33
67
64
58
55
43
114
111
107
39
21
85
86
42
48
18
14
11
96
91
74
34
99
64
90
103
108
82
71
76
69
61
54
35
25
126
120
117
39
52
4
0
120
114
36
38
97
79
96
30
18
24
30
23
14
93
87
82
66
61
100
82
77
43
15
]);
int015(51, 0, [`N1-51`
64
83
61
58
55
52
49
81
41
75
72
66
63
51
122
119
115
47
29
93
94
50
56
26
22
19
104
99
82
42
107
72
98
111
116
90
79
84
77
69
62
43
33
134
128
125
47
60
12
8
0
122
44
46
105
87
104
38
26
32
38
31
22
101
95
90
74
69
108
90
85
51
23
]);
int015(52, 0, [`N1-52`
70
89
67
64
61
58
55
87
47
81
78
72
69
57
128
125
121
53
35
99
100
56
62
32
28
25
110
105
88
48
113
78
104
117
122
96
85
90
83
75
68
49
39
140
134
131
53
66
18
14
6
0
50
52
111
93
110
44
32
38
44
37
28
107
101
96
80
75
114
96
91
57
29
]);
int015(53, 0, [`N1-53`
156
53
153
150
147
144
141
173
133
167
164
158
155
143
92
89
85
3
121
63
50
6
12
118
114
117
202
197
180
140
77
170
68
81
86
46
171
40
33
25
18
135
125
104
98
95
145
158
110
106
98
92
0
138
203
57
74
130
118
124
136
129
120
199
193
188
166
161
78
182
177
7
121
]);
int015(54, 0, [`N1-54`
18
37
15
12
9
6
3
157
117
151
148
142
139
127
76
73
69
123
105
47
170
126
132
102
98
101
186
181
164
124
61
154
52
65
70
166
33
160
153
145
138
119
109
88
82
79
129
142
94
90
82
76
120
0
187
41
58
114
102
108
120
113
104
183
177
172
28
23
62
166
161
127
105
]);
int015(55, 0, [`N1-55`
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
0
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
]);
int015(56, 0, [`N1-56`
99
118
96
93
90
87
84
116
76
110
107
101
98
86
35
32
28
82
64
6
129
85
91
61
57
60
145
140
123
83
20
113
11
24
29
125
114
119
112
104
97
78
68
47
41
38
88
101
53
49
41
35
79
81
146
0
17
73
61
67
79
72
63
142
136
131
109
104
21
125
120
86
64
]);
int015(57, 0, [`N1-57`
82
101
79
76
73
70
67
99
59
93
90
84
81
69
18
15
11
65
47
111
112
68
74
44
40
43
128
123
106
66
3
96
116
7
12
108
97
102
95
87
80
61
51
30
24
21
71
84
36
32
24
18
62
64
129
105
0
56
44
50
62
55
46
125
119
114
92
87
4
108
103
69
47
]);
int015(58, 0, [`N1-58`
26
45
23
20
17
14
11
165
125
159
156
150
147
135
84
81
77
131
113
55
178
134
140
110
106
109
194
189
172
132
69
162
60
73
78
174
41
168
161
153
146
5
117
96
90
87
137
150
102
98
90
84
128
8
195
49
66
0
110
116
128
121
112
191
185
180
36
31
70
174
169
135
113
]);
int015(59, 0, [`N1-59`
38
57
35
32
29
26
23
177
137
171
168
162
159
147
96
93
89
143
125
67
190
146
152
122
118
121
206
201
184
144
81
174
72
85
90
186
53
180
173
165
158
17
7
108
102
99
149
162
114
110
102
96
140
20
207
61
78
12
0
128
140
133
124
203
197
192
48
43
82
186
181
147
125
]);
int015(60, 0, [`N1-60`
168
65
165
162
159
156
153
185
9
179
176
170
167
155
104
101
97
15
133
75
62
18
24
130
126
129
214
209
192
152
89
182
80
93
98
58
183
52
45
37
30
147
137
116
110
107
157
170
122
118
110
104
12
150
215
69
86
142
130
0
148
141
132
211
205
200
178
173
90
194
189
19
133
]);
int015(61, 0, [`N1-61`
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
66
61
44
4
8.98846567431158E307
34
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
9
22
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
67
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
0
8.98846567431158E307
8.98846567431158E307
63
57
52
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
]);
int015(62, 0, [`N1-62`
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
73
68
51
11
8.98846567431158E307
41
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
16
29
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
74
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
7
0
8.98846567431158E307
70
64
59
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
]);
int015(63, 0, [`N1-63`
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
82
77
60
20
8.98846567431158E307
50
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
25
38
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
83
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
16
9
0
79
73
68
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
]);
int015(64, 0, [`N1-64`
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
4
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
0
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
]);
int015(65, 0, [`N1-65`
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
10
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
6
0
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
]);
int015(66, 0, [`N1-66`
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
15
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
11
5
0
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
]);
int015(67, 0, [`N1-67`
112
9
109
106
103
100
97
129
89
123
120
114
111
99
48
45
41
95
77
19
142
98
104
74
70
73
158
153
136
96
33
126
24
37
42
138
5
132
125
117
110
91
81
60
54
51
101
114
66
62
54
48
92
94
159
13
30
86
74
80
92
85
76
155
149
144
0
117
34
138
133
99
77
]);
int015(68, 0, [`N1-68`
117
14
114
111
108
105
102
134
94
128
125
119
116
104
53
50
46
100
82
24
147
103
109
79
75
78
163
158
141
101
38
131
29
42
47
143
10
137
130
122
115
96
86
65
59
56
106
119
71
67
59
53
97
99
164
18
35
91
79
85
97
90
81
160
154
149
5
0
39
143
138
104
82
]);
int015(69, 0, [`N1-69`
78
97
75
72
69
66
63
95
55
89
86
80
77
65
14
11
7
61
43
107
108
64
70
40
36
161
246
241
224
184
121
214
112
125
130
104
93
98
91
83
76
57
47
26
20
17
189
202
154
150
142
136
58
60
247
101
118
52
40
46
180
173
164
243
237
232
88
83
0
104
99
65
165
]);
int015(70, 0, [`N1-70`
160
57
157
154
151
148
145
177
137
171
168
162
159
147
96
93
89
7
125
67
54
10
16
122
118
121
206
201
184
144
81
174
72
85
90
50
175
44
37
29
22
139
129
108
102
99
149
162
114
110
102
96
140
142
207
61
78
134
122
128
140
133
124
203
197
192
170
165
82
0
181
11
125
]);
int015(71, 0, [`N1-71`
165
62
162
159
156
153
150
182
142
176
173
167
164
152
101
98
94
12
130
72
59
15
21
127
123
126
211
206
189
149
86
179
77
90
95
55
180
49
42
34
27
144
134
113
107
104
154
167
119
115
107
101
145
147
212
66
83
139
127
133
145
138
129
208
202
197
175
170
87
5
0
16
130
]);
int015(72, 0, [`N1-72`
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
0
8.98846567431158E307
]);
int015(73, 0, [`N1-73`
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
8.98846567431158E307
0
]);
SetStatus(0);
int018;


{Atom: Node Table}

sets;
BaseClass;
CreateAtom(a, Up(s), [Node Table], 1, false);
int023([Node Table], 0, 2164);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
int001(432);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(73, 73);
int015(0, 0, [``
`N1-1`
`N1-2`
`N1-3`
`N1-4`
`N1-5`
`N1-6`
`N1-7`
`N1-8`
`N1-9`
`N1-10`
`N1-11`
`N1-12`
`N1-13`
`N1-14`
`N1-15`
`N1-16`
`N1-17`
`N1-18`
`N1-19`
`N1-20`
`N1-21`
`N1-22`
`N1-23`
`N1-24`
`N1-25`
`N1-26`
`N1-27`
`N1-28`
`N1-29`
`N1-30`
`N1-31`
`N1-32`
`N1-33`
`N1-34`
`N1-35`
`N1-36`
`N1-37`
`N1-38`
`N1-39`
`N1-40`
`N1-41`
`N1-42`
`N1-43`
`N1-44`
`N1-45`
`N1-46`
`N1-47`
`N1-48`
`N1-49`
`N1-50`
`N1-51`
`N1-52`
`N1-53`
`N1-54`
`N1-55`
`N1-56`
`N1-57`
`N1-58`
`N1-59`
`N1-60`
`N1-61`
`N1-62`
`N1-63`
`N1-64`
`N1-65`
`N1-66`
`N1-67`
`N1-68`
`N1-69`
`N1-70`
`N1-71`
`N1-72`
`N1-73`
]);
int015(1, 0, [`N1-1`
1
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(2, 0, [`N1-2`
3
2
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(3, 0, [`N1-3`
3
37
3
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(4, 0, [`N1-4`
3
37
4
4
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(5, 0, [`N1-5`
3
37
4
5
5
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(6, 0, [`N1-6`
3
37
4
5
6
6
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(7, 0, [`N1-7`
3
37
4
5
6
7
7
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(8, 0, [`N1-8`
3
21
4
5
6
7
54
8
60
11
12
13
14
19
16
17
69
70
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(9, 0, [`N1-9`
3
21
4
5
6
7
54
10
9
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(10, 0, [`N1-10`
3
21
4
5
6
7
54
10
60
10
12
13
14
19
16
17
69
70
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(11, 0, [`N1-11`
3
21
4
5
6
7
54
10
60
11
11
13
14
19
16
17
69
70
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(12, 0, [`N1-12`
3
21
4
5
6
7
54
10
60
11
12
12
14
19
16
17
69
70
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(13, 0, [`N1-13`
3
21
4
5
6
7
54
10
60
11
12
13
13
19
16
17
69
70
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(14, 0, [`N1-14`
3
21
4
5
6
7
54
10
60
11
12
13
14
14
16
17
69
70
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(15, 0, [`N1-15`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
15
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(16, 0, [`N1-16`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
16
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(17, 0, [`N1-17`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
17
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(18, 0, [`N1-18`
3
21
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
18
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(19, 0, [`N1-19`
3
21
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
70
19
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(20, 0, [`N1-20`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
20
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(21, 0, [`N1-21`
3
21
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
21
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(22, 0, [`N1-22`
3
21
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
22
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(23, 0, [`N1-23`
3
21
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
23
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(24, 0, [`N1-24`
3
21
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
24
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(25, 0, [`N1-25`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
25
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(26, 0, [`N1-26`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
26
26
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(27, 0, [`N1-27`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
27
27
28
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
64
``
``
``
``
``
``
``
``
65
66
29
]);
int015(28, 0, [`N1-28`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
28
28
28
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
64
``
``
``
``
``
``
``
``
65
66
29
]);
int015(29, 0, [`N1-29`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
28
29
29
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
64
``
``
``
``
``
``
``
``
65
66
29
]);
int015(30, 0, [`N1-30`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
28
29
32
30
``
48
``
``
``
``
``
``
``
``
``
``
``
``
``
``
30
47
``
``
``
``
``
``
64
``
``
``
``
``
``
``
``
65
66
29
]);
int015(31, 0, [`N1-31`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
26
49
28
29
32
61
31
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(32, 0, [`N1-32`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
28
29
32
``
``
32
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
64
``
``
``
``
``
``
``
``
65
66
29
]);
int015(33, 0, [`N1-33`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
33
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(34, 0, [`N1-34`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
26
49
28
29
32
61
57
48
20
34
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(35, 0, [`N1-35`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
26
49
28
29
32
61
57
48
20
31
35
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(36, 0, [`N1-36`
3
21
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
36
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(37, 0, [`N1-37`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
37
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(38, 0, [`N1-38`
3
21
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
38
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(39, 0, [`N1-39`
3
21
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
39
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(40, 0, [`N1-40`
3
21
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
40
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(41, 0, [`N1-41`
3
21
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
41
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(42, 0, [`N1-42`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
42
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(43, 0, [`N1-43`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
43
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(44, 0, [`N1-44`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
44
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(45, 0, [`N1-45`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
45
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(46, 0, [`N1-46`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
46
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(47, 0, [`N1-47`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
28
29
32
``
``
48
``
``
``
``
``
``
``
``
``
``
``
``
``
``
47
47
``
``
``
``
``
``
64
``
``
``
``
``
``
``
``
65
66
29
]);
int015(48, 0, [`N1-48`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
28
29
32
``
``
48
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
48
``
``
``
``
``
``
64
``
``
``
``
``
``
``
``
65
66
29
]);
int015(49, 0, [`N1-49`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
26
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
49
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(50, 0, [`N1-50`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
26
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
50
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(51, 0, [`N1-51`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
26
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
51
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(52, 0, [`N1-52`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
26
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
52
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(53, 0, [`N1-53`
3
21
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
53
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(54, 0, [`N1-54`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
54
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(55, 0, [`N1-55`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
55
]);
int015(56, 0, [`N1-56`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
56
33
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(57, 0, [`N1-57`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
57
43
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(58, 0, [`N1-58`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
58
25
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(59, 0, [`N1-59`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
59
24
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(60, 0, [`N1-60`
3
21
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
60
62
63
26
65
66
29
68
1
57
71
8
18
26
]);
int015(61, 0, [`N1-61`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
28
29
32
61
``
48
``
``
``
``
``
``
``
``
``
``
``
``
``
``
30
47
``
``
``
``
``
``
64
``
``
``
``
``
61
``
``
65
66
29
]);
int015(62, 0, [`N1-62`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
28
29
32
61
``
48
``
``
``
``
``
``
``
``
``
``
``
``
``
``
30
47
``
``
``
``
``
``
64
``
``
``
``
``
62
62
``
65
66
29
]);
int015(63, 0, [`N1-63`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
28
29
32
61
``
48
``
``
``
``
``
``
``
``
``
``
``
``
``
``
30
47
``
``
``
``
``
``
64
``
``
``
``
``
62
63
63
65
66
29
]);
int015(64, 0, [`N1-64`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
64
``
``
``
``
``
``
``
``
64
]);
int015(65, 0, [`N1-65`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
64
``
``
``
``
``
``
``
``
65
65
]);
int015(66, 0, [`N1-66`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
64
``
``
``
``
``
``
``
``
65
66
66
]);
int015(67, 0, [`N1-67`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
67
1
57
71
8
18
26
]);
int015(68, 0, [`N1-68`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
68
57
71
8
18
26
]);
int015(69, 0, [`N1-69`
3
37
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
53
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
69
71
8
18
26
]);
int015(70, 0, [`N1-70`
3
21
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
70
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
70
8
18
26
]);
int015(71, 0, [`N1-71`
3
21
4
5
6
7
54
10
60
11
12
13
14
19
16
17
69
70
24
56
36
18
22
25
44
49
28
29
32
61
57
48
20
31
34
38
67
39
40
41
23
58
59
45
46
15
30
47
50
51
52
35
9
42
64
2
33
43
25
24
62
63
26
65
66
29
68
1
57
71
71
18
26
]);
int015(72, 0, [`N1-72`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
72
]);
int015(73, 0, [`N1-73`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
73
]);
SetStatus(0);
int018;


{Atom: Pointer Table}

sets;
BaseClass;
CreateAtom(a, Up(s), [Pointer Table], 1, false);
int023([Pointer Table], 0, 2164);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetChannels(0, 73);
int001(433);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
int013(3, 0, true, true, 0, 0, [], []);
int013(4, 0, true, true, 0, 0, [], []);
int013(5, 0, true, true, 0, 0, [], []);
int013(6, 0, true, true, 0, 0, [], []);
int013(7, 0, true, true, 0, 0, [], []);
int013(8, 0, true, true, 0, 0, [], []);
int013(9, 0, true, true, 0, 0, [], []);
int013(10, 0, true, true, 0, 0, [], []);
int013(11, 0, true, true, 0, 0, [], []);
int013(12, 0, true, true, 0, 0, [], []);
int013(13, 0, true, true, 0, 0, [], []);
int013(14, 0, true, true, 0, 0, [], []);
int013(15, 0, true, true, 0, 0, [], []);
int013(16, 0, true, true, 0, 0, [], []);
int013(17, 0, true, true, 0, 0, [], []);
int013(18, 0, true, true, 0, 0, [], []);
int013(19, 0, true, true, 0, 0, [], []);
int013(20, 0, true, true, 0, 0, [], []);
int013(21, 0, true, true, 0, 0, [], []);
int013(22, 0, true, true, 0, 0, [], []);
int013(23, 0, true, true, 0, 0, [], []);
int013(24, 0, true, true, 0, 0, [], []);
int013(25, 0, true, true, 0, 0, [], []);
int013(26, 0, true, true, 0, 0, [], []);
int013(27, 0, true, true, 0, 0, [], []);
int013(28, 0, true, true, 0, 0, [], []);
int013(29, 0, true, true, 0, 0, [], []);
int013(30, 0, true, true, 0, 0, [], []);
int013(31, 0, true, true, 0, 0, [], []);
int013(32, 0, true, true, 0, 0, [], []);
int013(33, 0, true, true, 0, 0, [], []);
int013(34, 0, true, true, 0, 0, [], []);
int013(35, 0, true, true, 0, 0, [], []);
int013(36, 0, true, true, 0, 0, [], []);
int013(37, 0, true, true, 0, 0, [], []);
int013(38, 0, true, true, 0, 0, [], []);
int013(39, 0, true, true, 0, 0, [], []);
int013(40, 0, true, true, 0, 0, [], []);
int013(41, 0, true, true, 0, 0, [], []);
int013(42, 0, true, true, 0, 0, [], []);
int013(43, 0, true, true, 0, 0, [], []);
int013(44, 0, true, true, 0, 0, [], []);
int013(45, 0, true, true, 0, 0, [], []);
int013(46, 0, true, true, 0, 0, [], []);
int013(47, 0, true, true, 0, 0, [], []);
int013(48, 0, true, true, 0, 0, [], []);
int013(49, 0, true, true, 0, 0, [], []);
int013(50, 0, true, true, 0, 0, [], []);
int013(51, 0, true, true, 0, 0, [], []);
int013(52, 0, true, true, 0, 0, [], []);
int013(53, 0, true, true, 0, 0, [], []);
int013(54, 0, true, true, 0, 0, [], []);
int013(55, 0, true, true, 0, 0, [], []);
int013(56, 0, true, true, 0, 0, [], []);
int013(57, 0, true, true, 0, 0, [], []);
int013(58, 0, true, true, 0, 0, [], []);
int013(59, 0, true, true, 0, 0, [], []);
int013(60, 0, true, true, 0, 0, [], []);
int013(61, 0, true, true, 0, 0, [], []);
int013(62, 0, true, true, 0, 0, [], []);
int013(63, 0, true, true, 0, 0, [], []);
int013(64, 0, true, true, 0, 0, [], []);
int013(65, 0, true, true, 0, 0, [], []);
int013(66, 0, true, true, 0, 0, [], []);
int013(67, 0, true, true, 0, 0, [], []);
int013(68, 0, true, true, 0, 0, [], []);
int013(69, 0, true, true, 0, 0, [], []);
int013(70, 0, true, true, 0, 0, [], []);
int013(71, 0, true, true, 0, 0, [], []);
int013(72, 0, true, true, 0, 0, [], []);
int013(73, 0, true, true, 0, 0, [], []);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(73, 1);
int015(0, 0, [``
`N1-1`
`N1-2`
`N1-3`
`N1-4`
`N1-5`
`N1-6`
`N1-7`
`N1-8`
`N1-9`
`N1-10`
`N1-11`
`N1-12`
`N1-13`
`N1-14`
`N1-15`
`N1-16`
`N1-17`
`N1-18`
`N1-19`
`N1-20`
`N1-21`
`N1-22`
`N1-23`
`N1-24`
`N1-25`
`N1-26`
`N1-27`
`N1-28`
`N1-29`
`N1-30`
`N1-31`
`N1-32`
`N1-33`
`N1-34`
`N1-35`
`N1-36`
`N1-37`
`N1-38`
`N1-39`
`N1-40`
`N1-41`
`N1-42`
`N1-43`
`N1-44`
`N1-45`
`N1-46`
`N1-47`
`N1-48`
`N1-49`
`N1-50`
`N1-51`
`N1-52`
`N1-53`
`N1-54`
`N1-55`
`N1-56`
`N1-57`
`N1-58`
`N1-59`
`N1-60`
`N1-61`
`N1-62`
`N1-63`
`N1-64`
`N1-65`
`N1-66`
`N1-67`
`N1-68`
`N1-69`
`N1-70`
`N1-71`
`N1-72`
`N1-73`
]);
int015(1, 0, [1
799632000
799632960
799633920
799634880
799635840
799636800
799637760
799638720
799639680
799640640
799641600
72564192
72565152
72566112
72567072
72568032
72568992
72569952
72570912
72579552
72581472
72582432
72583392
72584352
72585312
72586272
72587232
72588192
72589152
72590112
72591072
72592032
72594912
72598752
72599712
72600672
72601632
72602592
72603552
72604512
72605472
72606432
72607392
72608352
72609312
72081840
72082800
72083760
72084720
72085680
72086640
72087600
72098160
72099120
72100080
72101040
72102000
72102960
72103920
72104880
72105840
72106800
72107760
72108720
72109680
72110640
72111600
72112560
72113520
72114480
72115440
72116400
72126000
]);
SetStatus(0);
int018;


{Atom: Angle Table}

sets;
BaseClass;
CreateAtom(a, Up(s), [Angle Table], 1, false);
int023([Angle Table], 0, 2164);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
int001(434);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(73, 73);
int015(0, 0, [``
`N1-1`
`N1-2`
`N1-3`
`N1-4`
`N1-5`
`N1-6`
`N1-7`
`N1-8`
`N1-9`
`N1-10`
`N1-11`
`N1-12`
`N1-13`
`N1-14`
`N1-15`
`N1-16`
`N1-17`
`N1-18`
`N1-19`
`N1-20`
`N1-21`
`N1-22`
`N1-23`
`N1-24`
`N1-25`
`N1-26`
`N1-27`
`N1-28`
`N1-29`
`N1-30`
`N1-31`
`N1-32`
`N1-33`
`N1-34`
`N1-35`
`N1-36`
`N1-37`
`N1-38`
`N1-39`
`N1-40`
`N1-41`
`N1-42`
`N1-43`
`N1-44`
`N1-45`
`N1-46`
`N1-47`
`N1-48`
`N1-49`
`N1-50`
`N1-51`
`N1-52`
`N1-53`
`N1-54`
`N1-55`
`N1-56`
`N1-57`
`N1-58`
`N1-59`
`N1-60`
`N1-61`
`N1-62`
`N1-63`
`N1-64`
`N1-65`
`N1-66`
`N1-67`
`N1-68`
`N1-69`
`N1-70`
`N1-71`
`N1-72`
`N1-73`
]);
int015(1, 0, [`N1-1`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
180
]);
int015(2, 0, [`N1-2`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
270
]);
int015(3, 0, [`N1-3`
180
]);
int015(4, 0, [`N1-4`
``
``
180
]);
int015(5, 0, [`N1-5`
``
``
``
180
]);
int015(6, 0, [`N1-6`
``
``
``
``
180
]);
int015(7, 0, [`N1-7`
``
``
``
``
``
180
]);
int015(8, 0, [`N1-8`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
180
]);
int015(9, 0, [`N1-9`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
90
]);
int015(10, 0, [`N1-10`
``
``
``
``
``
``
``
180
]);
int015(11, 0, [`N1-11`
``
``
``
``
``
``
``
``
``
90
]);
int015(12, 0, [`N1-12`
``
``
``
``
``
``
``
``
``
``
90
]);
int015(13, 0, [`N1-13`
``
``
``
``
``
``
``
``
``
``
``
90
]);
int015(14, 0, [`N1-14`
``
``
``
``
``
``
``
``
``
``
``
``
90
]);
int015(15, 0, [`N1-15`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
0
]);
int015(16, 0, [`N1-16`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
0
]);
int015(17, 0, [`N1-17`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
0
]);
int015(18, 0, [`N1-18`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
90
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
180
]);
int015(19, 0, [`N1-19`
``
``
``
``
``
``
``
``
``
``
``
``
``
0
]);
int015(20, 0, [`N1-20`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
270
]);
int015(21, 0, [`N1-21`
``
270
]);
int015(22, 0, [`N1-22`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
180
]);
int015(23, 0, [`N1-23`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
180
]);
int015(24, 0, [`N1-24`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
270
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
90
]);
int015(25, 0, [`N1-25`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
0
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
90
]);
int015(26, 0, [`N1-26`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
90
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
270
``
``
``
``
``
``
``
``
``
0
]);
int015(27, 0, [`N1-27`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
90
]);
int015(28, 0, [`N1-28`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
270
``
0
]);
int015(29, 0, [`N1-29`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
180
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
90
]);
int015(30, 0, [`N1-30`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
180
]);
int015(31, 0, [`N1-31`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
0
]);
int015(32, 0, [`N1-32`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
180
]);
int015(33, 0, [`N1-33`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
270
]);
int015(34, 0, [`N1-34`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
0
]);
int015(35, 0, [`N1-35`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
0
]);
int015(36, 0, [`N1-36`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
180
]);
int015(37, 0, [`N1-37`
``
180
]);
int015(38, 0, [`N1-38`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
180
]);
int015(39, 0, [`N1-39`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
180
]);
int015(40, 0, [`N1-40`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
180
]);
int015(41, 0, [`N1-41`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
180
]);
int015(42, 0, [`N1-42`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
180
]);
int015(43, 0, [`N1-43`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
90
]);
int015(44, 0, [`N1-44`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
0
]);
int015(45, 0, [`N1-45`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
0
]);
int015(46, 0, [`N1-46`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
0
]);
int015(47, 0, [`N1-47`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
180
]);
int015(48, 0, [`N1-48`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
180
]);
int015(49, 0, [`N1-49`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
0
]);
int015(50, 0, [`N1-50`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
0
]);
int015(51, 0, [`N1-51`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
0
]);
int015(52, 0, [`N1-52`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
0
]);
int015(53, 0, [`N1-53`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
90
]);
int015(54, 0, [`N1-54`
``
``
``
``
``
``
180
]);
int015(55, 0, [`N1-55`
]);
int015(56, 0, [`N1-56`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
270
]);
int015(57, 0, [`N1-57`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
270
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
0
]);
int015(58, 0, [`N1-58`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
90
]);
int015(59, 0, [`N1-59`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
90
]);
int015(60, 0, [`N1-60`
``
``
``
``
``
``
``
``
90
]);
int015(61, 0, [`N1-61`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
270
]);
int015(62, 0, [`N1-62`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
270
]);
int015(63, 0, [`N1-63`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
270
]);
int015(64, 0, [`N1-64`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
90
]);
int015(65, 0, [`N1-65`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
90
]);
int015(66, 0, [`N1-66`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
90
]);
int015(67, 0, [`N1-67`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
180
]);
int015(68, 0, [`N1-68`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
180
]);
int015(69, 0, [`N1-69`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
0
]);
int015(70, 0, [`N1-70`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
180
]);
int015(71, 0, [`N1-71`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
180
]);
int015(72, 0, [`N1-72`
]);
int015(73, 0, [`N1-73`
]);
SetStatus(0);
int018;


{Atom: Atom Table}

sets;
BaseClass;
CreateAtom(a, Up(s), [Atom Table], 1, false);
int023([Atom Table], 0, 2164);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetChannels(0, 22);
int001(435);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
int013(3, 0, true, true, 0, 0, [], []);
int013(4, 0, true, true, 0, 0, [], []);
int013(5, 0, true, true, 0, 0, [], []);
int013(6, 0, true, true, 0, 0, [], []);
int013(7, 0, true, true, 0, 0, [], []);
int013(8, 0, true, true, 0, 0, [], []);
int013(9, 0, true, true, 0, 0, [], []);
int013(10, 0, true, true, 0, 0, [], []);
int013(11, 0, true, true, 0, 0, [], []);
int013(12, 0, true, true, 0, 0, [], []);
int013(13, 0, true, true, 0, 0, [], []);
int013(14, 0, true, true, 0, 0, [], []);
int013(15, 0, true, true, 0, 0, [], []);
int013(16, 0, true, true, 0, 0, [], []);
int013(17, 0, true, true, 0, 0, [], []);
int013(18, 0, true, true, 0, 0, [], []);
int013(19, 0, true, true, 0, 0, [], []);
int013(20, 0, true, true, 0, 0, [], []);
int013(21, 0, true, true, 0, 0, [], []);
int013(22, 0, true, true, 0, 0, [], []);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(22, 2);
int015(0, 0, [``
`1DE2`
`1DE1`
`1DA1`
`1DA2`
`1DB1`
`1DJ1`
`1DH4`
`1FD3`
`1AA1`
`1DD1`
`1DC4`
`1DC3`
`1DC2`
`1DC1`
`1DB2`
`1DI1`
`1DK1`
`1DK2`
`1DH1`
`1DF1`
`1DF2`
`1DG1`
]);
int015(1, 0, [`Pointer Value`
72088560
72089520
72090480
72091440
72092400
72094320
72095280
72119280
72593952
799615680
799616640
799617600
799618560
799619520
799620480
799621440
799622400
799623360
799624320
799625280
799626240
799627200
]);
int015(2, 0, [`Connected Node`
46
45
44
51
54
11
53
20
33
1
3
4
5
6
7
8
12
13
9
15
16
17
]);
SetStatus(0);
int018;


{Atom: Battery Pointer Table}

sets;
BaseClass;
CreateAtom(a, Up(s), [Battery Pointer Table], 1, false);
int023([Battery Pointer Table], 0, 2164);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
int001(436);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
int018;


{Atom: Battery Distance Table}

sets;
BaseClass;
CreateAtom(a, Up(s), [Battery Distance Table], 1, false);
int023([Battery Distance Table], 0, 2164);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
int001(437);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(0, 22);
int015(0, 0, [``
]);
int015(1, 0, [`1DE2`
]);
int015(2, 0, [`1DE1`
]);
int015(3, 0, [`1DA1`
]);
int015(4, 0, [`1DA2`
]);
int015(5, 0, [`1DB1`
]);
int015(6, 0, [`1DJ1`
]);
int015(7, 0, [`1DH4`
]);
int015(8, 0, [`1FD3`
]);
int015(9, 0, [`1AA1`
]);
int015(10, 0, [`1DD1`
]);
int015(11, 0, [`1DC4`
]);
int015(12, 0, [`1DC3`
]);
int015(13, 0, [`1DC2`
]);
int015(14, 0, [`1DC1`
]);
int015(15, 0, [`1DB2`
]);
int015(16, 0, [`1DI1`
]);
int015(17, 0, [`1DK1`
]);
int015(18, 0, [`1DK2`
]);
int015(19, 0, [`1DH1`
]);
int015(20, 0, [`1DF1`
]);
int015(21, 0, [`1DF2`
]);
int015(22, 0, [`1DG1`
]);
SetStatus(0);
int018;
Up;


{Atom: N1-20}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-20], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 20);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-20], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:20.>t-netreference:72571872.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(438);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(47, 16, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-21}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-21], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 21);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-21], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:21.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(439);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(47, 3, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-22}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-22], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 22);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-22], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:22.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(440);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(3, 3, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-23}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-23], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 23);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-23], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:23.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(441);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(9, 3, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-24}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-24], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 24);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-24], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:24.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(442);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(3, 27, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-25}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-25], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 25);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-25], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:25.>t-netreference:72571872.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(443);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(7, 27, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(2, 4);
int015(0, 0, [``
1
2
]);
int015(1, 0, [1
1
1
]);
int015(2, 0, [2
0
0
]);
int015(3, 0, [3
0
0
]);
int015(4, 0, [4
0
0
]);
SetStatus(0);
int018;


{Atom: N1-26}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-26], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 26);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-26], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:26.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(444);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(7, 30, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-27}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-27], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 27);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-27], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:27.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(445);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(64, 58, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-28}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-28], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 28);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-28], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:28.>t-netreference:72571872.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(446);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(64, 53, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(2, 4);
int015(0, 0, [``
1
2
]);
int015(1, 0, [1
1
1
]);
int015(2, 0, [2
0
0
]);
int015(3, 0, [3
0
0
]);
int015(4, 0, [4
0
0
]);
SetStatus(0);
int018;


{Atom: N1-29}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-29], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 29);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-29], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:29.>t-netreference:72571872.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(447);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(47, 53, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(2, 4);
int015(0, 0, [``
1
2
]);
int015(1, 0, [1
1
1
]);
int015(2, 0, [2
0
0
]);
int015(3, 0, [3
0
0
]);
int015(4, 0, [4
0
0
]);
SetStatus(0);
int018;


{Atom: N1-30}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-30], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 30);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-30], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:30.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(448);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(7, 53, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-31}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-31], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 31);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-31], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:31.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(449);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(47, 30, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1000000
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-32}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-32], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 32);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-32], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:32.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(450);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(37, 53, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: AGV1}

sets;
AtomByName([Advanced Transporter], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Advanced Transporter'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [AGV1], 1, false);
SetAtt(1, 0);
SetAtt(2, 1);
SetAtt(3, 43.5);
SetAtt(4, 30);
SetAtt(5, 0);
SetAtt(6, 1);
SetExprAtt(7, [0.5]);
SetExprAtt(8, [1]);
SetExprAtt(9, [1]);
SetAtt(10, 0);
SetAtt(11, 1);
SetExprAtt(12, [4DS[{.~1|~If(
    Label([Pallet], first(c)) = 1, 
     7,
   (If(
    Label([Pallet], first(c)) = 2,
     3,
     (If(
    Label([Pallet], first(c)) = 3,
     8,
     (If(
    Label([Pallet], first(c)) = 4,
     9
   )
))))))~.}If(
    Label([Pallet], first(c)) = 1, 
     7,
   (If(
    Label([Pallet], first(c)) = 2,
     3,
     (If(
    Label([Pallet], first(c)) = 3,
     8,
     (If(
    Label([Pallet], first(c)) = 4,
     9
   )
))))))]4DS]);
SetExprAtt(13, [30]);
SetExprAtt(14, [30]);
SetExprAtt(15, [1]);
SetExprAtt(16, [4DS[Label([Pallet], first(c))]4DS]);
SetExprAtt(17, [0]);
SetAtt(18, 0);
SetExprAtt(19, [4DS[{.label([~1],i)|2. Atom label --> the offset is found on label ~LabelName~ of the atom to be picked or placed..}label([LabelName],i)]4DS]);
SetExprAtt(20, [{.yabsloc(c,model)-yabsloc(in(2,c),model)|3. Horizontal line --> the transporter travels in a horizontal line. ~Only use this option to define the Y offsets!~.}yabsloc(c,model)-yabsloc(in(2,c),model)]);
SetExprAtt(21, [{.yabsloc(c,model)-yabsloc(in(2,c),model)|3. Horizontal line --> the transporter travels in a horizontal line. ~Only use this option to define the Y offsets!~.}yabsloc(c,model)-yabsloc(in(2,c),model)]);
SetExprAtt(22, [4DS[{.label([~1],i)|2. Atom label (for placing) --> the offset is found on label ~column~ of the atom to be picked or placed..}label([column],i)]4DS]);
SetExprAtt(23, [{.yabsloc(c,model)-yabsloc(in(2,c),model)|3. Horizontal line --> the transporter travels in a horizontal line. ~Only use this option to define the Y offsets!~.}yabsloc(c,model)-yabsloc(in(2,c),model)]);
SetExprAtt(24, [4DS[{.label([~1],i)|2. Atom label (for placing) --> the offset is found on the label ~row~ of the first ranked atom of the destination..}label([row],i)]4DS]);
SetAtt(25, 6);
SetAtt(26, 1);
SetAtt(27, 1);
SetTextAtt(28, [LabelName]);
SetAtt(29, 0);
SetAtt(30, 0);
SetAtt(31, 1);
SetAtt(32, 1);
SetAtt(33, 0);
SetAtt(34, 1);
SetAtt(35, 1);
SetAtt(36, 0);
SetAtt(37, 1801);
SetExprAtt(38, [0.5]);
SetAtt(39, 0);
SetAtt(40, 0);
SetExprAtt(41, [0]);
SetAtt(42, 0);
SetAtt(43, 0);
SetAtt(44, 72572832);
SetAtt(45, 72573792);
SetAtt(46, 72574752);
SetAtt(47, 72571872);
SetAtt(48, 1);
SetAtt(49, 0);
SetAtt(50, 30);
SetAtt(51, 0);
SetAtt(52, 0);
SetAtt(53, 0);
SetAtt(54, 0);
SetTextAtt(55, [LabelName]);
SetAtt(56, 1);
SetAtt(57, 1);
SetAtt(58, 0);
SetAtt(59, 0);
SetTextAtt(60, [N1-34]);
SetAtt(61, 1);
SetAtt(62, 0);
SetExprAtt(63, [4DS[{.if(att([angledifference],c)>~1,~3,~2)|2. Use two different corner speeds: if road angle is between min.angle and ~50~°,choose speed of ~1.5~ m/s, if angle is larger then choose ~0.5~ m/s.}if(att([angledifference],c)>50,0.5,1.5)]4DS]);
SetAtt(64, 270);
SetAtt(65, 270);
SetAtt(66, 0);
SetAtt(67, 10);
SetAtt(68, 72575712);
SetAtt(69, 0);
SetExprAtt(70, [750]);
SetExprAtt(71, [{.~1|1. Constant: ~50~ Ah.}50]);
SetExprAtt(72, [{.~1|1. Constant: ~100~ Ah.}100]);
SetExprAtt(73, [10]);
SetExprAtt(74, [20]);
SetAtt(75, 750);
SetAtt(76, 100);
SetAtt(77, 0);
SetAtt(78, 0);
SetExprAtt(79, [0]);
SetAtt(80, 0);
SetAtt(81, 799631040);
SetAtt(82, 1);
SetAtt(83, 72576672);
SetAtt(84, 72577632);
SetAtt(85, 72578592);
SetAtt(86, 0);
SetAtt(87, 0);
SetExprAtt(88, [{.~1|1. Constant: ~100~ Ah.}100]);
SetExprAtt(89, [{.~1|1. Constant: ~10~ Ah.}10]);
SetExprAtt(90, [{.~1|1. Constant: ~100~ Ah.}100]);
SetAtt(91, 0);
SetAtt(92, 0);
SetAtt(93, 0);
SetAtt(94, 5000);
SetAtt(95, 0);
SetAtt(96, 0);
SetExprAtt(97, [0]);
SetAtt(98, 0);
SetAtt(99, 0);
SetAtt(100, 1);
SetAtt(101, 0);
int023([AGV1], 767720, 66675);
Set(Icon(a), 
	RegisterIcon([\\stud-home.icts.kuleuven.be\r0625319\Desktop\AGV_ED.jpg], [AGV_ED.jpg], 1, 0, 0, 255, 255, false, 0));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Transporter2.ico]));
Set(DdbRec, [>t-transporter:1.>n1:7.>n2:6.>n3:33.>d1:1000000000000.>d2:1000000000000.>d4:1000000000000.>previousedstnode:7.>t-dest:1.>t-network:1.>t-nodeconnections-n1:1.>t-node1:1.>d3:73.>t-turntime:2.8421709430404e-15.>t-continue:1.>t-start:1.]);
SetChannels(3, 4);
SetChannelRanges(3, 3, 4, 4);
int001(451);
int013(1, 0, true, false, 0, 0, [Product Origin], [Product Destination]);
int013(2, 0, true, false, 1, 1, [Current goal (Origin or Destination)], [Next network node on path]);
int013(3, 0, true, false, 1, 1, [Do not connect], [Previous network node on path]);
int013(4, 0, true, false, 0, 0, [], [Link to network]);
SetLoc(43.5, 30, 0);
SetSize(3, 2, 1);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: 1AA1}

sets;
AtomByName([Sink], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Sink'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1AA1], 1, false);
SetExprAtt(1, [0]);
SetAtt(2, 4);
int023([1AA1], 7168771, 240);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\Atoms\sink.bmp]), [sink]));
AddModel3D(
	RegisterModel3D(Model3DDir([sink.wrl]), [sink.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([sink_Resized.wrl]), [sink_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Sink.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:33.]);
SetChannels(1, 0);
SetChannelRanges(1, 255, 0, 0);
int001(452);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(49, 21, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: N1-33}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-33], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 33);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-33], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:33.>t-netreference:72571872.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(453);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(47, 21, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: AGV3}

sets;
AtomByName([Advanced Transporter], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Advanced Transporter'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [AGV3], 1, false);
SetAtt(1, 0);
SetAtt(2, 1);
SetAtt(3, 32.5);
SetAtt(4, 30);
SetAtt(5, 0);
SetAtt(6, 1);
SetExprAtt(7, [0.5]);
SetExprAtt(8, [1]);
SetExprAtt(9, [1]);
SetAtt(10, 0);
SetAtt(11, 1);
SetExprAtt(12, [4DS[{.~1|~If(
  Label([Pallet],first(c))=1,
  0,
  If(
    Label([Pallet],first(c))=2,
    1
  )
)~.}If(
  Label([Pallet],first(c))=1,
  0,
  If(
    Label([Pallet],first(c))=2,
    1
  )
)]4DS]);
SetExprAtt(13, [30]);
SetExprAtt(14, [30]);
SetExprAtt(15, [1]);
SetExprAtt(16, [4DS[Trace(Label([Pallet], i))]4DS]);
SetExprAtt(17, [0]);
SetAtt(18, 0);
SetExprAtt(19, [4DS[{.label([~1],i)|2. Atom label --> the offset is found on label ~LabelName~ of the atom to be picked or placed..}label([LabelName],i)]4DS]);
SetExprAtt(20, [{.yabsloc(c,model)-yabsloc(in(2,c),model)|3. Horizontal line --> the transporter travels in a horizontal line. ~Only use this option to define the Y offsets!~.}yabsloc(c,model)-yabsloc(in(2,c),model)]);
SetExprAtt(21, [{.yabsloc(c,model)-yabsloc(in(2,c),model)|3. Horizontal line --> the transporter travels in a horizontal line. ~Only use this option to define the Y offsets!~.}yabsloc(c,model)-yabsloc(in(2,c),model)]);
SetExprAtt(22, [4DS[{.label([~1],i)|2. Atom label (for placing) --> the offset is found on label ~column~ of the atom to be picked or placed..}label([column],i)]4DS]);
SetExprAtt(23, [{.yabsloc(c,model)-yabsloc(in(2,c),model)|3. Horizontal line --> the transporter travels in a horizontal line. ~Only use this option to define the Y offsets!~.}yabsloc(c,model)-yabsloc(in(2,c),model)]);
SetExprAtt(24, [4DS[{.label([~1],i)|2. Atom label (for placing) --> the offset is found on the label ~row~ of the first ranked atom of the destination..}label([row],i)]4DS]);
SetAtt(25, 6);
SetAtt(26, 1);
SetAtt(27, 1);
SetTextAtt(28, [LabelName]);
SetAtt(29, 0);
SetAtt(30, 0);
SetAtt(31, 1);
SetAtt(32, 1);
SetAtt(33, 0);
SetAtt(34, 1);
SetAtt(35, 1);
SetAtt(36, 0);
SetAtt(37, 1815.5);
SetExprAtt(38, [0.5]);
SetAtt(39, 0);
SetAtt(40, 0);
SetExprAtt(41, [0]);
SetAtt(42, 0);
SetAtt(43, 0);
SetAtt(44, 72572832);
SetAtt(45, 72573792);
SetAtt(46, 72574752);
SetAtt(47, 72571872);
SetAtt(48, 1);
SetAtt(49, 0);
SetAtt(50, 30);
SetAtt(51, 0);
SetAtt(52, 0);
SetAtt(53, 0);
SetAtt(54, 0);
SetTextAtt(55, [LabelName]);
SetAtt(56, 1);
SetAtt(57, 1);
SetAtt(58, 0);
SetAtt(59, 0);
SetTextAtt(60, [N1-52]);
SetAtt(61, 1);
SetAtt(62, 0);
SetExprAtt(63, [4DS[{.if(att([angledifference],c)>~1,~3,~2)|2. Use two different corner speeds: if road angle is between min.angle and ~50~°,choose speed of ~1.5~ m/s, if angle is larger then choose ~0.5~ m/s.}if(att([angledifference],c)>50,0.5,1.5)]4DS]);
SetAtt(64, 0);
SetAtt(65, 0);
SetAtt(66, 0);
SetAtt(67, 10);
SetAtt(68, 72575712);
SetAtt(69, 0);
SetExprAtt(70, [750]);
SetExprAtt(71, [{.~1|1. Constant: ~50~ Ah.}50]);
SetExprAtt(72, [{.~1|1. Constant: ~100~ Ah.}100]);
SetExprAtt(73, [10]);
SetExprAtt(74, [20]);
SetAtt(75, 750);
SetAtt(76, 100);
SetAtt(77, 0);
SetAtt(78, 0);
SetExprAtt(79, [0]);
SetAtt(80, 0);
SetAtt(81, 799631040);
SetAtt(82, 3);
SetAtt(83, 72576672);
SetAtt(84, 72577632);
SetAtt(85, 72578592);
SetAtt(86, 0);
SetAtt(87, 0);
SetExprAtt(88, [{.~1|1. Constant: ~100~ Ah.}100]);
SetExprAtt(89, [{.~1|1. Constant: ~10~ Ah.}10]);
SetExprAtt(90, [{.~1|1. Constant: ~100~ Ah.}100]);
SetAtt(91, 0);
SetAtt(92, 0);
SetAtt(93, 0);
SetAtt(94, 5000);
SetAtt(95, 0);
SetAtt(96, 0);
SetExprAtt(97, [0]);
SetAtt(98, 0);
SetAtt(99, 0);
SetAtt(100, 1);
SetAtt(101, 0);
int023([AGV3], 767720, 66675);
Set(Icon(a), 
	RegisterIcon([\\stud-home.icts.kuleuven.be\r0625319\Desktop\AGV_ED.jpg], [AGV_ED.jpg], 1, 0, 0, 255, 255, false, 0));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Transporter2.ico]));
Set(DdbRec, [>t-transporter:1.>n1:54.>n2:7.>n3:33.>d1:1000000000000.>d2:1000000000000.>d4:1000000000000.>previousedstnode:54.>t-dest:1.>t-network:1.>t-nodeconnections-n1:1.>t-node1:1.>t-turntime:3.>d3:70.>t-start:1.]);
SetChannels(3, 4);
SetChannelRanges(3, 3, 4, 4);
int001(454);
int013(1, 0, true, false, 0, 0, [Product Origin], [Product Destination]);
int013(2, 0, true, false, 1, 1, [Current goal (Origin or Destination)], [Next network node on path]);
int013(3, 0, true, false, 1, 1, [Do not connect], [Previous network node on path]);
int013(4, 0, true, false, 0, 0, [], [Link to network]);
SetLoc(32.5, 30, 0);
SetSize(3, 2, 1);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: AGV5}

sets;
AtomByName([Advanced Transporter], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Advanced Transporter'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [AGV5], 1, false);
SetAtt(1, 0);
SetAtt(2, 1);
SetAtt(3, 18.5);
SetAtt(4, 30);
SetAtt(5, 0);
SetAtt(6, 1);
SetExprAtt(7, [0.5]);
SetExprAtt(8, [1]);
SetExprAtt(9, [1]);
SetAtt(10, 0);
SetAtt(11, 1);
SetExprAtt(12, [4DS[{.~1|~If(
  Label([Pallet],first(c))=1,
  0,
  If(
    Label([Pallet],first(c))=2,
    1
  )
)~.}If(
  Label([Pallet],first(c))=1,
  0,
  If(
    Label([Pallet],first(c))=2,
    1
  )
)]4DS]);
SetExprAtt(13, [30]);
SetExprAtt(14, [30]);
SetExprAtt(15, [1]);
SetExprAtt(16, [4DS[Trace(Label([Pallet], i))]4DS]);
SetExprAtt(17, [0]);
SetAtt(18, 0);
SetExprAtt(19, [4DS[{.label([~1],i)|2. Atom label --> the offset is found on label ~LabelName~ of the atom to be picked or placed..}label([LabelName],i)]4DS]);
SetExprAtt(20, [{.yabsloc(c,model)-yabsloc(in(2,c),model)|3. Horizontal line --> the transporter travels in a horizontal line. ~Only use this option to define the Y offsets!~.}yabsloc(c,model)-yabsloc(in(2,c),model)]);
SetExprAtt(21, [{.yabsloc(c,model)-yabsloc(in(2,c),model)|3. Horizontal line --> the transporter travels in a horizontal line. ~Only use this option to define the Y offsets!~.}yabsloc(c,model)-yabsloc(in(2,c),model)]);
SetExprAtt(22, [4DS[{.label([~1],i)|2. Atom label (for placing) --> the offset is found on label ~column~ of the atom to be picked or placed..}label([column],i)]4DS]);
SetExprAtt(23, [{.yabsloc(c,model)-yabsloc(in(2,c),model)|3. Horizontal line --> the transporter travels in a horizontal line. ~Only use this option to define the Y offsets!~.}yabsloc(c,model)-yabsloc(in(2,c),model)]);
SetExprAtt(24, [4DS[{.label([~1],i)|2. Atom label (for placing) --> the offset is found on the label ~row~ of the first ranked atom of the destination..}label([row],i)]4DS]);
SetAtt(25, 6);
SetAtt(26, 1);
SetAtt(27, 1);
SetTextAtt(28, [LabelName]);
SetAtt(29, 0);
SetAtt(30, 0);
SetAtt(31, 1);
SetAtt(32, 1);
SetAtt(33, 0);
SetAtt(34, 1);
SetAtt(35, 1);
SetAtt(36, 0);
SetAtt(37, 2338.5);
SetExprAtt(38, [0.5]);
SetAtt(39, 0);
SetAtt(40, 0);
SetExprAtt(41, [0]);
SetAtt(42, 0);
SetAtt(43, 0);
SetAtt(44, 72572832);
SetAtt(45, 72573792);
SetAtt(46, 72574752);
SetAtt(47, 72571872);
SetAtt(48, 1);
SetAtt(49, 0);
SetAtt(50, 30);
SetAtt(51, 0);
SetAtt(52, 0);
SetAtt(53, 0);
SetAtt(54, 0);
SetTextAtt(55, [LabelName]);
SetAtt(56, 1);
SetAtt(57, 1);
SetAtt(58, 0);
SetAtt(59, 0);
SetTextAtt(60, [N1-50]);
SetAtt(61, 1);
SetAtt(62, 0);
SetExprAtt(63, [4DS[{.if(att([angledifference],c)>~1,~3,~2)|2. Use two different corner speeds: if road angle is between min.angle and ~50~°,choose speed of ~1.5~ m/s, if angle is larger then choose ~0.5~ m/s.}if(att([angledifference],c)>50,0.5,1.5)]4DS]);
SetAtt(64, 0);
SetAtt(65, 0);
SetAtt(66, 0);
SetAtt(67, 10);
SetAtt(68, 72575712);
SetAtt(69, 0);
SetExprAtt(70, [750]);
SetExprAtt(71, [{.~1|1. Constant: ~50~ Ah.}50]);
SetExprAtt(72, [{.~1|1. Constant: ~100~ Ah.}100]);
SetExprAtt(73, [10]);
SetExprAtt(74, [20]);
SetAtt(75, 750);
SetAtt(76, 100);
SetAtt(77, 0);
SetAtt(78, 0);
SetExprAtt(79, [0]);
SetAtt(80, 0);
SetAtt(81, 799631040);
SetAtt(82, 5);
SetAtt(83, 72576672);
SetAtt(84, 72577632);
SetAtt(85, 72578592);
SetAtt(86, 0);
SetAtt(87, 0);
SetExprAtt(88, [{.~1|1. Constant: ~100~ Ah.}100]);
SetExprAtt(89, [{.~1|1. Constant: ~10~ Ah.}10]);
SetExprAtt(90, [{.~1|1. Constant: ~100~ Ah.}100]);
SetAtt(91, 0);
SetAtt(92, 0);
SetAtt(93, 0);
SetAtt(94, 5000);
SetAtt(95, 0);
SetAtt(96, 0);
SetExprAtt(97, [0]);
SetAtt(98, 0);
SetAtt(99, 0);
SetAtt(100, 1);
SetAtt(101, 0);
int023([AGV5], 767720, 66675);
Set(Icon(a), 
	RegisterIcon([\\stud-home.icts.kuleuven.be\r0625319\Desktop\AGV_ED.jpg], [AGV_ED.jpg], 1, 0, 0, 255, 255, false, 0));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Transporter2.ico]));
Set(DdbRec, [>t-transporter:1.>n1:20.>n2:33.>n3:46.>d1:1000000000000.>d2:1000000000000.>d4:1000000000000.>previousedstnode:20.>t-dest:16.>t-network:1.>t-nodeconnections-n1:1.>t-node1:1.>t-turntime:3.>d3:90.>t-continue:1.>t-start:1.]);
SetChannels(3, 4);
SetChannelRanges(3, 3, 4, 4);
int001(455);
int013(1, 0, true, false, 0, 0, [Product Origin], [Product Destination]);
int013(2, 0, true, false, 1, 1, [Current goal (Origin or Destination)], [Next network node on path]);
int013(3, 0, true, false, 1, 1, [Do not connect], [Previous network node on path]);
int013(4, 0, true, false, 0, 0, [], [Link to network]);
SetLoc(18.5, 30, 0);
SetSize(3, 2, 1);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: AGV4}

sets;
AtomByName([Advanced Transporter], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Advanced Transporter'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [AGV4], 1, false);
SetAtt(1, 0);
SetAtt(2, 1);
SetAtt(3, 26.5);
SetAtt(4, 30);
SetAtt(5, 0);
SetAtt(6, 1);
SetExprAtt(7, [0.5]);
SetExprAtt(8, [1]);
SetExprAtt(9, [1]);
SetAtt(10, 0);
SetAtt(11, 1);
SetExprAtt(12, [4DS[{.~1|~If(
  Label([Pallet],first(c))=1,
  0,
  If(
    Label([Pallet],first(c))=2,
    1
  )
)~.}If(
  Label([Pallet],first(c))=1,
  0,
  If(
    Label([Pallet],first(c))=2,
    1
  )
)]4DS]);
SetExprAtt(13, [30]);
SetExprAtt(14, [30]);
SetExprAtt(15, [1]);
SetExprAtt(16, [4DS[Trace(Label([Pallet], i))]4DS]);
SetExprAtt(17, [0]);
SetAtt(18, 0);
SetExprAtt(19, [4DS[{.label([~1],i)|2. Atom label --> the offset is found on label ~LabelName~ of the atom to be picked or placed..}label([LabelName],i)]4DS]);
SetExprAtt(20, [{.yabsloc(c,model)-yabsloc(in(2,c),model)|3. Horizontal line --> the transporter travels in a horizontal line. ~Only use this option to define the Y offsets!~.}yabsloc(c,model)-yabsloc(in(2,c),model)]);
SetExprAtt(21, [{.yabsloc(c,model)-yabsloc(in(2,c),model)|3. Horizontal line --> the transporter travels in a horizontal line. ~Only use this option to define the Y offsets!~.}yabsloc(c,model)-yabsloc(in(2,c),model)]);
SetExprAtt(22, [4DS[{.label([~1],i)|2. Atom label (for placing) --> the offset is found on label ~column~ of the atom to be picked or placed..}label([column],i)]4DS]);
SetExprAtt(23, [{.yabsloc(c,model)-yabsloc(in(2,c),model)|3. Horizontal line --> the transporter travels in a horizontal line. ~Only use this option to define the Y offsets!~.}yabsloc(c,model)-yabsloc(in(2,c),model)]);
SetExprAtt(24, [4DS[{.label([~1],i)|2. Atom label (for placing) --> the offset is found on the label ~row~ of the first ranked atom of the destination..}label([row],i)]4DS]);
SetAtt(25, 6);
SetAtt(26, 1);
SetAtt(27, 1);
SetTextAtt(28, [LabelName]);
SetAtt(29, 0);
SetAtt(30, 0);
SetAtt(31, 1);
SetAtt(32, 1);
SetAtt(33, 0);
SetAtt(34, 1);
SetAtt(35, 1);
SetAtt(36, 0);
SetAtt(37, 1888.5);
SetExprAtt(38, [0.5]);
SetAtt(39, 0);
SetAtt(40, 0);
SetExprAtt(41, [0]);
SetAtt(42, 0);
SetAtt(43, 0);
SetAtt(44, 72572832);
SetAtt(45, 72573792);
SetAtt(46, 72574752);
SetAtt(47, 72571872);
SetAtt(48, 1);
SetAtt(49, 0);
SetAtt(50, 30);
SetAtt(51, 0);
SetAtt(52, 0);
SetAtt(53, 0);
SetAtt(54, 0);
SetTextAtt(55, [LabelName]);
SetAtt(56, 1);
SetAtt(57, 1);
SetAtt(58, 0);
SetAtt(59, 0);
SetTextAtt(60, [N1-51]);
SetAtt(61, 1);
SetAtt(62, 0);
SetExprAtt(63, [4DS[{.if(att([angledifference],c)>~1,~3,~2)|2. Use two different corner speeds: if road angle is between min.angle and ~50~°,choose speed of ~1.5~ m/s, if angle is larger then choose ~0.5~ m/s.}if(att([angledifference],c)>50,0.5,1.5)]4DS]);
SetAtt(64, 0);
SetAtt(65, 0);
SetAtt(66, 0);
SetAtt(67, 10);
SetAtt(68, 72575712);
SetAtt(69, 0);
SetExprAtt(70, [750]);
SetExprAtt(71, [{.~1|1. Constant: ~50~ Ah.}50]);
SetExprAtt(72, [{.~1|1. Constant: ~100~ Ah.}100]);
SetExprAtt(73, [10]);
SetExprAtt(74, [20]);
SetAtt(75, 750);
SetAtt(76, 100);
SetAtt(77, 0);
SetAtt(78, 0);
SetExprAtt(79, [0]);
SetAtt(80, 0);
SetAtt(81, 799631040);
SetAtt(82, 4);
SetAtt(83, 72576672);
SetAtt(84, 72577632);
SetAtt(85, 72578592);
SetAtt(86, 0);
SetAtt(87, 0);
SetExprAtt(88, [{.~1|1. Constant: ~100~ Ah.}100]);
SetExprAtt(89, [{.~1|1. Constant: ~10~ Ah.}10]);
SetExprAtt(90, [{.~1|1. Constant: ~100~ Ah.}100]);
SetAtt(91, 0);
SetAtt(92, 0);
SetAtt(93, 0);
SetAtt(94, 5000);
SetAtt(95, 0);
SetAtt(96, 0);
SetExprAtt(97, [0]);
SetAtt(98, 0);
SetAtt(99, 0);
SetAtt(100, 1);
SetAtt(101, 0);
int023([AGV4], 767720, 66675);
Set(Icon(a), 
	RegisterIcon([\\stud-home.icts.kuleuven.be\r0625319\Desktop\AGV_ED.jpg], [AGV_ED.jpg], 1, 0, 0, 255, 255, false, 0));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Transporter2.ico]));
Set(DdbRec, [>t-transporter:1.>n1:8.>n2:71.>n3:33.>d1:1000000000000.>d2:1000000000000.>d4:1000000000000.>previousedstnode:8.>t-dest:1.>t-network:1.>t-nodeconnections-n1:1.>t-node1:1.>t-turntime:3.>d3:105.>t-start:1.]);
SetChannels(3, 4);
SetChannelRanges(3, 3, 4, 4);
int001(456);
int013(1, 0, true, false, 0, 0, [Product Origin], [Product Destination]);
int013(2, 0, true, false, 1, 1, [Current goal (Origin or Destination)], [Next network node on path]);
int013(3, 0, true, false, 1, 1, [Do not connect], [Previous network node on path]);
int013(4, 0, true, false, 0, 0, [], [Link to network]);
SetLoc(26.5, 30, 0);
SetSize(3, 2, 1);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: N1-34}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-34], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 34);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-34], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:34.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(457);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(43, 30, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-35}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-35], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 35);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-35], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:35.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(458);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(38, 30, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-36}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-36], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 36);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-36], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:36.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(459);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(43, 3, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-37}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-37], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 37);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-37], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:37.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(460);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(43, 6, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-38}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-38], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 38);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-38], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:38.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(461);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(37, 3, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-39}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-39], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 39);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-39], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:39.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(462);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(30, 3, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-40}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-40], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 40);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-40], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:40.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(463);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(22, 3, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-41}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-41], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 41);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-41], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:41.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(464);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(15, 3, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-42}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-42], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 42);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-42], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:42.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(465);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(7, 6, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-43}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-43], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 43);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-43], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:43.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(466);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(7, 16, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-44}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-44], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 44);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-44], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:44.>t-netreference:72571872.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(467);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(17, 27, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-45}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-45], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 45);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-45], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:45.>t-netreference:72571872.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(468);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(23, 27, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-46}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-46], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 46);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-46], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:46.>t-netreference:72571872.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(469);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(26, 27, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-47}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-47], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 47);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-47], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:47.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(470);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(12, 53, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-48}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-48], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 48);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-48], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:48.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(471);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(25, 53, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-49}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-49], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 49);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-49], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:49.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(472);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(14, 30, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-50}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-50], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 50);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-50], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:50.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(473);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(18, 30, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-51}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-51], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 51);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-51], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:51.>t-netreference:72571872.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(474);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(26, 30, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-52}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-52], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 52);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-52], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:52.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(475);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(32, 30, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: 1DE2}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1DE2], 1, false);
SetExprAtt(1, [300]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|2. Fixed setup time: every product has a setup time of ~10~.}10]);
SetExprAtt(8, [4DS[Label([Pallet],i):=2]4DS]);
SetExprAtt(9, [4DS[Do(
Icon(i) := 25,
OpenInput(AtomByName([1DE2],Model))
)]4DS]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt(14, 300);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 0);
SetExprAtt(30, [mttf]);
SetAtt(31, 298);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int023([1DE2], 0, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:46.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(476);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(26, 22, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: 1DE1}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1DE1], 1, false);
SetExprAtt(1, [300]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.0|1. No setup time.}0]);
SetExprAtt(8, [4DS[Label([Pallet],i):=2]4DS]);
SetExprAtt(9, [4DS[Do(
Icon(i) := 25,
OpenInput(AtomByName([1DE1],Model))
)]4DS]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt(14, 300);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 0);
SetExprAtt(30, [mttf]);
SetAtt(31, 9640.98333048644);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int023([1DE1], 0, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:45.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(477);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(23, 22, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: 1DA1}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1DA1], 1, false);
SetExprAtt(1, [300]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|2. Fixed setup time: every product has a setup time of ~10~.}10]);
SetExprAtt(8, [4DS[Label([Pallet],i):=2]4DS]);
SetExprAtt(9, [Icon(i) := 25]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt(14, 300);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 0);
SetExprAtt(30, [mttf]);
SetAtt(31, 1714.5);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int023([1DA1], 0, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:44.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(478);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(17, 22, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: 1DA2}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1DA2], 1, false);
SetExprAtt(1, [300]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|2. Fixed setup time: every product has a setup time of ~10~.}10]);
SetExprAtt(8, [4DS[Label([Pallet],i):=2]4DS]);
SetExprAtt(9, [Icon(i) := 25]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt(14, 300);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 0);
SetExprAtt(30, [mttf]);
SetAtt(31, 1859);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int023([1DA2], 0, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:51.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(479);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(26, 32, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: 1DB1}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1DB1], 1, false);
SetExprAtt(1, [800]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|2. Fixed setup time: every product has a setup time of ~10~.}10]);
SetExprAtt(8, [4DS[Label([Pallet],i):=7
]4DS]);
SetExprAtt(9, [Icon(i) := 25]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt(14, 800);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 0);
SetExprAtt(30, [mttf]);
SetAtt(31, 832);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int023([1DB1], 0, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:54.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(480);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(10, 8, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: 1DJ2}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1DJ2], 1, false);
SetExprAtt(1, [300
]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|2. Fixed setup time: every product has a setup time of ~10~.}10]);
SetExprAtt(8, [0]);
SetExprAtt(9, [0
]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt(14, 300);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 8421504);
SetExprAtt(30, [mttf]);
SetAtt(31, 1034);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int023([1DJ2], 8421504, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:12.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(481);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(-17, 12, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: 1DJ1}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1DJ1], 1, false);
SetExprAtt(1, [300]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|2. Fixed setup time: every product has a setup time of ~10~.}10]);
SetExprAtt(8, [0]);
SetExprAtt(9, [0]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt(14, 300);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 0);
SetExprAtt(30, [mttf]);
SetAtt(31, 1344);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int023([1DJ1], 0, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:11.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(482);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(-17, 9, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: 1DH4}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1DH4], 1, false);
SetExprAtt(1, [300]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|~0~.}0]);
SetExprAtt(8, [0]);
SetExprAtt(9, [0]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt(14, 300);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 0);
SetExprAtt(30, [mttf]);
SetAtt(31, 9523.11666467143);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int023([1DH4], 0, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:53.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(483);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(-2, 9, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: 1DH3}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1DH3], 1, false);
SetExprAtt(1, [300]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|~0~.}0]);
SetExprAtt(8, [0]);
SetExprAtt(9, [Icon(i) := 25]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt(14, 300);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 8421504);
SetExprAtt(30, [mttf]);
SetAtt(31, 9223.11666467143);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int023([1DH3], 8421504, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:295.>t-node1:9.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(484);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(-5, 9, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: 1DH2}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1DH2], 1, false);
SetExprAtt(1, [300]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|~0~.}0]);
SetExprAtt(8, [0]);
SetExprAtt(9, [4DS[Do(
Icon(i) := 25,
OpenInput(AtomByName([1DH2],Model))
)]4DS]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt(14, 300);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 8421504);
SetExprAtt(30, [mttf]);
SetAtt(31, 1351.19999988021);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int023([1DH2], 8421504, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:295.>t-node1:9.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(485);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(-5, 12, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: N1-53}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-53], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 53);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-53], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-netreference:72571872.>t-node1:53.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(486);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(3, 9, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-54}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-54], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 54);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-54], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:54.>t-netreference:72571872.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(487);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(10, 6, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-55}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-55], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 55);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-55], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:55.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(488);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(47, 30, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-56}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-56], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 56);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-56], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:56.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(489);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(47, 10, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-57}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-57], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 57);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-57], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:57.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(490);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(47, 27, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-58}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-58], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 58);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-58], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:58.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(491);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(7, 11, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-59}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-59], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 59);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-59], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:59.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(492);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(7, 23, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-60}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-60], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 60);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-60], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:60.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(493);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(3, 21, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-61}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-61], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 61);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-61], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:61.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(494);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(7, 49, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-62}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-62], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 62);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-62], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:62.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(495);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(7, 42, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-63}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-63], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 63);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-63], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:63.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(496);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(7, 33, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-64}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-64], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 64);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-64], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:64.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(497);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(47, 34, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-65}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-65], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 65);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-65], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:65.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(498);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(47, 40, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-66}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-66], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 66);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-66], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:66.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(499);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(47, 45, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-67}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-67], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 67);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-67], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:67.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(500);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(38, 6, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-68}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-68], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 68);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-68], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:68.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(501);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(33, 6, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-69}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-69], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 69);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-69], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:69.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(502);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(43, 27, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-70}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-70], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 70);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-70], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:70.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(503);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(-4, 6, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-71}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-71], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 71);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-71], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:71.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(504);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(-9, 6, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: N1-72}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-72], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 72);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-72], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:72.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(505);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(7, 6, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1000000
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: Product}

sets;
AtomByName([Product], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Product'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Product], 1, false);
SetAtt(1, 11);
SetAtt(2, 1);
int023([Product], 12615680, 73809);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\Pallet.bmp]), [Pallet.bmp], 1, 0, 0, 255, 255, false, 0));
AddModel3D(
	RegisterModel3D(Model3DDir([box-closed.wrl]), [box-closed.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([box-opened.wrl]), [box-opened.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([pallet-wood.wrl]), [pallet-wood.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([pallet-plastic.wrl]), [pallet-plastic.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([oildrum.wrl]), [oildrum.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([crate.wrl]), [crate.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Product.ico]));
int001(506);
SetLoc(52, 16, 0);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
int018;


{Atom: 1FD3}

sets;
AtomByName([ArrivalList], Main);
if(not(AtomExists), Error([Cannot find mother atom 'ArrivalList'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1FD3], 1, false);
CreateAttributes(8);
SetAttributeName(r(1), [Table_ArrivalTime_Row_1]);
SetAttributeName(r(2), [Table_Quantity_Row_1]);
SetAttributeName(r(3), [Table_ArrivalTime_Row_2]);
SetAttributeName(r(4), [Table_Quantity_Row_2]);
SetAttributeName(r(5), [Table_ArrivalTime_Row_3]);
SetAttributeName(r(6), [Table_Quantity_Row_3]);
SetAttributeName(r(7), [Table_ArrivalTime_Row_4]);
SetAttributeName(r(8), [Table_Quantity_Row_4]);
SetAtt(1, 0);
SetExprAtt(2, [negexp(10)]);
SetAtt(3, 1);
SetExprAtt(4, [{.0|1. No repeat.}0]);
SetAtt(5, 0);
SetAtt(6, 1);
SetExprAtt(7, [4DS[Label([Pallet],i)]4DS]);
SetAtt(8, 1);
SetAtt(9, 4);
SetAtt(10, 0);
SetAtt(11, 0);
SetTextAtt(r(1), [20]);
SetTextAtt(r(2), [1]);
SetTextAtt(r(3), [100]);
SetTextAtt(r(4), [1]);
SetTextAtt(r(5), [150]);
SetTextAtt(r(6), [1]);
SetTextAtt(r(7), [200]);
SetTextAtt(r(8), [1]);
int023([1FD3], 7168771, 1256);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\source.bmp]), [source]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\ArrivalList.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:20.]);
SetChannels(1, 1);
SetChannelRanges(1, 1, 1, 255);
int001(507);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(49, 16, 0);
SetSize(3, 3, 0.1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(4, 5);
int015(0, 30, [``
1
2
3
4
]);
int015(1, 60, [`Arrival Time`
20
100
150
200
]);
int015(2, 60, [`Atom name`
1
2
3
4
]);
int015(3, 60, [`Quantity`
1
1
1
1
]);
int015(4, 60, [`Channel`
1
1
1
1
]);
int015(5, 80, [`Pallet`
`=1`
`=2`
`=3`
`=4`
]);
SetStatus(2);
int018;


{Atom: N1-73}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-73], 1, false);
SetAtt(1, 1);
SetAtt(2, 1);
SetAtt(3, 1);
SetAtt(4, 73);
SetAtt(5, 1);
SetAtt(6, 1);
SetAtt(7, 1);
int023([N1-73], 0, 6384);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:73.>t-netreference:72571872.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(687);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(3, 30, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 4);
int015(0, 0, [``
1
]);
int015(1, 0, [1
1000000
]);
int015(2, 0, [2
0
]);
int015(3, 0, [3
0
]);
int015(4, 0, [4
0
]);
SetStatus(0);
int018;


{Atom: Node Manipulator61}

sets;
AtomByName([Node Manipulator], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Node Manipulator'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Node Manipulator61], 1, false);
SetAtt(1, 1);
SetExprAtt(2, [4DS[do( setatt(3,0,c), var([atmLP], vbAtom), ForAtomTreeUnder(  Model,  do(   atmLP := a,   if(    and(     >(max(xAbsLoc(atmLP, Model), +(xabsloc(atmLP, Model), xsize(atmLP))), xabsloc(c, Model)),     >(max(yabsloc(atmLP, Model), +(yabsloc(atmLP, Model), ysize(atmLP))), yabsloc(c, Model)),     <(min(xabsloc(atmLP, Model), +(xabsloc(atmLP, Model), xsize(atmLP))), +(xabsloc(c, Model), xsize(c))),     <(min(yabsloc(atmLP, Model), +(yabsloc(atmLP, Model), ysize(atmLP))), +(yabsloc(c, Model),ysize(c))),     <>(atomid(atmLP),atomid(c)),     not(ddb([t999-hidenodes],atmLP))    ),    do(     setatt(3,1,c),     att([CurrentAtom], c) := ptv(atmLP)    )   )  ) ))]4DS]);
SetAtt(3, 1);
SetAtt(4, 1);
SetAtt(5, 0);
SetExprAtt(6, [if( atomexists(in(1, c)), connect(0, c, 1, c))]);
SetAtt(7, 0);
SetAtt(8, 1);
SetAtt(9, 1);
SetAtt(10, 1);
SetAtt(11, 1);
SetAtt(12, 0);
int023([Node Manipulator61], 32768, 3106);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NodeManipulator.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 1, 1, 1);
int001(508);
SetLoc(-4, 32, 0);
SetSize(2, 2, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetStatus(0);
int018;
Up;
int014(1, 394, 2, 409, 0);
int014(2, 410, 1, 394, 0);
int014(1, 395, 3, 409, 0);
int014(3, 410, 1, 395, 0);
int014(1, 396, 4, 409, 0);
int014(4, 410, 1, 396, 0);
int014(1, 397, 5, 409, 0);
int014(5, 410, 1, 397, 0);
int014(1, 398, 6, 409, 0);
int014(6, 410, 1, 398, 0);
int014(1, 399, 7, 409, 0);
int014(7, 410, 1, 399, 0);
int014(1, 400, 9, 409, 0);
int014(9, 410, 1, 400, 0);
int014(1, 401, 1, 481, 0);
int014(10, 410, 1, 401, 0);
int014(1, 402, 11, 409, 0);
int014(11, 410, 1, 402, 0);
int014(1, 403, 1, 485, 0);
int014(12, 410, 1, 403, 0);
int014(1, 404, 17, 409, 0);
int014(17, 410, 1, 404, 0);
int014(1, 405, 18, 409, 0);
int014(18, 410, 1, 405, 0);
int014(1, 406, 19, 409, 0);
int014(19, 410, 1, 406, 0);
int014(1, 408, 2, 410, 0);
int014(2, 409, 1, 408, 0);
int014(2, 408, 0, 458, 0);
int014(3, 408, 0, 458, 0);
int014(4, 408, 0, 458, 0);
int014(1, 409, 1, 451, 0);
int014(1, 507, 1, 409, 0);
int014(3, 409, 1, 454, 0);
int014(4, 409, 1, 456, 0);
int014(5, 409, 1, 455, 0);
int014(1, 480, 8, 409, 0);
int014(1, 482, 10, 409, 0);
int014(1, 483, 12, 409, 0);
int014(1, 478, 13, 409, 0);
int014(1, 479, 14, 409, 0);
int014(1, 477, 15, 409, 0);
int014(1, 476, 16, 409, 0);
int014(1, 410, 1, 452, 0);
int014(1, 451, 1, 410, 0);
int014(1, 454, 3, 410, 0);
int014(1, 456, 4, 410, 0);
int014(1, 455, 5, 410, 0);
int014(8, 410, 1, 480, 0);
int014(13, 410, 1, 478, 0);
int014(14, 410, 1, 479, 0);
int014(15, 410, 1, 477, 0);
int014(16, 410, 1, 476, 0);
int014(1, 411, 0, 413, 0);
int014(2, 411, 0, 394, 0);
int014(1, 412, 0, 439, 0);
int014(2, 412, 0, 460, 0);
int014(1, 413, 0, 414, 0);
int014(2, 413, 0, 395, 0);
int014(1, 414, 0, 415, 0);
int014(2, 414, 0, 396, 0);
int014(1, 415, 0, 416, 0);
int014(2, 415, 0, 397, 0);
int014(1, 416, 0, 417, 0);
int014(2, 416, 0, 398, 0);
int014(1, 417, 0, 487, 0);
int014(2, 417, 0, 399, 0);
int014(1, 418, 0, 420, 0);
int014(2, 418, 0, 400, 0);
int014(1, 419, 0, 493, 0);
int014(2, 419, 0, 403, 0);
int014(1, 420, 0, 421, 0);
int014(1, 421, 0, 422, 0);
int014(2, 421, 0, 482, 0);
int014(1, 422, 0, 423, 0);
int014(2, 422, 0, 401, 0);
int014(1, 423, 0, 424, 0);
int014(2, 423, 0, 402, 0);
int014(1, 424, 0, 429, 0);
int014(1, 425, 0, 426, 0);
int014(2, 425, 0, 404, 0);
int014(1, 426, 0, 427, 0);
int014(2, 426, 0, 405, 0);
int014(1, 427, 0, 502, 0);
int014(2, 427, 0, 406, 0);
int014(1, 428, 0, 486, 0);
int014(2, 428, 0, 503, 0);
int014(1, 429, 0, 442, 0);
int014(1, 433, 0, 411, 0);
int014(2, 433, 0, 412, 0);
int014(3, 433, 0, 413, 0);
int014(4, 433, 0, 414, 0);
int014(5, 433, 0, 415, 0);
int014(6, 433, 0, 416, 0);
int014(7, 433, 0, 417, 0);
int014(8, 433, 0, 418, 0);
int014(9, 433, 0, 419, 0);
int014(10, 433, 0, 420, 0);
int014(11, 433, 0, 421, 0);
int014(12, 433, 0, 422, 0);
int014(13, 433, 0, 423, 0);
int014(14, 433, 0, 424, 0);
int014(15, 433, 0, 425, 0);
int014(16, 433, 0, 426, 0);
int014(17, 433, 0, 427, 0);
int014(18, 433, 0, 428, 0);
int014(19, 433, 0, 429, 0);
int014(20, 433, 0, 438, 0);
int014(21, 433, 0, 439, 0);
int014(22, 433, 0, 440, 0);
int014(23, 433, 0, 441, 0);
int014(24, 433, 0, 442, 0);
int014(25, 433, 0, 443, 0);
int014(26, 433, 0, 444, 0);
int014(27, 433, 0, 445, 0);
int014(28, 433, 0, 446, 0);
int014(29, 433, 0, 447, 0);
int014(30, 433, 0, 448, 0);
int014(31, 433, 0, 449, 0);
int014(32, 433, 0, 450, 0);
int014(33, 433, 0, 453, 0);
int014(34, 433, 0, 457, 0);
int014(35, 433, 0, 458, 0);
int014(36, 433, 0, 459, 0);
int014(37, 433, 0, 460, 0);
int014(38, 433, 0, 461, 0);
int014(39, 433, 0, 462, 0);
int014(40, 433, 0, 463, 0);
int014(41, 433, 0, 464, 0);
int014(42, 433, 0, 465, 0);
int014(43, 433, 0, 466, 0);
int014(44, 433, 0, 467, 0);
int014(45, 433, 0, 468, 0);
int014(46, 433, 0, 469, 0);
int014(47, 433, 0, 470, 0);
int014(48, 433, 0, 471, 0);
int014(49, 433, 0, 472, 0);
int014(50, 433, 0, 473, 0);
int014(51, 433, 0, 474, 0);
int014(52, 433, 0, 475, 0);
int014(53, 433, 0, 486, 0);
int014(54, 433, 0, 487, 0);
int014(55, 433, 0, 488, 0);
int014(56, 433, 0, 489, 0);
int014(57, 433, 0, 490, 0);
int014(58, 433, 0, 491, 0);
int014(59, 433, 0, 492, 0);
int014(60, 433, 0, 493, 0);
int014(61, 433, 0, 494, 0);
int014(62, 433, 0, 495, 0);
int014(63, 433, 0, 496, 0);
int014(64, 433, 0, 497, 0);
int014(65, 433, 0, 498, 0);
int014(66, 433, 0, 499, 0);
int014(67, 433, 0, 500, 0);
int014(68, 433, 0, 501, 0);
int014(69, 433, 0, 502, 0);
int014(70, 433, 0, 503, 0);
int014(71, 433, 0, 504, 0);
int014(72, 433, 0, 505, 0);
int014(73, 433, 0, 687, 0);
int014(1, 435, 0, 394, 0);
int014(2, 435, 0, 395, 0);
int014(3, 435, 0, 396, 0);
int014(4, 435, 0, 397, 0);
int014(5, 435, 0, 398, 0);
int014(6, 435, 0, 399, 0);
int014(7, 435, 0, 400, 0);
int014(8, 435, 0, 403, 0);
int014(9, 435, 0, 482, 0);
int014(10, 435, 0, 401, 0);
int014(11, 435, 0, 402, 0);
int014(12, 435, 0, 404, 0);
int014(13, 435, 0, 405, 0);
int014(14, 435, 0, 406, 0);
int014(15, 435, 0, 507, 0);
int014(16, 435, 0, 452, 0);
int014(17, 435, 0, 478, 0);
int014(18, 435, 0, 477, 0);
int014(19, 435, 0, 476, 0);
int014(20, 435, 0, 479, 0);
int014(21, 435, 0, 483, 0);
int014(22, 435, 0, 480, 0);
int014(1, 438, 0, 489, 0);
int014(2, 438, 0, 507, 0);
int014(1, 439, 0, 459, 0);
int014(1, 440, 0, 428, 0);
int014(1, 441, 0, 440, 0);
int014(1, 442, 0, 443, 0);
int014(1, 443, 0, 444, 0);
int014(2, 443, 0, 467, 0);
int014(1, 444, 0, 472, 0);
int014(1, 445, 0, 446, 0);
int014(1, 446, 0, 445, 0);
int014(2, 446, 0, 447, 0);
int014(1, 447, 0, 446, 0);
int014(2, 447, 0, 450, 0);
int014(1, 448, 0, 494, 0);
int014(1, 449, 0, 490, 0);
int014(1, 450, 0, 471, 0);
int014(2, 451, 0, 457, 0);
int014(3, 451, 0, 457, 0);
int014(4, 451, 0, 457, 0);
int014(1, 453, 0, 438, 0);
int014(2, 453, 0, 452, 0);
int014(2, 454, 0, 475, 0);
int014(3, 454, 0, 475, 0);
int014(4, 454, 0, 475, 0);
int014(2, 455, 0, 473, 0);
int014(3, 455, 0, 473, 0);
int014(4, 455, 0, 473, 0);
int014(2, 456, 0, 474, 0);
int014(3, 456, 0, 474, 0);
int014(4, 456, 0, 474, 0);
int014(1, 457, 0, 449, 0);
int014(1, 458, 0, 457, 0);
int014(1, 459, 0, 461, 0);
int014(1, 460, 0, 500, 0);
int014(1, 461, 0, 462, 0);
int014(1, 462, 0, 463, 0);
int014(1, 463, 0, 464, 0);
int014(1, 464, 0, 441, 0);
int014(1, 465, 0, 491, 0);
int014(1, 466, 0, 492, 0);
int014(1, 467, 0, 468, 0);
int014(2, 467, 0, 478, 0);
int014(1, 468, 0, 469, 0);
int014(2, 468, 0, 477, 0);
int014(1, 469, 0, 425, 0);
int014(2, 469, 0, 476, 0);
int014(1, 470, 0, 448, 0);
int014(1, 471, 0, 470, 0);
int014(1, 472, 0, 473, 0);
int014(1, 473, 0, 474, 0);
int014(1, 474, 0, 475, 0);
int014(2, 474, 0, 479, 0);
int014(1, 475, 0, 458, 0);
int014(1, 481, 1, 482, 0);
int014(1, 484, 1, 483, 0);
int014(1, 485, 1, 484, 0);
int014(1, 486, 0, 419, 0);
int014(2, 486, 0, 483, 0);
int014(1, 487, 0, 465, 0);
int014(2, 487, 0, 480, 0);
int014(1, 488, 0, 497, 0);
int014(1, 489, 0, 412, 0);
int014(1, 490, 0, 453, 0);
int014(1, 491, 0, 466, 0);
int014(1, 492, 0, 443, 0);
int014(1, 493, 0, 442, 0);
int014(1, 494, 0, 495, 0);
int014(1, 495, 0, 496, 0);
int014(1, 496, 0, 444, 0);
int014(1, 497, 0, 498, 0);
int014(1, 498, 0, 499, 0);
int014(1, 499, 0, 447, 0);
int014(1, 500, 0, 501, 0);
int014(1, 501, 0, 411, 0);
int014(1, 502, 0, 490, 0);
int014(1, 503, 0, 504, 0);
int014(1, 504, 0, 418, 0);
int014(1, 505, 0, 428, 0);
int014(0, 506, 1, 507, 0);
int014(1, 687, 0, 444, 0);
int006(0, 408, 19, 999, 0, 0);
int006(0, 451, 19, 999, 0, 0);
int006(0, 454, 19, 999, 0, 0);
int006(0, 455, 19, 999, 0, 0);
int006(0, 456, 19, 999, 0, 0);
int006(20, 507, 1, 0, 0, 0);


{Experiment settings}

int034;
SetAtt(17, 1);
int007;
