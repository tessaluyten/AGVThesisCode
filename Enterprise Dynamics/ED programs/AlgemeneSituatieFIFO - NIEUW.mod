{Enterprise Dynamics startup information}

if(StartingED, SoftStartED([]));


{Model information}

AddLayer([Main], 1, 1, 0);


{Load required atoms}

int011;
int035([Product], pDir([Atoms\BASIC MODELING\Product.atm]));
int035([Server], pDir([Atoms\BASIC MODELING\Server.atm]));
int035([Sink], pDir([Atoms\BASIC MODELING\Sink.atm]));
int035([Source], pDir([Atoms\BASIC MODELING\Source.atm]));
int035([Network Controller], pDir([Atoms\NETWORK\Network Controller.atm]));
int035([Network Node], pDir([Atoms\NETWORK\Network Node.atm]));
int035([Node Manipulator], pDir([Atoms\NETWORK\Node Manipulator.atm]));
int035([Advanced Transporter], pDir([Atoms\TRANSPORT\FLOORBOUND\Advanced Transporter.atm]));
int035([Destinator], pDir([Atoms\TRANSPORT\FLOORBOUND\Destinator.atm]));
int035([Dispatcher], pDir([Atoms\TRANSPORT\FLOORBOUND\Dispatcher.atm]));
int012;


{Preregister 4DS}

Dim([row], vbValue);


{Atom: 1FD3}

sets;
AtomByName([Source], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Source'. Inheriting from BaseClass.]));
CreateAtom(a, s, [1FD3], 1, false);
SetExprAtt(1, [{.~1|~1~.}1]);
SetExprAtt(2, [80]);
SetExprAtt(3, [{.0|10. Do Nothing.}0]);
SetExprAtt(4, [4DS[Label([Pallet],i):=1]4DS]);
SetExprAtt(5, [10]);
SetExprAtt(6, [{.-1|1. Unlimited.}-1]);
SetAtt(7, 4);
int023([1FD3], 7168771, 240);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\source.bmp]), [source]));
AddModel3D(
	RegisterModel3D(Model3DDir([source.wrl]), [source.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([source_Resized.wrl]), [Source_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Source.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:20.]);
SetChannels(1, 1);
SetChannelRanges(1, 1, 1, 255);
int001(2142);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(49, 16, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(2);
int018;


{Atom: 1DD1}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [1DD1], 1, false);
SetExprAtt(1, [300]);
SetExprAtt(2, [{.~1|1. Specific channel: always send to channel ~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.0|1. No setup time.}0]);
SetExprAtt(8, [4DS[Do (
Label([Pallet],i):=2,
CloseInput(AtomByName([1DD1],Model))
)
]4DS]);
SetExprAtt(9, [4DS[Do(
Icon(i) := 25,
OpenInput(AtomByName([1DD1],Model))
)]4DS]);
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
int001(2143);
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
SetExprAtt(1, [300]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|2. Fixed setup time: every product has a setup time of ~10~.}10]);
SetExprAtt(8, [4DS[Do (
Label([Pallet],i):=2,
CloseInput(AtomByName([1DC4],Model))
)
]4DS]);
SetExprAtt(9, [4DS[Do (
Icon(i) := 25,
OpenInput(AtomByName([1DC4],Model))
)
]4DS]);
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
SetAtt(31, 1393.5);
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
int001(2144);
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
SetExprAtt(8, [4DS[Do (
Label([Pallet],i):=2,
CloseInput(AtomByName([1DC3],Model))
)
]4DS]);
SetExprAtt(9, [4DS[Do(
Icon(i) := 25,
OpenInput(AtomByName([1DC3],Model))
)]4DS]);
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
int001(2145);
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
SetExprAtt(8, [4DS[Do (
Label([Pallet],i):=2,
CloseInput(AtomByName([1DC2],Model))
)
]4DS]);
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
int001(2146);
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
SetExprAtt(8, [4DS[Do (
Label([Pallet],i):=2,
CloseInput(AtomByName([1DC1],Model))
)
]4DS]);
SetExprAtt(9, [4DS[Do(
Icon(i) := 25,
OpenInput(AtomByName([1DC1],Model))
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
int001(2147);
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
SetExprAtt(1, [300]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|2. Fixed setup time: every product has a setup time of ~10~.}10]);
SetExprAtt(8, [4DS[Do (
Label([Pallet],i):=2,
CloseInput(AtomByName([1DB2],Model))
)
]4DS]);
SetExprAtt(9, [4DS[Do(
Icon(i) := 25,
OpenInput(AtomByName([1DB2],Model))
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
SetAtt(31, 915);
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
int001(2148);
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
SetExprAtt(1, [300]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|2. Fixed setup time: every product has a setup time of ~10~.}10]);
SetExprAtt(8, [4DS[Do (
Label([Pallet],i):=2,
CloseInput(AtomByName([1DI1],Model))
)
]4DS]);
SetExprAtt(9, [4DS[Do(
Icon(i) := 25,
OpenInput(AtomByName([1DI1],Model))
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
SetAtt(31, 415.5);
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
int001(2149);
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
SetExprAtt(8, [4DS[Do (
Label([Pallet],i):=2,
CloseInput(AtomByName([1DK1],Model))
)
]4DS]);
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
SetAtt(31, 1800.5);
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
int001(2150);
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
SetExprAtt(8, [4DS[Do (
Label([Pallet],i):=2,
CloseInput(AtomByName([1DK2],Model))
)
]4DS]);
SetExprAtt(9, [4DS[Do(
Icon(i) := 25,
OpenInput(AtomByName([1DK2],Model))
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
SetAtt(31, 294);
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
int001(2151);
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
SetExprAtt(8, [4DS[Do (
Label([Pallet],i):=2,
CloseInput(AtomByName([1DH1],Model))
)
]4DS]);
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
SetAtt(31, 1018);
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
int001(2152);
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
SetExprAtt(8, [4DS[Do (
Label([Pallet],i):=2,
CloseInput(AtomByName([1DF1],Model))
)
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
SetAtt(31, 756);
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
int001(2153);
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
SetExprAtt(8, [4DS[Do (
Label([Pallet],i):=2,
CloseInput(AtomByName([1DF2],Model))
)
]4DS]);
SetExprAtt(9, [4DS[Do(
Icon(i) := 25,
OpenInput(AtomByName([1DF2],Model))
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
int001(2154);
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
SetExprAtt(8, [4DS[Do (
Label([Pallet],i):=2,
CloseInput(AtomByName([1DG1],Model))
)]4DS]);
SetExprAtt(9, [4DS[Do(
Icon(i) := 25,
OpenInput(AtomByName([1DG1],Model))
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
int001(2155);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(36, 22, 0);
SetSize(3, 3, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
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
Set(DdbRec, [>drawxsize:2.>drawysize:2.]);
int001(2156);
SetLoc(52, 16, 0);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
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
SetExprAtt(12, [4DS[{.~1|~Do (
  GlobalVar([row],vbValue,(IndexMax(NrOC(out(1,c)),OCReady(Count,out(1,c))*Random(100000)))),
  
  While 
  (
    row = 1, 
    GlobalVar([row],vbValue,(IndexMax(NrOC(out(1,c)),OCReady(Count,out(1,c))*Random(100000))))  
  ), 
  If(
    Label([Pallet], first(c)) = 1,
    row,
    1
  ) 
  )~.}Do (
  GlobalVar([row],vbValue,(IndexMax(NrOC(out(1,c)),OCReady(Count,out(1,c))*Random(100000)))),
  
  While 
  (
    row = 1, 
    GlobalVar([row],vbValue,(IndexMax(NrOC(out(1,c)),OCReady(Count,out(1,c))*Random(100000))))  
  ), 
  If(
    Label([Pallet], first(c)) = 1,
    row,
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
SetAtt(37, 1762);
SetExprAtt(38, [0.5]);
SetAtt(39, 0);
SetAtt(40, 0);
SetExprAtt(41, [0]);
SetAtt(42, 0);
SetAtt(43, 0);
SetAtt(44, 88117344);
SetAtt(45, 88118304);
SetAtt(46, 88119264);
SetAtt(47, 88115424);
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
SetAtt(64, 270);
SetAtt(65, 270);
SetAtt(66, 0);
SetAtt(67, 10);
SetAtt(68, 88120224);
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
SetAtt(81, 99377776);
SetAtt(82, 2);
SetAtt(83, 88121184);
SetAtt(84, 88122144);
SetAtt(85, 88123104);
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
int023([AGV2], 767720, 66675);
Set(Icon(a), 
	RegisterIcon(ModDir([AGV_ED.jpg]), [AGV_ED.jpg], 1, 0, 0, 255, 255, false, 0));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Transporter2.ico]));
Set(DdbRec, [>t-transporter:1.>n1:51.>n2:50.>n3:33.>d1:1000000000000.>d2:1000000000000.>d4:1000000000000.>previousedstnode:51.>t-dest:1.>t-network:1.>t-nodeconnections-n1:1.>t-node1:1.>t-turntime:3.>d3:30.>t-continue:1.>t-start:1.]);
SetChannels(3, 4);
SetChannelRanges(3, 3, 4, 4);
int001(2157);
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
SetExprAtt(1, [{.dispatch_ftf|2. A free transporter (FTF) --> look for a free transporter. Check the First Transporter connected to the dispatcher First./.}dispatch_ftf]);
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
int001(2158);
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
int001(2159);
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
SetLoc(-10, 0, 0);
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
Set(DdbRec, [>t-node:1.>t-netreference:99372016.>t-node1:1.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2160);
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
Set(DdbRec, [>t-node:1.>t-netreference:99372016.>t-node1:2.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2161);
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
Set(DdbRec, [>t-node:1.>t-netreference:99372016.>t-node1:3.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2162);
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
Set(DdbRec, [>t-node:1.>t-netreference:99372016.>t-node1:4.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2163);
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
Set(DdbRec, [>t-node:1.>t-netreference:99372016.>t-node1:5.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2164);
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
Set(DdbRec, [>t-node:1.>t-netreference:99372016.>t-node1:6.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2165);
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
Set(DdbRec, [>t-node:1.>t-netreference:99372016.>t-node1:7.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2166);
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
Set(DdbRec, [>t-node:1.>t-netreference:99372016.>t-node1:8.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2167);
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
Set(DdbRec, [>t-node:1.>t-netreference:99372016.>t-node1:9.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2168);
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
Set(DdbRec, [>t-node:1.>t-netreference:99372016.>t-node1:10.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2169);
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
Set(DdbRec, [>t-node:1.>t-netreference:99372016.>t-node1:11.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2170);
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
Set(DdbRec, [>t-node:1.>t-netreference:99372016.>t-node1:12.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2171);
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
Set(DdbRec, [>t-node:1.>t-netreference:99372016.>t-node1:13.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2172);
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
Set(DdbRec, [>t-node:1.>t-netreference:99372016.>t-node1:14.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2173);
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
Set(DdbRec, [>t-node:1.>t-netreference:99372016.>t-node1:15.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2174);
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
Set(DdbRec, [>t-node:1.>t-netreference:99372016.>t-node1:16.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2175);
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
Set(DdbRec, [>t-node:1.>t-netreference:99372016.>t-node1:17.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2176);
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
Set(DdbRec, [>t-node:1.>t-netreference:99372016.>t-node1:18.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2177);
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
Set(DdbRec, [>t-node:1.>t-netreference:99372016.>t-node1:19.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2178);
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
SetAtt(3, 97739056);
SetAtt(4, 99374896);
SetAtt(5, 97740016);
SetAtt(6, 1);
SetAtt(7, 97740976);
SetAtt(8, 99382576);
SetAtt(9, 97741936);
SetAtt(10, 97742896);
int023([Network Controller], 0, 530528);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkController.ico]));
int001(2179);
SetLoc(-15, 0, 0);
SetSize(4, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(72, 72);
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
int001(2180);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(72, 72);
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
102
]);
int015(8, 0, [`N1-8`
41
60
38
35
32
29
26
0
140
174
171
165
162
150
99
96
92
16
128
70
63
19
25
125
121
124
209
204
187
147
84
177
75
88
93
59
56
53
46
38
31
20
132
111
105
102
152
165
117
113
105
99
143
23
210
64
81
137
125
131
143
136
127
206
200
195
51
46
85
9
4
128
]);
int015(9, 0, [`N1-9`
31
50
28
25
22
19
16
170
0
164
161
155
152
140
89
86
82
6
118
60
53
9
15
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
49
46
43
36
28
21
10
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
3
13
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
41
36
75
179
174
118
]);
int015(10, 0, [`N1-10`
47
66
44
41
38
35
32
6
146
0
177
171
168
156
105
102
98
22
134
76
69
25
31
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
65
62
59
52
44
37
26
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
29
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
57
52
91
15
10
134
]);
int015(11, 0, [`N1-11`
50
69
47
44
41
38
35
9
149
3
0
174
171
159
108
105
101
25
137
79
72
28
34
134
130
133
218
213
196
156
93
186
84
97
102
68
65
62
55
47
40
29
141
120
114
111
161
174
126
122
114
108
152
32
219
73
90
146
134
140
152
145
136
215
209
204
60
55
94
18
13
137
]);
int015(12, 0, [`N1-12`
56
75
53
50
47
44
41
15
155
9
6
0
177
165
114
111
107
31
143
85
78
34
40
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
74
71
68
61
53
46
35
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
38
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
66
61
100
24
19
143
]);
int015(13, 0, [`N1-13`
59
78
56
53
50
47
44
18
158
12
9
3
0
168
117
114
110
34
146
88
81
37
43
143
139
142
227
222
205
165
102
195
93
106
111
77
74
71
64
56
49
38
150
129
123
120
170
183
135
131
123
117
161
41
228
82
99
155
143
149
161
154
145
224
218
213
69
64
103
27
22
146
]);
int015(14, 0, [`N1-14`
71
90
68
65
62
59
56
30
170
24
21
15
12
0
129
126
122
46
158
100
93
49
55
155
151
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
89
86
83
76
68
61
50
162
141
135
132
182
195
147
143
135
129
173
53
240
94
111
167
155
161
173
166
157
236
230
225
81
76
115
39
34
158
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
158
]);
int015(18, 0, [`N1-18`
25
44
22
19
16
13
10
164
124
158
155
149
146
134
83
80
76
0
112
54
47
3
9
109
105
108
193
188
171
131
68
161
59
72
77
43
40
37
30
22
15
4
116
95
89
86
136
149
101
97
89
83
127
7
194
48
65
121
109
115
127
120
111
190
184
179
35
30
69
173
168
112
]);
int015(19, 0, [`N1-19`
93
112
90
87
84
81
78
52
192
46
43
37
34
22
151
148
144
68
0
122
115
71
77
177
173
176
261
256
239
199
136
229
127
140
145
111
108
105
98
90
83
72
184
163
157
154
204
217
169
165
157
151
195
75
262
116
133
189
177
183
195
188
179
258
252
247
103
98
137
61
56
180
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
109
]);
int015(24, 0, [`N1-24`
46
65
43
40
37
34
31
55
15
49
46
40
37
25
104
101
97
21
3
75
68
24
30
0
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
64
61
58
51
43
36
25
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
18
28
215
69
86
142
130
6
148
141
132
211
205
200
56
51
90
64
59
133
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
29
]);
int015(53, 0, [`N1-53`
28
47
25
22
19
16
13
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
3
115
57
50
6
12
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
46
43
40
33
25
18
7
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
0
10
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
38
33
72
176
171
115
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
125
]);
int015(60, 0, [`N1-60`
40
59
37
34
31
28
25
179
9
173
170
164
161
149
98
95
91
15
127
69
62
18
24
124
120
123
208
203
186
146
83
176
74
87
92
58
55
52
45
37
30
19
131
110
104
101
151
164
116
112
104
98
12
22
209
63
80
136
124
0
142
135
126
205
199
194
50
45
84
188
183
127
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
165
]);
int015(70, 0, [`N1-70`
32
51
29
26
23
20
17
171
131
165
162
156
153
141
90
87
83
7
119
61
54
10
16
116
112
115
200
195
178
138
75
168
66
79
84
50
47
44
37
29
22
11
123
102
96
93
143
156
108
104
96
90
134
14
201
55
72
128
116
122
134
127
118
197
191
186
42
37
76
0
175
119
]);
int015(71, 0, [`N1-71`
37
56
34
31
28
25
22
176
136
170
167
161
158
146
95
92
88
12
124
66
59
15
21
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
55
52
49
42
34
27
16
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
139
19
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
47
42
81
5
0
124
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
int001(2181);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(72, 72);
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
26
]);
int015(8, 0, [`N1-8`
3
37
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
18
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
26
]);
int015(9, 0, [`N1-9`
3
37
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
18
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
26
]);
int015(10, 0, [`N1-10`
3
37
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
18
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
26
]);
int015(11, 0, [`N1-11`
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
18
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
26
]);
int015(12, 0, [`N1-12`
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
18
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
26
]);
int015(13, 0, [`N1-13`
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
18
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
26
]);
int015(14, 0, [`N1-14`
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
18
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
26
]);
int015(18, 0, [`N1-18`
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
18
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
26
]);
int015(19, 0, [`N1-19`
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
18
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
26
]);
int015(24, 0, [`N1-24`
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
18
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
26
]);
int015(53, 0, [`N1-53`
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
18
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
26
]);
int015(60, 0, [`N1-60`
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
18
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
26
]);
int015(70, 0, [`N1-70`
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
18
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
26
]);
int015(71, 0, [`N1-71`
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
18
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
SetChannels(0, 72);
int001(2182);
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
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(72, 1);
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
]);
int015(1, 0, [1
97722736
99385456
97213616
97723696
97724656
97725616
97726576
97727536
97728496
97729456
97730416
97731376
97732336
97733296
97734256
97735216
97736176
97737136
97738096
97743856
97744816
97745776
97747696
97748656
97749616
97750576
97751536
97752496
97211696
97753456
97754416
97755376
97758256
97761136
97762096
97210736
99383536
97216496
97763056
97764016
97217456
97764976
99381616
97765936
97173296
99375856
97174256
99384496
97175216
97176176
99379696
97177136
97186736
97187696
97188656
97189616
97190576
97209776
97191536
97192496
97193456
97194416
97195376
97196336
97197296
97198256
97199216
99372976
97200176
97201136
97202096
97204016
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
int001(2183);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(72, 72);
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
int001(2184);
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
`1DD1`
`1DC3`
`1FD3`
`1AA1`
`1DC2`
`1DC4`
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
97178096
97179056
97180016
97180976
97181936
97183856
97184816
97212656
97218416
97720816
97757296
99376816
99380656
769942784
769943744
769944704
769945664
769946624
769947584
769948544
769949504
769950464
]);
int015(2, 0, [`Connected Node`
46
45
44
51
54
11
53
1
4
20
33
5
3
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
int001(2185);
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
int001(2186);
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
int015(8, 0, [`1DD1`
]);
int015(9, 0, [`1DC3`
]);
int015(10, 0, [`1FD3`
]);
int015(11, 0, [`1AA1`
]);
int015(12, 0, [`1DC2`
]);
int015(13, 0, [`1DC4`
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
Set(DdbRec, [>t-node:1.>t-node1:20.>t-netreference:99372016.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2187);
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
Set(DdbRec, [>t-node:1.>t-node1:21.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2188);
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
Set(DdbRec, [>t-node:1.>t-node1:22.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2189);
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
Set(DdbRec, [>t-node:1.>t-node1:23.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2190);
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
Set(DdbRec, [>t-node:1.>t-node1:24.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2191);
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
Set(DdbRec, [>t-node:1.>t-node1:25.>t-netreference:99372016.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2192);
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
Set(DdbRec, [>t-node:1.>t-node1:26.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2193);
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
Set(DdbRec, [>t-node:1.>t-node1:27.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2194);
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
Set(DdbRec, [>t-node:1.>t-node1:28.>t-netreference:99372016.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2195);
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
Set(DdbRec, [>t-node:1.>t-node1:29.>t-netreference:99372016.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2196);
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
Set(DdbRec, [>t-node:1.>t-node1:30.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2197);
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
Set(DdbRec, [>t-node:1.>t-node1:31.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2198);
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
Set(DdbRec, [>t-node:1.>t-node1:32.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2199);
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
SetExprAtt(12, [4DS[{.~1|~Do (
  GlobalVar([row],vbValue,(IndexMax(NrOC(out(1,c)),OCReady(Count,out(1,c))*Random(100000)))),
  
  While 
  (
    row = 1, 
    GlobalVar([row],vbValue,(IndexMax(NrOC(out(1,c)),OCReady(Count,out(1,c))*Random(100000))))  
  ), 
  If(
    Label([Pallet], first(c)) = 1,
    row,
    1
  ) 
  )~.}Do (
  GlobalVar([row],vbValue,(IndexMax(NrOC(out(1,c)),OCReady(Count,out(1,c))*Random(100000)))),
  
  While 
  (
    row = 1, 
    GlobalVar([row],vbValue,(IndexMax(NrOC(out(1,c)),OCReady(Count,out(1,c))*Random(100000))))  
  ), 
  If(
    Label([Pallet], first(c)) = 1,
    row,
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
SetAtt(37, 1687.5);
SetExprAtt(38, [0.5]);
SetAtt(39, 0);
SetAtt(40, 0);
SetExprAtt(41, [0]);
SetAtt(42, 0);
SetAtt(43, 0);
SetAtt(44, 88117344);
SetAtt(45, 88118304);
SetAtt(46, 88119264);
SetAtt(47, 88115424);
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
SetAtt(64, 180);
SetAtt(65, 180);
SetAtt(66, 0);
SetAtt(67, 10);
SetAtt(68, 88120224);
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
SetAtt(81, 99377776);
SetAtt(82, 1);
SetAtt(83, 88121184);
SetAtt(84, 88122144);
SetAtt(85, 88123104);
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
	RegisterIcon(ModDir([AGV_ED.jpg]), [AGV_ED.jpg], 1, 0, 0, 255, 255, false, 0));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Transporter2.ico]));
Set(DdbRec, [>t-transporter:1.>n1:46.>n2:45.>n3:45.>d1:1000000000000.>d2:1000000000000.>d4:1000000000000.>previousedstnode:46.>t-dest:16.>t-network:1.>t-nodeconnections-n1:1.>t-node1:1.>d3:119.>t-turntime:2.8421709430404e-15.>t-ic:15.>t-start:1.]);
SetChannels(3, 4);
SetChannelRanges(3, 3, 4, 4);
int001(2200);
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
int001(2201);
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
Set(DdbRec, [>t-node:1.>t-node1:33.>t-netreference:99372016.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2202);
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
SetExprAtt(12, [4DS[{.~1|~Do (
  GlobalVar([row],vbValue,(IndexMax(NrOC(out(1,c)),OCReady(Count,out(1,c))*Random(100000)))),
  
  While 
  (
    row = 1, 
    GlobalVar([row],vbValue,(IndexMax(NrOC(out(1,c)),OCReady(Count,out(1,c))*Random(100000))))  
  ), 
  If(
    Label([Pallet], first(c)) = 1,
    row,
    1
  ) 
  )~.}Do (
  GlobalVar([row],vbValue,(IndexMax(NrOC(out(1,c)),OCReady(Count,out(1,c))*Random(100000)))),
  
  While 
  (
    row = 1, 
    GlobalVar([row],vbValue,(IndexMax(NrOC(out(1,c)),OCReady(Count,out(1,c))*Random(100000))))  
  ), 
  If(
    Label([Pallet], first(c)) = 1,
    row,
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
SetAtt(37, 1760.5);
SetExprAtt(38, [0.5]);
SetAtt(39, 0);
SetAtt(40, 0);
SetExprAtt(41, [0]);
SetAtt(42, 0);
SetAtt(43, 0);
SetAtt(44, 88117344);
SetAtt(45, 88118304);
SetAtt(46, 88119264);
SetAtt(47, 88115424);
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
SetAtt(64, 90);
SetAtt(65, 90);
SetAtt(66, 0);
SetAtt(67, 10);
SetAtt(68, 88120224);
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
SetAtt(81, 99377776);
SetAtt(82, 3);
SetAtt(83, 88121184);
SetAtt(84, 88122144);
SetAtt(85, 88123104);
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
	RegisterIcon(ModDir([AGV_ED.jpg]), [AGV_ED.jpg], 1, 0, 0, 255, 255, false, 0));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Transporter2.ico]));
Set(DdbRec, [>t-transporter:1.>n1:20.>n2:33.>n3:12.>d1:1000000000000.>d2:1000000000000.>d4:1000000000000.>previousedstnode:20.>t-dest:10.>t-network:1.>t-nodeconnections-n1:1.>t-node1:1.>t-turntime:3.>d3:85.>t-continue:1.>t-start:1.]);
SetChannels(3, 4);
SetChannelRanges(3, 3, 4, 4);
int001(2203);
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
SetExprAtt(12, [4DS[{.~1|~Do (
  GlobalVar([row],vbValue,(IndexMax(NrOC(out(1,c)),OCReady(Count,out(1,c))*Random(100000)))),
  
  While 
  (
    row = 1, 
    GlobalVar([row],vbValue,(IndexMax(NrOC(out(1,c)),OCReady(Count,out(1,c))*Random(100000))))  
  ), 
  If(
    Label([Pallet], first(c)) = 1,
    row,
    1
  ) 
  )~.}Do (
  GlobalVar([row],vbValue,(IndexMax(NrOC(out(1,c)),OCReady(Count,out(1,c))*Random(100000)))),
  
  While 
  (
    row = 1, 
    GlobalVar([row],vbValue,(IndexMax(NrOC(out(1,c)),OCReady(Count,out(1,c))*Random(100000))))  
  ), 
  If(
    Label([Pallet], first(c)) = 1,
    row,
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
SetAtt(37, 1670);
SetExprAtt(38, [0.5]);
SetAtt(39, 0);
SetAtt(40, 0);
SetExprAtt(41, [0]);
SetAtt(42, 0);
SetAtt(43, 0);
SetAtt(44, 88117344);
SetAtt(45, 88118304);
SetAtt(46, 88119264);
SetAtt(47, 88115424);
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
SetAtt(64, 270);
SetAtt(65, 270);
SetAtt(66, 0);
SetAtt(67, 10);
SetAtt(68, 88120224);
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
SetAtt(81, 99377776);
SetAtt(82, 5);
SetAtt(83, 88121184);
SetAtt(84, 88122144);
SetAtt(85, 88123104);
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
	RegisterIcon(ModDir([AGV_ED.jpg]), [AGV_ED.jpg], 1, 0, 0, 255, 255, false, 0));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Transporter2.ico]));
Set(DdbRec, [>t-transporter:1.>n1:50.>n2:50.>n3:20.>d1:1000000000000.>d2:1000000000000.>d4:1000000000000.>previousedstnode:1.>t-dest:16.>t-network:1.>t-nodeconnections-n1:1.>t-node1:1.>t-turntime:3.>d3:43.5.>t-ic:1.>t-start:1.]);
SetChannels(3, 4);
SetChannelRanges(3, 3, 4, 4);
int001(2204);
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
SetExprAtt(12, [4DS[{.~1|~Do (
  GlobalVar([row],vbValue,(IndexMax(NrOC(out(1,c)),OCReady(Count,out(1,c))*Random(100000)))),
  
  While 
  (
    row = 1, 
    GlobalVar([row],vbValue,(IndexMax(NrOC(out(1,c)),OCReady(Count,out(1,c))*Random(100000))))  
  ), 
  If(
    Label([Pallet], first(c)) = 1,
    row,
    1
  ) 
  )~.}Do (
  GlobalVar([row],vbValue,(IndexMax(NrOC(out(1,c)),OCReady(Count,out(1,c))*Random(100000)))),
  
  While 
  (
    row = 1, 
    GlobalVar([row],vbValue,(IndexMax(NrOC(out(1,c)),OCReady(Count,out(1,c))*Random(100000))))  
  ), 
  If(
    Label([Pallet], first(c)) = 1,
    row,
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
SetAtt(37, 1796);
SetExprAtt(38, [0.5]);
SetAtt(39, 0);
SetAtt(40, 0);
SetExprAtt(41, [0]);
SetAtt(42, 0);
SetAtt(43, 0);
SetAtt(44, 88117344);
SetAtt(45, 88118304);
SetAtt(46, 88119264);
SetAtt(47, 88115424);
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
SetAtt(64, 180);
SetAtt(65, 180);
SetAtt(66, 0);
SetAtt(67, 10);
SetAtt(68, 88120224);
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
SetAtt(81, 99377776);
SetAtt(82, 4);
SetAtt(83, 88121184);
SetAtt(84, 88122144);
SetAtt(85, 88123104);
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
	RegisterIcon(ModDir([AGV_ED.jpg]), [AGV_ED.jpg], 1, 0, 0, 255, 255, false, 0));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Transporter2.ico]));
Set(DdbRec, [>t-transporter:1.>n1:33.>n2:57.>n3:3.>d1:1000000000000.>d2:1000000000000.>d4:1000000000000.>previousedstnode:33.>t-dest:1.>t-network:1.>t-nodeconnections-n1:1.>t-node1:1.>t-turntime:3.>d3:37.>t-continue:1.>t-ic:3.>t-start:1.]);
SetChannels(3, 4);
SetChannelRanges(3, 3, 4, 4);
int001(2205);
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
Set(DdbRec, [>t-node:1.>t-node1:34.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2206);
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
Set(DdbRec, [>t-node:1.>t-node1:35.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2207);
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
Set(DdbRec, [>t-node:1.>t-node1:36.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2208);
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
Set(DdbRec, [>t-node:1.>t-node1:37.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2209);
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
Set(DdbRec, [>t-node:1.>t-node1:38.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2210);
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
Set(DdbRec, [>t-node:1.>t-node1:39.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2211);
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
Set(DdbRec, [>t-node:1.>t-node1:40.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2212);
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
Set(DdbRec, [>t-node:1.>t-node1:41.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2213);
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
Set(DdbRec, [>t-node:1.>t-node1:42.>t-netreference:99372016.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2214);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(7, 6, 0);
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
Set(DdbRec, [>t-node:1.>t-node1:43.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2215);
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
Set(DdbRec, [>t-node:1.>t-node1:44.>t-netreference:99372016.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2216);
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
Set(DdbRec, [>t-node:1.>t-node1:45.>t-netreference:99372016.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2217);
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
Set(DdbRec, [>t-node:1.>t-node1:46.>t-netreference:99372016.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2218);
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
Set(DdbRec, [>t-node:1.>t-node1:47.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2219);
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
Set(DdbRec, [>t-node:1.>t-node1:48.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2220);
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
Set(DdbRec, [>t-node:1.>t-node1:49.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2221);
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
Set(DdbRec, [>t-node:1.>t-node1:50.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2222);
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
Set(DdbRec, [>t-node:1.>t-node1:51.>t-netreference:99372016.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2223);
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
Set(DdbRec, [>t-node:1.>t-node1:52.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2224);
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
SetExprAtt(8, [4DS[Do (
Label([Pallet],i):=2,
CloseInput(AtomByName([1DE2],Model))
)
]4DS]);
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
SetAtt(31, 1697.5);
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
int001(2225);
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
SetExprAtt(8, [4DS[Do (
Label([Pallet],i):=2,
CloseInput(AtomByName([1DE1],Model))
)
]4DS]);
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
SetAtt(31, 1373);
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
int001(2226);
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
SetExprAtt(8, [4DS[Do (
Label([Pallet],i):=2,
CloseInput(AtomByName([1DA1],Model))
)
]4DS]);
SetExprAtt(9, [4DS[Do(
Icon(i) := 25,
OpenInput(AtomByName([1DA1],Model))
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
SetAtt(31, 1190.5);
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
int001(2227);
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
SetExprAtt(8, [4DS[Do (
Label([Pallet],i):=2,
CloseInput(AtomByName([1DA2],Model))
)
]4DS]);
SetExprAtt(9, [4DS[Do(
Icon(i) := 25,
OpenInput(AtomByName([1DA2],Model))
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
SetAtt(31, 925.5);
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
int001(2228);
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
SetExprAtt(1, [300]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|2. Fixed setup time: every product has a setup time of ~10~.}10]);
SetExprAtt(8, [4DS[Do (
Label([Pallet],i):=2,
CloseInput(AtomByName([1DB1],Model))
)
]4DS]);
SetExprAtt(9, [4DS[Do(
Icon(i) := 25,
OpenInput(AtomByName([1DB1],Model))
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
SetAtt(31, 93.9892193788423);
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
int001(2229);
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
SetExprAtt(9, [4DS[OpenInput(AtomByName([1DK1],Model))
]4DS]);
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
int001(2230);
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
SetExprAtt(9, [4DS[OpenInput(AtomByName([1DJ1],Model))
]4DS]);
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
int001(2231);
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
int001(2232);
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
SetAtt(31, 1618);
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
int001(2233);
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
SetAtt(31, 1318);
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
int001(2234);
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
Set(DdbRec, [>t-node:1.>t-netreference:99372016.>t-node1:53.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2235);
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
Set(DdbRec, [>t-node:1.>t-node1:54.>t-netreference:99372016.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
int001(2236);
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
Set(DdbRec, [>t-node:1.>t-node1:55.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2237);
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
Set(DdbRec, [>t-node:1.>t-node1:56.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2238);
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
Set(DdbRec, [>t-node:1.>t-node1:57.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2239);
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
Set(DdbRec, [>t-node:1.>t-node1:58.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2240);
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
Set(DdbRec, [>t-node:1.>t-node1:59.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2241);
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
Set(DdbRec, [>t-node:1.>t-node1:60.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2242);
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
Set(DdbRec, [>t-node:1.>t-node1:61.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2243);
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
Set(DdbRec, [>t-node:1.>t-node1:62.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2244);
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
Set(DdbRec, [>t-node:1.>t-node1:63.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2245);
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
Set(DdbRec, [>t-node:1.>t-node1:64.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2246);
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
Set(DdbRec, [>t-node:1.>t-node1:65.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2247);
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
Set(DdbRec, [>t-node:1.>t-node1:66.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2248);
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
Set(DdbRec, [>t-node:1.>t-node1:67.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2249);
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
Set(DdbRec, [>t-node:1.>t-node1:68.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2250);
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
Set(DdbRec, [>t-node:1.>t-node1:69.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2251);
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
Set(DdbRec, [>t-node:1.>t-node1:70.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2252);
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
Set(DdbRec, [>t-node:1.>t-node1:71.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2253);
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
Set(DdbRec, [>t-node:1.>t-node1:72.>t-netreference:99372016.]);
SetChannels(0, 1);
SetChannelRanges(0, 255, 0, 255);
int001(2255);
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
int001(2254);
SetLoc(14, 35, 0);
SetSize(2, 2, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetStatus(0);
int018;
Up;
int014(1, 2142, 1, 2158, 0);
int014(0, 2156, 1, 2142, 0);
int014(1, 2143, 2, 2158, 0);
int014(2, 2159, 1, 2143, 0);
int014(1, 2144, 3, 2158, 0);
int014(3, 2159, 1, 2144, 0);
int014(1, 2145, 4, 2158, 0);
int014(4, 2159, 1, 2145, 0);
int014(1, 2146, 5, 2158, 0);
int014(5, 2159, 1, 2146, 0);
int014(1, 2147, 6, 2158, 0);
int014(6, 2159, 1, 2147, 0);
int014(1, 2148, 7, 2158, 0);
int014(7, 2159, 1, 2148, 0);
int014(1, 2149, 9, 2158, 0);
int014(9, 2159, 1, 2149, 0);
int014(1, 2150, 1, 2230, 0);
int014(10, 2159, 1, 2150, 0);
int014(1, 2151, 11, 2158, 0);
int014(11, 2159, 1, 2151, 0);
int014(1, 2152, 1, 2234, 0);
int014(12, 2159, 1, 2152, 0);
int014(1, 2153, 17, 2158, 0);
int014(17, 2159, 1, 2153, 0);
int014(1, 2154, 18, 2158, 0);
int014(18, 2159, 1, 2154, 0);
int014(1, 2155, 19, 2158, 0);
int014(19, 2159, 1, 2155, 0);
int014(1, 2157, 2, 2159, 0);
int014(2, 2158, 1, 2157, 0);
int014(2, 2157, 0, 2207, 0);
int014(3, 2157, 0, 2207, 0);
int014(4, 2157, 0, 2207, 0);
int014(1, 2158, 1, 2200, 0);
int014(3, 2158, 1, 2203, 0);
int014(4, 2158, 1, 2205, 0);
int014(5, 2158, 1, 2204, 0);
int014(1, 2229, 8, 2158, 0);
int014(1, 2231, 10, 2158, 0);
int014(1, 2232, 12, 2158, 0);
int014(1, 2227, 13, 2158, 0);
int014(1, 2228, 14, 2158, 0);
int014(1, 2226, 15, 2158, 0);
int014(1, 2225, 16, 2158, 0);
int014(1, 2159, 1, 2201, 0);
int014(1, 2200, 1, 2159, 0);
int014(1, 2203, 3, 2159, 0);
int014(1, 2205, 4, 2159, 0);
int014(1, 2204, 5, 2159, 0);
int014(8, 2159, 1, 2229, 0);
int014(13, 2159, 1, 2227, 0);
int014(14, 2159, 1, 2228, 0);
int014(15, 2159, 1, 2226, 0);
int014(16, 2159, 1, 2225, 0);
int014(1, 2160, 0, 2162, 0);
int014(2, 2160, 0, 2143, 0);
int014(1, 2161, 0, 2188, 0);
int014(2, 2161, 0, 2209, 0);
int014(1, 2162, 0, 2163, 0);
int014(2, 2162, 0, 2144, 0);
int014(1, 2163, 0, 2164, 0);
int014(2, 2163, 0, 2145, 0);
int014(1, 2164, 0, 2165, 0);
int014(2, 2164, 0, 2146, 0);
int014(1, 2165, 0, 2166, 0);
int014(2, 2165, 0, 2147, 0);
int014(1, 2166, 0, 2236, 0);
int014(2, 2166, 0, 2148, 0);
int014(1, 2167, 0, 2169, 0);
int014(2, 2167, 0, 2149, 0);
int014(1, 2168, 0, 2242, 0);
int014(2, 2168, 0, 2152, 0);
int014(1, 2169, 0, 2170, 0);
int014(1, 2170, 0, 2171, 0);
int014(2, 2170, 0, 2231, 0);
int014(1, 2171, 0, 2172, 0);
int014(2, 2171, 0, 2150, 0);
int014(1, 2172, 0, 2173, 0);
int014(2, 2172, 0, 2151, 0);
int014(1, 2173, 0, 2178, 0);
int014(1, 2174, 0, 2175, 0);
int014(2, 2174, 0, 2153, 0);
int014(1, 2175, 0, 2176, 0);
int014(2, 2175, 0, 2154, 0);
int014(1, 2176, 0, 2251, 0);
int014(2, 2176, 0, 2155, 0);
int014(1, 2177, 0, 2235, 0);
int014(2, 2177, 0, 2252, 0);
int014(1, 2178, 0, 2191, 0);
int014(1, 2182, 0, 2160, 0);
int014(2, 2182, 0, 2161, 0);
int014(3, 2182, 0, 2162, 0);
int014(4, 2182, 0, 2163, 0);
int014(5, 2182, 0, 2164, 0);
int014(6, 2182, 0, 2165, 0);
int014(7, 2182, 0, 2166, 0);
int014(8, 2182, 0, 2167, 0);
int014(9, 2182, 0, 2168, 0);
int014(10, 2182, 0, 2169, 0);
int014(11, 2182, 0, 2170, 0);
int014(12, 2182, 0, 2171, 0);
int014(13, 2182, 0, 2172, 0);
int014(14, 2182, 0, 2173, 0);
int014(15, 2182, 0, 2174, 0);
int014(16, 2182, 0, 2175, 0);
int014(17, 2182, 0, 2176, 0);
int014(18, 2182, 0, 2177, 0);
int014(19, 2182, 0, 2178, 0);
int014(20, 2182, 0, 2187, 0);
int014(21, 2182, 0, 2188, 0);
int014(22, 2182, 0, 2189, 0);
int014(23, 2182, 0, 2190, 0);
int014(24, 2182, 0, 2191, 0);
int014(25, 2182, 0, 2192, 0);
int014(26, 2182, 0, 2193, 0);
int014(27, 2182, 0, 2194, 0);
int014(28, 2182, 0, 2195, 0);
int014(29, 2182, 0, 2196, 0);
int014(30, 2182, 0, 2197, 0);
int014(31, 2182, 0, 2198, 0);
int014(32, 2182, 0, 2199, 0);
int014(33, 2182, 0, 2202, 0);
int014(34, 2182, 0, 2206, 0);
int014(35, 2182, 0, 2207, 0);
int014(36, 2182, 0, 2208, 0);
int014(37, 2182, 0, 2209, 0);
int014(38, 2182, 0, 2210, 0);
int014(39, 2182, 0, 2211, 0);
int014(40, 2182, 0, 2212, 0);
int014(41, 2182, 0, 2213, 0);
int014(42, 2182, 0, 2214, 0);
int014(43, 2182, 0, 2215, 0);
int014(44, 2182, 0, 2216, 0);
int014(45, 2182, 0, 2217, 0);
int014(46, 2182, 0, 2218, 0);
int014(47, 2182, 0, 2219, 0);
int014(48, 2182, 0, 2220, 0);
int014(49, 2182, 0, 2221, 0);
int014(50, 2182, 0, 2222, 0);
int014(51, 2182, 0, 2223, 0);
int014(52, 2182, 0, 2224, 0);
int014(53, 2182, 0, 2235, 0);
int014(54, 2182, 0, 2236, 0);
int014(55, 2182, 0, 2237, 0);
int014(56, 2182, 0, 2238, 0);
int014(57, 2182, 0, 2239, 0);
int014(58, 2182, 0, 2240, 0);
int014(59, 2182, 0, 2241, 0);
int014(60, 2182, 0, 2242, 0);
int014(61, 2182, 0, 2243, 0);
int014(62, 2182, 0, 2244, 0);
int014(63, 2182, 0, 2245, 0);
int014(64, 2182, 0, 2246, 0);
int014(65, 2182, 0, 2247, 0);
int014(66, 2182, 0, 2248, 0);
int014(67, 2182, 0, 2249, 0);
int014(68, 2182, 0, 2250, 0);
int014(69, 2182, 0, 2251, 0);
int014(70, 2182, 0, 2252, 0);
int014(71, 2182, 0, 2253, 0);
int014(72, 2182, 0, 2255, 0);
int014(1, 2184, 0, 2143, 0);
int014(2, 2184, 0, 2144, 0);
int014(3, 2184, 0, 2145, 0);
int014(4, 2184, 0, 2146, 0);
int014(5, 2184, 0, 2147, 0);
int014(6, 2184, 0, 2148, 0);
int014(7, 2184, 0, 2149, 0);
int014(8, 2184, 0, 2152, 0);
int014(9, 2184, 0, 2231, 0);
int014(10, 2184, 0, 2150, 0);
int014(11, 2184, 0, 2151, 0);
int014(12, 2184, 0, 2153, 0);
int014(13, 2184, 0, 2154, 0);
int014(14, 2184, 0, 2155, 0);
int014(15, 2184, 0, 2142, 0);
int014(16, 2184, 0, 2201, 0);
int014(17, 2184, 0, 2227, 0);
int014(18, 2184, 0, 2226, 0);
int014(19, 2184, 0, 2225, 0);
int014(20, 2184, 0, 2228, 0);
int014(21, 2184, 0, 2232, 0);
int014(22, 2184, 0, 2229, 0);
int014(1, 2187, 0, 2238, 0);
int014(2, 2187, 0, 2142, 0);
int014(1, 2188, 0, 2208, 0);
int014(1, 2189, 0, 2177, 0);
int014(1, 2190, 0, 2189, 0);
int014(1, 2191, 0, 2192, 0);
int014(1, 2192, 0, 2193, 0);
int014(2, 2192, 0, 2216, 0);
int014(1, 2193, 0, 2221, 0);
int014(1, 2194, 0, 2195, 0);
int014(1, 2195, 0, 2194, 0);
int014(2, 2195, 0, 2196, 0);
int014(1, 2196, 0, 2195, 0);
int014(2, 2196, 0, 2199, 0);
int014(1, 2197, 0, 2243, 0);
int014(1, 2198, 0, 2239, 0);
int014(1, 2199, 0, 2220, 0);
int014(2, 2200, 0, 2206, 0);
int014(3, 2200, 0, 2206, 0);
int014(4, 2200, 0, 2206, 0);
int014(1, 2202, 0, 2187, 0);
int014(2, 2202, 0, 2201, 0);
int014(2, 2203, 0, 2224, 0);
int014(3, 2203, 0, 2224, 0);
int014(4, 2203, 0, 2224, 0);
int014(2, 2204, 0, 2222, 0);
int014(3, 2204, 0, 2222, 0);
int014(4, 2204, 0, 2222, 0);
int014(2, 2205, 0, 2223, 0);
int014(3, 2205, 0, 2223, 0);
int014(4, 2205, 0, 2223, 0);
int014(1, 2206, 0, 2198, 0);
int014(1, 2207, 0, 2206, 0);
int014(1, 2208, 0, 2210, 0);
int014(1, 2209, 0, 2249, 0);
int014(1, 2210, 0, 2211, 0);
int014(1, 2211, 0, 2212, 0);
int014(1, 2212, 0, 2213, 0);
int014(1, 2213, 0, 2190, 0);
int014(1, 2214, 0, 2177, 0);
int014(2, 2214, 0, 2240, 0);
int014(1, 2215, 0, 2241, 0);
int014(1, 2216, 0, 2217, 0);
int014(2, 2216, 0, 2227, 0);
int014(1, 2217, 0, 2218, 0);
int014(2, 2217, 0, 2226, 0);
int014(1, 2218, 0, 2174, 0);
int014(2, 2218, 0, 2225, 0);
int014(1, 2219, 0, 2197, 0);
int014(1, 2220, 0, 2219, 0);
int014(1, 2221, 0, 2222, 0);
int014(1, 2222, 0, 2223, 0);
int014(1, 2223, 0, 2224, 0);
int014(2, 2223, 0, 2228, 0);
int014(1, 2224, 0, 2207, 0);
int014(1, 2230, 1, 2231, 0);
int014(1, 2233, 1, 2232, 0);
int014(1, 2234, 1, 2233, 0);
int014(1, 2235, 0, 2168, 0);
int014(2, 2235, 0, 2232, 0);
int014(1, 2236, 0, 2214, 0);
int014(2, 2236, 0, 2229, 0);
int014(1, 2237, 0, 2246, 0);
int014(1, 2238, 0, 2161, 0);
int014(1, 2239, 0, 2202, 0);
int014(1, 2240, 0, 2215, 0);
int014(1, 2241, 0, 2192, 0);
int014(1, 2242, 0, 2191, 0);
int014(1, 2243, 0, 2244, 0);
int014(1, 2244, 0, 2245, 0);
int014(1, 2245, 0, 2193, 0);
int014(1, 2246, 0, 2247, 0);
int014(1, 2247, 0, 2248, 0);
int014(1, 2248, 0, 2196, 0);
int014(1, 2249, 0, 2250, 0);
int014(1, 2250, 0, 2160, 0);
int014(1, 2251, 0, 2239, 0);
int014(1, 2252, 0, 2253, 0);
int014(1, 2253, 0, 2167, 0);
int014(1, 2255, 0, 2193, 0);
int006(10, 2142, 1, 0, 0, 0);
int006(0, 2157, 19, 999, 0, 0);
int006(0, 2200, 19, 999, 0, 0);
int006(0, 2203, 19, 999, 0, 0);
int006(0, 2204, 19, 999, 0, 0);
int006(0, 2205, 19, 999, 0, 0);


{Experiment settings}

int034;
SetAtt(17, 1);
int007;
