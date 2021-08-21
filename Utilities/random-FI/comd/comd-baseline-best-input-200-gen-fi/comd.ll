; ModuleID = 'cmdLineParser.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MyOptionSt = type { i8*, i8*, [2 x i8], i32, i8, i32, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.TimersSt = type { i64, i64, i64, i64, i32, i32, double, double, double, double }
%struct.TimerGlobalSt = type { double, double, double }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.CommandSt = type { [1024 x i8], [1024 x i8], [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double }
%struct.SimFlatSt = type { i32, i32, double, %struct.DomainSt*, %struct.LinkCellSt*, %struct.AtomsSt*, %struct.SpeciesDataSt*, double, double, %struct.BasePotentialSt*, %struct.HaloExchangeSt* }
%struct.DomainSt = type { [3 x i32], [3 x i32], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double] }
%struct.LinkCellSt = type { [3 x i32], i32, i32, i32, [3 x double], [3 x double], [3 x double], [3 x double], i32* }
%struct.AtomsSt = type { i32, i32, i32*, i32*, [3 x double]*, [3 x double]*, [3 x double]*, double* }
%struct.SpeciesDataSt = type { [3 x i8], i32, double }
%struct.BasePotentialSt = type { double, double, double, [8 x i8], [3 x i8], i32, i32 (%struct.SimFlatSt*)*, void (%struct._IO_FILE*, %struct.BasePotentialSt*)*, void (%struct.BasePotentialSt**)* }
%struct.HaloExchangeSt = type { [6 x i32], i32, i32 (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i32, i8*)*, void (i8*)*, i8* }
%struct.ValidateSt = type { double, i32 }
%struct.EamPotentialSt = type { double, double, double, [8 x i8], [3 x i8], i32, i32 (%struct.SimFlatSt*)*, void (%struct._IO_FILE*, %struct.BasePotentialSt*)*, void (%struct.BasePotentialSt**)*, %struct.InterpolationObjectSt*, %struct.InterpolationObjectSt*, %struct.InterpolationObjectSt*, double*, double*, %struct.HaloExchangeSt*, %struct.ForceExchangeDataSt* }
%struct.InterpolationObjectSt = type { i32, double, double, double* }
%struct.ForceExchangeDataSt = type { double*, %struct.LinkCellSt* }
%struct.anon = type { double, double, double, [8 x i8], [3 x i8], i32 }
%struct.anon.0 = type { i32, double, double }
%struct.AtomExchangeParmsSt = type { [6 x i32], [6 x i32*], [6 x double*] }
%struct.ForceExchangeParmsSt = type { [6 x i32], [6 x i32*], [6 x i32*] }
%struct.AtomMsgSt = type { i32, i32, double, double, double, double, double, double }
%struct.ForceMsgSt = type { double }
%struct.BasePotentialSt.34 = type { double, double, double, [8 x i8], [3 x i8], i32, i32 (%struct.SimFlatSt.35*)*, void (%struct._IO_FILE*, %struct.BasePotentialSt.34*)*, {}* }
%struct.SimFlatSt.35 = type { i32, i32, double, %struct.DomainSt*, %struct.LinkCellSt*, %struct.AtomsSt*, %struct.SpeciesDataSt*, double, double, %struct.BasePotentialSt.34*, %struct.HaloExchangeSt* }
%struct.LjPotentialSt = type { double, double, double, [8 x i8], [3 x i8], i32, i32 (%struct.SimFlatSt.35*)*, void (%struct._IO_FILE*, %struct.BasePotentialSt.34*)*, void (%struct.BasePotentialSt.34**)*, double, double }
%struct.RankReduceDataSt = type { double, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@myargs = internal global %struct.MyOptionSt* null, align 8
@stdout = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [20 x i8] c"\0A  Arguments are: \0A\00", align 1
@.str1 = private unnamed_addr constant [12 x i8] c"   --%%-%ds\00", align 1
@longest = internal global i32 1, align 4
@.str2 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str3 = private unnamed_addr constant [27 x i8] c" -%c  arg=%1d type=%c  %s\0A\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str6 = private unnamed_addr constant [42 x i8] c"\0A\0A    invalid switch : -%c in getopt()\0A\0A\0A\00", align 1
@optarg = external global i8*
@.str7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str10 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str11 = private unnamed_addr constant [95 x i8] c"\0A\0A    invalid type : %c in getopt()\0A    valid values are 'e', 'z'. 'i','d','f','s', and 'c'\0A\0A\0A\00", align 1
@myOptionAlloc.iBase = internal global i32 129, align 4
@.str12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str13 = private unnamed_addr constant [25 x i8] c"Starting Initialization\0A\00", align 1
@.str114 = private unnamed_addr constant [25 x i8] c"Initialization Finished\0A\00", align 1
@.str215 = private unnamed_addr constant [21 x i8] c"Starting simulation\0A\00", align 1
@.str316 = private unnamed_addr constant [19 x i8] c"Ending simulation\0A\00", align 1
@.str417 = private unnamed_addr constant [13 x i8] c"CoMD Ending\0A\00", align 1
@.str518 = private unnamed_addr constant [19 x i8] c"Simulation data: \0A\00", align 1
@.str619 = private unnamed_addr constant [27 x i8] c"  Total atoms        : %d\0A\00", align 1
@.str720 = private unnamed_addr constant [54 x i8] c"  Min global bounds  : [ %14.10f, %14.10f, %14.10f ]\0A\00", align 1
@.str821 = private unnamed_addr constant [54 x i8] c"  Max global bounds  : [ %14.10f, %14.10f, %14.10f ]\0A\00", align 1
@.str922 = private unnamed_addr constant [22 x i8] c"Decomposition data: \0A\00", align 1
@.str1023 = private unnamed_addr constant [36 x i8] c"  Processors         : %6d,%6d,%6d\0A\00", align 1
@.str1124 = private unnamed_addr constant [42 x i8] c"  Local boxes        : %6d,%6d,%6d = %8d\0A\00", align 1
@.str1225 = private unnamed_addr constant [54 x i8] c"  Box size           : [ %14.10f, %14.10f, %14.10f ]\0A\00", align 1
@.str1326 = private unnamed_addr constant [55 x i8] c"  Box factor         : [ %14.10f, %14.10f, %14.10f ] \0A\00", align 1
@.str14 = private unnamed_addr constant [37 x i8] c"  Max Link Cell Occupancy: %d of %d\0A\00", align 1
@.str15 = private unnamed_addr constant [18 x i8] c"Potential data: \0A\00", align 1
@.str16 = private unnamed_addr constant [15 x i8] c"Memory data: \0A\00", align 1
@.str17 = private unnamed_addr constant [42 x i8] c"  Intrinsic atom footprint = %4d B/atom \0A\00", align 1
@.str18 = private unnamed_addr constant [55 x i8] c"  Total atom footprint     = %7.3f MB (%6.2f MB/node)\0A\00", align 1
@.str19 = private unnamed_addr constant [44 x i8] c"  Link cell atom footprint = %7.3f MB/node\0A\00", align 1
@.str20 = private unnamed_addr constant [70 x i8] c"  Link cell atom footprint = %7.3f MB/node (including halo cell data\0A\00", align 1
@printThings.iStepPrev = internal global i32 -1, align 4
@printThings.firstCall = internal global i32 1, align 4
@.str21 = private unnamed_addr constant [216 x i8] c"#                                                                                         Performance\0A#  Loop   Time(fs)       Total Energy   Potential Energy     Kinetic Energy  Temperature   (us/atom)     # Atoms\0A\00", align 1
@.str22 = private unnamed_addr constant [56 x i8] c" %6d %10.2f %18.12f %18.12f %18.12f %12.4f %10.4f %12d\0A\00", align 1
@.str23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str24 = private unnamed_addr constant [24 x i8] c"Simulation Validation:\0A\00", align 1
@.str25 = private unnamed_addr constant [29 x i8] c"  Initial energy  : %14.12f\0A\00", align 1
@.str26 = private unnamed_addr constant [29 x i8] c"  Final energy    : %14.12f\0A\00", align 1
@.str27 = private unnamed_addr constant [24 x i8] c"  eFinal/eInitial : %f\0A\00", align 1
@.str28 = private unnamed_addr constant [40 x i8] c"  Final atom count : %d, no atoms lost\0A\00", align 1
@.str29 = private unnamed_addr constant [31 x i8] c"#############################\0A\00", align 1
@.str30 = private unnamed_addr constant [29 x i8] c"# WARNING: %6d atoms lost #\0A\00", align 1
@.str31 = private unnamed_addr constant [44 x i8] c"Initial energy : %14.12f, atom count : %d \0A\00", align 1
@.str32 = private unnamed_addr constant [55 x i8] c"\0ANumber of MPI ranks must match xproc * yproc * zproc\0A\00", align 1
@.str33 = private unnamed_addr constant [135 x i8] c"\0ASimulation too small.\0A  Increase the number of unit cells to make the simulation\0A  at least (%3.2f, %3.2f. %3.2f) Ansgstroms in size\0A\00", align 1
@.str34 = private unnamed_addr constant [4 x i8] c"FCC\00", align 1
@.str35 = private unnamed_addr constant [56 x i8] c"\0AOnly FCC Lattice type supported, not %s. Fatal Error.\0A\00", align 1
@.str36 = private unnamed_addr constant [22 x i8] c"checkCode == failCode\00", align 1
@.str37 = private unnamed_addr constant [7 x i8] c"CoMD.c\00", align 1
@__PRETTY_FUNCTION__.sanityChecks = private unnamed_addr constant [51 x i8] c"void sanityChecks(Command, double, double, char *)\00", align 1
@.str38 = private unnamed_addr constant [4 x i8] c"pot\00", align 1
@__PRETTY_FUNCTION__.initPotential = private unnamed_addr constant [76 x i8] c"BasePotential *initPotential(int, const char *, const char *, const char *)\00", align 1
@.str39 = private unnamed_addr constant [37 x i8] c"xproc * yproc * zproc == getNRanks()\00", align 1
@.str140 = private unnamed_addr constant [16 x i8] c"decomposition.c\00", align 1
@__PRETTY_FUNCTION__.initDecomposition = private unnamed_addr constant [60 x i8] c"struct DomainSt *initDecomposition(int, int, int, real_t *)\00", align 1
@.str44 = private unnamed_addr constant [4 x i8] c"pot\00", align 1
@.str145 = private unnamed_addr constant [6 x i8] c"eam.c\00", align 1
@__PRETTY_FUNCTION__.initEamPot = private unnamed_addr constant [77 x i8] c"struct BasePotentialSt *initEamPot(const char *, const char *, const char *)\00", align 1
@.str246 = private unnamed_addr constant [6 x i8] c"setfl\00", align 1
@.str347 = private unnamed_addr constant [7 x i8] c"funcfl\00", align 1
@.str448 = private unnamed_addr constant [11 x i8] c"initEamPot\00", align 1
@.str549 = private unnamed_addr constant [51 x i8] c"%s: Potential type %s not supported. Fatal Error.\0A\00", align 1
@.str650 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str751 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str852 = private unnamed_addr constant [14 x i8] c"eamReadFuncfl\00", align 1
@.str953 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str1054 = private unnamed_addr constant [14 x i8] c"%d %le %le %s\00", align 1
@.str1155 = private unnamed_addr constant [18 x i8] c"%d %le %d %le %le\00", align 1
@.str1256 = private unnamed_addr constant [4 x i8] c"%lg\00", align 1
@.str1357 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@__PRETTY_FUNCTION__.initInterpolationObject = private unnamed_addr constant [76 x i8] c"InterpolationObject *initInterpolationObject(int, real_t, real_t, real_t *)\00", align 1
@.str1458 = private unnamed_addr constant [14 x i8] c"table->values\00", align 1
@.str1559 = private unnamed_addr constant [39 x i8] c"%s: Can't open file %s.  Fatal Error.\0A\00", align 1
@.str1660 = private unnamed_addr constant [13 x i8] c"eamReadSetfl\00", align 1
@.str1761 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str1862 = private unnamed_addr constant [106 x i8] c"%s: CoMD 1.1 does not support alloys and cannot\0A   read setfl files with multiple species.  Fatal Error.\0A\00", align 1
@__PRETTY_FUNCTION__.eamBcastPotential = private unnamed_addr constant [39 x i8] c"void eamBcastPotential(EamPotential *)\00", align 1
@.str1963 = private unnamed_addr constant [15 x i8] c"*table == NULL\00", align 1
@__PRETTY_FUNCTION__.bcastInterpolationObject = private unnamed_addr constant [54 x i8] c"void bcastInterpolationObject(InterpolationObject **)\00", align 1
@.str2064 = private unnamed_addr constant [25 x i8] c"  Potential type  : EAM\0A\00", align 1
@.str2165 = private unnamed_addr constant [24 x i8] c"  Species name    : %s\0A\00", align 1
@.str2266 = private unnamed_addr constant [24 x i8] c"  Atomic number   : %d\0A\00", align 1
@.str2367 = private unnamed_addr constant [29 x i8] c"  Mass            : %lg amu\0A\00", align 1
@.str2468 = private unnamed_addr constant [24 x i8] c"  Lattice type    : %s\0A\00", align 1
@.str2569 = private unnamed_addr constant [35 x i8] c"  Lattice spacing : %lg Angstroms\0A\00", align 1
@.str2670 = private unnamed_addr constant [35 x i8] c"  Cutoff          : %lg Angstroms\0A\00", align 1
@__PRETTY_FUNCTION__.eamForce = private unnamed_addr constant [24 x i8] c"int eamForce(SimFlat *)\00", align 1
@.str76 = private unnamed_addr constant [11 x i8] c"aId != bId\00", align 1
@.str177 = private unnamed_addr constant [15 x i8] c"haloExchange.c\00", align 1
@__PRETTY_FUNCTION__.sortAtomsById = private unnamed_addr constant [46 x i8] c"int sortAtomsById(const void *, const void *)\00", align 1
@.str278 = private unnamed_addr constant [32 x i8] c"bufSize % sizeof(ForceMsg) == 0\00", align 1
@__PRETTY_FUNCTION__.unloadForceBuffer = private unnamed_addr constant [57 x i8] c"void unloadForceBuffer(void *, void *, int, int, char *)\00", align 1
@.str379 = private unnamed_addr constant [34 x i8] c"iBuf == bufSize/ sizeof(ForceMsg)\00", align 1
@.str480 = private unnamed_addr constant [5 x i8] c"1==0\00", align 1
@__PRETTY_FUNCTION__.mkForceRecvCellList = private unnamed_addr constant [47 x i8] c"int *mkForceRecvCellList(LinkCell *, int, int)\00", align 1
@.str581 = private unnamed_addr constant [16 x i8] c"count == nCells\00", align 1
@__PRETTY_FUNCTION__.mkForceSendCellList = private unnamed_addr constant [47 x i8] c"int *mkForceSendCellList(LinkCell *, int, int)\00", align 1
@.str682 = private unnamed_addr constant [31 x i8] c"bufSize % sizeof(AtomMsg) == 0\00", align 1
@__PRETTY_FUNCTION__.unloadAtomsBuffer = private unnamed_addr constant [57 x i8] c"void unloadAtomsBuffer(void *, void *, int, int, char *)\00", align 1
@__PRETTY_FUNCTION__.mkAtomCellList = private unnamed_addr constant [63 x i8] c"int *mkAtomCellList(LinkCell *, enum HaloFaceOrder, const int)\00", align 1
@createFccLattice.basis = private unnamed_addr constant [4 x [3 x double]] [[3 x double] [double 2.500000e-01, double 2.500000e-01, double 2.500000e-01], [3 x double] [double 2.500000e-01, double 7.500000e-01, double 7.500000e-01], [3 x double] [double 7.500000e-01, double 2.500000e-01, double 7.500000e-01], [3 x double] [double 7.500000e-01, double 7.500000e-01, double 2.500000e-01]], align 16
@.str93 = private unnamed_addr constant [33 x i8] c"s->atoms->nGlobal == nb*nx*ny*nz\00", align 1
@.str194 = private unnamed_addr constant [12 x i8] c"initAtoms.c\00", align 1
@__PRETTY_FUNCTION__.createFccLattice = private unnamed_addr constant [56 x i8] c"void createFccLattice(int, int, int, real_t, SimFlat *)\00", align 1
@.str107 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str1108 = private unnamed_addr constant [12 x i8] c"linkCells.c\00", align 1
@__PRETTY_FUNCTION__.initLinkCells = private unnamed_addr constant [48 x i8] c"LinkCell *initLinkCells(const Domain *, real_t)\00", align 1
@.str2109 = private unnamed_addr constant [75 x i8] c"(ll->gridSize[0] >= 2) && (ll->gridSize[1] >= 2) && (ll->gridSize[2] >= 2)\00", align 1
@.str3110 = private unnamed_addr constant [10 x i8] c"iBox >= 0\00", align 1
@__PRETTY_FUNCTION__.getBoxFromTuple = private unnamed_addr constant [47 x i8] c"int getBoxFromTuple(LinkCell *, int, int, int)\00", align 1
@.str4111 = private unnamed_addr constant [26 x i8] c"iBox < boxes->nTotalBoxes\00", align 1
@.str5112 = private unnamed_addr constant [31 x i8] c"boxes->nAtoms[jBox] < MAXATOMS\00", align 1
@__PRETTY_FUNCTION__.moveAtom = private unnamed_addr constant [50 x i8] c"void moveAtom(LinkCell *, Atoms *, int, int, int)\00", align 1
@.str127 = private unnamed_addr constant [4 x i8] c"FCC\00", align 1
@.str1128 = private unnamed_addr constant [3 x i8] c"Cu\00", align 1
@.str2129 = private unnamed_addr constant [8 x i8] c"jBox>=0\00", align 1
@.str3130 = private unnamed_addr constant [10 x i8] c"ljForce.c\00", align 1
@__PRETTY_FUNCTION__.ljForce = private unnamed_addr constant [23 x i8] c"int ljForce(SimFlat *)\00", align 1
@.str4131 = private unnamed_addr constant [36 x i8] c"  Potential type   : Lennard-Jones\0A\00", align 1
@.str5132 = private unnamed_addr constant [25 x i8] c"  Species name     : %s\0A\00", align 1
@.str6133 = private unnamed_addr constant [25 x i8] c"  Atomic number    : %d\0A\00", align 1
@.str7134 = private unnamed_addr constant [30 x i8] c"  Mass             : %lg amu\0A\00", align 1
@.str8135 = private unnamed_addr constant [25 x i8] c"  Lattice Type     : %s\0A\00", align 1
@.str9136 = private unnamed_addr constant [36 x i8] c"  Lattice spacing  : %lg Angstroms\0A\00", align 1
@.str10137 = private unnamed_addr constant [36 x i8] c"  Cutoff           : %lg Angstroms\0A\00", align 1
@.str11138 = private unnamed_addr constant [29 x i8] c"  Epsilon          : %lg eV\0A\00", align 1
@.str12139 = private unnamed_addr constant [36 x i8] c"  Sigma            : %lg Angstroms\0A\00", align 1
@.str146 = private unnamed_addr constant [5 x i8] c"pots\00", align 1
@.str1147 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str2148 = private unnamed_addr constant [7 x i8] c"funcfl\00", align 1
@.str3149 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str4150 = private unnamed_addr constant [19 x i8] c"print this message\00", align 1
@.str5151 = private unnamed_addr constant [7 x i8] c"potDir\00", align 1
@.str6152 = private unnamed_addr constant [20 x i8] c"potential directory\00", align 1
@.str7153 = private unnamed_addr constant [8 x i8] c"potName\00", align 1
@.str8154 = private unnamed_addr constant [15 x i8] c"potential name\00", align 1
@.str9155 = private unnamed_addr constant [8 x i8] c"potType\00", align 1
@.str10156 = private unnamed_addr constant [33 x i8] c"potential type (funcfl or setfl)\00", align 1
@.str11157 = private unnamed_addr constant [6 x i8] c"doeam\00", align 1
@.str12158 = private unnamed_addr constant [23 x i8] c"compute eam potentials\00", align 1
@.str13159 = private unnamed_addr constant [3 x i8] c"nx\00", align 1
@.str14160 = private unnamed_addr constant [26 x i8] c"number of unit cells in x\00", align 1
@.str15161 = private unnamed_addr constant [3 x i8] c"ny\00", align 1
@.str16162 = private unnamed_addr constant [26 x i8] c"number of unit cells in y\00", align 1
@.str17163 = private unnamed_addr constant [3 x i8] c"nz\00", align 1
@.str18164 = private unnamed_addr constant [26 x i8] c"number of unit cells in z\00", align 1
@.str19165 = private unnamed_addr constant [6 x i8] c"xproc\00", align 1
@.str20166 = private unnamed_addr constant [26 x i8] c"processors in x direction\00", align 1
@.str21167 = private unnamed_addr constant [6 x i8] c"yproc\00", align 1
@.str22168 = private unnamed_addr constant [26 x i8] c"processors in y direction\00", align 1
@.str23169 = private unnamed_addr constant [6 x i8] c"zproc\00", align 1
@.str24170 = private unnamed_addr constant [26 x i8] c"processors in z direction\00", align 1
@.str25171 = private unnamed_addr constant [7 x i8] c"nSteps\00", align 1
@.str26172 = private unnamed_addr constant [21 x i8] c"number of time steps\00", align 1
@.str27173 = private unnamed_addr constant [10 x i8] c"printRate\00", align 1
@.str28174 = private unnamed_addr constant [31 x i8] c"number of steps between output\00", align 1
@.str29175 = private unnamed_addr constant [3 x i8] c"dt\00", align 1
@.str30176 = private unnamed_addr constant [18 x i8] c"time step (in fs)\00", align 1
@.str31177 = private unnamed_addr constant [4 x i8] c"lat\00", align 1
@.str32178 = private unnamed_addr constant [30 x i8] c"lattice parameter (Angstroms)\00", align 1
@.str33179 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str34180 = private unnamed_addr constant [24 x i8] c"initial temperature (K)\00", align 1
@.str35181 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@.str36182 = private unnamed_addr constant [26 x i8] c"initial delta (Angstroms)\00", align 1
@.str37183 = private unnamed_addr constant [6 x i8] c"setfl\00", align 1
@.str38184 = private unnamed_addr constant [15 x i8] c"Cu01.eam.alloy\00", align 1
@.str39185 = private unnamed_addr constant [10 x i8] c"Cu_u6.eam\00", align 1
@.str40 = private unnamed_addr constant [282 x i8] c"Command Line Parameters:\0A  doeam: %d\0A  potDir: %s\0A  potName: %s\0A  potType: %s\0A  nx: %d\0A  ny: %d\0A  nz: %d\0A  xproc: %d\0A  yproc: %d\0A  zproc: %d\0A  Lattice constant: %g Angstroms\0A  nSteps: %d\0A  printRate: %d\0A  Time step: %g fs\0A  Initial Temperature: %g K\0A  Initial Delta: %g Angstroms\0A\0A\00", align 1
@nRanks = internal global i32 1, align 4
@myRank = internal global i32 0, align 4
@.str190 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str1191 = private unnamed_addr constant [15 x i8] c"source == dest\00", align 1
@.str2192 = private unnamed_addr constant [11 x i8] c"parallel.c\00", align 1
@__PRETTY_FUNCTION__.sendReceiveParallel = private unnamed_addr constant [60 x i8] c"int sendReceiveParallel(void *, int, int, void *, int, int)\00", align 1
@.str216 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@.str1217 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str2218 = private unnamed_addr constant [9 x i8] c"timestep\00", align 1
@.str3219 = private unnamed_addr constant [11 x i8] c"  position\00", align 1
@.str4220 = private unnamed_addr constant [11 x i8] c"  velocity\00", align 1
@.str5221 = private unnamed_addr constant [15 x i8] c"  redistribute\00", align 1
@.str6222 = private unnamed_addr constant [13 x i8] c"    atomHalo\00", align 1
@.str7223 = private unnamed_addr constant [8 x i8] c"  force\00", align 1
@.str8224 = private unnamed_addr constant [12 x i8] c"    eamHalo\00", align 1
@.str9225 = private unnamed_addr constant [9 x i8] c"commHalo\00", align 1
@.str10226 = private unnamed_addr constant [11 x i8] c"commReduce\00", align 1
@timerName = global [11 x i8*] [i8* getelementptr inbounds ([6 x i8]* @.str216, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str1217, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str2218, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str3219, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str4220, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str5221, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str6222, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str7223, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str8224, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str9225, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str10226, i32 0, i32 0)], align 16
@perfTimer = internal global [11 x %struct.TimersSt] zeroinitializer, align 16
@.str11227 = private unnamed_addr constant [23 x i8] c"\0A\0ATimings for Rank %d\0A\00", align 1
@.str12228 = private unnamed_addr constant [69 x i8] c"        Timer        # Calls    Avg/Call (s)   Total (s)    %% Loop\0A\00", align 1
@.str13229 = private unnamed_addr constant [69 x i8] c"___________________________________________________________________\0A\00", align 1
@.str14230 = private unnamed_addr constant [42 x i8] c"%-16s%12lu     %8.4f      %8.4f    %8.2f\0A\00", align 1
@.str15231 = private unnamed_addr constant [37 x i8] c"\0ATiming Statistics Across %d Ranks:\0A\00", align 1
@.str16232 = private unnamed_addr constant [78 x i8] c"        Timer        Rank: Min(s)       Rank: Max(s)      Avg(s)    Stdev(s)\0A\00", align 1
@.str17233 = private unnamed_addr constant [79 x i8] c"_____________________________________________________________________________\0A\00", align 1
@.str18234 = private unnamed_addr constant [45 x i8] c"%-16s%6d:%10.4f  %6d:%10.4f  %10.4f  %10.4f\0A\00", align 1
@perfGlobal = internal global %struct.TimerGlobalSt zeroinitializer, align 8
@.str19235 = private unnamed_addr constant [54 x i8] c"\0A---------------------------------------------------\0A\00", align 1
@.str20236 = private unnamed_addr constant [51 x i8] c" Average atom update rate:     %6.2f us/atom/task\0A\00", align 1
@.str21237 = private unnamed_addr constant [54 x i8] c"---------------------------------------------------\0A\0A\00", align 1
@.str22238 = private unnamed_addr constant [46 x i8] c" Average all atom update rate: %6.2f us/atom\0A\00", align 1
@.str23239 = private unnamed_addr constant [47 x i8] c" Average atom rate:            %6.2f atoms/us\0A\00", align 1
@.str24240 = private unnamed_addr constant [23 x i8] c"\0APerformance Results:\0A\00", align 1
@.str25241 = private unnamed_addr constant [18 x i8] c"  TotalRanks: %d\0A\00", align 1
@.str26242 = private unnamed_addr constant [31 x i8] c"  ReportingTimeUnits: seconds\0A\00", align 1
@.str27243 = private unnamed_addr constant [34 x i8] c"Performance Results For Rank %d:\0A\00", align 1
@.str28244 = private unnamed_addr constant [13 x i8] c"  Timer: %s\0A\00", align 1
@.str29245 = private unnamed_addr constant [21 x i8] c"    CallCount:  %lu\0A\00", align 1
@.str30246 = private unnamed_addr constant [23 x i8] c"    AvgPerCall: %8.4f\0A\00", align 1
@.str31247 = private unnamed_addr constant [23 x i8] c"    Total:      %8.4f\0A\00", align 1
@.str32248 = private unnamed_addr constant [24 x i8] c"    PercentLoop: %8.2f\0A\00", align 1
@.str33249 = private unnamed_addr constant [35 x i8] c"Performance Results Across Ranks:\0A\00", align 1
@.str34250 = private unnamed_addr constant [17 x i8] c"    MinRank: %d\0A\00", align 1
@.str35251 = private unnamed_addr constant [20 x i8] c"    MinTime: %8.4f\0A\00", align 1
@.str36252 = private unnamed_addr constant [17 x i8] c"    MaxRank: %d\0A\00", align 1
@.str37253 = private unnamed_addr constant [20 x i8] c"    MaxTime: %8.4f\0A\00", align 1
@.str38254 = private unnamed_addr constant [20 x i8] c"    AvgTime: %8.4f\0A\00", align 1
@.str39255 = private unnamed_addr constant [22 x i8] c"    StdevTime: %8.4f\0A\00", align 1
@.str40256 = private unnamed_addr constant [34 x i8] c"Performance Global Update Rates:\0A\00", align 1
@.str41 = private unnamed_addr constant [19 x i8] c"  AtomUpdateRate:\0A\00", align 1
@.str42 = private unnamed_addr constant [24 x i8] c"    AverageRate: %6.2f\0A\00", align 1
@.str43 = private unnamed_addr constant [25 x i8] c"    Units: us/atom/task\0A\00", align 1
@.str44257 = private unnamed_addr constant [22 x i8] c"  AllAtomUpdateRate:\0A\00", align 1
@.str45 = private unnamed_addr constant [20 x i8] c"    Units: us/atom\0A\00", align 1
@.str46 = private unnamed_addr constant [13 x i8] c"  AtomRate:\0A\00", align 1
@.str47 = private unnamed_addr constant [21 x i8] c"    Units: atoms/us\0A\00", align 1
@.str48 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@lcg61.convertToDouble = internal constant double 0x3C20000000000000, align 8
@yamlFile = global %struct._IO_FILE* null, align 8
@.str284 = private unnamed_addr constant [30 x i8] c"%04d:%02d:%02d-%02d:%02d:%02d\00", align 1
@.str1285 = private unnamed_addr constant [11 x i8] c"%s.%s.yaml\00", align 1
@CoMDVariant = internal global i8* getelementptr inbounds ([12 x i8]* @.str30314, i32 0, i32 0), align 8
@.str2286 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str3287 = private unnamed_addr constant [31 x i8] c"Mini-Application Name    : %s\0A\00", align 1
@.str4288 = private unnamed_addr constant [31 x i8] c"Mini-Application Version : %s\0A\00", align 1
@CoMDVersion = internal global i8* getelementptr inbounds ([4 x i8]* @.str29313, i32 0, i32 0), align 8
@.str5289 = private unnamed_addr constant [11 x i8] c"Platform:\0A\00", align 1
@.str6290 = private unnamed_addr constant [16 x i8] c"  hostname: %s\0A\00", align 1
@.str7291 = private unnamed_addr constant [13 x i8] c"karthik-pc14\00", align 1
@.str8292 = private unnamed_addr constant [19 x i8] c"  kernel name: %s\0A\00", align 1
@.str9293 = private unnamed_addr constant [8 x i8] c"'Linux'\00", align 1
@.str10294 = private unnamed_addr constant [22 x i8] c"  kernel release: %s\0A\00", align 1
@.str11295 = private unnamed_addr constant [20 x i8] c"'4.4.0-112-generic'\00", align 1
@.str12296 = private unnamed_addr constant [17 x i8] c"  processor: %s\0A\00", align 1
@.str13297 = private unnamed_addr constant [9 x i8] c"'x86_64'\00", align 1
@.str14298 = private unnamed_addr constant [8 x i8] c"Build:\0A\00", align 1
@.str15299 = private unnamed_addr constant [10 x i8] c"  CC: %s\0A\00", align 1
@.str16300 = private unnamed_addr constant [85 x i8] c"'/ubc/ece/home/kp/grads/lpalazzi/Documents/DependableSystemsLab/LLFI/llvm/bin/clang'\00", align 1
@.str17301 = private unnamed_addr constant [24 x i8] c"  compiler version: %s\0A\00", align 1
@.str18302 = private unnamed_addr constant [44 x i8] c"'clang version 3.4 (tags/RELEASE_34/final)'\00", align 1
@.str19303 = private unnamed_addr constant [14 x i8] c"  CFLAGS: %s\0A\00", align 1
@.str20304 = private unnamed_addr constant [32 x i8] c"'-std=c99 -g -DDOUBLE -g -O0  '\00", align 1
@.str21305 = private unnamed_addr constant [15 x i8] c"  LDFLAGS: %s\0A\00", align 1
@.str22306 = private unnamed_addr constant [7 x i8] c"'-lm '\00", align 1
@.str23307 = private unnamed_addr constant [17 x i8] c"  using MPI: %s\0A\00", align 1
@.str24308 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str25309 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str26310 = private unnamed_addr constant [19 x i8] c"  Threading: none\0A\00", align 1
@.str27311 = private unnamed_addr constant [24 x i8] c"  Double Precision: %s\0A\00", align 1
@.str28312 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str29313 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1
@.str30314 = private unnamed_addr constant [12 x i8] c"CoMD-serial\00", align 1

; Function Attrs: nounwind uwtable
define i32 @addArg(i8* %longOption, i8 signext %shortOption, i32 %has_arg, i8 signext %type, i8* %dataPtr, i32 %dataSize, i8* %help) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %o = alloca %struct.MyOptionSt*, align 8
  %p = alloca %struct.MyOptionSt*, align 8
  store i8* %longOption, i8** %2, align 8
  store i8 %shortOption, i8* %3, align 1
  store i32 %has_arg, i32* %4, align 4
  store i8 %type, i8* %5, align 1
  store i8* %dataPtr, i8** %6, align 8
  store i32 %dataSize, i32* %7, align 4
  store i8* %help, i8** %8, align 8
  %9 = load i8** %2, align 8
  %10 = load i8* %3, align 1
  %11 = load i32* %4, align 4
  %12 = load i8* %5, align 1
  %13 = load i8** %6, align 8
  %14 = load i32* %7, align 4
  %15 = load i8** %8, align 8
  %16 = call %struct.MyOptionSt* @myOptionAlloc(i8* %9, i8 signext %10, i32 %11, i8 signext %12, i8* %13, i32 %14, i8* %15)
  store %struct.MyOptionSt* %16, %struct.MyOptionSt** %o, align 8
  %17 = load %struct.MyOptionSt** %o, align 8
  %18 = icmp ne %struct.MyOptionSt* %17, null
  br i1 %18, label %20, label %19

; <label>:19                                      ; preds = %0
  store i32 1, i32* %1
  br label %33

; <label>:20                                      ; preds = %0
  %21 = load %struct.MyOptionSt** @myargs, align 8
  %22 = icmp ne %struct.MyOptionSt* %21, null
  br i1 %22, label %25, label %23

; <label>:23                                      ; preds = %20
  %24 = load %struct.MyOptionSt** %o, align 8
  store %struct.MyOptionSt* %24, %struct.MyOptionSt** @myargs, align 8
  br label %32

; <label>:25                                      ; preds = %20
  %26 = load %struct.MyOptionSt** @myargs, align 8
  %27 = call %struct.MyOptionSt* @lastOption(%struct.MyOptionSt* %26)
  store %struct.MyOptionSt* %27, %struct.MyOptionSt** %p, align 8
  %28 = load %struct.MyOptionSt** %o, align 8
  %29 = bitcast %struct.MyOptionSt* %28 to i8*
  %30 = load %struct.MyOptionSt** %p, align 8
  %31 = getelementptr inbounds %struct.MyOptionSt* %30, i32 0, i32 7
  store i8* %29, i8** %31, align 8
  br label %32

; <label>:32                                      ; preds = %25, %23
  store i32 0, i32* %1
  br label %33

; <label>:33                                      ; preds = %32, %19
  %34 = load i32* %1
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal %struct.MyOptionSt* @myOptionAlloc(i8* %longOption, i8 signext %shortOption, i32 %has_arg, i8 signext %type, i8* %dataPtr, i32 %dataSize, i8* %help) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %o = alloca %struct.MyOptionSt*, align 8
  store i8* %longOption, i8** %1, align 8
  store i8 %shortOption, i8* %2, align 1
  store i32 %has_arg, i32* %3, align 4
  store i8 %type, i8* %4, align 1
  store i8* %dataPtr, i8** %5, align 8
  store i32 %dataSize, i32* %6, align 4
  store i8* %help, i8** %7, align 8
  %8 = call i8* @comdCalloc(i64 1, i64 48)
  %9 = bitcast i8* %8 to %struct.MyOptionSt*
  store %struct.MyOptionSt* %9, %struct.MyOptionSt** %o, align 8
  %10 = load i8** %7, align 8
  %11 = call i8* @dupString(i8* %10)
  %12 = load %struct.MyOptionSt** %o, align 8
  %13 = getelementptr inbounds %struct.MyOptionSt* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load i8** %1, align 8
  %15 = call i8* @dupString(i8* %14)
  %16 = load %struct.MyOptionSt** %o, align 8
  %17 = getelementptr inbounds %struct.MyOptionSt* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load i8* %2, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %25

; <label>:20                                      ; preds = %0
  %21 = load i8* %2, align 1
  %22 = load %struct.MyOptionSt** %o, align 8
  %23 = getelementptr inbounds %struct.MyOptionSt* %22, i32 0, i32 2
  %24 = getelementptr inbounds [2 x i8]* %23, i32 0, i64 0
  store i8 %21, i8* %24, align 1
  br label %33

; <label>:25                                      ; preds = %0
  %26 = load i32* @myOptionAlloc.iBase, align 4
  %27 = trunc i32 %26 to i8
  %28 = load %struct.MyOptionSt** %o, align 8
  %29 = getelementptr inbounds %struct.MyOptionSt* %28, i32 0, i32 2
  %30 = getelementptr inbounds [2 x i8]* %29, i32 0, i64 0
  store i8 %27, i8* %30, align 1
  %31 = load i32* @myOptionAlloc.iBase, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @myOptionAlloc.iBase, align 4
  br label %33

; <label>:33                                      ; preds = %25, %20
  %34 = load i32* %3, align 4
  %35 = load %struct.MyOptionSt** %o, align 8
  %36 = getelementptr inbounds %struct.MyOptionSt* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i8* %4, align 1
  %38 = load %struct.MyOptionSt** %o, align 8
  %39 = getelementptr inbounds %struct.MyOptionSt* %38, i32 0, i32 4
  store i8 %37, i8* %39, align 1
  %40 = load i8** %5, align 8
  %41 = load %struct.MyOptionSt** %o, align 8
  %42 = getelementptr inbounds %struct.MyOptionSt* %41, i32 0, i32 6
  store i8* %40, i8** %42, align 8
  %43 = load i32* %6, align 4
  %44 = load %struct.MyOptionSt** %o, align 8
  %45 = getelementptr inbounds %struct.MyOptionSt* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load i8** %1, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %63

; <label>:48                                      ; preds = %33
  %49 = load i32* @longest, align 4
  %50 = sext i32 %49 to i64
  %51 = load i8** %1, align 8
  %52 = call i64 @strlen(i8* %51) #7
  %53 = icmp ugt i64 %50, %52
  br i1 %53, label %54, label %57

; <label>:54                                      ; preds = %48
  %55 = load i32* @longest, align 4
  %56 = sext i32 %55 to i64
  br label %60

; <label>:57                                      ; preds = %48
  %58 = load i8** %1, align 8
  %59 = call i64 @strlen(i8* %58) #7
  br label %60

; <label>:60                                      ; preds = %57, %54
  %61 = phi i64 [ %56, %54 ], [ %59, %57 ]
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* @longest, align 4
  br label %63

; <label>:63                                      ; preds = %60, %33
  %64 = load %struct.MyOptionSt** %o, align 8
  ret %struct.MyOptionSt* %64
}

; Function Attrs: nounwind uwtable
define internal %struct.MyOptionSt* @lastOption(%struct.MyOptionSt* %o) #0 {
  %1 = alloca %struct.MyOptionSt*, align 8
  %2 = alloca %struct.MyOptionSt*, align 8
  store %struct.MyOptionSt* %o, %struct.MyOptionSt** %2, align 8
  %3 = load %struct.MyOptionSt** %2, align 8
  %4 = icmp ne %struct.MyOptionSt* %3, null
  br i1 %4, label %7, label %5

; <label>:5                                       ; preds = %0
  %6 = load %struct.MyOptionSt** %2, align 8
  store %struct.MyOptionSt* %6, %struct.MyOptionSt** %1
  br label %21

; <label>:7                                       ; preds = %0
  br label %8

; <label>:8                                       ; preds = %14, %7
  %9 = load %struct.MyOptionSt** %2, align 8
  %10 = getelementptr inbounds %struct.MyOptionSt* %9, i32 0, i32 7
  %11 = load i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.MyOptionSt*
  %13 = icmp ne %struct.MyOptionSt* %12, null
  br i1 %13, label %14, label %19

; <label>:14                                      ; preds = %8
  %15 = load %struct.MyOptionSt** %2, align 8
  %16 = getelementptr inbounds %struct.MyOptionSt* %15, i32 0, i32 7
  %17 = load i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.MyOptionSt*
  store %struct.MyOptionSt* %18, %struct.MyOptionSt** %2, align 8
  br label %8

; <label>:19                                      ; preds = %8
  %20 = load %struct.MyOptionSt** %2, align 8
  store %struct.MyOptionSt* %20, %struct.MyOptionSt** %1
  br label %21

; <label>:21                                      ; preds = %19, %5
  %22 = load %struct.MyOptionSt** %1
  ret %struct.MyOptionSt* %22
}

; Function Attrs: nounwind uwtable
define void @freeArgs() #0 {
  br label %1

; <label>:1                                       ; preds = %4, %0
  %2 = load %struct.MyOptionSt** @myargs, align 8
  %3 = icmp ne %struct.MyOptionSt* %2, null
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %1
  %5 = load %struct.MyOptionSt** @myargs, align 8
  %6 = call %struct.MyOptionSt* @myOptionFree(%struct.MyOptionSt* %5)
  store %struct.MyOptionSt* %6, %struct.MyOptionSt** @myargs, align 8
  br label %1

; <label>:7                                       ; preds = %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.MyOptionSt* @myOptionFree(%struct.MyOptionSt* %o) #0 {
  %1 = alloca %struct.MyOptionSt*, align 8
  %2 = alloca %struct.MyOptionSt*, align 8
  %r = alloca %struct.MyOptionSt*, align 8
  store %struct.MyOptionSt* %o, %struct.MyOptionSt** %2, align 8
  %3 = load %struct.MyOptionSt** %2, align 8
  %4 = icmp ne %struct.MyOptionSt* %3, null
  br i1 %4, label %6, label %5

; <label>:5                                       ; preds = %0
  store %struct.MyOptionSt* null, %struct.MyOptionSt** %1
  br label %32

; <label>:6                                       ; preds = %0
  %7 = load %struct.MyOptionSt** %2, align 8
  %8 = getelementptr inbounds %struct.MyOptionSt* %7, i32 0, i32 7
  %9 = load i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.MyOptionSt*
  store %struct.MyOptionSt* %10, %struct.MyOptionSt** %r, align 8
  %11 = load %struct.MyOptionSt** %2, align 8
  %12 = getelementptr inbounds %struct.MyOptionSt* %11, i32 0, i32 1
  %13 = load i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

; <label>:15                                      ; preds = %6
  %16 = load %struct.MyOptionSt** %2, align 8
  %17 = getelementptr inbounds %struct.MyOptionSt* %16, i32 0, i32 1
  %18 = load i8** %17, align 8
  call void @free(i8* %18) #5
  br label %19

; <label>:19                                      ; preds = %15, %6
  %20 = load %struct.MyOptionSt** %2, align 8
  %21 = getelementptr inbounds %struct.MyOptionSt* %20, i32 0, i32 0
  %22 = load i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

; <label>:24                                      ; preds = %19
  %25 = load %struct.MyOptionSt** %2, align 8
  %26 = getelementptr inbounds %struct.MyOptionSt* %25, i32 0, i32 0
  %27 = load i8** %26, align 8
  call void @free(i8* %27) #5
  br label %28

; <label>:28                                      ; preds = %24, %19
  %29 = load %struct.MyOptionSt** %2, align 8
  %30 = bitcast %struct.MyOptionSt* %29 to i8*
  call void @free(i8* %30) #5
  %31 = load %struct.MyOptionSt** %r, align 8
  store %struct.MyOptionSt* %31, %struct.MyOptionSt** %1
  br label %32

; <label>:32                                      ; preds = %28, %5
  %33 = load %struct.MyOptionSt** %1
  ret %struct.MyOptionSt* %33
}

; Function Attrs: nounwind uwtable
define void @printArgs() #0 {
  %o = alloca %struct.MyOptionSt*, align 8
  %s = alloca [4096 x i8], align 16
  %shortArg = alloca i8*, align 8
  %1 = load %struct.MyOptionSt** @myargs, align 8
  store %struct.MyOptionSt* %1, %struct.MyOptionSt** %o, align 8
  %2 = load %struct._IO_FILE** @stdout, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([20 x i8]* @.str, i32 0, i32 0))
  %4 = getelementptr inbounds [4096 x i8]* %s, i32 0, i32 0
  %5 = load i32* @longest, align 4
  %6 = call i32 (i8*, i8*, ...)* @sprintf(i8* %4, i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0), i32 %5) #5
  br label %7

; <label>:7                                       ; preds = %22, %0
  %8 = load %struct.MyOptionSt** %o, align 8
  %9 = icmp ne %struct.MyOptionSt* %8, null
  br i1 %9, label %10, label %49

; <label>:10                                      ; preds = %7
  %11 = load %struct.MyOptionSt** %o, align 8
  %12 = getelementptr inbounds %struct.MyOptionSt* %11, i32 0, i32 2
  %13 = getelementptr inbounds [2 x i8]* %12, i32 0, i64 0
  %14 = load i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp slt i32 %15, 255
  br i1 %16, label %17, label %21

; <label>:17                                      ; preds = %10
  %18 = load %struct.MyOptionSt** %o, align 8
  %19 = getelementptr inbounds %struct.MyOptionSt* %18, i32 0, i32 2
  %20 = getelementptr inbounds [2 x i8]* %19, i32 0, i32 0
  store i8* %20, i8** %shortArg, align 8
  br label %22

; <label>:21                                      ; preds = %10
  store i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), i8** %shortArg, align 8
  br label %22

; <label>:22                                      ; preds = %21, %17
  %23 = load %struct._IO_FILE** @stdout, align 8
  %24 = getelementptr inbounds [4096 x i8]* %s, i32 0, i32 0
  %25 = load %struct.MyOptionSt** %o, align 8
  %26 = getelementptr inbounds %struct.MyOptionSt* %25, i32 0, i32 1
  %27 = load i8** %26, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* %24, i8* %27)
  %29 = load %struct._IO_FILE** @stdout, align 8
  %30 = load i8** %shortArg, align 8
  %31 = getelementptr inbounds i8* %30, i64 0
  %32 = load i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = load %struct.MyOptionSt** %o, align 8
  %35 = getelementptr inbounds %struct.MyOptionSt* %34, i32 0, i32 3
  %36 = load i32* %35, align 4
  %37 = load %struct.MyOptionSt** %o, align 8
  %38 = getelementptr inbounds %struct.MyOptionSt* %37, i32 0, i32 4
  %39 = load i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = load %struct.MyOptionSt** %o, align 8
  %42 = getelementptr inbounds %struct.MyOptionSt* %41, i32 0, i32 0
  %43 = load i8** %42, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([27 x i8]* @.str3, i32 0, i32 0), i32 %33, i32 %36, i32 %40, i8* %43)
  %45 = load %struct.MyOptionSt** %o, align 8
  %46 = getelementptr inbounds %struct.MyOptionSt* %45, i32 0, i32 7
  %47 = load i8** %46, align 8
  %48 = bitcast i8* %47 to %struct.MyOptionSt*
  store %struct.MyOptionSt* %48, %struct.MyOptionSt** %o, align 8
  br label %7

; <label>:49                                      ; preds = %7
  %50 = load %struct._IO_FILE** @stdout, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0))
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @processArgs(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %o = alloca %struct.MyOptionSt*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %opts = alloca %struct.option*, align 8
  %sArgs = alloca i8*, align 8
  %c = alloca i32, align 4
  %option_index = alloca i32, align 4
  %i1 = alloca i32*, align 8
  store i32 %argc, i32* %1, align 4
  store i8** %argv, i8*** %2, align 8
  store i32 0, i32* %n, align 4
  %3 = load %struct.MyOptionSt** @myargs, align 8
  %4 = icmp ne %struct.MyOptionSt* %3, null
  br i1 %4, label %6, label %5

; <label>:5                                       ; preds = %0
  br label %178

; <label>:6                                       ; preds = %0
  %7 = load %struct.MyOptionSt** @myargs, align 8
  store %struct.MyOptionSt* %7, %struct.MyOptionSt** %o, align 8
  br label %8

; <label>:8                                       ; preds = %11, %6
  %9 = load %struct.MyOptionSt** %o, align 8
  %10 = icmp ne %struct.MyOptionSt* %9, null
  br i1 %10, label %11, label %18

; <label>:11                                      ; preds = %8
  %12 = load i32* %n, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %n, align 4
  %14 = load %struct.MyOptionSt** %o, align 8
  %15 = getelementptr inbounds %struct.MyOptionSt* %14, i32 0, i32 7
  %16 = load i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.MyOptionSt*
  store %struct.MyOptionSt* %17, %struct.MyOptionSt** %o, align 8
  br label %8

; <label>:18                                      ; preds = %8
  %19 = load %struct.MyOptionSt** @myargs, align 8
  store %struct.MyOptionSt* %19, %struct.MyOptionSt** %o, align 8
  %20 = load i32* %n, align 4
  %21 = add nsw i32 %20, 2
  %22 = mul nsw i32 2, %21
  %23 = sext i32 %22 to i64
  %24 = call i8* @comdCalloc(i64 %23, i64 1)
  store i8* %24, i8** %sArgs, align 8
  %25 = load i32* %n, align 4
  %26 = sext i32 %25 to i64
  %27 = call i8* @comdCalloc(i64 %26, i64 32)
  %28 = bitcast i8* %27 to %struct.option*
  store %struct.option* %28, %struct.option** %opts, align 8
  store i32 0, i32* %i, align 4
  br label %29

; <label>:29                                      ; preds = %82, %18
  %30 = load i32* %i, align 4
  %31 = load i32* %n, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %85

; <label>:33                                      ; preds = %29
  %34 = load %struct.MyOptionSt** %o, align 8
  %35 = getelementptr inbounds %struct.MyOptionSt* %34, i32 0, i32 1
  %36 = load i8** %35, align 8
  %37 = load i32* %i, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.option** %opts, align 8
  %40 = getelementptr inbounds %struct.option* %39, i64 %38
  %41 = getelementptr inbounds %struct.option* %40, i32 0, i32 0
  store i8* %36, i8** %41, align 8
  %42 = load %struct.MyOptionSt** %o, align 8
  %43 = getelementptr inbounds %struct.MyOptionSt* %42, i32 0, i32 3
  %44 = load i32* %43, align 4
  %45 = load i32* %i, align 4
  %46 = sext i32 %45 to i64
  %47 = load %struct.option** %opts, align 8
  %48 = getelementptr inbounds %struct.option* %47, i64 %46
  %49 = getelementptr inbounds %struct.option* %48, i32 0, i32 1
  store i32 %44, i32* %49, align 4
  %50 = load i32* %i, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.option** %opts, align 8
  %53 = getelementptr inbounds %struct.option* %52, i64 %51
  %54 = getelementptr inbounds %struct.option* %53, i32 0, i32 2
  store i32* null, i32** %54, align 8
  %55 = load %struct.MyOptionSt** %o, align 8
  %56 = getelementptr inbounds %struct.MyOptionSt* %55, i32 0, i32 2
  %57 = getelementptr inbounds [2 x i8]* %56, i32 0, i64 0
  %58 = load i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = load i32* %i, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.option** %opts, align 8
  %63 = getelementptr inbounds %struct.option* %62, i64 %61
  %64 = getelementptr inbounds %struct.option* %63, i32 0, i32 3
  store i32 %59, i32* %64, align 4
  %65 = load i8** %sArgs, align 8
  %66 = load %struct.MyOptionSt** %o, align 8
  %67 = getelementptr inbounds %struct.MyOptionSt* %66, i32 0, i32 2
  %68 = getelementptr inbounds [2 x i8]* %67, i32 0, i32 0
  %69 = call i8* @strcat(i8* %65, i8* %68) #5
  %70 = load %struct.MyOptionSt** %o, align 8
  %71 = getelementptr inbounds %struct.MyOptionSt* %70, i32 0, i32 3
  %72 = load i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

; <label>:74                                      ; preds = %33
  %75 = load i8** %sArgs, align 8
  %76 = call i8* @strcat(i8* %75, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0)) #5
  br label %77

; <label>:77                                      ; preds = %74, %33
  %78 = load %struct.MyOptionSt** %o, align 8
  %79 = getelementptr inbounds %struct.MyOptionSt* %78, i32 0, i32 7
  %80 = load i8** %79, align 8
  %81 = bitcast i8* %80 to %struct.MyOptionSt*
  store %struct.MyOptionSt* %81, %struct.MyOptionSt** %o, align 8
  br label %82

; <label>:82                                      ; preds = %77
  %83 = load i32* %i, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %i, align 4
  br label %29

; <label>:85                                      ; preds = %29
  br label %86

; <label>:86                                      ; preds = %173, %85
  store i32 0, i32* %option_index, align 4
  %87 = load i32* %1, align 4
  %88 = load i8*** %2, align 8
  %89 = load i8** %sArgs, align 8
  %90 = load %struct.option** %opts, align 8
  %91 = call i32 @getopt_long(i32 %87, i8** %88, i8* %89, %struct.option* %90, i32* %option_index) #5
  store i32 %91, i32* %c, align 4
  %92 = load i32* %c, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %95

; <label>:94                                      ; preds = %86
  br label %174

; <label>:95                                      ; preds = %86
  %96 = load %struct.MyOptionSt** @myargs, align 8
  %97 = load i32* %c, align 4
  %98 = trunc i32 %97 to i8
  %99 = call %struct.MyOptionSt* @findOption(%struct.MyOptionSt* %96, i8 zeroext %98)
  store %struct.MyOptionSt* %99, %struct.MyOptionSt** %o, align 8
  %100 = load %struct.MyOptionSt** %o, align 8
  %101 = icmp ne %struct.MyOptionSt* %100, null
  br i1 %101, label %106, label %102

; <label>:102                                     ; preds = %95
  %103 = load %struct._IO_FILE** @stdout, align 8
  %104 = load i32* %c, align 4
  %105 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([42 x i8]* @.str6, i32 0, i32 0), i32 %104)
  br label %174

; <label>:106                                     ; preds = %95
  %107 = load %struct.MyOptionSt** %o, align 8
  %108 = getelementptr inbounds %struct.MyOptionSt* %107, i32 0, i32 3
  %109 = load i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %117, label %111

; <label>:111                                     ; preds = %106
  %112 = load %struct.MyOptionSt** %o, align 8
  %113 = getelementptr inbounds %struct.MyOptionSt* %112, i32 0, i32 6
  %114 = load i8** %113, align 8
  %115 = bitcast i8* %114 to i32*
  store i32* %115, i32** %i1, align 8
  %116 = load i32** %i1, align 8
  store i32 1, i32* %116, align 4
  br label %173

; <label>:117                                     ; preds = %106
  %118 = load %struct.MyOptionSt** %o, align 8
  %119 = getelementptr inbounds %struct.MyOptionSt* %118, i32 0, i32 4
  %120 = load i8* %119, align 1
  %121 = sext i8 %120 to i32
  switch i32 %121, label %168 [
    i32 105, label %122
    i32 102, label %129
    i32 100, label %136
    i32 115, label %143
    i32 99, label %162
  ]

; <label>:122                                     ; preds = %117
  %123 = load i8** @optarg, align 8
  %124 = load %struct.MyOptionSt** %o, align 8
  %125 = getelementptr inbounds %struct.MyOptionSt* %124, i32 0, i32 6
  %126 = load i8** %125, align 8
  %127 = bitcast i8* %126 to i32*
  %128 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %123, i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 0), i32* %127) #5
  br label %172

; <label>:129                                     ; preds = %117
  %130 = load i8** @optarg, align 8
  %131 = load %struct.MyOptionSt** %o, align 8
  %132 = getelementptr inbounds %struct.MyOptionSt* %131, i32 0, i32 6
  %133 = load i8** %132, align 8
  %134 = bitcast i8* %133 to float*
  %135 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %130, i8* getelementptr inbounds ([3 x i8]* @.str8, i32 0, i32 0), float* %134) #5
  br label %172

; <label>:136                                     ; preds = %117
  %137 = load i8** @optarg, align 8
  %138 = load %struct.MyOptionSt** %o, align 8
  %139 = getelementptr inbounds %struct.MyOptionSt* %138, i32 0, i32 6
  %140 = load i8** %139, align 8
  %141 = bitcast i8* %140 to double*
  %142 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %137, i8* getelementptr inbounds ([4 x i8]* @.str9, i32 0, i32 0), double* %141) #5
  br label %172

; <label>:143                                     ; preds = %117
  %144 = load %struct.MyOptionSt** %o, align 8
  %145 = getelementptr inbounds %struct.MyOptionSt* %144, i32 0, i32 6
  %146 = load i8** %145, align 8
  %147 = load i8** @optarg, align 8
  %148 = load %struct.MyOptionSt** %o, align 8
  %149 = getelementptr inbounds %struct.MyOptionSt* %148, i32 0, i32 5
  %150 = load i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = call i8* @strncpy(i8* %146, i8* %147, i64 %151) #5
  %153 = load %struct.MyOptionSt** %o, align 8
  %154 = getelementptr inbounds %struct.MyOptionSt* %153, i32 0, i32 5
  %155 = load i32* %154, align 4
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = load %struct.MyOptionSt** %o, align 8
  %159 = getelementptr inbounds %struct.MyOptionSt* %158, i32 0, i32 6
  %160 = load i8** %159, align 8
  %161 = getelementptr inbounds i8* %160, i64 %157
  store i8 0, i8* %161, align 1
  br label %172

; <label>:162                                     ; preds = %117
  %163 = load i8** @optarg, align 8
  %164 = load %struct.MyOptionSt** %o, align 8
  %165 = getelementptr inbounds %struct.MyOptionSt* %164, i32 0, i32 6
  %166 = load i8** %165, align 8
  %167 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %163, i8* getelementptr inbounds ([3 x i8]* @.str10, i32 0, i32 0), i8* %166) #5
  br label %172

; <label>:168                                     ; preds = %117
  %169 = load %struct._IO_FILE** @stdout, align 8
  %170 = load i32* %c, align 4
  %171 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([95 x i8]* @.str11, i32 0, i32 0), i32 %170)
  br label %172

; <label>:172                                     ; preds = %168, %162, %143, %136, %129, %122
  br label %173

; <label>:173                                     ; preds = %172, %111
  br label %86

; <label>:174                                     ; preds = %102, %94
  %175 = load %struct.option** %opts, align 8
  %176 = bitcast %struct.option* %175 to i8*
  call void @free(i8* %176) #5
  %177 = load i8** %sArgs, align 8
  call void @free(i8* %177) #5
  br label %178

; <label>:178                                     ; preds = %174, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @comdCalloc(i64 %num, i64 %iSize) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %num, i64* %1, align 8
  store i64 %iSize, i64* %2, align 8
  %3 = load i64* %1, align 8
  %4 = load i64* %2, align 8
  %5 = call noalias i8* @calloc(i64 %3, i64 %4) #5
  ret i8* %5
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: nounwind uwtable
define internal %struct.MyOptionSt* @findOption(%struct.MyOptionSt* %o, i8 zeroext %shortArg) #0 {
  %1 = alloca %struct.MyOptionSt*, align 8
  %2 = alloca %struct.MyOptionSt*, align 8
  %3 = alloca i8, align 1
  store %struct.MyOptionSt* %o, %struct.MyOptionSt** %2, align 8
  store i8 %shortArg, i8* %3, align 1
  br label %4

; <label>:4                                       ; preds = %18, %0
  %5 = load %struct.MyOptionSt** %2, align 8
  %6 = icmp ne %struct.MyOptionSt* %5, null
  br i1 %6, label %7, label %23

; <label>:7                                       ; preds = %4
  %8 = load %struct.MyOptionSt** %2, align 8
  %9 = getelementptr inbounds %struct.MyOptionSt* %8, i32 0, i32 2
  %10 = getelementptr inbounds [2 x i8]* %9, i32 0, i64 0
  %11 = load i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8* %3, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %18

; <label>:16                                      ; preds = %7
  %17 = load %struct.MyOptionSt** %2, align 8
  store %struct.MyOptionSt* %17, %struct.MyOptionSt** %1
  br label %25

; <label>:18                                      ; preds = %7
  %19 = load %struct.MyOptionSt** %2, align 8
  %20 = getelementptr inbounds %struct.MyOptionSt* %19, i32 0, i32 7
  %21 = load i8** %20, align 8
  %22 = bitcast i8* %21 to %struct.MyOptionSt*
  store %struct.MyOptionSt* %22, %struct.MyOptionSt** %2, align 8
  br label %4

; <label>:23                                      ; preds = %4
  %24 = load %struct.MyOptionSt** %2, align 8
  store %struct.MyOptionSt* %24, %struct.MyOptionSt** %1
  br label %25

; <label>:25                                      ; preds = %23, %16
  %26 = load %struct.MyOptionSt** %1
  ret %struct.MyOptionSt* %26
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i8* @dupString(i8* %s) #0 {
  %1 = alloca i8*, align 8
  %d = alloca i8*, align 8
  store i8* %s, i8** %1, align 8
  %2 = load i8** %1, align 8
  %3 = icmp ne i8* %2, null
  br i1 %3, label %5, label %4

; <label>:4                                       ; preds = %0
  store i8* getelementptr inbounds ([1 x i8]* @.str12, i32 0, i32 0), i8** %1, align 8
  br label %5

; <label>:5                                       ; preds = %4, %0
  %6 = load i8** %1, align 8
  %7 = call i64 @strlen(i8* %6) #7
  %8 = add i64 %7, 1
  %9 = call i8* @comdCalloc(i64 %8, i64 1)
  store i8* %9, i8** %d, align 8
  %10 = load i8** %d, align 8
  %11 = load i8** %1, align 8
  %12 = call i8* @strcpy(i8* %10, i8* %11) #5
  %13 = load i8** %d, align 8
  ret i8* %13
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %cmd = alloca %struct.CommandSt, align 8
  %sim = alloca %struct.SimFlatSt*, align 8
  %validate = alloca %struct.ValidateSt*, align 8
  %nSteps = alloca i32, align 4
  %printRate = alloca i32, align 4
  %iStep = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  call void @initParallel(i32* %2, i8*** %3)
  call void @profileStart(i32 0)
  call void @initSubsystems()
  call void @timestampBarrier(i8* getelementptr inbounds ([25 x i8]* @.str13, i32 0, i32 0))
  %4 = load %struct._IO_FILE** @yamlFile, align 8
  call void @yamlAppInfo(%struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE** @stdout, align 8
  call void @yamlAppInfo(%struct._IO_FILE* %5)
  %6 = load i32* %2, align 4
  %7 = load i8*** %3, align 8
  call void @parseCommandLine(%struct.CommandSt* sret %cmd, i32 %6, i8** %7)
  %8 = load %struct._IO_FILE** @yamlFile, align 8
  call void @printCmdYaml(%struct._IO_FILE* %8, %struct.CommandSt* %cmd)
  %9 = load %struct._IO_FILE** @stdout, align 8
  call void @printCmdYaml(%struct._IO_FILE* %9, %struct.CommandSt* %cmd)
  %10 = call %struct.SimFlatSt* @initSimulation(%struct.CommandSt* byval align 8 %cmd)
  store %struct.SimFlatSt* %10, %struct.SimFlatSt** %sim, align 8
  %11 = load %struct._IO_FILE** @yamlFile, align 8
  %12 = load %struct.SimFlatSt** %sim, align 8
  call void @printSimulationDataYaml(%struct._IO_FILE* %11, %struct.SimFlatSt* %12)
  %13 = load %struct._IO_FILE** @stdout, align 8
  %14 = load %struct.SimFlatSt** %sim, align 8
  call void @printSimulationDataYaml(%struct._IO_FILE* %13, %struct.SimFlatSt* %14)
  %15 = load %struct.SimFlatSt** %sim, align 8
  %16 = call %struct.ValidateSt* @initValidate(%struct.SimFlatSt* %15)
  store %struct.ValidateSt* %16, %struct.ValidateSt** %validate, align 8
  call void @timestampBarrier(i8* getelementptr inbounds ([25 x i8]* @.str114, i32 0, i32 0))
  call void @timestampBarrier(i8* getelementptr inbounds ([21 x i8]* @.str215, i32 0, i32 0))
  %17 = load %struct.SimFlatSt** %sim, align 8
  %18 = getelementptr inbounds %struct.SimFlatSt* %17, i32 0, i32 0
  %19 = load i32* %18, align 4
  store i32 %19, i32* %nSteps, align 4
  %20 = load %struct.SimFlatSt** %sim, align 8
  %21 = getelementptr inbounds %struct.SimFlatSt* %20, i32 0, i32 1
  %22 = load i32* %21, align 4
  store i32 %22, i32* %printRate, align 4
  store i32 0, i32* %iStep, align 4
  call void @profileStart(i32 1)
  br label %23

; <label>:23                                      ; preds = %45, %0
  %24 = load i32* %iStep, align 4
  %25 = load i32* %nSteps, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %49

; <label>:27                                      ; preds = %23
  br label %28

; <label>:28                                      ; preds = %27
  call void @profileStart(i32 10)
  br label %29

; <label>:29                                      ; preds = %28
  %30 = load %struct.SimFlatSt** %sim, align 8
  call void @sumAtoms(%struct.SimFlatSt* %30)
  br label %31

; <label>:31                                      ; preds = %29
  call void @profileStop(i32 10)
  br label %32

; <label>:32                                      ; preds = %31
  %33 = load %struct.SimFlatSt** %sim, align 8
  %34 = load i32* %iStep, align 4
  %35 = call double @getElapsedTime(i32 2)
  call void @printThings(%struct.SimFlatSt* %33, i32 %34, double %35)
  br label %36

; <label>:36                                      ; preds = %32
  call void @profileStart(i32 2)
  br label %37

; <label>:37                                      ; preds = %36
  %38 = load %struct.SimFlatSt** %sim, align 8
  %39 = load i32* %printRate, align 4
  %40 = load %struct.SimFlatSt** %sim, align 8
  %41 = getelementptr inbounds %struct.SimFlatSt* %40, i32 0, i32 2
  %42 = load double* %41, align 8
  %43 = call double @timestep(%struct.SimFlatSt* %38, i32 %39, double %42)
  br label %44

; <label>:44                                      ; preds = %37
  call void @profileStop(i32 2)
  br label %45

; <label>:45                                      ; preds = %44
  %46 = load i32* %printRate, align 4
  %47 = load i32* %iStep, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %iStep, align 4
  br label %23

; <label>:49                                      ; preds = %23
  call void @profileStop(i32 1)
  %50 = load %struct.SimFlatSt** %sim, align 8
  call void @sumAtoms(%struct.SimFlatSt* %50)
  %51 = load %struct.SimFlatSt** %sim, align 8
  %52 = load i32* %iStep, align 4
  %53 = call double @getElapsedTime(i32 2)
  call void @printThings(%struct.SimFlatSt* %51, i32 %52, double %53)
  call void @timestampBarrier(i8* getelementptr inbounds ([19 x i8]* @.str316, i32 0, i32 0))
  %54 = load %struct.ValidateSt** %validate, align 8
  %55 = load %struct.SimFlatSt** %sim, align 8
  call void @validateResult(%struct.ValidateSt* %54, %struct.SimFlatSt* %55)
  call void @profileStop(i32 0)
  %56 = load %struct.SimFlatSt** %sim, align 8
  %57 = getelementptr inbounds %struct.SimFlatSt* %56, i32 0, i32 5
  %58 = load %struct.AtomsSt** %57, align 8
  %59 = getelementptr inbounds %struct.AtomsSt* %58, i32 0, i32 1
  %60 = load i32* %59, align 4
  %61 = load %struct.SimFlatSt** %sim, align 8
  %62 = getelementptr inbounds %struct.SimFlatSt* %61, i32 0, i32 1
  %63 = load i32* %62, align 4
  call void @printPerformanceResults(i32 %60, i32 %63)
  %64 = load %struct._IO_FILE** @yamlFile, align 8
  call void @printPerformanceResultsYaml(%struct._IO_FILE* %64)
  call void @destroySimulation(%struct.SimFlatSt** %sim)
  %65 = load %struct.ValidateSt** %validate, align 8
  %66 = bitcast %struct.ValidateSt* %65 to i8*
  call void @comdFree(i8* %66)
  call void @finalizeSubsystems()
  call void @timestampBarrier(i8* getelementptr inbounds ([13 x i8]* @.str417, i32 0, i32 0))
  call void @destroyParallel()
  ret i32 0
}

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define internal void @initSubsystems() #0 {
  call void @yamlBegin()
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.SimFlatSt* @initSimulation(%struct.CommandSt* byval align 8 %cmd) #0 {
  %sim = alloca %struct.SimFlatSt*, align 8
  %latticeConstant = alloca double, align 8
  %globalExtent = alloca [3 x double], align 16
  %1 = call i8* @comdMalloc(i64 80)
  %2 = bitcast i8* %1 to %struct.SimFlatSt*
  store %struct.SimFlatSt* %2, %struct.SimFlatSt** %sim, align 8
  %3 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 10
  %4 = load i32* %3, align 4
  %5 = load %struct.SimFlatSt** %sim, align 8
  %6 = getelementptr inbounds %struct.SimFlatSt* %5, i32 0, i32 0
  store i32 %4, i32* %6, align 4
  %7 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 11
  %8 = load i32* %7, align 4
  %9 = load %struct.SimFlatSt** %sim, align 8
  %10 = getelementptr inbounds %struct.SimFlatSt* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 12
  %12 = load double* %11, align 8
  %13 = load %struct.SimFlatSt** %sim, align 8
  %14 = getelementptr inbounds %struct.SimFlatSt* %13, i32 0, i32 2
  store double %12, double* %14, align 8
  %15 = load %struct.SimFlatSt** %sim, align 8
  %16 = getelementptr inbounds %struct.SimFlatSt* %15, i32 0, i32 3
  store %struct.DomainSt* null, %struct.DomainSt** %16, align 8
  %17 = load %struct.SimFlatSt** %sim, align 8
  %18 = getelementptr inbounds %struct.SimFlatSt* %17, i32 0, i32 4
  store %struct.LinkCellSt* null, %struct.LinkCellSt** %18, align 8
  %19 = load %struct.SimFlatSt** %sim, align 8
  %20 = getelementptr inbounds %struct.SimFlatSt* %19, i32 0, i32 5
  store %struct.AtomsSt* null, %struct.AtomsSt** %20, align 8
  %21 = load %struct.SimFlatSt** %sim, align 8
  %22 = getelementptr inbounds %struct.SimFlatSt* %21, i32 0, i32 7
  store double 0.000000e+00, double* %22, align 8
  %23 = load %struct.SimFlatSt** %sim, align 8
  %24 = getelementptr inbounds %struct.SimFlatSt* %23, i32 0, i32 8
  store double 0.000000e+00, double* %24, align 8
  %25 = load %struct.SimFlatSt** %sim, align 8
  %26 = getelementptr inbounds %struct.SimFlatSt* %25, i32 0, i32 10
  store %struct.HaloExchangeSt* null, %struct.HaloExchangeSt** %26, align 8
  %27 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 3
  %28 = load i32* %27, align 4
  %29 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 0
  %30 = getelementptr inbounds [1024 x i8]* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 1
  %32 = getelementptr inbounds [1024 x i8]* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 2
  %34 = getelementptr inbounds [1024 x i8]* %33, i32 0, i32 0
  %35 = call %struct.BasePotentialSt* @initPotential(i32 %28, i8* %30, i8* %32, i8* %34)
  %36 = load %struct.SimFlatSt** %sim, align 8
  %37 = getelementptr inbounds %struct.SimFlatSt* %36, i32 0, i32 9
  store %struct.BasePotentialSt* %35, %struct.BasePotentialSt** %37, align 8
  %38 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 13
  %39 = load double* %38, align 8
  store double %39, double* %latticeConstant, align 8
  %40 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 13
  %41 = load double* %40, align 8
  %42 = fcmp olt double %41, 0.000000e+00
  br i1 %42, label %43, label %49

; <label>:43                                      ; preds = %0
  %44 = load %struct.SimFlatSt** %sim, align 8
  %45 = getelementptr inbounds %struct.SimFlatSt* %44, i32 0, i32 9
  %46 = load %struct.BasePotentialSt** %45, align 8
  %47 = getelementptr inbounds %struct.BasePotentialSt* %46, i32 0, i32 2
  %48 = load double* %47, align 8
  store double %48, double* %latticeConstant, align 8
  br label %49

; <label>:49                                      ; preds = %43, %0
  %50 = load %struct.SimFlatSt** %sim, align 8
  %51 = getelementptr inbounds %struct.SimFlatSt* %50, i32 0, i32 9
  %52 = load %struct.BasePotentialSt** %51, align 8
  %53 = getelementptr inbounds %struct.BasePotentialSt* %52, i32 0, i32 0
  %54 = load double* %53, align 8
  %55 = load double* %latticeConstant, align 8
  %56 = load %struct.SimFlatSt** %sim, align 8
  %57 = getelementptr inbounds %struct.SimFlatSt* %56, i32 0, i32 9
  %58 = load %struct.BasePotentialSt** %57, align 8
  %59 = getelementptr inbounds %struct.BasePotentialSt* %58, i32 0, i32 3
  %60 = getelementptr inbounds [8 x i8]* %59, i32 0, i32 0
  call void @sanityChecks(%struct.CommandSt* byval align 8 %cmd, double %54, double %55, i8* %60)
  %61 = load %struct.SimFlatSt** %sim, align 8
  %62 = getelementptr inbounds %struct.SimFlatSt* %61, i32 0, i32 9
  %63 = load %struct.BasePotentialSt** %62, align 8
  %64 = call %struct.SpeciesDataSt* @initSpecies(%struct.BasePotentialSt* %63)
  %65 = load %struct.SimFlatSt** %sim, align 8
  %66 = getelementptr inbounds %struct.SimFlatSt* %65, i32 0, i32 6
  store %struct.SpeciesDataSt* %64, %struct.SpeciesDataSt** %66, align 8
  %67 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 4
  %68 = load i32* %67, align 4
  %69 = sitofp i32 %68 to double
  %70 = load double* %latticeConstant, align 8
  %71 = fmul double %69, %70
  %72 = getelementptr inbounds [3 x double]* %globalExtent, i32 0, i64 0
  store double %71, double* %72, align 8
  %73 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 5
  %74 = load i32* %73, align 4
  %75 = sitofp i32 %74 to double
  %76 = load double* %latticeConstant, align 8
  %77 = fmul double %75, %76
  %78 = getelementptr inbounds [3 x double]* %globalExtent, i32 0, i64 1
  store double %77, double* %78, align 8
  %79 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 6
  %80 = load i32* %79, align 4
  %81 = sitofp i32 %80 to double
  %82 = load double* %latticeConstant, align 8
  %83 = fmul double %81, %82
  %84 = getelementptr inbounds [3 x double]* %globalExtent, i32 0, i64 2
  store double %83, double* %84, align 8
  %85 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 7
  %86 = load i32* %85, align 4
  %87 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 8
  %88 = load i32* %87, align 4
  %89 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 9
  %90 = load i32* %89, align 4
  %91 = getelementptr inbounds [3 x double]* %globalExtent, i32 0, i32 0
  %92 = call %struct.DomainSt* @initDecomposition(i32 %86, i32 %88, i32 %90, double* %91)
  %93 = load %struct.SimFlatSt** %sim, align 8
  %94 = getelementptr inbounds %struct.SimFlatSt* %93, i32 0, i32 3
  store %struct.DomainSt* %92, %struct.DomainSt** %94, align 8
  %95 = load %struct.SimFlatSt** %sim, align 8
  %96 = getelementptr inbounds %struct.SimFlatSt* %95, i32 0, i32 3
  %97 = load %struct.DomainSt** %96, align 8
  %98 = load %struct.SimFlatSt** %sim, align 8
  %99 = getelementptr inbounds %struct.SimFlatSt* %98, i32 0, i32 9
  %100 = load %struct.BasePotentialSt** %99, align 8
  %101 = getelementptr inbounds %struct.BasePotentialSt* %100, i32 0, i32 0
  %102 = load double* %101, align 8
  %103 = call %struct.LinkCellSt* @initLinkCells(%struct.DomainSt* %97, double %102)
  %104 = load %struct.SimFlatSt** %sim, align 8
  %105 = getelementptr inbounds %struct.SimFlatSt* %104, i32 0, i32 4
  store %struct.LinkCellSt* %103, %struct.LinkCellSt** %105, align 8
  %106 = load %struct.SimFlatSt** %sim, align 8
  %107 = getelementptr inbounds %struct.SimFlatSt* %106, i32 0, i32 4
  %108 = load %struct.LinkCellSt** %107, align 8
  %109 = call %struct.AtomsSt* @initAtoms(%struct.LinkCellSt* %108)
  %110 = load %struct.SimFlatSt** %sim, align 8
  %111 = getelementptr inbounds %struct.SimFlatSt* %110, i32 0, i32 5
  store %struct.AtomsSt* %109, %struct.AtomsSt** %111, align 8
  %112 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 4
  %113 = load i32* %112, align 4
  %114 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 5
  %115 = load i32* %114, align 4
  %116 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 6
  %117 = load i32* %116, align 4
  %118 = load double* %latticeConstant, align 8
  %119 = load %struct.SimFlatSt** %sim, align 8
  call void @createFccLattice(i32 %113, i32 %115, i32 %117, double %118, %struct.SimFlatSt* %119)
  %120 = load %struct.SimFlatSt** %sim, align 8
  %121 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 14
  %122 = load double* %121, align 8
  call void @setTemperature(%struct.SimFlatSt* %120, double %122)
  %123 = load %struct.SimFlatSt** %sim, align 8
  %124 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 15
  %125 = load double* %124, align 8
  call void @randomDisplacements(%struct.SimFlatSt* %123, double %125)
  %126 = load %struct.SimFlatSt** %sim, align 8
  %127 = getelementptr inbounds %struct.SimFlatSt* %126, i32 0, i32 3
  %128 = load %struct.DomainSt** %127, align 8
  %129 = load %struct.SimFlatSt** %sim, align 8
  %130 = getelementptr inbounds %struct.SimFlatSt* %129, i32 0, i32 4
  %131 = load %struct.LinkCellSt** %130, align 8
  %132 = call %struct.HaloExchangeSt* @initAtomHaloExchange(%struct.DomainSt* %128, %struct.LinkCellSt* %131)
  %133 = load %struct.SimFlatSt** %sim, align 8
  %134 = getelementptr inbounds %struct.SimFlatSt* %133, i32 0, i32 10
  store %struct.HaloExchangeSt* %132, %struct.HaloExchangeSt** %134, align 8
  br label %135

; <label>:135                                     ; preds = %49
  call void @profileStart(i32 5)
  br label %136

; <label>:136                                     ; preds = %135
  %137 = load %struct.SimFlatSt** %sim, align 8
  call void @redistributeAtoms(%struct.SimFlatSt* %137)
  br label %138

; <label>:138                                     ; preds = %136
  call void @profileStop(i32 5)
  br label %139

; <label>:139                                     ; preds = %138
  br label %140

; <label>:140                                     ; preds = %139
  call void @profileStart(i32 7)
  br label %141

; <label>:141                                     ; preds = %140
  %142 = load %struct.SimFlatSt** %sim, align 8
  call void @computeForce(%struct.SimFlatSt* %142)
  br label %143

; <label>:143                                     ; preds = %141
  call void @profileStop(i32 7)
  br label %144

; <label>:144                                     ; preds = %143
  %145 = load %struct.SimFlatSt** %sim, align 8
  call void @kineticEnergy(%struct.SimFlatSt* %145)
  %146 = load %struct.SimFlatSt** %sim, align 8
  ret %struct.SimFlatSt* %146
}

; Function Attrs: nounwind uwtable
define internal void @printSimulationDataYaml(%struct._IO_FILE* %file, %struct.SimFlatSt* %s) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca %struct.SimFlatSt*, align 8
  %maxOcc = alloca i32, align 4
  %perAtomSize = alloca i32, align 4
  %mbPerAtom = alloca float, align 4
  %totalMemLocal = alloca float, align 4
  %totalMemGlobal = alloca float, align 4
  %nLocalBoxes = alloca i32, align 4
  %nTotalBoxes = alloca i32, align 4
  %paddedMemLocal = alloca float, align 4
  %paddedMemTotal = alloca float, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %1, align 8
  store %struct.SimFlatSt* %s, %struct.SimFlatSt** %2, align 8
  %3 = load %struct.SimFlatSt** %2, align 8
  %4 = getelementptr inbounds %struct.SimFlatSt* %3, i32 0, i32 4
  %5 = load %struct.LinkCellSt** %4, align 8
  %6 = call i32 @maxOccupancy(%struct.LinkCellSt* %5)
  store i32 %6, i32* %maxOcc, align 4
  %7 = call i32 @printRank()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

; <label>:9                                       ; preds = %0
  br label %301

; <label>:10                                      ; preds = %0
  %11 = load %struct._IO_FILE** %1, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([19 x i8]* @.str518, i32 0, i32 0))
  %13 = load %struct._IO_FILE** %1, align 8
  %14 = load %struct.SimFlatSt** %2, align 8
  %15 = getelementptr inbounds %struct.SimFlatSt* %14, i32 0, i32 5
  %16 = load %struct.AtomsSt** %15, align 8
  %17 = getelementptr inbounds %struct.AtomsSt* %16, i32 0, i32 1
  %18 = load i32* %17, align 4
  %19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([27 x i8]* @.str619, i32 0, i32 0), i32 %18)
  %20 = load %struct._IO_FILE** %1, align 8
  %21 = load %struct.SimFlatSt** %2, align 8
  %22 = getelementptr inbounds %struct.SimFlatSt* %21, i32 0, i32 3
  %23 = load %struct.DomainSt** %22, align 8
  %24 = getelementptr inbounds %struct.DomainSt* %23, i32 0, i32 2
  %25 = getelementptr inbounds [3 x double]* %24, i32 0, i64 0
  %26 = load double* %25, align 8
  %27 = load %struct.SimFlatSt** %2, align 8
  %28 = getelementptr inbounds %struct.SimFlatSt* %27, i32 0, i32 3
  %29 = load %struct.DomainSt** %28, align 8
  %30 = getelementptr inbounds %struct.DomainSt* %29, i32 0, i32 2
  %31 = getelementptr inbounds [3 x double]* %30, i32 0, i64 1
  %32 = load double* %31, align 8
  %33 = load %struct.SimFlatSt** %2, align 8
  %34 = getelementptr inbounds %struct.SimFlatSt* %33, i32 0, i32 3
  %35 = load %struct.DomainSt** %34, align 8
  %36 = getelementptr inbounds %struct.DomainSt* %35, i32 0, i32 2
  %37 = getelementptr inbounds [3 x double]* %36, i32 0, i64 2
  %38 = load double* %37, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([54 x i8]* @.str720, i32 0, i32 0), double %26, double %32, double %38)
  %40 = load %struct._IO_FILE** %1, align 8
  %41 = load %struct.SimFlatSt** %2, align 8
  %42 = getelementptr inbounds %struct.SimFlatSt* %41, i32 0, i32 3
  %43 = load %struct.DomainSt** %42, align 8
  %44 = getelementptr inbounds %struct.DomainSt* %43, i32 0, i32 3
  %45 = getelementptr inbounds [3 x double]* %44, i32 0, i64 0
  %46 = load double* %45, align 8
  %47 = load %struct.SimFlatSt** %2, align 8
  %48 = getelementptr inbounds %struct.SimFlatSt* %47, i32 0, i32 3
  %49 = load %struct.DomainSt** %48, align 8
  %50 = getelementptr inbounds %struct.DomainSt* %49, i32 0, i32 3
  %51 = getelementptr inbounds [3 x double]* %50, i32 0, i64 1
  %52 = load double* %51, align 8
  %53 = load %struct.SimFlatSt** %2, align 8
  %54 = getelementptr inbounds %struct.SimFlatSt* %53, i32 0, i32 3
  %55 = load %struct.DomainSt** %54, align 8
  %56 = getelementptr inbounds %struct.DomainSt* %55, i32 0, i32 3
  %57 = getelementptr inbounds [3 x double]* %56, i32 0, i64 2
  %58 = load double* %57, align 8
  %59 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([54 x i8]* @.str821, i32 0, i32 0), double %46, double %52, double %58)
  %60 = load %struct._IO_FILE** %1, align 8
  call void @printSeparator(%struct._IO_FILE* %60)
  %61 = load %struct._IO_FILE** %1, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([22 x i8]* @.str922, i32 0, i32 0))
  %63 = load %struct._IO_FILE** %1, align 8
  %64 = load %struct.SimFlatSt** %2, align 8
  %65 = getelementptr inbounds %struct.SimFlatSt* %64, i32 0, i32 3
  %66 = load %struct.DomainSt** %65, align 8
  %67 = getelementptr inbounds %struct.DomainSt* %66, i32 0, i32 0
  %68 = getelementptr inbounds [3 x i32]* %67, i32 0, i64 0
  %69 = load i32* %68, align 4
  %70 = load %struct.SimFlatSt** %2, align 8
  %71 = getelementptr inbounds %struct.SimFlatSt* %70, i32 0, i32 3
  %72 = load %struct.DomainSt** %71, align 8
  %73 = getelementptr inbounds %struct.DomainSt* %72, i32 0, i32 0
  %74 = getelementptr inbounds [3 x i32]* %73, i32 0, i64 1
  %75 = load i32* %74, align 4
  %76 = load %struct.SimFlatSt** %2, align 8
  %77 = getelementptr inbounds %struct.SimFlatSt* %76, i32 0, i32 3
  %78 = load %struct.DomainSt** %77, align 8
  %79 = getelementptr inbounds %struct.DomainSt* %78, i32 0, i32 0
  %80 = getelementptr inbounds [3 x i32]* %79, i32 0, i64 2
  %81 = load i32* %80, align 4
  %82 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([36 x i8]* @.str1023, i32 0, i32 0), i32 %69, i32 %75, i32 %81)
  %83 = load %struct._IO_FILE** %1, align 8
  %84 = load %struct.SimFlatSt** %2, align 8
  %85 = getelementptr inbounds %struct.SimFlatSt* %84, i32 0, i32 4
  %86 = load %struct.LinkCellSt** %85, align 8
  %87 = getelementptr inbounds %struct.LinkCellSt* %86, i32 0, i32 0
  %88 = getelementptr inbounds [3 x i32]* %87, i32 0, i64 0
  %89 = load i32* %88, align 4
  %90 = load %struct.SimFlatSt** %2, align 8
  %91 = getelementptr inbounds %struct.SimFlatSt* %90, i32 0, i32 4
  %92 = load %struct.LinkCellSt** %91, align 8
  %93 = getelementptr inbounds %struct.LinkCellSt* %92, i32 0, i32 0
  %94 = getelementptr inbounds [3 x i32]* %93, i32 0, i64 1
  %95 = load i32* %94, align 4
  %96 = load %struct.SimFlatSt** %2, align 8
  %97 = getelementptr inbounds %struct.SimFlatSt* %96, i32 0, i32 4
  %98 = load %struct.LinkCellSt** %97, align 8
  %99 = getelementptr inbounds %struct.LinkCellSt* %98, i32 0, i32 0
  %100 = getelementptr inbounds [3 x i32]* %99, i32 0, i64 2
  %101 = load i32* %100, align 4
  %102 = load %struct.SimFlatSt** %2, align 8
  %103 = getelementptr inbounds %struct.SimFlatSt* %102, i32 0, i32 4
  %104 = load %struct.LinkCellSt** %103, align 8
  %105 = getelementptr inbounds %struct.LinkCellSt* %104, i32 0, i32 0
  %106 = getelementptr inbounds [3 x i32]* %105, i32 0, i64 0
  %107 = load i32* %106, align 4
  %108 = load %struct.SimFlatSt** %2, align 8
  %109 = getelementptr inbounds %struct.SimFlatSt* %108, i32 0, i32 4
  %110 = load %struct.LinkCellSt** %109, align 8
  %111 = getelementptr inbounds %struct.LinkCellSt* %110, i32 0, i32 0
  %112 = getelementptr inbounds [3 x i32]* %111, i32 0, i64 1
  %113 = load i32* %112, align 4
  %114 = mul nsw i32 %107, %113
  %115 = load %struct.SimFlatSt** %2, align 8
  %116 = getelementptr inbounds %struct.SimFlatSt* %115, i32 0, i32 4
  %117 = load %struct.LinkCellSt** %116, align 8
  %118 = getelementptr inbounds %struct.LinkCellSt* %117, i32 0, i32 0
  %119 = getelementptr inbounds [3 x i32]* %118, i32 0, i64 2
  %120 = load i32* %119, align 4
  %121 = mul nsw i32 %114, %120
  %122 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([42 x i8]* @.str1124, i32 0, i32 0), i32 %89, i32 %95, i32 %101, i32 %121)
  %123 = load %struct._IO_FILE** %1, align 8
  %124 = load %struct.SimFlatSt** %2, align 8
  %125 = getelementptr inbounds %struct.SimFlatSt* %124, i32 0, i32 4
  %126 = load %struct.LinkCellSt** %125, align 8
  %127 = getelementptr inbounds %struct.LinkCellSt* %126, i32 0, i32 6
  %128 = getelementptr inbounds [3 x double]* %127, i32 0, i64 0
  %129 = load double* %128, align 8
  %130 = load %struct.SimFlatSt** %2, align 8
  %131 = getelementptr inbounds %struct.SimFlatSt* %130, i32 0, i32 4
  %132 = load %struct.LinkCellSt** %131, align 8
  %133 = getelementptr inbounds %struct.LinkCellSt* %132, i32 0, i32 6
  %134 = getelementptr inbounds [3 x double]* %133, i32 0, i64 1
  %135 = load double* %134, align 8
  %136 = load %struct.SimFlatSt** %2, align 8
  %137 = getelementptr inbounds %struct.SimFlatSt* %136, i32 0, i32 4
  %138 = load %struct.LinkCellSt** %137, align 8
  %139 = getelementptr inbounds %struct.LinkCellSt* %138, i32 0, i32 6
  %140 = getelementptr inbounds [3 x double]* %139, i32 0, i64 2
  %141 = load double* %140, align 8
  %142 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([54 x i8]* @.str1225, i32 0, i32 0), double %129, double %135, double %141)
  %143 = load %struct._IO_FILE** %1, align 8
  %144 = load %struct.SimFlatSt** %2, align 8
  %145 = getelementptr inbounds %struct.SimFlatSt* %144, i32 0, i32 4
  %146 = load %struct.LinkCellSt** %145, align 8
  %147 = getelementptr inbounds %struct.LinkCellSt* %146, i32 0, i32 6
  %148 = getelementptr inbounds [3 x double]* %147, i32 0, i64 0
  %149 = load double* %148, align 8
  %150 = load %struct.SimFlatSt** %2, align 8
  %151 = getelementptr inbounds %struct.SimFlatSt* %150, i32 0, i32 9
  %152 = load %struct.BasePotentialSt** %151, align 8
  %153 = getelementptr inbounds %struct.BasePotentialSt* %152, i32 0, i32 0
  %154 = load double* %153, align 8
  %155 = fdiv double %149, %154
  %156 = load %struct.SimFlatSt** %2, align 8
  %157 = getelementptr inbounds %struct.SimFlatSt* %156, i32 0, i32 4
  %158 = load %struct.LinkCellSt** %157, align 8
  %159 = getelementptr inbounds %struct.LinkCellSt* %158, i32 0, i32 6
  %160 = getelementptr inbounds [3 x double]* %159, i32 0, i64 1
  %161 = load double* %160, align 8
  %162 = load %struct.SimFlatSt** %2, align 8
  %163 = getelementptr inbounds %struct.SimFlatSt* %162, i32 0, i32 9
  %164 = load %struct.BasePotentialSt** %163, align 8
  %165 = getelementptr inbounds %struct.BasePotentialSt* %164, i32 0, i32 0
  %166 = load double* %165, align 8
  %167 = fdiv double %161, %166
  %168 = load %struct.SimFlatSt** %2, align 8
  %169 = getelementptr inbounds %struct.SimFlatSt* %168, i32 0, i32 4
  %170 = load %struct.LinkCellSt** %169, align 8
  %171 = getelementptr inbounds %struct.LinkCellSt* %170, i32 0, i32 6
  %172 = getelementptr inbounds [3 x double]* %171, i32 0, i64 2
  %173 = load double* %172, align 8
  %174 = load %struct.SimFlatSt** %2, align 8
  %175 = getelementptr inbounds %struct.SimFlatSt* %174, i32 0, i32 9
  %176 = load %struct.BasePotentialSt** %175, align 8
  %177 = getelementptr inbounds %struct.BasePotentialSt* %176, i32 0, i32 0
  %178 = load double* %177, align 8
  %179 = fdiv double %173, %178
  %180 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %143, i8* getelementptr inbounds ([55 x i8]* @.str1326, i32 0, i32 0), double %155, double %167, double %179)
  %181 = load %struct._IO_FILE** %1, align 8
  %182 = load i32* %maxOcc, align 4
  %183 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %181, i8* getelementptr inbounds ([37 x i8]* @.str14, i32 0, i32 0), i32 %182, i32 64)
  %184 = load %struct._IO_FILE** %1, align 8
  call void @printSeparator(%struct._IO_FILE* %184)
  %185 = load %struct._IO_FILE** %1, align 8
  %186 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %185, i8* getelementptr inbounds ([18 x i8]* @.str15, i32 0, i32 0))
  %187 = load %struct.SimFlatSt** %2, align 8
  %188 = getelementptr inbounds %struct.SimFlatSt* %187, i32 0, i32 9
  %189 = load %struct.BasePotentialSt** %188, align 8
  %190 = getelementptr inbounds %struct.BasePotentialSt* %189, i32 0, i32 7
  %191 = load void (%struct._IO_FILE*, %struct.BasePotentialSt*)** %190, align 8
  %192 = load %struct._IO_FILE** %1, align 8
  %193 = load %struct.SimFlatSt** %2, align 8
  %194 = getelementptr inbounds %struct.SimFlatSt* %193, i32 0, i32 9
  %195 = load %struct.BasePotentialSt** %194, align 8
  call void %191(%struct._IO_FILE* %192, %struct.BasePotentialSt* %195)
  store i32 88, i32* %perAtomSize, align 4
  %196 = load i32* %perAtomSize, align 4
  %197 = sdiv i32 %196, 1024
  %198 = sdiv i32 %197, 1024
  %199 = sitofp i32 %198 to float
  store float %199, float* %mbPerAtom, align 4
  %200 = load i32* %perAtomSize, align 4
  %201 = load %struct.SimFlatSt** %2, align 8
  %202 = getelementptr inbounds %struct.SimFlatSt* %201, i32 0, i32 5
  %203 = load %struct.AtomsSt** %202, align 8
  %204 = getelementptr inbounds %struct.AtomsSt* %203, i32 0, i32 0
  %205 = load i32* %204, align 4
  %206 = mul nsw i32 %200, %205
  %207 = sitofp i32 %206 to float
  %208 = fdiv float %207, 1.024000e+03
  %209 = fdiv float %208, 1.024000e+03
  store float %209, float* %totalMemLocal, align 4
  %210 = load i32* %perAtomSize, align 4
  %211 = load %struct.SimFlatSt** %2, align 8
  %212 = getelementptr inbounds %struct.SimFlatSt* %211, i32 0, i32 5
  %213 = load %struct.AtomsSt** %212, align 8
  %214 = getelementptr inbounds %struct.AtomsSt* %213, i32 0, i32 1
  %215 = load i32* %214, align 4
  %216 = mul nsw i32 %210, %215
  %217 = sitofp i32 %216 to float
  %218 = fdiv float %217, 1.024000e+03
  %219 = fdiv float %218, 1.024000e+03
  store float %219, float* %totalMemGlobal, align 4
  %220 = load %struct.SimFlatSt** %2, align 8
  %221 = getelementptr inbounds %struct.SimFlatSt* %220, i32 0, i32 4
  %222 = load %struct.LinkCellSt** %221, align 8
  %223 = getelementptr inbounds %struct.LinkCellSt* %222, i32 0, i32 0
  %224 = getelementptr inbounds [3 x i32]* %223, i32 0, i64 0
  %225 = load i32* %224, align 4
  %226 = load %struct.SimFlatSt** %2, align 8
  %227 = getelementptr inbounds %struct.SimFlatSt* %226, i32 0, i32 4
  %228 = load %struct.LinkCellSt** %227, align 8
  %229 = getelementptr inbounds %struct.LinkCellSt* %228, i32 0, i32 0
  %230 = getelementptr inbounds [3 x i32]* %229, i32 0, i64 1
  %231 = load i32* %230, align 4
  %232 = mul nsw i32 %225, %231
  %233 = load %struct.SimFlatSt** %2, align 8
  %234 = getelementptr inbounds %struct.SimFlatSt* %233, i32 0, i32 4
  %235 = load %struct.LinkCellSt** %234, align 8
  %236 = getelementptr inbounds %struct.LinkCellSt* %235, i32 0, i32 0
  %237 = getelementptr inbounds [3 x i32]* %236, i32 0, i64 2
  %238 = load i32* %237, align 4
  %239 = mul nsw i32 %232, %238
  store i32 %239, i32* %nLocalBoxes, align 4
  %240 = load %struct.SimFlatSt** %2, align 8
  %241 = getelementptr inbounds %struct.SimFlatSt* %240, i32 0, i32 4
  %242 = load %struct.LinkCellSt** %241, align 8
  %243 = getelementptr inbounds %struct.LinkCellSt* %242, i32 0, i32 0
  %244 = getelementptr inbounds [3 x i32]* %243, i32 0, i64 0
  %245 = load i32* %244, align 4
  %246 = add nsw i32 %245, 2
  %247 = load %struct.SimFlatSt** %2, align 8
  %248 = getelementptr inbounds %struct.SimFlatSt* %247, i32 0, i32 4
  %249 = load %struct.LinkCellSt** %248, align 8
  %250 = getelementptr inbounds %struct.LinkCellSt* %249, i32 0, i32 0
  %251 = getelementptr inbounds [3 x i32]* %250, i32 0, i64 1
  %252 = load i32* %251, align 4
  %253 = add nsw i32 %252, 2
  %254 = mul nsw i32 %246, %253
  %255 = load %struct.SimFlatSt** %2, align 8
  %256 = getelementptr inbounds %struct.SimFlatSt* %255, i32 0, i32 4
  %257 = load %struct.LinkCellSt** %256, align 8
  %258 = getelementptr inbounds %struct.LinkCellSt* %257, i32 0, i32 0
  %259 = getelementptr inbounds [3 x i32]* %258, i32 0, i64 2
  %260 = load i32* %259, align 4
  %261 = add nsw i32 %260, 2
  %262 = mul nsw i32 %254, %261
  store i32 %262, i32* %nTotalBoxes, align 4
  %263 = load i32* %nLocalBoxes, align 4
  %264 = sitofp i32 %263 to float
  %265 = load i32* %perAtomSize, align 4
  %266 = mul nsw i32 %265, 64
  %267 = sitofp i32 %266 to float
  %268 = fmul float %264, %267
  %269 = fdiv float %268, 1.024000e+03
  %270 = fdiv float %269, 1.024000e+03
  store float %270, float* %paddedMemLocal, align 4
  %271 = load i32* %nTotalBoxes, align 4
  %272 = sitofp i32 %271 to float
  %273 = load i32* %perAtomSize, align 4
  %274 = mul nsw i32 %273, 64
  %275 = sitofp i32 %274 to float
  %276 = fmul float %272, %275
  %277 = fdiv float %276, 1.024000e+03
  %278 = fdiv float %277, 1.024000e+03
  store float %278, float* %paddedMemTotal, align 4
  %279 = load %struct._IO_FILE** %1, align 8
  call void @printSeparator(%struct._IO_FILE* %279)
  %280 = load %struct._IO_FILE** %1, align 8
  %281 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %280, i8* getelementptr inbounds ([15 x i8]* @.str16, i32 0, i32 0))
  %282 = load %struct._IO_FILE** %1, align 8
  %283 = load i32* %perAtomSize, align 4
  %284 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %282, i8* getelementptr inbounds ([42 x i8]* @.str17, i32 0, i32 0), i32 %283)
  %285 = load %struct._IO_FILE** %1, align 8
  %286 = load float* %totalMemGlobal, align 4
  %287 = fpext float %286 to double
  %288 = load float* %totalMemLocal, align 4
  %289 = fpext float %288 to double
  %290 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %285, i8* getelementptr inbounds ([55 x i8]* @.str18, i32 0, i32 0), double %287, double %289)
  %291 = load %struct._IO_FILE** %1, align 8
  %292 = load float* %paddedMemLocal, align 4
  %293 = fpext float %292 to double
  %294 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %291, i8* getelementptr inbounds ([44 x i8]* @.str19, i32 0, i32 0), double %293)
  %295 = load %struct._IO_FILE** %1, align 8
  %296 = load float* %paddedMemTotal, align 4
  %297 = fpext float %296 to double
  %298 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %295, i8* getelementptr inbounds ([70 x i8]* @.str20, i32 0, i32 0), double %297)
  %299 = load %struct._IO_FILE** %1, align 8
  %300 = call i32 @fflush(%struct._IO_FILE* %299)
  br label %301

; <label>:301                                     ; preds = %10, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.ValidateSt* @initValidate(%struct.SimFlatSt* %sim) #0 {
  %1 = alloca %struct.SimFlatSt*, align 8
  %val = alloca %struct.ValidateSt*, align 8
  store %struct.SimFlatSt* %sim, %struct.SimFlatSt** %1, align 8
  %2 = load %struct.SimFlatSt** %1, align 8
  call void @sumAtoms(%struct.SimFlatSt* %2)
  %3 = call i8* @comdMalloc(i64 16)
  %4 = bitcast i8* %3 to %struct.ValidateSt*
  store %struct.ValidateSt* %4, %struct.ValidateSt** %val, align 8
  %5 = load %struct.SimFlatSt** %1, align 8
  %6 = getelementptr inbounds %struct.SimFlatSt* %5, i32 0, i32 7
  %7 = load double* %6, align 8
  %8 = load %struct.SimFlatSt** %1, align 8
  %9 = getelementptr inbounds %struct.SimFlatSt* %8, i32 0, i32 8
  %10 = load double* %9, align 8
  %11 = fadd double %7, %10
  %12 = load %struct.SimFlatSt** %1, align 8
  %13 = getelementptr inbounds %struct.SimFlatSt* %12, i32 0, i32 5
  %14 = load %struct.AtomsSt** %13, align 8
  %15 = getelementptr inbounds %struct.AtomsSt* %14, i32 0, i32 1
  %16 = load i32* %15, align 4
  %17 = sitofp i32 %16 to double
  %18 = fdiv double %11, %17
  %19 = load %struct.ValidateSt** %val, align 8
  %20 = getelementptr inbounds %struct.ValidateSt* %19, i32 0, i32 0
  store double %18, double* %20, align 8
  %21 = load %struct.SimFlatSt** %1, align 8
  %22 = getelementptr inbounds %struct.SimFlatSt* %21, i32 0, i32 5
  %23 = load %struct.AtomsSt** %22, align 8
  %24 = getelementptr inbounds %struct.AtomsSt* %23, i32 0, i32 1
  %25 = load i32* %24, align 4
  %26 = load %struct.ValidateSt** %val, align 8
  %27 = getelementptr inbounds %struct.ValidateSt* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = call i32 @printRank()
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

; <label>:30                                      ; preds = %0
  %31 = load %struct._IO_FILE** @stdout, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([2 x i8]* @.str23, i32 0, i32 0))
  %33 = load %struct._IO_FILE** @stdout, align 8
  call void @printSeparator(%struct._IO_FILE* %33)
  %34 = load %struct._IO_FILE** @stdout, align 8
  %35 = load %struct.ValidateSt** %val, align 8
  %36 = getelementptr inbounds %struct.ValidateSt* %35, i32 0, i32 0
  %37 = load double* %36, align 8
  %38 = load %struct.ValidateSt** %val, align 8
  %39 = getelementptr inbounds %struct.ValidateSt* %38, i32 0, i32 1
  %40 = load i32* %39, align 4
  %41 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([44 x i8]* @.str31, i32 0, i32 0), double %37, i32 %40)
  %42 = load %struct._IO_FILE** @stdout, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([2 x i8]* @.str23, i32 0, i32 0))
  br label %44

; <label>:44                                      ; preds = %30, %0
  %45 = load %struct.ValidateSt** %val, align 8
  ret %struct.ValidateSt* %45
}

; Function Attrs: nounwind uwtable
define internal void @sumAtoms(%struct.SimFlatSt* %s) #0 {
  %1 = alloca %struct.SimFlatSt*, align 8
  %i = alloca i32, align 4
  store %struct.SimFlatSt* %s, %struct.SimFlatSt** %1, align 8
  %2 = load %struct.SimFlatSt** %1, align 8
  %3 = getelementptr inbounds %struct.SimFlatSt* %2, i32 0, i32 5
  %4 = load %struct.AtomsSt** %3, align 8
  %5 = getelementptr inbounds %struct.AtomsSt* %4, i32 0, i32 0
  store i32 0, i32* %5, align 4
  store i32 0, i32* %i, align 4
  br label %6

; <label>:6                                       ; preds = %30, %0
  %7 = load i32* %i, align 4
  %8 = load %struct.SimFlatSt** %1, align 8
  %9 = getelementptr inbounds %struct.SimFlatSt* %8, i32 0, i32 4
  %10 = load %struct.LinkCellSt** %9, align 8
  %11 = getelementptr inbounds %struct.LinkCellSt* %10, i32 0, i32 1
  %12 = load i32* %11, align 4
  %13 = icmp slt i32 %7, %12
  br i1 %13, label %14, label %33

; <label>:14                                      ; preds = %6
  %15 = load i32* %i, align 4
  %16 = sext i32 %15 to i64
  %17 = load %struct.SimFlatSt** %1, align 8
  %18 = getelementptr inbounds %struct.SimFlatSt* %17, i32 0, i32 4
  %19 = load %struct.LinkCellSt** %18, align 8
  %20 = getelementptr inbounds %struct.LinkCellSt* %19, i32 0, i32 8
  %21 = load i32** %20, align 8
  %22 = getelementptr inbounds i32* %21, i64 %16
  %23 = load i32* %22, align 4
  %24 = load %struct.SimFlatSt** %1, align 8
  %25 = getelementptr inbounds %struct.SimFlatSt* %24, i32 0, i32 5
  %26 = load %struct.AtomsSt** %25, align 8
  %27 = getelementptr inbounds %struct.AtomsSt* %26, i32 0, i32 0
  %28 = load i32* %27, align 4
  %29 = add nsw i32 %28, %23
  store i32 %29, i32* %27, align 4
  br label %30

; <label>:30                                      ; preds = %14
  %31 = load i32* %i, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %i, align 4
  br label %6

; <label>:33                                      ; preds = %6
  br label %34

; <label>:34                                      ; preds = %33
  call void @profileStart(i32 10)
  br label %35

; <label>:35                                      ; preds = %34
  %36 = load %struct.SimFlatSt** %1, align 8
  %37 = getelementptr inbounds %struct.SimFlatSt* %36, i32 0, i32 5
  %38 = load %struct.AtomsSt** %37, align 8
  %39 = getelementptr inbounds %struct.AtomsSt* %38, i32 0, i32 0
  %40 = load %struct.SimFlatSt** %1, align 8
  %41 = getelementptr inbounds %struct.SimFlatSt* %40, i32 0, i32 5
  %42 = load %struct.AtomsSt** %41, align 8
  %43 = getelementptr inbounds %struct.AtomsSt* %42, i32 0, i32 1
  call void @addIntParallel(i32* %39, i32* %43, i32 1)
  br label %44

; <label>:44                                      ; preds = %35
  call void @profileStop(i32 10)
  br label %45

; <label>:45                                      ; preds = %44
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @printThings(%struct.SimFlatSt* %s, i32 %iStep, double %elapsedTime) #0 {
  %1 = alloca %struct.SimFlatSt*, align 8
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %nEval = alloca i32, align 4
  %time = alloca double, align 8
  %eTotal = alloca double, align 8
  %eK = alloca double, align 8
  %eU = alloca double, align 8
  %Temp = alloca double, align 8
  %timePerAtom = alloca double, align 8
  store %struct.SimFlatSt* %s, %struct.SimFlatSt** %1, align 8
  store i32 %iStep, i32* %2, align 4
  store double %elapsedTime, double* %3, align 8
  %4 = load i32* %2, align 4
  %5 = load i32* @printThings.iStepPrev, align 4
  %6 = sub nsw i32 %4, %5
  store i32 %6, i32* %nEval, align 4
  %7 = load i32* %2, align 4
  store i32 %7, i32* @printThings.iStepPrev, align 4
  %8 = call i32 @printRank()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

; <label>:10                                      ; preds = %0
  br label %96

; <label>:11                                      ; preds = %0
  %12 = load i32* @printThings.firstCall, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

; <label>:14                                      ; preds = %11
  store i32 0, i32* @printThings.firstCall, align 4
  %15 = load %struct._IO_FILE** @stdout, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([216 x i8]* @.str21, i32 0, i32 0))
  %17 = load %struct._IO_FILE** @stdout, align 8
  %18 = call i32 @fflush(%struct._IO_FILE* %17)
  br label %19

; <label>:19                                      ; preds = %14, %11
  %20 = load i32* %2, align 4
  %21 = sitofp i32 %20 to double
  %22 = load %struct.SimFlatSt** %1, align 8
  %23 = getelementptr inbounds %struct.SimFlatSt* %22, i32 0, i32 2
  %24 = load double* %23, align 8
  %25 = fmul double %21, %24
  store double %25, double* %time, align 8
  %26 = load %struct.SimFlatSt** %1, align 8
  %27 = getelementptr inbounds %struct.SimFlatSt* %26, i32 0, i32 7
  %28 = load double* %27, align 8
  %29 = load %struct.SimFlatSt** %1, align 8
  %30 = getelementptr inbounds %struct.SimFlatSt* %29, i32 0, i32 8
  %31 = load double* %30, align 8
  %32 = fadd double %28, %31
  %33 = load %struct.SimFlatSt** %1, align 8
  %34 = getelementptr inbounds %struct.SimFlatSt* %33, i32 0, i32 5
  %35 = load %struct.AtomsSt** %34, align 8
  %36 = getelementptr inbounds %struct.AtomsSt* %35, i32 0, i32 1
  %37 = load i32* %36, align 4
  %38 = sitofp i32 %37 to double
  %39 = fdiv double %32, %38
  store double %39, double* %eTotal, align 8
  %40 = load %struct.SimFlatSt** %1, align 8
  %41 = getelementptr inbounds %struct.SimFlatSt* %40, i32 0, i32 8
  %42 = load double* %41, align 8
  %43 = load %struct.SimFlatSt** %1, align 8
  %44 = getelementptr inbounds %struct.SimFlatSt* %43, i32 0, i32 5
  %45 = load %struct.AtomsSt** %44, align 8
  %46 = getelementptr inbounds %struct.AtomsSt* %45, i32 0, i32 1
  %47 = load i32* %46, align 4
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %42, %48
  store double %49, double* %eK, align 8
  %50 = load %struct.SimFlatSt** %1, align 8
  %51 = getelementptr inbounds %struct.SimFlatSt* %50, i32 0, i32 7
  %52 = load double* %51, align 8
  %53 = load %struct.SimFlatSt** %1, align 8
  %54 = getelementptr inbounds %struct.SimFlatSt* %53, i32 0, i32 5
  %55 = load %struct.AtomsSt** %54, align 8
  %56 = getelementptr inbounds %struct.AtomsSt* %55, i32 0, i32 1
  %57 = load i32* %56, align 4
  %58 = sitofp i32 %57 to double
  %59 = fdiv double %52, %58
  store double %59, double* %eU, align 8
  %60 = load %struct.SimFlatSt** %1, align 8
  %61 = getelementptr inbounds %struct.SimFlatSt* %60, i32 0, i32 8
  %62 = load double* %61, align 8
  %63 = load %struct.SimFlatSt** %1, align 8
  %64 = getelementptr inbounds %struct.SimFlatSt* %63, i32 0, i32 5
  %65 = load %struct.AtomsSt** %64, align 8
  %66 = getelementptr inbounds %struct.AtomsSt* %65, i32 0, i32 1
  %67 = load i32* %66, align 4
  %68 = sitofp i32 %67 to double
  %69 = fdiv double %62, %68
  %70 = fdiv double %69, 0x3F20F13ED339F07F
  store double %70, double* %Temp, align 8
  %71 = load double* %3, align 8
  %72 = fmul double 1.000000e+06, %71
  %73 = load i32* %nEval, align 4
  %74 = load %struct.SimFlatSt** %1, align 8
  %75 = getelementptr inbounds %struct.SimFlatSt* %74, i32 0, i32 5
  %76 = load %struct.AtomsSt** %75, align 8
  %77 = getelementptr inbounds %struct.AtomsSt* %76, i32 0, i32 0
  %78 = load i32* %77, align 4
  %79 = mul nsw i32 %73, %78
  %80 = sitofp i32 %79 to double
  %81 = fdiv double %72, %80
  store double %81, double* %timePerAtom, align 8
  %82 = load %struct._IO_FILE** @stdout, align 8
  %83 = load i32* %2, align 4
  %84 = load double* %time, align 8
  %85 = load double* %eTotal, align 8
  %86 = load double* %eU, align 8
  %87 = load double* %eK, align 8
  %88 = load double* %Temp, align 8
  %89 = load double* %timePerAtom, align 8
  %90 = load %struct.SimFlatSt** %1, align 8
  %91 = getelementptr inbounds %struct.SimFlatSt* %90, i32 0, i32 5
  %92 = load %struct.AtomsSt** %91, align 8
  %93 = getelementptr inbounds %struct.AtomsSt* %92, i32 0, i32 1
  %94 = load i32* %93, align 4
  %95 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([56 x i8]* @.str22, i32 0, i32 0), i32 %83, double %84, double %85, double %86, double %87, double %88, double %89, i32 %94)
  br label %96

; <label>:96                                      ; preds = %19, %10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @validateResult(%struct.ValidateSt* %val, %struct.SimFlatSt* %sim) #0 {
  %1 = alloca %struct.ValidateSt*, align 8
  %2 = alloca %struct.SimFlatSt*, align 8
  %eFinal = alloca double, align 8
  %nAtomsDelta = alloca i32, align 4
  store %struct.ValidateSt* %val, %struct.ValidateSt** %1, align 8
  store %struct.SimFlatSt* %sim, %struct.SimFlatSt** %2, align 8
  %3 = call i32 @printRank()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %69

; <label>:5                                       ; preds = %0
  %6 = load %struct.SimFlatSt** %2, align 8
  %7 = getelementptr inbounds %struct.SimFlatSt* %6, i32 0, i32 7
  %8 = load double* %7, align 8
  %9 = load %struct.SimFlatSt** %2, align 8
  %10 = getelementptr inbounds %struct.SimFlatSt* %9, i32 0, i32 8
  %11 = load double* %10, align 8
  %12 = fadd double %8, %11
  %13 = load %struct.SimFlatSt** %2, align 8
  %14 = getelementptr inbounds %struct.SimFlatSt* %13, i32 0, i32 5
  %15 = load %struct.AtomsSt** %14, align 8
  %16 = getelementptr inbounds %struct.AtomsSt* %15, i32 0, i32 1
  %17 = load i32* %16, align 4
  %18 = sitofp i32 %17 to double
  %19 = fdiv double %12, %18
  store double %19, double* %eFinal, align 8
  %20 = load %struct.SimFlatSt** %2, align 8
  %21 = getelementptr inbounds %struct.SimFlatSt* %20, i32 0, i32 5
  %22 = load %struct.AtomsSt** %21, align 8
  %23 = getelementptr inbounds %struct.AtomsSt* %22, i32 0, i32 1
  %24 = load i32* %23, align 4
  %25 = load %struct.ValidateSt** %1, align 8
  %26 = getelementptr inbounds %struct.ValidateSt* %25, i32 0, i32 1
  %27 = load i32* %26, align 4
  %28 = sub nsw i32 %24, %27
  store i32 %28, i32* %nAtomsDelta, align 4
  %29 = load %struct._IO_FILE** @stdout, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([2 x i8]* @.str23, i32 0, i32 0))
  %31 = load %struct._IO_FILE** @stdout, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([2 x i8]* @.str23, i32 0, i32 0))
  %33 = load %struct._IO_FILE** @stdout, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([24 x i8]* @.str24, i32 0, i32 0))
  %35 = load %struct._IO_FILE** @stdout, align 8
  %36 = load %struct.ValidateSt** %1, align 8
  %37 = getelementptr inbounds %struct.ValidateSt* %36, i32 0, i32 0
  %38 = load double* %37, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([29 x i8]* @.str25, i32 0, i32 0), double %38)
  %40 = load %struct._IO_FILE** @stdout, align 8
  %41 = load double* %eFinal, align 8
  %42 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([29 x i8]* @.str26, i32 0, i32 0), double %41)
  %43 = load %struct._IO_FILE** @stdout, align 8
  %44 = load double* %eFinal, align 8
  %45 = load %struct.ValidateSt** %1, align 8
  %46 = getelementptr inbounds %struct.ValidateSt* %45, i32 0, i32 0
  %47 = load double* %46, align 8
  %48 = fdiv double %44, %47
  %49 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([24 x i8]* @.str27, i32 0, i32 0), double %48)
  %50 = load i32* %nAtomsDelta, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %60

; <label>:52                                      ; preds = %5
  %53 = load %struct._IO_FILE** @stdout, align 8
  %54 = load %struct.SimFlatSt** %2, align 8
  %55 = getelementptr inbounds %struct.SimFlatSt* %54, i32 0, i32 5
  %56 = load %struct.AtomsSt** %55, align 8
  %57 = getelementptr inbounds %struct.AtomsSt* %56, i32 0, i32 1
  %58 = load i32* %57, align 4
  %59 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([40 x i8]* @.str28, i32 0, i32 0), i32 %58)
  br label %68

; <label>:60                                      ; preds = %5
  %61 = load %struct._IO_FILE** @stdout, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([31 x i8]* @.str29, i32 0, i32 0))
  %63 = load %struct._IO_FILE** @stdout, align 8
  %64 = load i32* %nAtomsDelta, align 4
  %65 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([29 x i8]* @.str30, i32 0, i32 0), i32 %64)
  %66 = load %struct._IO_FILE** @stdout, align 8
  %67 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([31 x i8]* @.str29, i32 0, i32 0))
  br label %68

; <label>:68                                      ; preds = %60, %52
  br label %69

; <label>:69                                      ; preds = %68, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @destroySimulation(%struct.SimFlatSt** %ps) #0 {
  %1 = alloca %struct.SimFlatSt**, align 8
  %s = alloca %struct.SimFlatSt*, align 8
  %pot = alloca %struct.BasePotentialSt*, align 8
  store %struct.SimFlatSt** %ps, %struct.SimFlatSt*** %1, align 8
  %2 = load %struct.SimFlatSt*** %1, align 8
  %3 = icmp ne %struct.SimFlatSt** %2, null
  br i1 %3, label %5, label %4

; <label>:4                                       ; preds = %0
  br label %40

; <label>:5                                       ; preds = %0
  %6 = load %struct.SimFlatSt*** %1, align 8
  %7 = load %struct.SimFlatSt** %6, align 8
  store %struct.SimFlatSt* %7, %struct.SimFlatSt** %s, align 8
  %8 = load %struct.SimFlatSt** %s, align 8
  %9 = icmp ne %struct.SimFlatSt* %8, null
  br i1 %9, label %11, label %10

; <label>:10                                      ; preds = %5
  br label %40

; <label>:11                                      ; preds = %5
  %12 = load %struct.SimFlatSt** %s, align 8
  %13 = getelementptr inbounds %struct.SimFlatSt* %12, i32 0, i32 9
  %14 = load %struct.BasePotentialSt** %13, align 8
  store %struct.BasePotentialSt* %14, %struct.BasePotentialSt** %pot, align 8
  %15 = load %struct.BasePotentialSt** %pot, align 8
  %16 = icmp ne %struct.BasePotentialSt* %15, null
  br i1 %16, label %17, label %21

; <label>:17                                      ; preds = %11
  %18 = load %struct.BasePotentialSt** %pot, align 8
  %19 = getelementptr inbounds %struct.BasePotentialSt* %18, i32 0, i32 8
  %20 = load void (%struct.BasePotentialSt**)** %19, align 8
  call void %20(%struct.BasePotentialSt** %pot)
  br label %21

; <label>:21                                      ; preds = %17, %11
  %22 = load %struct.SimFlatSt** %s, align 8
  %23 = getelementptr inbounds %struct.SimFlatSt* %22, i32 0, i32 4
  call void @destroyLinkCells(%struct.LinkCellSt** %23)
  %24 = load %struct.SimFlatSt** %s, align 8
  %25 = getelementptr inbounds %struct.SimFlatSt* %24, i32 0, i32 5
  %26 = load %struct.AtomsSt** %25, align 8
  call void @destroyAtoms(%struct.AtomsSt* %26)
  %27 = load %struct.SimFlatSt** %s, align 8
  %28 = getelementptr inbounds %struct.SimFlatSt* %27, i32 0, i32 10
  call void @destroyHaloExchange(%struct.HaloExchangeSt** %28)
  %29 = load %struct.SimFlatSt** %s, align 8
  %30 = getelementptr inbounds %struct.SimFlatSt* %29, i32 0, i32 6
  %31 = load %struct.SpeciesDataSt** %30, align 8
  %32 = bitcast %struct.SpeciesDataSt* %31 to i8*
  call void @comdFree(i8* %32)
  %33 = load %struct.SimFlatSt** %s, align 8
  %34 = getelementptr inbounds %struct.SimFlatSt* %33, i32 0, i32 3
  %35 = load %struct.DomainSt** %34, align 8
  %36 = bitcast %struct.DomainSt* %35 to i8*
  call void @comdFree(i8* %36)
  %37 = load %struct.SimFlatSt** %s, align 8
  %38 = bitcast %struct.SimFlatSt* %37 to i8*
  call void @comdFree(i8* %38)
  %39 = load %struct.SimFlatSt*** %1, align 8
  store %struct.SimFlatSt* null, %struct.SimFlatSt** %39, align 8
  br label %40

; <label>:40                                      ; preds = %21, %10, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @comdFree(i8* %ptr) #0 {
  %1 = alloca i8*, align 8
  store i8* %ptr, i8** %1, align 8
  %2 = load i8** %1, align 8
  call void @free(i8* %2) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finalizeSubsystems() #0 {
  call void @yamlEnd()
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @comdMalloc(i64 %iSize) #0 {
  %1 = alloca i64, align 8
  store i64 %iSize, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = call noalias i8* @malloc(i64 %2) #5
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define internal %struct.BasePotentialSt* @initPotential(i32 %doeam, i8* %potDir, i8* %potName, i8* %potType) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %pot = alloca %struct.BasePotentialSt*, align 8
  store i32 %doeam, i32* %1, align 4
  store i8* %potDir, i8** %2, align 8
  store i8* %potName, i8** %3, align 8
  store i8* %potType, i8** %4, align 8
  store %struct.BasePotentialSt* null, %struct.BasePotentialSt** %pot, align 8
  %5 = load i32* %1, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = load i8** %2, align 8
  %9 = load i8** %3, align 8
  %10 = load i8** %4, align 8
  %11 = call %struct.BasePotentialSt* @initEamPot(i8* %8, i8* %9, i8* %10)
  store %struct.BasePotentialSt* %11, %struct.BasePotentialSt** %pot, align 8
  br label %14

; <label>:12                                      ; preds = %0
  %13 = call %struct.BasePotentialSt* bitcast (%struct.BasePotentialSt.34* ()* @initLjPot to %struct.BasePotentialSt* ()*)()
  store %struct.BasePotentialSt* %13, %struct.BasePotentialSt** %pot, align 8
  br label %14

; <label>:14                                      ; preds = %12, %7
  %15 = load %struct.BasePotentialSt** %pot, align 8
  %16 = icmp ne %struct.BasePotentialSt* %15, null
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %14
  br label %20

; <label>:18                                      ; preds = %14
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str37, i32 0, i32 0), i32 264, i8* getelementptr inbounds ([76 x i8]* @__PRETTY_FUNCTION__.initPotential, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:20                                      ; preds = %19, %17
  %21 = load %struct.BasePotentialSt** %pot, align 8
  ret %struct.BasePotentialSt* %21
}

; Function Attrs: nounwind uwtable
define internal void @sanityChecks(%struct.CommandSt* byval align 8 %cmd, double %cutoff, double %latticeConst, i8* %latticeType) #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca i8*, align 8
  %failCode = alloca i32, align 4
  %nProcs = alloca i32, align 4
  %minx = alloca double, align 8
  %miny = alloca double, align 8
  %minz = alloca double, align 8
  %sizex = alloca double, align 8
  %sizey = alloca double, align 8
  %sizez = alloca double, align 8
  %checkCode = alloca i32, align 4
  store double %cutoff, double* %1, align 8
  store double %latticeConst, double* %2, align 8
  store i8* %latticeType, i8** %3, align 8
  store i32 0, i32* %failCode, align 4
  %4 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 7
  %5 = load i32* %4, align 4
  %6 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 8
  %7 = load i32* %6, align 4
  %8 = mul nsw i32 %5, %7
  %9 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 9
  %10 = load i32* %9, align 4
  %11 = mul nsw i32 %8, %10
  store i32 %11, i32* %nProcs, align 4
  %12 = load i32* %nProcs, align 4
  %13 = call i32 @getNRanks()
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %24

; <label>:15                                      ; preds = %0
  %16 = load i32* %failCode, align 4
  %17 = or i32 %16, 1
  store i32 %17, i32* %failCode, align 4
  %18 = call i32 @printRank()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

; <label>:20                                      ; preds = %15
  %21 = load %struct._IO_FILE** @stdout, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([55 x i8]* @.str32, i32 0, i32 0))
  br label %23

; <label>:23                                      ; preds = %20, %15
  br label %24

; <label>:24                                      ; preds = %23, %0
  %25 = load double* %1, align 8
  %26 = fmul double 2.000000e+00, %25
  %27 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 7
  %28 = load i32* %27, align 4
  %29 = sitofp i32 %28 to double
  %30 = fmul double %26, %29
  store double %30, double* %minx, align 8
  %31 = load double* %1, align 8
  %32 = fmul double 2.000000e+00, %31
  %33 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 8
  %34 = load i32* %33, align 4
  %35 = sitofp i32 %34 to double
  %36 = fmul double %32, %35
  store double %36, double* %miny, align 8
  %37 = load double* %1, align 8
  %38 = fmul double 2.000000e+00, %37
  %39 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 9
  %40 = load i32* %39, align 4
  %41 = sitofp i32 %40 to double
  %42 = fmul double %38, %41
  store double %42, double* %minz, align 8
  %43 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 4
  %44 = load i32* %43, align 4
  %45 = sitofp i32 %44 to double
  %46 = load double* %2, align 8
  %47 = fmul double %45, %46
  store double %47, double* %sizex, align 8
  %48 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 5
  %49 = load i32* %48, align 4
  %50 = sitofp i32 %49 to double
  %51 = load double* %2, align 8
  %52 = fmul double %50, %51
  store double %52, double* %sizey, align 8
  %53 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 6
  %54 = load i32* %53, align 4
  %55 = sitofp i32 %54 to double
  %56 = load double* %2, align 8
  %57 = fmul double %55, %56
  store double %57, double* %sizez, align 8
  %58 = load double* %sizex, align 8
  %59 = load double* %minx, align 8
  %60 = fcmp olt double %58, %59
  br i1 %60, label %69, label %61

; <label>:61                                      ; preds = %24
  %62 = load double* %sizey, align 8
  %63 = load double* %miny, align 8
  %64 = fcmp olt double %62, %63
  br i1 %64, label %69, label %65

; <label>:65                                      ; preds = %61
  %66 = load double* %sizez, align 8
  %67 = load double* %minz, align 8
  %68 = fcmp olt double %66, %67
  br i1 %68, label %69, label %81

; <label>:69                                      ; preds = %65, %61, %24
  %70 = load i32* %failCode, align 4
  %71 = or i32 %70, 2
  store i32 %71, i32* %failCode, align 4
  %72 = call i32 @printRank()
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

; <label>:74                                      ; preds = %69
  %75 = load %struct._IO_FILE** @stdout, align 8
  %76 = load double* %minx, align 8
  %77 = load double* %miny, align 8
  %78 = load double* %minz, align 8
  %79 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([135 x i8]* @.str33, i32 0, i32 0), double %76, double %77, double %78)
  br label %80

; <label>:80                                      ; preds = %74, %69
  br label %81

; <label>:81                                      ; preds = %80, %65
  %82 = load i8** %3, align 8
  %83 = call i32 @strcasecmp(i8* %82, i8* getelementptr inbounds ([4 x i8]* @.str34, i32 0, i32 0)) #7
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

; <label>:85                                      ; preds = %81
  %86 = load i32* %failCode, align 4
  %87 = or i32 %86, 4
  store i32 %87, i32* %failCode, align 4
  %88 = call i32 @printRank()
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

; <label>:90                                      ; preds = %85
  %91 = load %struct._IO_FILE** @stdout, align 8
  %92 = load i8** %3, align 8
  %93 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([56 x i8]* @.str35, i32 0, i32 0), i8* %92)
  br label %94

; <label>:94                                      ; preds = %90, %85
  br label %95

; <label>:95                                      ; preds = %94, %81
  %96 = load i32* %failCode, align 4
  store i32 %96, i32* %checkCode, align 4
  %97 = bitcast i32* %checkCode to i8*
  call void @bcastParallel(i8* %97, i32 4, i32 0)
  %98 = load i32* %checkCode, align 4
  %99 = load i32* %failCode, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %102

; <label>:101                                     ; preds = %95
  br label %104

; <label>:102                                     ; preds = %95
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str37, i32 0, i32 0), i32 481, i8* getelementptr inbounds ([51 x i8]* @__PRETTY_FUNCTION__.sanityChecks, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %104

; <label>:104                                     ; preds = %103, %101
  %105 = load i32* %failCode, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

; <label>:107                                     ; preds = %104
  %108 = load i32* %failCode, align 4
  call void @exit(i32 %108) #8
  unreachable

; <label>:109                                     ; preds = %104
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.SpeciesDataSt* @initSpecies(%struct.BasePotentialSt* %pot) #0 {
  %1 = alloca %struct.BasePotentialSt*, align 8
  %species = alloca %struct.SpeciesDataSt*, align 8
  store %struct.BasePotentialSt* %pot, %struct.BasePotentialSt** %1, align 8
  %2 = call i8* @comdMalloc(i64 16)
  %3 = bitcast i8* %2 to %struct.SpeciesDataSt*
  store %struct.SpeciesDataSt* %3, %struct.SpeciesDataSt** %species, align 8
  %4 = load %struct.SpeciesDataSt** %species, align 8
  %5 = getelementptr inbounds %struct.SpeciesDataSt* %4, i32 0, i32 0
  %6 = getelementptr inbounds [3 x i8]* %5, i32 0, i32 0
  %7 = load %struct.BasePotentialSt** %1, align 8
  %8 = getelementptr inbounds %struct.BasePotentialSt* %7, i32 0, i32 4
  %9 = getelementptr inbounds [3 x i8]* %8, i32 0, i32 0
  %10 = call i8* @strcpy(i8* %6, i8* %9) #5
  %11 = load %struct.BasePotentialSt** %1, align 8
  %12 = getelementptr inbounds %struct.BasePotentialSt* %11, i32 0, i32 5
  %13 = load i32* %12, align 4
  %14 = load %struct.SpeciesDataSt** %species, align 8
  %15 = getelementptr inbounds %struct.SpeciesDataSt* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.BasePotentialSt** %1, align 8
  %17 = getelementptr inbounds %struct.BasePotentialSt* %16, i32 0, i32 1
  %18 = load double* %17, align 8
  %19 = load %struct.SpeciesDataSt** %species, align 8
  %20 = getelementptr inbounds %struct.SpeciesDataSt* %19, i32 0, i32 2
  store double %18, double* %20, align 8
  %21 = load %struct.SpeciesDataSt** %species, align 8
  ret %struct.SpeciesDataSt* %21
}

; Function Attrs: nounwind uwtable
define %struct.DomainSt* @initDecomposition(i32 %xproc, i32 %yproc, i32 %zproc, double* %globalExtent) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %dd = alloca %struct.DomainSt*, align 8
  %myRank = alloca i32, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 %xproc, i32* %1, align 4
  store i32 %yproc, i32* %2, align 4
  store i32 %zproc, i32* %3, align 4
  store double* %globalExtent, double** %4, align 8
  %5 = load i32* %1, align 4
  %6 = load i32* %2, align 4
  %7 = mul nsw i32 %5, %6
  %8 = load i32* %3, align 4
  %9 = mul nsw i32 %7, %8
  %10 = call i32 @getNRanks()
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %0
  br label %15

; <label>:13                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([37 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str140, i32 0, i32 0), i32 20, i8* getelementptr inbounds ([60 x i8]* @__PRETTY_FUNCTION__.initDecomposition, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = call i8* @comdMalloc43(i64 168)
  %17 = bitcast i8* %16 to %struct.DomainSt*
  store %struct.DomainSt* %17, %struct.DomainSt** %dd, align 8
  %18 = load i32* %1, align 4
  %19 = load %struct.DomainSt** %dd, align 8
  %20 = getelementptr inbounds %struct.DomainSt* %19, i32 0, i32 0
  %21 = getelementptr inbounds [3 x i32]* %20, i32 0, i64 0
  store i32 %18, i32* %21, align 4
  %22 = load i32* %2, align 4
  %23 = load %struct.DomainSt** %dd, align 8
  %24 = getelementptr inbounds %struct.DomainSt* %23, i32 0, i32 0
  %25 = getelementptr inbounds [3 x i32]* %24, i32 0, i64 1
  store i32 %22, i32* %25, align 4
  %26 = load i32* %3, align 4
  %27 = load %struct.DomainSt** %dd, align 8
  %28 = getelementptr inbounds %struct.DomainSt* %27, i32 0, i32 0
  %29 = getelementptr inbounds [3 x i32]* %28, i32 0, i64 2
  store i32 %26, i32* %29, align 4
  %30 = call i32 @getMyRank()
  store i32 %30, i32* %myRank, align 4
  %31 = load i32* %myRank, align 4
  %32 = load %struct.DomainSt** %dd, align 8
  %33 = getelementptr inbounds %struct.DomainSt* %32, i32 0, i32 0
  %34 = getelementptr inbounds [3 x i32]* %33, i32 0, i64 0
  %35 = load i32* %34, align 4
  %36 = srem i32 %31, %35
  %37 = load %struct.DomainSt** %dd, align 8
  %38 = getelementptr inbounds %struct.DomainSt* %37, i32 0, i32 1
  %39 = getelementptr inbounds [3 x i32]* %38, i32 0, i64 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.DomainSt** %dd, align 8
  %41 = getelementptr inbounds %struct.DomainSt* %40, i32 0, i32 0
  %42 = getelementptr inbounds [3 x i32]* %41, i32 0, i64 0
  %43 = load i32* %42, align 4
  %44 = load i32* %myRank, align 4
  %45 = sdiv i32 %44, %43
  store i32 %45, i32* %myRank, align 4
  %46 = load i32* %myRank, align 4
  %47 = load %struct.DomainSt** %dd, align 8
  %48 = getelementptr inbounds %struct.DomainSt* %47, i32 0, i32 0
  %49 = getelementptr inbounds [3 x i32]* %48, i32 0, i64 1
  %50 = load i32* %49, align 4
  %51 = srem i32 %46, %50
  %52 = load %struct.DomainSt** %dd, align 8
  %53 = getelementptr inbounds %struct.DomainSt* %52, i32 0, i32 1
  %54 = getelementptr inbounds [3 x i32]* %53, i32 0, i64 1
  store i32 %51, i32* %54, align 4
  %55 = load i32* %myRank, align 4
  %56 = load %struct.DomainSt** %dd, align 8
  %57 = getelementptr inbounds %struct.DomainSt* %56, i32 0, i32 0
  %58 = getelementptr inbounds [3 x i32]* %57, i32 0, i64 1
  %59 = load i32* %58, align 4
  %60 = sdiv i32 %55, %59
  %61 = load %struct.DomainSt** %dd, align 8
  %62 = getelementptr inbounds %struct.DomainSt* %61, i32 0, i32 1
  %63 = getelementptr inbounds [3 x i32]* %62, i32 0, i64 2
  store i32 %60, i32* %63, align 4
  store i32 0, i32* %i, align 4
  br label %64

; <label>:64                                      ; preds = %101, %15
  %65 = load i32* %i, align 4
  %66 = icmp slt i32 %65, 3
  br i1 %66, label %67, label %104

; <label>:67                                      ; preds = %64
  %68 = load i32* %i, align 4
  %69 = sext i32 %68 to i64
  %70 = load %struct.DomainSt** %dd, align 8
  %71 = getelementptr inbounds %struct.DomainSt* %70, i32 0, i32 2
  %72 = getelementptr inbounds [3 x double]* %71, i32 0, i64 %69
  store double 0.000000e+00, double* %72, align 8
  %73 = load i32* %i, align 4
  %74 = sext i32 %73 to i64
  %75 = load double** %4, align 8
  %76 = getelementptr inbounds double* %75, i64 %74
  %77 = load double* %76, align 8
  %78 = load i32* %i, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.DomainSt** %dd, align 8
  %81 = getelementptr inbounds %struct.DomainSt* %80, i32 0, i32 3
  %82 = getelementptr inbounds [3 x double]* %81, i32 0, i64 %79
  store double %77, double* %82, align 8
  %83 = load i32* %i, align 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.DomainSt** %dd, align 8
  %86 = getelementptr inbounds %struct.DomainSt* %85, i32 0, i32 3
  %87 = getelementptr inbounds [3 x double]* %86, i32 0, i64 %84
  %88 = load double* %87, align 8
  %89 = load i32* %i, align 4
  %90 = sext i32 %89 to i64
  %91 = load %struct.DomainSt** %dd, align 8
  %92 = getelementptr inbounds %struct.DomainSt* %91, i32 0, i32 2
  %93 = getelementptr inbounds [3 x double]* %92, i32 0, i64 %90
  %94 = load double* %93, align 8
  %95 = fsub double %88, %94
  %96 = load i32* %i, align 4
  %97 = sext i32 %96 to i64
  %98 = load %struct.DomainSt** %dd, align 8
  %99 = getelementptr inbounds %struct.DomainSt* %98, i32 0, i32 4
  %100 = getelementptr inbounds [3 x double]* %99, i32 0, i64 %97
  store double %95, double* %100, align 8
  br label %101

; <label>:101                                     ; preds = %67
  %102 = load i32* %i, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %i, align 4
  br label %64

; <label>:104                                     ; preds = %64
  store i32 0, i32* %i1, align 4
  br label %105

; <label>:105                                     ; preds = %181, %104
  %106 = load i32* %i1, align 4
  %107 = icmp slt i32 %106, 3
  br i1 %107, label %108, label %184

; <label>:108                                     ; preds = %105
  %109 = load i32* %i1, align 4
  %110 = sext i32 %109 to i64
  %111 = load %struct.DomainSt** %dd, align 8
  %112 = getelementptr inbounds %struct.DomainSt* %111, i32 0, i32 4
  %113 = getelementptr inbounds [3 x double]* %112, i32 0, i64 %110
  %114 = load double* %113, align 8
  %115 = load i32* %i1, align 4
  %116 = sext i32 %115 to i64
  %117 = load %struct.DomainSt** %dd, align 8
  %118 = getelementptr inbounds %struct.DomainSt* %117, i32 0, i32 0
  %119 = getelementptr inbounds [3 x i32]* %118, i32 0, i64 %116
  %120 = load i32* %119, align 4
  %121 = sitofp i32 %120 to double
  %122 = fdiv double %114, %121
  %123 = load i32* %i1, align 4
  %124 = sext i32 %123 to i64
  %125 = load %struct.DomainSt** %dd, align 8
  %126 = getelementptr inbounds %struct.DomainSt* %125, i32 0, i32 7
  %127 = getelementptr inbounds [3 x double]* %126, i32 0, i64 %124
  store double %122, double* %127, align 8
  %128 = load i32* %i1, align 4
  %129 = sext i32 %128 to i64
  %130 = load %struct.DomainSt** %dd, align 8
  %131 = getelementptr inbounds %struct.DomainSt* %130, i32 0, i32 2
  %132 = getelementptr inbounds [3 x double]* %131, i32 0, i64 %129
  %133 = load double* %132, align 8
  %134 = load i32* %i1, align 4
  %135 = sext i32 %134 to i64
  %136 = load %struct.DomainSt** %dd, align 8
  %137 = getelementptr inbounds %struct.DomainSt* %136, i32 0, i32 1
  %138 = getelementptr inbounds [3 x i32]* %137, i32 0, i64 %135
  %139 = load i32* %138, align 4
  %140 = sitofp i32 %139 to double
  %141 = load i32* %i1, align 4
  %142 = sext i32 %141 to i64
  %143 = load %struct.DomainSt** %dd, align 8
  %144 = getelementptr inbounds %struct.DomainSt* %143, i32 0, i32 7
  %145 = getelementptr inbounds [3 x double]* %144, i32 0, i64 %142
  %146 = load double* %145, align 8
  %147 = fmul double %140, %146
  %148 = fadd double %133, %147
  %149 = load i32* %i1, align 4
  %150 = sext i32 %149 to i64
  %151 = load %struct.DomainSt** %dd, align 8
  %152 = getelementptr inbounds %struct.DomainSt* %151, i32 0, i32 5
  %153 = getelementptr inbounds [3 x double]* %152, i32 0, i64 %150
  store double %148, double* %153, align 8
  %154 = load i32* %i1, align 4
  %155 = sext i32 %154 to i64
  %156 = load %struct.DomainSt** %dd, align 8
  %157 = getelementptr inbounds %struct.DomainSt* %156, i32 0, i32 2
  %158 = getelementptr inbounds [3 x double]* %157, i32 0, i64 %155
  %159 = load double* %158, align 8
  %160 = load i32* %i1, align 4
  %161 = sext i32 %160 to i64
  %162 = load %struct.DomainSt** %dd, align 8
  %163 = getelementptr inbounds %struct.DomainSt* %162, i32 0, i32 1
  %164 = getelementptr inbounds [3 x i32]* %163, i32 0, i64 %161
  %165 = load i32* %164, align 4
  %166 = add nsw i32 %165, 1
  %167 = sitofp i32 %166 to double
  %168 = load i32* %i1, align 4
  %169 = sext i32 %168 to i64
  %170 = load %struct.DomainSt** %dd, align 8
  %171 = getelementptr inbounds %struct.DomainSt* %170, i32 0, i32 7
  %172 = getelementptr inbounds [3 x double]* %171, i32 0, i64 %169
  %173 = load double* %172, align 8
  %174 = fmul double %167, %173
  %175 = fadd double %159, %174
  %176 = load i32* %i1, align 4
  %177 = sext i32 %176 to i64
  %178 = load %struct.DomainSt** %dd, align 8
  %179 = getelementptr inbounds %struct.DomainSt* %178, i32 0, i32 6
  %180 = getelementptr inbounds [3 x double]* %179, i32 0, i64 %177
  store double %175, double* %180, align 8
  br label %181

; <label>:181                                     ; preds = %108
  %182 = load i32* %i1, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %i1, align 4
  br label %105

; <label>:184                                     ; preds = %105
  %185 = load %struct.DomainSt** %dd, align 8
  ret %struct.DomainSt* %185
}

; Function Attrs: nounwind uwtable
define i32 @processorNum(%struct.DomainSt* %domain, i32 %dix, i32 %diy, i32 %diz) #0 {
  %1 = alloca %struct.DomainSt*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %procCoord = alloca i32*, align 8
  %procGrid = alloca i32*, align 8
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %iz = alloca i32, align 4
  store %struct.DomainSt* %domain, %struct.DomainSt** %1, align 8
  store i32 %dix, i32* %2, align 4
  store i32 %diy, i32* %3, align 4
  store i32 %diz, i32* %4, align 4
  %5 = load %struct.DomainSt** %1, align 8
  %6 = getelementptr inbounds %struct.DomainSt* %5, i32 0, i32 1
  %7 = getelementptr inbounds [3 x i32]* %6, i32 0, i32 0
  store i32* %7, i32** %procCoord, align 8
  %8 = load %struct.DomainSt** %1, align 8
  %9 = getelementptr inbounds %struct.DomainSt* %8, i32 0, i32 0
  %10 = getelementptr inbounds [3 x i32]* %9, i32 0, i32 0
  store i32* %10, i32** %procGrid, align 8
  %11 = load i32** %procCoord, align 8
  %12 = getelementptr inbounds i32* %11, i64 0
  %13 = load i32* %12, align 4
  %14 = load i32* %2, align 4
  %15 = add nsw i32 %13, %14
  %16 = load i32** %procGrid, align 8
  %17 = getelementptr inbounds i32* %16, i64 0
  %18 = load i32* %17, align 4
  %19 = add nsw i32 %15, %18
  %20 = load i32** %procGrid, align 8
  %21 = getelementptr inbounds i32* %20, i64 0
  %22 = load i32* %21, align 4
  %23 = srem i32 %19, %22
  store i32 %23, i32* %ix, align 4
  %24 = load i32** %procCoord, align 8
  %25 = getelementptr inbounds i32* %24, i64 1
  %26 = load i32* %25, align 4
  %27 = load i32* %3, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32** %procGrid, align 8
  %30 = getelementptr inbounds i32* %29, i64 1
  %31 = load i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = load i32** %procGrid, align 8
  %34 = getelementptr inbounds i32* %33, i64 1
  %35 = load i32* %34, align 4
  %36 = srem i32 %32, %35
  store i32 %36, i32* %iy, align 4
  %37 = load i32** %procCoord, align 8
  %38 = getelementptr inbounds i32* %37, i64 2
  %39 = load i32* %38, align 4
  %40 = load i32* %4, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32** %procGrid, align 8
  %43 = getelementptr inbounds i32* %42, i64 2
  %44 = load i32* %43, align 4
  %45 = add nsw i32 %41, %44
  %46 = load i32** %procGrid, align 8
  %47 = getelementptr inbounds i32* %46, i64 2
  %48 = load i32* %47, align 4
  %49 = srem i32 %45, %48
  store i32 %49, i32* %iz, align 4
  %50 = load i32* %ix, align 4
  %51 = load i32** %procGrid, align 8
  %52 = getelementptr inbounds i32* %51, i64 0
  %53 = load i32* %52, align 4
  %54 = load i32* %iy, align 4
  %55 = load i32** %procGrid, align 8
  %56 = getelementptr inbounds i32* %55, i64 1
  %57 = load i32* %56, align 4
  %58 = load i32* %iz, align 4
  %59 = mul nsw i32 %57, %58
  %60 = add nsw i32 %54, %59
  %61 = mul nsw i32 %53, %60
  %62 = add nsw i32 %50, %61
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal i8* @comdMalloc43(i64 %iSize) #0 {
  %1 = alloca i64, align 8
  store i64 %iSize, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = call noalias i8* @malloc(i64 %2) #5
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define %struct.BasePotentialSt* @initEamPot(i8* %dir, i8* %file, i8* %type) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %pot = alloca %struct.EamPotentialSt*, align 8
  store i8* %dir, i8** %1, align 8
  store i8* %file, i8** %2, align 8
  store i8* %type, i8** %3, align 8
  %4 = call i8* @comdMalloc73(i64 120)
  %5 = bitcast i8* %4 to %struct.EamPotentialSt*
  store %struct.EamPotentialSt* %5, %struct.EamPotentialSt** %pot, align 8
  %6 = load %struct.EamPotentialSt** %pot, align 8
  %7 = icmp ne %struct.EamPotentialSt* %6, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  br label %11

; <label>:9                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str145, i32 0, i32 0), i32 174, i8* getelementptr inbounds ([77 x i8]* @__PRETTY_FUNCTION__.initEamPot, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %11

; <label>:11                                      ; preds = %10, %8
  %12 = load %struct.EamPotentialSt** %pot, align 8
  %13 = getelementptr inbounds %struct.EamPotentialSt* %12, i32 0, i32 6
  store i32 (%struct.SimFlatSt*)* @eamForce, i32 (%struct.SimFlatSt*)** %13, align 8
  %14 = load %struct.EamPotentialSt** %pot, align 8
  %15 = getelementptr inbounds %struct.EamPotentialSt* %14, i32 0, i32 7
  store void (%struct._IO_FILE*, %struct.BasePotentialSt*)* @eamPrint, void (%struct._IO_FILE*, %struct.BasePotentialSt*)** %15, align 8
  %16 = load %struct.EamPotentialSt** %pot, align 8
  %17 = getelementptr inbounds %struct.EamPotentialSt* %16, i32 0, i32 8
  store void (%struct.BasePotentialSt**)* @eamDestroy, void (%struct.BasePotentialSt**)** %17, align 8
  %18 = load %struct.EamPotentialSt** %pot, align 8
  %19 = getelementptr inbounds %struct.EamPotentialSt* %18, i32 0, i32 9
  store %struct.InterpolationObjectSt* null, %struct.InterpolationObjectSt** %19, align 8
  %20 = load %struct.EamPotentialSt** %pot, align 8
  %21 = getelementptr inbounds %struct.EamPotentialSt* %20, i32 0, i32 10
  store %struct.InterpolationObjectSt* null, %struct.InterpolationObjectSt** %21, align 8
  %22 = load %struct.EamPotentialSt** %pot, align 8
  %23 = getelementptr inbounds %struct.EamPotentialSt* %22, i32 0, i32 11
  store %struct.InterpolationObjectSt* null, %struct.InterpolationObjectSt** %23, align 8
  %24 = load %struct.EamPotentialSt** %pot, align 8
  %25 = getelementptr inbounds %struct.EamPotentialSt* %24, i32 0, i32 13
  store double* null, double** %25, align 8
  %26 = load %struct.EamPotentialSt** %pot, align 8
  %27 = getelementptr inbounds %struct.EamPotentialSt* %26, i32 0, i32 12
  store double* null, double** %27, align 8
  %28 = load %struct.EamPotentialSt** %pot, align 8
  %29 = getelementptr inbounds %struct.EamPotentialSt* %28, i32 0, i32 14
  store %struct.HaloExchangeSt* null, %struct.HaloExchangeSt** %29, align 8
  %30 = call i32 @getMyRank()
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %52

; <label>:32                                      ; preds = %11
  %33 = load i8** %3, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([6 x i8]* @.str246, i32 0, i32 0)) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

; <label>:36                                      ; preds = %32
  %37 = load %struct.EamPotentialSt** %pot, align 8
  %38 = load i8** %1, align 8
  %39 = load i8** %2, align 8
  call void @eamReadSetfl(%struct.EamPotentialSt* %37, i8* %38, i8* %39)
  br label %51

; <label>:40                                      ; preds = %32
  %41 = load i8** %3, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([7 x i8]* @.str347, i32 0, i32 0)) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

; <label>:44                                      ; preds = %40
  %45 = load %struct.EamPotentialSt** %pot, align 8
  %46 = load i8** %1, align 8
  %47 = load i8** %2, align 8
  call void @eamReadFuncfl(%struct.EamPotentialSt* %45, i8* %46, i8* %47)
  br label %50

; <label>:48                                      ; preds = %40
  %49 = load i8** %3, align 8
  call void @typeNotSupported(i8* getelementptr inbounds ([11 x i8]* @.str448, i32 0, i32 0), i8* %49)
  br label %50

; <label>:50                                      ; preds = %48, %44
  br label %51

; <label>:51                                      ; preds = %50, %36
  br label %52

; <label>:52                                      ; preds = %51, %11
  %53 = load %struct.EamPotentialSt** %pot, align 8
  call void @eamBcastPotential(%struct.EamPotentialSt* %53)
  %54 = load %struct.EamPotentialSt** %pot, align 8
  %55 = bitcast %struct.EamPotentialSt* %54 to %struct.BasePotentialSt*
  ret %struct.BasePotentialSt* %55
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #6

; Function Attrs: nounwind uwtable
define internal i8* @comdMalloc73(i64 %iSize) #0 {
  %1 = alloca i64, align 8
  store i64 %iSize, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = call noalias i8* @malloc(i64 %2) #5
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define internal i32 @eamForce(%struct.SimFlatSt* %s) #0 {
  %1 = alloca %struct.SimFlatSt*, align 8
  %pot = alloca %struct.EamPotentialSt*, align 8
  %maxTotalAtoms = alloca i32, align 4
  %rCut2 = alloca double, align 8
  %etot = alloca double, align 8
  %nbrBoxes = alloca [27 x i32], align 16
  %iBox = alloca i32, align 4
  %nIBox = alloca i32, align 4
  %nNbrBoxes = alloca i32, align 4
  %jTmp = alloca i32, align 4
  %jBox = alloca i32, align 4
  %nJBox = alloca i32, align 4
  %iOff = alloca i32, align 4
  %ii = alloca i32, align 4
  %jOff = alloca i32, align 4
  %ij = alloca i32, align 4
  %r2 = alloca double, align 8
  %dr = alloca [3 x double], align 16
  %k = alloca i32, align 4
  %r = alloca double, align 8
  %phiTmp = alloca double, align 8
  %dPhi = alloca double, align 8
  %rhoTmp = alloca double, align 8
  %dRho = alloca double, align 8
  %k1 = alloca i32, align 4
  %iBox2 = alloca i32, align 4
  %iOff3 = alloca i32, align 4
  %nIBox4 = alloca i32, align 4
  %iOff5 = alloca i32, align 4
  %ii6 = alloca i32, align 4
  %fEmbed = alloca double, align 8
  %dfEmbed = alloca double, align 8
  %iBox7 = alloca i32, align 4
  %nIBox8 = alloca i32, align 4
  %nNbrBoxes9 = alloca i32, align 4
  %jTmp10 = alloca i32, align 4
  %jBox11 = alloca i32, align 4
  %nJBox12 = alloca i32, align 4
  %iOff13 = alloca i32, align 4
  %ii14 = alloca i32, align 4
  %jOff15 = alloca i32, align 4
  %ij16 = alloca i32, align 4
  %r217 = alloca double, align 8
  %dr18 = alloca [3 x double], align 16
  %k19 = alloca i32, align 4
  %r20 = alloca double, align 8
  %rhoTmp21 = alloca double, align 8
  %dRho22 = alloca double, align 8
  %k23 = alloca i32, align 4
  store %struct.SimFlatSt* %s, %struct.SimFlatSt** %1, align 8
  %2 = load %struct.SimFlatSt** %1, align 8
  %3 = getelementptr inbounds %struct.SimFlatSt* %2, i32 0, i32 9
  %4 = load %struct.BasePotentialSt** %3, align 8
  %5 = bitcast %struct.BasePotentialSt* %4 to %struct.EamPotentialSt*
  store %struct.EamPotentialSt* %5, %struct.EamPotentialSt** %pot, align 8
  %6 = load %struct.EamPotentialSt** %pot, align 8
  %7 = icmp ne %struct.EamPotentialSt* %6, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  br label %11

; <label>:9                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str145, i32 0, i32 0), i32 218, i8* getelementptr inbounds ([24 x i8]* @__PRETTY_FUNCTION__.eamForce, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %11

; <label>:11                                      ; preds = %10, %8
  %12 = load %struct.EamPotentialSt** %pot, align 8
  %13 = getelementptr inbounds %struct.EamPotentialSt* %12, i32 0, i32 14
  %14 = load %struct.HaloExchangeSt** %13, align 8
  %15 = icmp eq %struct.HaloExchangeSt* %14, null
  br i1 %15, label %16, label %64

; <label>:16                                      ; preds = %11
  %17 = load %struct.SimFlatSt** %1, align 8
  %18 = getelementptr inbounds %struct.SimFlatSt* %17, i32 0, i32 4
  %19 = load %struct.LinkCellSt** %18, align 8
  %20 = getelementptr inbounds %struct.LinkCellSt* %19, i32 0, i32 3
  %21 = load i32* %20, align 4
  %22 = mul nsw i32 64, %21
  store i32 %22, i32* %maxTotalAtoms, align 4
  %23 = load i32* %maxTotalAtoms, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = call i8* @comdMalloc73(i64 %25)
  %27 = bitcast i8* %26 to double*
  %28 = load %struct.EamPotentialSt** %pot, align 8
  %29 = getelementptr inbounds %struct.EamPotentialSt* %28, i32 0, i32 13
  store double* %27, double** %29, align 8
  %30 = load i32* %maxTotalAtoms, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = call i8* @comdMalloc73(i64 %32)
  %34 = bitcast i8* %33 to double*
  %35 = load %struct.EamPotentialSt** %pot, align 8
  %36 = getelementptr inbounds %struct.EamPotentialSt* %35, i32 0, i32 12
  store double* %34, double** %36, align 8
  %37 = load %struct.SimFlatSt** %1, align 8
  %38 = getelementptr inbounds %struct.SimFlatSt* %37, i32 0, i32 3
  %39 = load %struct.DomainSt** %38, align 8
  %40 = load %struct.SimFlatSt** %1, align 8
  %41 = getelementptr inbounds %struct.SimFlatSt* %40, i32 0, i32 4
  %42 = load %struct.LinkCellSt** %41, align 8
  %43 = call %struct.HaloExchangeSt* @initForceHaloExchange(%struct.DomainSt* %39, %struct.LinkCellSt* %42)
  %44 = load %struct.EamPotentialSt** %pot, align 8
  %45 = getelementptr inbounds %struct.EamPotentialSt* %44, i32 0, i32 14
  store %struct.HaloExchangeSt* %43, %struct.HaloExchangeSt** %45, align 8
  %46 = call i8* @comdMalloc73(i64 16)
  %47 = bitcast i8* %46 to %struct.ForceExchangeDataSt*
  %48 = load %struct.EamPotentialSt** %pot, align 8
  %49 = getelementptr inbounds %struct.EamPotentialSt* %48, i32 0, i32 15
  store %struct.ForceExchangeDataSt* %47, %struct.ForceExchangeDataSt** %49, align 8
  %50 = load %struct.EamPotentialSt** %pot, align 8
  %51 = getelementptr inbounds %struct.EamPotentialSt* %50, i32 0, i32 13
  %52 = load double** %51, align 8
  %53 = load %struct.EamPotentialSt** %pot, align 8
  %54 = getelementptr inbounds %struct.EamPotentialSt* %53, i32 0, i32 15
  %55 = load %struct.ForceExchangeDataSt** %54, align 8
  %56 = getelementptr inbounds %struct.ForceExchangeDataSt* %55, i32 0, i32 0
  store double* %52, double** %56, align 8
  %57 = load %struct.SimFlatSt** %1, align 8
  %58 = getelementptr inbounds %struct.SimFlatSt* %57, i32 0, i32 4
  %59 = load %struct.LinkCellSt** %58, align 8
  %60 = load %struct.EamPotentialSt** %pot, align 8
  %61 = getelementptr inbounds %struct.EamPotentialSt* %60, i32 0, i32 15
  %62 = load %struct.ForceExchangeDataSt** %61, align 8
  %63 = getelementptr inbounds %struct.ForceExchangeDataSt* %62, i32 0, i32 1
  store %struct.LinkCellSt* %59, %struct.LinkCellSt** %63, align 8
  br label %64

; <label>:64                                      ; preds = %16, %11
  %65 = load %struct.EamPotentialSt** %pot, align 8
  %66 = getelementptr inbounds %struct.EamPotentialSt* %65, i32 0, i32 0
  %67 = load double* %66, align 8
  %68 = load %struct.EamPotentialSt** %pot, align 8
  %69 = getelementptr inbounds %struct.EamPotentialSt* %68, i32 0, i32 0
  %70 = load double* %69, align 8
  %71 = fmul double %67, %70
  store double %71, double* %rCut2, align 8
  store double 0.000000e+00, double* %etot, align 8
  %72 = load %struct.SimFlatSt** %1, align 8
  %73 = getelementptr inbounds %struct.SimFlatSt* %72, i32 0, i32 5
  %74 = load %struct.AtomsSt** %73, align 8
  %75 = getelementptr inbounds %struct.AtomsSt* %74, i32 0, i32 6
  %76 = load [3 x double]** %75, align 8
  %77 = bitcast [3 x double]* %76 to i8*
  %78 = load %struct.SimFlatSt** %1, align 8
  %79 = getelementptr inbounds %struct.SimFlatSt* %78, i32 0, i32 4
  %80 = load %struct.LinkCellSt** %79, align 8
  %81 = getelementptr inbounds %struct.LinkCellSt* %80, i32 0, i32 3
  %82 = load i32* %81, align 4
  %83 = mul nsw i32 %82, 64
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 24
  call void @llvm.memset.p0i8.i64(i8* %77, i8 0, i64 %85, i32 8, i1 false)
  %86 = load %struct.SimFlatSt** %1, align 8
  %87 = getelementptr inbounds %struct.SimFlatSt* %86, i32 0, i32 5
  %88 = load %struct.AtomsSt** %87, align 8
  %89 = getelementptr inbounds %struct.AtomsSt* %88, i32 0, i32 7
  %90 = load double** %89, align 8
  %91 = bitcast double* %90 to i8*
  %92 = load %struct.SimFlatSt** %1, align 8
  %93 = getelementptr inbounds %struct.SimFlatSt* %92, i32 0, i32 4
  %94 = load %struct.LinkCellSt** %93, align 8
  %95 = getelementptr inbounds %struct.LinkCellSt* %94, i32 0, i32 3
  %96 = load i32* %95, align 4
  %97 = mul nsw i32 %96, 64
  %98 = sext i32 %97 to i64
  %99 = mul i64 %98, 8
  call void @llvm.memset.p0i8.i64(i8* %91, i8 0, i64 %99, i32 8, i1 false)
  %100 = load %struct.EamPotentialSt** %pot, align 8
  %101 = getelementptr inbounds %struct.EamPotentialSt* %100, i32 0, i32 13
  %102 = load double** %101, align 8
  %103 = bitcast double* %102 to i8*
  %104 = load %struct.SimFlatSt** %1, align 8
  %105 = getelementptr inbounds %struct.SimFlatSt* %104, i32 0, i32 4
  %106 = load %struct.LinkCellSt** %105, align 8
  %107 = getelementptr inbounds %struct.LinkCellSt* %106, i32 0, i32 3
  %108 = load i32* %107, align 4
  %109 = mul nsw i32 %108, 64
  %110 = sext i32 %109 to i64
  %111 = mul i64 %110, 8
  call void @llvm.memset.p0i8.i64(i8* %103, i8 0, i64 %111, i32 8, i1 false)
  %112 = load %struct.EamPotentialSt** %pot, align 8
  %113 = getelementptr inbounds %struct.EamPotentialSt* %112, i32 0, i32 12
  %114 = load double** %113, align 8
  %115 = bitcast double* %114 to i8*
  %116 = load %struct.SimFlatSt** %1, align 8
  %117 = getelementptr inbounds %struct.SimFlatSt* %116, i32 0, i32 4
  %118 = load %struct.LinkCellSt** %117, align 8
  %119 = getelementptr inbounds %struct.LinkCellSt* %118, i32 0, i32 3
  %120 = load i32* %119, align 4
  %121 = mul nsw i32 %120, 64
  %122 = sext i32 %121 to i64
  %123 = mul i64 %122, 8
  call void @llvm.memset.p0i8.i64(i8* %115, i8 0, i64 %123, i32 8, i1 false)
  store i32 0, i32* %iBox, align 4
  br label %124

; <label>:124                                     ; preds = %381, %64
  %125 = load i32* %iBox, align 4
  %126 = load %struct.SimFlatSt** %1, align 8
  %127 = getelementptr inbounds %struct.SimFlatSt* %126, i32 0, i32 4
  %128 = load %struct.LinkCellSt** %127, align 8
  %129 = getelementptr inbounds %struct.LinkCellSt* %128, i32 0, i32 1
  %130 = load i32* %129, align 4
  %131 = icmp slt i32 %125, %130
  br i1 %131, label %132, label %384

; <label>:132                                     ; preds = %124
  %133 = load i32* %iBox, align 4
  %134 = sext i32 %133 to i64
  %135 = load %struct.SimFlatSt** %1, align 8
  %136 = getelementptr inbounds %struct.SimFlatSt* %135, i32 0, i32 4
  %137 = load %struct.LinkCellSt** %136, align 8
  %138 = getelementptr inbounds %struct.LinkCellSt* %137, i32 0, i32 8
  %139 = load i32** %138, align 8
  %140 = getelementptr inbounds i32* %139, i64 %134
  %141 = load i32* %140, align 4
  store i32 %141, i32* %nIBox, align 4
  %142 = load %struct.SimFlatSt** %1, align 8
  %143 = getelementptr inbounds %struct.SimFlatSt* %142, i32 0, i32 4
  %144 = load %struct.LinkCellSt** %143, align 8
  %145 = load i32* %iBox, align 4
  %146 = getelementptr inbounds [27 x i32]* %nbrBoxes, i32 0, i32 0
  %147 = call i32 @getNeighborBoxes(%struct.LinkCellSt* %144, i32 %145, i32* %146)
  store i32 %147, i32* %nNbrBoxes, align 4
  store i32 0, i32* %jTmp, align 4
  br label %148

; <label>:148                                     ; preds = %377, %132
  %149 = load i32* %jTmp, align 4
  %150 = load i32* %nNbrBoxes, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %380

; <label>:152                                     ; preds = %148
  %153 = load i32* %jTmp, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [27 x i32]* %nbrBoxes, i32 0, i64 %154
  %156 = load i32* %155, align 4
  store i32 %156, i32* %jBox, align 4
  %157 = load i32* %jBox, align 4
  %158 = load i32* %iBox, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %161

; <label>:160                                     ; preds = %152
  br label %377

; <label>:161                                     ; preds = %152
  %162 = load i32* %jBox, align 4
  %163 = sext i32 %162 to i64
  %164 = load %struct.SimFlatSt** %1, align 8
  %165 = getelementptr inbounds %struct.SimFlatSt* %164, i32 0, i32 4
  %166 = load %struct.LinkCellSt** %165, align 8
  %167 = getelementptr inbounds %struct.LinkCellSt* %166, i32 0, i32 8
  %168 = load i32** %167, align 8
  %169 = getelementptr inbounds i32* %168, i64 %163
  %170 = load i32* %169, align 4
  store i32 %170, i32* %nJBox, align 4
  %171 = load i32* %iBox, align 4
  %172 = mul nsw i32 64, %171
  store i32 %172, i32* %iOff, align 4
  store i32 0, i32* %ii, align 4
  br label %173

; <label>:173                                     ; preds = %371, %161
  %174 = load i32* %ii, align 4
  %175 = load i32* %nIBox, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %376

; <label>:177                                     ; preds = %173
  %178 = load i32* %jBox, align 4
  %179 = mul nsw i32 64, %178
  store i32 %179, i32* %jOff, align 4
  store i32 0, i32* %ij, align 4
  br label %180

; <label>:180                                     ; preds = %365, %177
  %181 = load i32* %ij, align 4
  %182 = load i32* %nJBox, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %370

; <label>:184                                     ; preds = %180
  %185 = load i32* %iBox, align 4
  %186 = load i32* %jBox, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %193

; <label>:188                                     ; preds = %184
  %189 = load i32* %ij, align 4
  %190 = load i32* %ii, align 4
  %191 = icmp sle i32 %189, %190
  br i1 %191, label %192, label %193

; <label>:192                                     ; preds = %188
  br label %365

; <label>:193                                     ; preds = %188, %184
  store double 0.000000e+00, double* %r2, align 8
  store i32 0, i32* %k, align 4
  br label %194

; <label>:194                                     ; preds = %237, %193
  %195 = load i32* %k, align 4
  %196 = icmp slt i32 %195, 3
  br i1 %196, label %197, label %240

; <label>:197                                     ; preds = %194
  %198 = load i32* %k, align 4
  %199 = sext i32 %198 to i64
  %200 = load i32* %iOff, align 4
  %201 = sext i32 %200 to i64
  %202 = load %struct.SimFlatSt** %1, align 8
  %203 = getelementptr inbounds %struct.SimFlatSt* %202, i32 0, i32 5
  %204 = load %struct.AtomsSt** %203, align 8
  %205 = getelementptr inbounds %struct.AtomsSt* %204, i32 0, i32 4
  %206 = load [3 x double]** %205, align 8
  %207 = getelementptr inbounds [3 x double]* %206, i64 %201
  %208 = getelementptr inbounds [3 x double]* %207, i32 0, i64 %199
  %209 = load double* %208, align 8
  %210 = load i32* %k, align 4
  %211 = sext i32 %210 to i64
  %212 = load i32* %jOff, align 4
  %213 = sext i32 %212 to i64
  %214 = load %struct.SimFlatSt** %1, align 8
  %215 = getelementptr inbounds %struct.SimFlatSt* %214, i32 0, i32 5
  %216 = load %struct.AtomsSt** %215, align 8
  %217 = getelementptr inbounds %struct.AtomsSt* %216, i32 0, i32 4
  %218 = load [3 x double]** %217, align 8
  %219 = getelementptr inbounds [3 x double]* %218, i64 %213
  %220 = getelementptr inbounds [3 x double]* %219, i32 0, i64 %211
  %221 = load double* %220, align 8
  %222 = fsub double %209, %221
  %223 = load i32* %k, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [3 x double]* %dr, i32 0, i64 %224
  store double %222, double* %225, align 8
  %226 = load i32* %k, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [3 x double]* %dr, i32 0, i64 %227
  %229 = load double* %228, align 8
  %230 = load i32* %k, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [3 x double]* %dr, i32 0, i64 %231
  %233 = load double* %232, align 8
  %234 = fmul double %229, %233
  %235 = load double* %r2, align 8
  %236 = fadd double %235, %234
  store double %236, double* %r2, align 8
  br label %237

; <label>:237                                     ; preds = %197
  %238 = load i32* %k, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %k, align 4
  br label %194

; <label>:240                                     ; preds = %194
  %241 = load double* %r2, align 8
  %242 = load double* %rCut2, align 8
  %243 = fcmp ogt double %241, %242
  br i1 %243, label %244, label %245

; <label>:244                                     ; preds = %240
  br label %365

; <label>:245                                     ; preds = %240
  %246 = load double* %r2, align 8
  %247 = call double @sqrt(double %246) #5
  store double %247, double* %r, align 8
  %248 = load %struct.EamPotentialSt** %pot, align 8
  %249 = getelementptr inbounds %struct.EamPotentialSt* %248, i32 0, i32 9
  %250 = load %struct.InterpolationObjectSt** %249, align 8
  %251 = load double* %r, align 8
  call void @interpolate(%struct.InterpolationObjectSt* %250, double %251, double* %phiTmp, double* %dPhi)
  %252 = load %struct.EamPotentialSt** %pot, align 8
  %253 = getelementptr inbounds %struct.EamPotentialSt* %252, i32 0, i32 10
  %254 = load %struct.InterpolationObjectSt** %253, align 8
  %255 = load double* %r, align 8
  call void @interpolate(%struct.InterpolationObjectSt* %254, double %255, double* %rhoTmp, double* %dRho)
  store i32 0, i32* %k1, align 4
  br label %256

; <label>:256                                     ; preds = %302, %245
  %257 = load i32* %k1, align 4
  %258 = icmp slt i32 %257, 3
  br i1 %258, label %259, label %305

; <label>:259                                     ; preds = %256
  %260 = load double* %dPhi, align 8
  %261 = load i32* %k1, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [3 x double]* %dr, i32 0, i64 %262
  %264 = load double* %263, align 8
  %265 = fmul double %260, %264
  %266 = load double* %r, align 8
  %267 = fdiv double %265, %266
  %268 = load i32* %k1, align 4
  %269 = sext i32 %268 to i64
  %270 = load i32* %iOff, align 4
  %271 = sext i32 %270 to i64
  %272 = load %struct.SimFlatSt** %1, align 8
  %273 = getelementptr inbounds %struct.SimFlatSt* %272, i32 0, i32 5
  %274 = load %struct.AtomsSt** %273, align 8
  %275 = getelementptr inbounds %struct.AtomsSt* %274, i32 0, i32 6
  %276 = load [3 x double]** %275, align 8
  %277 = getelementptr inbounds [3 x double]* %276, i64 %271
  %278 = getelementptr inbounds [3 x double]* %277, i32 0, i64 %269
  %279 = load double* %278, align 8
  %280 = fsub double %279, %267
  store double %280, double* %278, align 8
  %281 = load double* %dPhi, align 8
  %282 = load i32* %k1, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [3 x double]* %dr, i32 0, i64 %283
  %285 = load double* %284, align 8
  %286 = fmul double %281, %285
  %287 = load double* %r, align 8
  %288 = fdiv double %286, %287
  %289 = load i32* %k1, align 4
  %290 = sext i32 %289 to i64
  %291 = load i32* %jOff, align 4
  %292 = sext i32 %291 to i64
  %293 = load %struct.SimFlatSt** %1, align 8
  %294 = getelementptr inbounds %struct.SimFlatSt* %293, i32 0, i32 5
  %295 = load %struct.AtomsSt** %294, align 8
  %296 = getelementptr inbounds %struct.AtomsSt* %295, i32 0, i32 6
  %297 = load [3 x double]** %296, align 8
  %298 = getelementptr inbounds [3 x double]* %297, i64 %292
  %299 = getelementptr inbounds [3 x double]* %298, i32 0, i64 %290
  %300 = load double* %299, align 8
  %301 = fadd double %300, %288
  store double %301, double* %299, align 8
  br label %302

; <label>:302                                     ; preds = %259
  %303 = load i32* %k1, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %k1, align 4
  br label %256

; <label>:305                                     ; preds = %256
  %306 = load i32* %jBox, align 4
  %307 = load %struct.SimFlatSt** %1, align 8
  %308 = getelementptr inbounds %struct.SimFlatSt* %307, i32 0, i32 4
  %309 = load %struct.LinkCellSt** %308, align 8
  %310 = getelementptr inbounds %struct.LinkCellSt* %309, i32 0, i32 1
  %311 = load i32* %310, align 4
  %312 = icmp slt i32 %306, %311
  br i1 %312, label %313, label %317

; <label>:313                                     ; preds = %305
  %314 = load double* %phiTmp, align 8
  %315 = load double* %etot, align 8
  %316 = fadd double %315, %314
  store double %316, double* %etot, align 8
  br label %322

; <label>:317                                     ; preds = %305
  %318 = load double* %phiTmp, align 8
  %319 = fmul double 5.000000e-01, %318
  %320 = load double* %etot, align 8
  %321 = fadd double %320, %319
  store double %321, double* %etot, align 8
  br label %322

; <label>:322                                     ; preds = %317, %313
  %323 = load double* %phiTmp, align 8
  %324 = fmul double 5.000000e-01, %323
  %325 = load i32* %iOff, align 4
  %326 = sext i32 %325 to i64
  %327 = load %struct.SimFlatSt** %1, align 8
  %328 = getelementptr inbounds %struct.SimFlatSt* %327, i32 0, i32 5
  %329 = load %struct.AtomsSt** %328, align 8
  %330 = getelementptr inbounds %struct.AtomsSt* %329, i32 0, i32 7
  %331 = load double** %330, align 8
  %332 = getelementptr inbounds double* %331, i64 %326
  %333 = load double* %332, align 8
  %334 = fadd double %333, %324
  store double %334, double* %332, align 8
  %335 = load double* %phiTmp, align 8
  %336 = fmul double 5.000000e-01, %335
  %337 = load i32* %jOff, align 4
  %338 = sext i32 %337 to i64
  %339 = load %struct.SimFlatSt** %1, align 8
  %340 = getelementptr inbounds %struct.SimFlatSt* %339, i32 0, i32 5
  %341 = load %struct.AtomsSt** %340, align 8
  %342 = getelementptr inbounds %struct.AtomsSt* %341, i32 0, i32 7
  %343 = load double** %342, align 8
  %344 = getelementptr inbounds double* %343, i64 %338
  %345 = load double* %344, align 8
  %346 = fadd double %345, %336
  store double %346, double* %344, align 8
  %347 = load double* %rhoTmp, align 8
  %348 = load i32* %iOff, align 4
  %349 = sext i32 %348 to i64
  %350 = load %struct.EamPotentialSt** %pot, align 8
  %351 = getelementptr inbounds %struct.EamPotentialSt* %350, i32 0, i32 12
  %352 = load double** %351, align 8
  %353 = getelementptr inbounds double* %352, i64 %349
  %354 = load double* %353, align 8
  %355 = fadd double %354, %347
  store double %355, double* %353, align 8
  %356 = load double* %rhoTmp, align 8
  %357 = load i32* %jOff, align 4
  %358 = sext i32 %357 to i64
  %359 = load %struct.EamPotentialSt** %pot, align 8
  %360 = getelementptr inbounds %struct.EamPotentialSt* %359, i32 0, i32 12
  %361 = load double** %360, align 8
  %362 = getelementptr inbounds double* %361, i64 %358
  %363 = load double* %362, align 8
  %364 = fadd double %363, %356
  store double %364, double* %362, align 8
  br label %365

; <label>:365                                     ; preds = %322, %244, %192
  %366 = load i32* %ij, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %ij, align 4
  %368 = load i32* %jOff, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %jOff, align 4
  br label %180

; <label>:370                                     ; preds = %180
  br label %371

; <label>:371                                     ; preds = %370
  %372 = load i32* %ii, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %ii, align 4
  %374 = load i32* %iOff, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %iOff, align 4
  br label %173

; <label>:376                                     ; preds = %173
  br label %377

; <label>:377                                     ; preds = %376, %160
  %378 = load i32* %jTmp, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %jTmp, align 4
  br label %148

; <label>:380                                     ; preds = %148
  br label %381

; <label>:381                                     ; preds = %380
  %382 = load i32* %iBox, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %iBox, align 4
  br label %124

; <label>:384                                     ; preds = %124
  store i32 0, i32* %iBox2, align 4
  br label %385

; <label>:385                                     ; preds = %447, %384
  %386 = load i32* %iBox2, align 4
  %387 = load %struct.SimFlatSt** %1, align 8
  %388 = getelementptr inbounds %struct.SimFlatSt* %387, i32 0, i32 4
  %389 = load %struct.LinkCellSt** %388, align 8
  %390 = getelementptr inbounds %struct.LinkCellSt* %389, i32 0, i32 1
  %391 = load i32* %390, align 4
  %392 = icmp slt i32 %386, %391
  br i1 %392, label %393, label %450

; <label>:393                                     ; preds = %385
  %394 = load i32* %iBox2, align 4
  %395 = sext i32 %394 to i64
  %396 = load %struct.SimFlatSt** %1, align 8
  %397 = getelementptr inbounds %struct.SimFlatSt* %396, i32 0, i32 4
  %398 = load %struct.LinkCellSt** %397, align 8
  %399 = getelementptr inbounds %struct.LinkCellSt* %398, i32 0, i32 8
  %400 = load i32** %399, align 8
  %401 = getelementptr inbounds i32* %400, i64 %395
  %402 = load i32* %401, align 4
  store i32 %402, i32* %nIBox4, align 4
  %403 = load i32* %iBox2, align 4
  %404 = mul nsw i32 64, %403
  store i32 %404, i32* %iOff5, align 4
  store i32 0, i32* %ii6, align 4
  br label %405

; <label>:405                                     ; preds = %441, %393
  %406 = load i32* %ii6, align 4
  %407 = load i32* %nIBox4, align 4
  %408 = icmp slt i32 %406, %407
  br i1 %408, label %409, label %446

; <label>:409                                     ; preds = %405
  %410 = load %struct.EamPotentialSt** %pot, align 8
  %411 = getelementptr inbounds %struct.EamPotentialSt* %410, i32 0, i32 11
  %412 = load %struct.InterpolationObjectSt** %411, align 8
  %413 = load i32* %iOff5, align 4
  %414 = sext i32 %413 to i64
  %415 = load %struct.EamPotentialSt** %pot, align 8
  %416 = getelementptr inbounds %struct.EamPotentialSt* %415, i32 0, i32 12
  %417 = load double** %416, align 8
  %418 = getelementptr inbounds double* %417, i64 %414
  %419 = load double* %418, align 8
  call void @interpolate(%struct.InterpolationObjectSt* %412, double %419, double* %fEmbed, double* %dfEmbed)
  %420 = load double* %dfEmbed, align 8
  %421 = load i32* %iOff5, align 4
  %422 = sext i32 %421 to i64
  %423 = load %struct.EamPotentialSt** %pot, align 8
  %424 = getelementptr inbounds %struct.EamPotentialSt* %423, i32 0, i32 13
  %425 = load double** %424, align 8
  %426 = getelementptr inbounds double* %425, i64 %422
  store double %420, double* %426, align 8
  %427 = load double* %fEmbed, align 8
  %428 = load double* %etot, align 8
  %429 = fadd double %428, %427
  store double %429, double* %etot, align 8
  %430 = load double* %fEmbed, align 8
  %431 = load i32* %iOff5, align 4
  %432 = sext i32 %431 to i64
  %433 = load %struct.SimFlatSt** %1, align 8
  %434 = getelementptr inbounds %struct.SimFlatSt* %433, i32 0, i32 5
  %435 = load %struct.AtomsSt** %434, align 8
  %436 = getelementptr inbounds %struct.AtomsSt* %435, i32 0, i32 7
  %437 = load double** %436, align 8
  %438 = getelementptr inbounds double* %437, i64 %432
  %439 = load double* %438, align 8
  %440 = fadd double %439, %430
  store double %440, double* %438, align 8
  br label %441

; <label>:441                                     ; preds = %409
  %442 = load i32* %ii6, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %ii6, align 4
  %444 = load i32* %iOff5, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %iOff5, align 4
  br label %405

; <label>:446                                     ; preds = %405
  br label %447

; <label>:447                                     ; preds = %446
  %448 = load i32* %iBox2, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %iBox2, align 4
  br label %385

; <label>:450                                     ; preds = %385
  br label %451

; <label>:451                                     ; preds = %450
  call void @profileStart(i32 8)
  br label %452

; <label>:452                                     ; preds = %451
  %453 = load %struct.EamPotentialSt** %pot, align 8
  %454 = getelementptr inbounds %struct.EamPotentialSt* %453, i32 0, i32 14
  %455 = load %struct.HaloExchangeSt** %454, align 8
  %456 = load %struct.EamPotentialSt** %pot, align 8
  %457 = getelementptr inbounds %struct.EamPotentialSt* %456, i32 0, i32 15
  %458 = load %struct.ForceExchangeDataSt** %457, align 8
  %459 = bitcast %struct.ForceExchangeDataSt* %458 to i8*
  call void @haloExchange(%struct.HaloExchangeSt* %455, i8* %459)
  br label %460

; <label>:460                                     ; preds = %452
  call void @profileStop(i32 8)
  br label %461

; <label>:461                                     ; preds = %460
  store i32 0, i32* %iBox7, align 4
  br label %462

; <label>:462                                     ; preds = %688, %461
  %463 = load i32* %iBox7, align 4
  %464 = load %struct.SimFlatSt** %1, align 8
  %465 = getelementptr inbounds %struct.SimFlatSt* %464, i32 0, i32 4
  %466 = load %struct.LinkCellSt** %465, align 8
  %467 = getelementptr inbounds %struct.LinkCellSt* %466, i32 0, i32 1
  %468 = load i32* %467, align 4
  %469 = icmp slt i32 %463, %468
  br i1 %469, label %470, label %691

; <label>:470                                     ; preds = %462
  %471 = load i32* %iBox7, align 4
  %472 = sext i32 %471 to i64
  %473 = load %struct.SimFlatSt** %1, align 8
  %474 = getelementptr inbounds %struct.SimFlatSt* %473, i32 0, i32 4
  %475 = load %struct.LinkCellSt** %474, align 8
  %476 = getelementptr inbounds %struct.LinkCellSt* %475, i32 0, i32 8
  %477 = load i32** %476, align 8
  %478 = getelementptr inbounds i32* %477, i64 %472
  %479 = load i32* %478, align 4
  store i32 %479, i32* %nIBox8, align 4
  %480 = load %struct.SimFlatSt** %1, align 8
  %481 = getelementptr inbounds %struct.SimFlatSt* %480, i32 0, i32 4
  %482 = load %struct.LinkCellSt** %481, align 8
  %483 = load i32* %iBox7, align 4
  %484 = getelementptr inbounds [27 x i32]* %nbrBoxes, i32 0, i32 0
  %485 = call i32 @getNeighborBoxes(%struct.LinkCellSt* %482, i32 %483, i32* %484)
  store i32 %485, i32* %nNbrBoxes9, align 4
  store i32 0, i32* %jTmp10, align 4
  br label %486

; <label>:486                                     ; preds = %684, %470
  %487 = load i32* %jTmp10, align 4
  %488 = load i32* %nNbrBoxes9, align 4
  %489 = icmp slt i32 %487, %488
  br i1 %489, label %490, label %687

; <label>:490                                     ; preds = %486
  %491 = load i32* %jTmp10, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds [27 x i32]* %nbrBoxes, i32 0, i64 %492
  %494 = load i32* %493, align 4
  store i32 %494, i32* %jBox11, align 4
  %495 = load i32* %jBox11, align 4
  %496 = load i32* %iBox7, align 4
  %497 = icmp slt i32 %495, %496
  br i1 %497, label %498, label %499

; <label>:498                                     ; preds = %490
  br label %684

; <label>:499                                     ; preds = %490
  %500 = load i32* %jBox11, align 4
  %501 = sext i32 %500 to i64
  %502 = load %struct.SimFlatSt** %1, align 8
  %503 = getelementptr inbounds %struct.SimFlatSt* %502, i32 0, i32 4
  %504 = load %struct.LinkCellSt** %503, align 8
  %505 = getelementptr inbounds %struct.LinkCellSt* %504, i32 0, i32 8
  %506 = load i32** %505, align 8
  %507 = getelementptr inbounds i32* %506, i64 %501
  %508 = load i32* %507, align 4
  store i32 %508, i32* %nJBox12, align 4
  %509 = load i32* %iBox7, align 4
  %510 = mul nsw i32 64, %509
  store i32 %510, i32* %iOff13, align 4
  store i32 0, i32* %ii14, align 4
  br label %511

; <label>:511                                     ; preds = %678, %499
  %512 = load i32* %ii14, align 4
  %513 = load i32* %nIBox8, align 4
  %514 = icmp slt i32 %512, %513
  br i1 %514, label %515, label %683

; <label>:515                                     ; preds = %511
  %516 = load i32* %jBox11, align 4
  %517 = mul nsw i32 64, %516
  store i32 %517, i32* %jOff15, align 4
  store i32 0, i32* %ij16, align 4
  br label %518

; <label>:518                                     ; preds = %672, %515
  %519 = load i32* %ij16, align 4
  %520 = load i32* %nJBox12, align 4
  %521 = icmp slt i32 %519, %520
  br i1 %521, label %522, label %677

; <label>:522                                     ; preds = %518
  %523 = load i32* %iBox7, align 4
  %524 = load i32* %jBox11, align 4
  %525 = icmp eq i32 %523, %524
  br i1 %525, label %526, label %531

; <label>:526                                     ; preds = %522
  %527 = load i32* %ij16, align 4
  %528 = load i32* %ii14, align 4
  %529 = icmp sle i32 %527, %528
  br i1 %529, label %530, label %531

; <label>:530                                     ; preds = %526
  br label %672

; <label>:531                                     ; preds = %526, %522
  store double 0.000000e+00, double* %r217, align 8
  store i32 0, i32* %k19, align 4
  br label %532

; <label>:532                                     ; preds = %575, %531
  %533 = load i32* %k19, align 4
  %534 = icmp slt i32 %533, 3
  br i1 %534, label %535, label %578

; <label>:535                                     ; preds = %532
  %536 = load i32* %k19, align 4
  %537 = sext i32 %536 to i64
  %538 = load i32* %iOff13, align 4
  %539 = sext i32 %538 to i64
  %540 = load %struct.SimFlatSt** %1, align 8
  %541 = getelementptr inbounds %struct.SimFlatSt* %540, i32 0, i32 5
  %542 = load %struct.AtomsSt** %541, align 8
  %543 = getelementptr inbounds %struct.AtomsSt* %542, i32 0, i32 4
  %544 = load [3 x double]** %543, align 8
  %545 = getelementptr inbounds [3 x double]* %544, i64 %539
  %546 = getelementptr inbounds [3 x double]* %545, i32 0, i64 %537
  %547 = load double* %546, align 8
  %548 = load i32* %k19, align 4
  %549 = sext i32 %548 to i64
  %550 = load i32* %jOff15, align 4
  %551 = sext i32 %550 to i64
  %552 = load %struct.SimFlatSt** %1, align 8
  %553 = getelementptr inbounds %struct.SimFlatSt* %552, i32 0, i32 5
  %554 = load %struct.AtomsSt** %553, align 8
  %555 = getelementptr inbounds %struct.AtomsSt* %554, i32 0, i32 4
  %556 = load [3 x double]** %555, align 8
  %557 = getelementptr inbounds [3 x double]* %556, i64 %551
  %558 = getelementptr inbounds [3 x double]* %557, i32 0, i64 %549
  %559 = load double* %558, align 8
  %560 = fsub double %547, %559
  %561 = load i32* %k19, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds [3 x double]* %dr18, i32 0, i64 %562
  store double %560, double* %563, align 8
  %564 = load i32* %k19, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds [3 x double]* %dr18, i32 0, i64 %565
  %567 = load double* %566, align 8
  %568 = load i32* %k19, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds [3 x double]* %dr18, i32 0, i64 %569
  %571 = load double* %570, align 8
  %572 = fmul double %567, %571
  %573 = load double* %r217, align 8
  %574 = fadd double %573, %572
  store double %574, double* %r217, align 8
  br label %575

; <label>:575                                     ; preds = %535
  %576 = load i32* %k19, align 4
  %577 = add nsw i32 %576, 1
  store i32 %577, i32* %k19, align 4
  br label %532

; <label>:578                                     ; preds = %532
  %579 = load double* %r217, align 8
  %580 = load double* %rCut2, align 8
  %581 = fcmp oge double %579, %580
  br i1 %581, label %582, label %583

; <label>:582                                     ; preds = %578
  br label %672

; <label>:583                                     ; preds = %578
  %584 = load double* %r217, align 8
  %585 = call double @sqrt(double %584) #5
  store double %585, double* %r20, align 8
  %586 = load %struct.EamPotentialSt** %pot, align 8
  %587 = getelementptr inbounds %struct.EamPotentialSt* %586, i32 0, i32 10
  %588 = load %struct.InterpolationObjectSt** %587, align 8
  %589 = load double* %r20, align 8
  call void @interpolate(%struct.InterpolationObjectSt* %588, double %589, double* %rhoTmp21, double* %dRho22)
  store i32 0, i32* %k23, align 4
  br label %590

; <label>:590                                     ; preds = %668, %583
  %591 = load i32* %k23, align 4
  %592 = icmp slt i32 %591, 3
  br i1 %592, label %593, label %671

; <label>:593                                     ; preds = %590
  %594 = load i32* %iOff13, align 4
  %595 = sext i32 %594 to i64
  %596 = load %struct.EamPotentialSt** %pot, align 8
  %597 = getelementptr inbounds %struct.EamPotentialSt* %596, i32 0, i32 13
  %598 = load double** %597, align 8
  %599 = getelementptr inbounds double* %598, i64 %595
  %600 = load double* %599, align 8
  %601 = load i32* %jOff15, align 4
  %602 = sext i32 %601 to i64
  %603 = load %struct.EamPotentialSt** %pot, align 8
  %604 = getelementptr inbounds %struct.EamPotentialSt* %603, i32 0, i32 13
  %605 = load double** %604, align 8
  %606 = getelementptr inbounds double* %605, i64 %602
  %607 = load double* %606, align 8
  %608 = fadd double %600, %607
  %609 = load double* %dRho22, align 8
  %610 = fmul double %608, %609
  %611 = load i32* %k23, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds [3 x double]* %dr18, i32 0, i64 %612
  %614 = load double* %613, align 8
  %615 = fmul double %610, %614
  %616 = load double* %r20, align 8
  %617 = fdiv double %615, %616
  %618 = load i32* %k23, align 4
  %619 = sext i32 %618 to i64
  %620 = load i32* %iOff13, align 4
  %621 = sext i32 %620 to i64
  %622 = load %struct.SimFlatSt** %1, align 8
  %623 = getelementptr inbounds %struct.SimFlatSt* %622, i32 0, i32 5
  %624 = load %struct.AtomsSt** %623, align 8
  %625 = getelementptr inbounds %struct.AtomsSt* %624, i32 0, i32 6
  %626 = load [3 x double]** %625, align 8
  %627 = getelementptr inbounds [3 x double]* %626, i64 %621
  %628 = getelementptr inbounds [3 x double]* %627, i32 0, i64 %619
  %629 = load double* %628, align 8
  %630 = fsub double %629, %617
  store double %630, double* %628, align 8
  %631 = load i32* %iOff13, align 4
  %632 = sext i32 %631 to i64
  %633 = load %struct.EamPotentialSt** %pot, align 8
  %634 = getelementptr inbounds %struct.EamPotentialSt* %633, i32 0, i32 13
  %635 = load double** %634, align 8
  %636 = getelementptr inbounds double* %635, i64 %632
  %637 = load double* %636, align 8
  %638 = load i32* %jOff15, align 4
  %639 = sext i32 %638 to i64
  %640 = load %struct.EamPotentialSt** %pot, align 8
  %641 = getelementptr inbounds %struct.EamPotentialSt* %640, i32 0, i32 13
  %642 = load double** %641, align 8
  %643 = getelementptr inbounds double* %642, i64 %639
  %644 = load double* %643, align 8
  %645 = fadd double %637, %644
  %646 = load double* %dRho22, align 8
  %647 = fmul double %645, %646
  %648 = load i32* %k23, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds [3 x double]* %dr18, i32 0, i64 %649
  %651 = load double* %650, align 8
  %652 = fmul double %647, %651
  %653 = load double* %r20, align 8
  %654 = fdiv double %652, %653
  %655 = load i32* %k23, align 4
  %656 = sext i32 %655 to i64
  %657 = load i32* %jOff15, align 4
  %658 = sext i32 %657 to i64
  %659 = load %struct.SimFlatSt** %1, align 8
  %660 = getelementptr inbounds %struct.SimFlatSt* %659, i32 0, i32 5
  %661 = load %struct.AtomsSt** %660, align 8
  %662 = getelementptr inbounds %struct.AtomsSt* %661, i32 0, i32 6
  %663 = load [3 x double]** %662, align 8
  %664 = getelementptr inbounds [3 x double]* %663, i64 %658
  %665 = getelementptr inbounds [3 x double]* %664, i32 0, i64 %656
  %666 = load double* %665, align 8
  %667 = fadd double %666, %654
  store double %667, double* %665, align 8
  br label %668

; <label>:668                                     ; preds = %593
  %669 = load i32* %k23, align 4
  %670 = add nsw i32 %669, 1
  store i32 %670, i32* %k23, align 4
  br label %590

; <label>:671                                     ; preds = %590
  br label %672

; <label>:672                                     ; preds = %671, %582, %530
  %673 = load i32* %ij16, align 4
  %674 = add nsw i32 %673, 1
  store i32 %674, i32* %ij16, align 4
  %675 = load i32* %jOff15, align 4
  %676 = add nsw i32 %675, 1
  store i32 %676, i32* %jOff15, align 4
  br label %518

; <label>:677                                     ; preds = %518
  br label %678

; <label>:678                                     ; preds = %677
  %679 = load i32* %ii14, align 4
  %680 = add nsw i32 %679, 1
  store i32 %680, i32* %ii14, align 4
  %681 = load i32* %iOff13, align 4
  %682 = add nsw i32 %681, 1
  store i32 %682, i32* %iOff13, align 4
  br label %511

; <label>:683                                     ; preds = %511
  br label %684

; <label>:684                                     ; preds = %683, %498
  %685 = load i32* %jTmp10, align 4
  %686 = add nsw i32 %685, 1
  store i32 %686, i32* %jTmp10, align 4
  br label %486

; <label>:687                                     ; preds = %486
  br label %688

; <label>:688                                     ; preds = %687
  %689 = load i32* %iBox7, align 4
  %690 = add nsw i32 %689, 1
  store i32 %690, i32* %iBox7, align 4
  br label %462

; <label>:691                                     ; preds = %462
  %692 = load double* %etot, align 8
  %693 = load %struct.SimFlatSt** %1, align 8
  %694 = getelementptr inbounds %struct.SimFlatSt* %693, i32 0, i32 7
  store double %692, double* %694, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @eamPrint(%struct._IO_FILE* %file, %struct.BasePotentialSt* %pot) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca %struct.BasePotentialSt*, align 8
  %eamPot = alloca %struct.EamPotentialSt*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %1, align 8
  store %struct.BasePotentialSt* %pot, %struct.BasePotentialSt** %2, align 8
  %3 = load %struct.BasePotentialSt** %2, align 8
  %4 = bitcast %struct.BasePotentialSt* %3 to %struct.EamPotentialSt*
  store %struct.EamPotentialSt* %4, %struct.EamPotentialSt** %eamPot, align 8
  %5 = load %struct._IO_FILE** %1, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([25 x i8]* @.str2064, i32 0, i32 0))
  %7 = load %struct._IO_FILE** %1, align 8
  %8 = load %struct.EamPotentialSt** %eamPot, align 8
  %9 = getelementptr inbounds %struct.EamPotentialSt* %8, i32 0, i32 4
  %10 = getelementptr inbounds [3 x i8]* %9, i32 0, i32 0
  %11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([24 x i8]* @.str2165, i32 0, i32 0), i8* %10)
  %12 = load %struct._IO_FILE** %1, align 8
  %13 = load %struct.EamPotentialSt** %eamPot, align 8
  %14 = getelementptr inbounds %struct.EamPotentialSt* %13, i32 0, i32 5
  %15 = load i32* %14, align 4
  %16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([24 x i8]* @.str2266, i32 0, i32 0), i32 %15)
  %17 = load %struct._IO_FILE** %1, align 8
  %18 = load %struct.EamPotentialSt** %eamPot, align 8
  %19 = getelementptr inbounds %struct.EamPotentialSt* %18, i32 0, i32 1
  %20 = load double* %19, align 8
  %21 = fdiv double %20, 0x4059E921DD37DC65
  %22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([29 x i8]* @.str2367, i32 0, i32 0), double %21)
  %23 = load %struct._IO_FILE** %1, align 8
  %24 = load %struct.EamPotentialSt** %eamPot, align 8
  %25 = getelementptr inbounds %struct.EamPotentialSt* %24, i32 0, i32 3
  %26 = getelementptr inbounds [8 x i8]* %25, i32 0, i32 0
  %27 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([24 x i8]* @.str2468, i32 0, i32 0), i8* %26)
  %28 = load %struct._IO_FILE** %1, align 8
  %29 = load %struct.EamPotentialSt** %eamPot, align 8
  %30 = getelementptr inbounds %struct.EamPotentialSt* %29, i32 0, i32 2
  %31 = load double* %30, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([35 x i8]* @.str2569, i32 0, i32 0), double %31)
  %33 = load %struct._IO_FILE** %1, align 8
  %34 = load %struct.EamPotentialSt** %eamPot, align 8
  %35 = getelementptr inbounds %struct.EamPotentialSt* %34, i32 0, i32 0
  %36 = load double* %35, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([35 x i8]* @.str2670, i32 0, i32 0), double %36)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @eamDestroy(%struct.BasePotentialSt** %pPot) #0 {
  %1 = alloca %struct.BasePotentialSt**, align 8
  %pot = alloca %struct.EamPotentialSt*, align 8
  store %struct.BasePotentialSt** %pPot, %struct.BasePotentialSt*** %1, align 8
  %2 = load %struct.BasePotentialSt*** %1, align 8
  %3 = icmp ne %struct.BasePotentialSt** %2, null
  br i1 %3, label %5, label %4

; <label>:4                                       ; preds = %0
  br label %24

; <label>:5                                       ; preds = %0
  %6 = load %struct.BasePotentialSt*** %1, align 8
  %7 = bitcast %struct.BasePotentialSt** %6 to %struct.EamPotentialSt**
  %8 = load %struct.EamPotentialSt** %7, align 8
  store %struct.EamPotentialSt* %8, %struct.EamPotentialSt** %pot, align 8
  %9 = load %struct.EamPotentialSt** %pot, align 8
  %10 = icmp ne %struct.EamPotentialSt* %9, null
  br i1 %10, label %12, label %11

; <label>:11                                      ; preds = %5
  br label %24

; <label>:12                                      ; preds = %5
  %13 = load %struct.EamPotentialSt** %pot, align 8
  %14 = getelementptr inbounds %struct.EamPotentialSt* %13, i32 0, i32 9
  call void @destroyInterpolationObject(%struct.InterpolationObjectSt** %14)
  %15 = load %struct.EamPotentialSt** %pot, align 8
  %16 = getelementptr inbounds %struct.EamPotentialSt* %15, i32 0, i32 10
  call void @destroyInterpolationObject(%struct.InterpolationObjectSt** %16)
  %17 = load %struct.EamPotentialSt** %pot, align 8
  %18 = getelementptr inbounds %struct.EamPotentialSt* %17, i32 0, i32 11
  call void @destroyInterpolationObject(%struct.InterpolationObjectSt** %18)
  %19 = load %struct.EamPotentialSt** %pot, align 8
  %20 = getelementptr inbounds %struct.EamPotentialSt* %19, i32 0, i32 14
  call void @destroyHaloExchange(%struct.HaloExchangeSt** %20)
  %21 = load %struct.EamPotentialSt** %pot, align 8
  %22 = bitcast %struct.EamPotentialSt* %21 to i8*
  call void @comdFree74(i8* %22)
  %23 = load %struct.BasePotentialSt*** %1, align 8
  store %struct.BasePotentialSt* null, %struct.BasePotentialSt** %23, align 8
  br label %24

; <label>:24                                      ; preds = %12, %11, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @eamReadSetfl(%struct.EamPotentialSt* %pot, i8* %dir, i8* %potName) #0 {
  %1 = alloca %struct.EamPotentialSt*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %tmp = alloca [4096 x i8], align 16
  %potFile = alloca %struct._IO_FILE*, align 8
  %nElems = alloca i32, align 4
  %nRho = alloca i32, align 4
  %nR = alloca i32, align 4
  %dRho = alloca double, align 8
  %dR = alloca double, align 8
  %cutoff = alloca double, align 8
  %nAtomic = alloca i32, align 4
  %mass = alloca double, align 8
  %lat = alloca double, align 8
  %latticeType = alloca [8 x i8], align 1
  %bufSize = alloca i32, align 4
  %buf = alloca double*, align 8
  %x0 = alloca double, align 8
  %ii = alloca i32, align 4
  %ii1 = alloca i32, align 4
  %ii2 = alloca i32, align 4
  %ii3 = alloca i32, align 4
  %r = alloca double, align 8
  store %struct.EamPotentialSt* %pot, %struct.EamPotentialSt** %1, align 8
  store i8* %dir, i8** %2, align 8
  store i8* %potName, i8** %3, align 8
  %4 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %5 = load i8** %2, align 8
  %6 = load i8** %3, align 8
  %7 = call i32 (i8*, i8*, ...)* @sprintf(i8* %4, i8* getelementptr inbounds ([6 x i8]* @.str650, i32 0, i32 0), i8* %5, i8* %6) #5
  %8 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %9 = call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8]* @.str751, i32 0, i32 0))
  store %struct._IO_FILE* %9, %struct._IO_FILE** %potFile, align 8
  %10 = load %struct._IO_FILE** %potFile, align 8
  %11 = icmp eq %struct._IO_FILE* %10, null
  br i1 %11, label %12, label %14

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  call void @fileNotFound(i8* getelementptr inbounds ([13 x i8]* @.str1660, i32 0, i32 0), i8* %13)
  br label %14

; <label>:14                                      ; preds = %12, %0
  %15 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %16 = load %struct._IO_FILE** %potFile, align 8
  %17 = call i8* @fgets(i8* %15, i32 4096, %struct._IO_FILE* %16)
  %18 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %19 = load %struct._IO_FILE** %potFile, align 8
  %20 = call i8* @fgets(i8* %18, i32 4096, %struct._IO_FILE* %19)
  %21 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %22 = load %struct._IO_FILE** %potFile, align 8
  %23 = call i8* @fgets(i8* %21, i32 4096, %struct._IO_FILE* %22)
  %24 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %25 = load %struct._IO_FILE** %potFile, align 8
  %26 = call i8* @fgets(i8* %24, i32 4096, %struct._IO_FILE* %25)
  %27 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %28 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %27, i8* getelementptr inbounds ([3 x i8]* @.str1761, i32 0, i32 0), i32* %nElems) #5
  %29 = load i32* %nElems, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %14
  call void @notAlloyReady(i8* getelementptr inbounds ([13 x i8]* @.str1660, i32 0, i32 0))
  br label %32

; <label>:32                                      ; preds = %31, %14
  %33 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %34 = load %struct._IO_FILE** %potFile, align 8
  %35 = call i8* @fgets(i8* %33, i32 4096, %struct._IO_FILE* %34)
  %36 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %37 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %36, i8* getelementptr inbounds ([18 x i8]* @.str1155, i32 0, i32 0), i32* %nRho, double* %dRho, i32* %nR, double* %dR, double* %cutoff) #5
  %38 = load double* %cutoff, align 8
  %39 = load %struct.EamPotentialSt** %1, align 8
  %40 = getelementptr inbounds %struct.EamPotentialSt* %39, i32 0, i32 0
  store double %38, double* %40, align 8
  %41 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %42 = load %struct._IO_FILE** %potFile, align 8
  %43 = call i8* @fgets(i8* %41, i32 4096, %struct._IO_FILE* %42)
  %44 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %45 = getelementptr inbounds [8 x i8]* %latticeType, i32 0, i32 0
  %46 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %44, i8* getelementptr inbounds ([14 x i8]* @.str1054, i32 0, i32 0), i32* %nAtomic, double* %mass, double* %lat, i8* %45) #5
  %47 = load i32* %nAtomic, align 4
  %48 = load %struct.EamPotentialSt** %1, align 8
  %49 = getelementptr inbounds %struct.EamPotentialSt* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load double* %lat, align 8
  %51 = load %struct.EamPotentialSt** %1, align 8
  %52 = getelementptr inbounds %struct.EamPotentialSt* %51, i32 0, i32 2
  store double %50, double* %52, align 8
  %53 = load double* %mass, align 8
  %54 = fmul double %53, 0x4059E921DD37DC65
  %55 = load %struct.EamPotentialSt** %1, align 8
  %56 = getelementptr inbounds %struct.EamPotentialSt* %55, i32 0, i32 1
  store double %54, double* %56, align 8
  %57 = load %struct.EamPotentialSt** %1, align 8
  %58 = getelementptr inbounds %struct.EamPotentialSt* %57, i32 0, i32 3
  %59 = getelementptr inbounds [8 x i8]* %58, i32 0, i32 0
  %60 = getelementptr inbounds [8 x i8]* %latticeType, i32 0, i32 0
  %61 = call i8* @strcpy(i8* %59, i8* %60) #5
  %62 = load i32* %nRho, align 4
  %63 = load i32* %nR, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %67

; <label>:65                                      ; preds = %32
  %66 = load i32* %nRho, align 4
  br label %69

; <label>:67                                      ; preds = %32
  %68 = load i32* %nR, align 4
  br label %69

; <label>:69                                      ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %bufSize, align 4
  %71 = load i32* %bufSize, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 8
  %74 = call i8* @comdMalloc73(i64 %73)
  %75 = bitcast i8* %74 to double*
  store double* %75, double** %buf, align 8
  store double 0.000000e+00, double* %x0, align 8
  store i32 0, i32* %ii, align 4
  br label %76

; <label>:76                                      ; preds = %87, %69
  %77 = load i32* %ii, align 4
  %78 = load i32* %nRho, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %90

; <label>:80                                      ; preds = %76
  %81 = load %struct._IO_FILE** %potFile, align 8
  %82 = load double** %buf, align 8
  %83 = load i32* %ii, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double* %82, i64 %84
  %86 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([4 x i8]* @.str1256, i32 0, i32 0), double* %85)
  br label %87

; <label>:87                                      ; preds = %80
  %88 = load i32* %ii, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %ii, align 4
  br label %76

; <label>:90                                      ; preds = %76
  %91 = load i32* %nRho, align 4
  %92 = load double* %x0, align 8
  %93 = load double* %dRho, align 8
  %94 = load double** %buf, align 8
  %95 = call %struct.InterpolationObjectSt* @initInterpolationObject(i32 %91, double %92, double %93, double* %94)
  %96 = load %struct.EamPotentialSt** %1, align 8
  %97 = getelementptr inbounds %struct.EamPotentialSt* %96, i32 0, i32 11
  store %struct.InterpolationObjectSt* %95, %struct.InterpolationObjectSt** %97, align 8
  store i32 0, i32* %ii1, align 4
  br label %98

; <label>:98                                      ; preds = %109, %90
  %99 = load i32* %ii1, align 4
  %100 = load i32* %nR, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %112

; <label>:102                                     ; preds = %98
  %103 = load %struct._IO_FILE** %potFile, align 8
  %104 = load double** %buf, align 8
  %105 = load i32* %ii1, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double* %104, i64 %106
  %108 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([4 x i8]* @.str1256, i32 0, i32 0), double* %107)
  br label %109

; <label>:109                                     ; preds = %102
  %110 = load i32* %ii1, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %ii1, align 4
  br label %98

; <label>:112                                     ; preds = %98
  %113 = load i32* %nR, align 4
  %114 = load double* %x0, align 8
  %115 = load double* %dR, align 8
  %116 = load double** %buf, align 8
  %117 = call %struct.InterpolationObjectSt* @initInterpolationObject(i32 %113, double %114, double %115, double* %116)
  %118 = load %struct.EamPotentialSt** %1, align 8
  %119 = getelementptr inbounds %struct.EamPotentialSt* %118, i32 0, i32 10
  store %struct.InterpolationObjectSt* %117, %struct.InterpolationObjectSt** %119, align 8
  store i32 0, i32* %ii2, align 4
  br label %120

; <label>:120                                     ; preds = %131, %112
  %121 = load i32* %ii2, align 4
  %122 = load i32* %nR, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %134

; <label>:124                                     ; preds = %120
  %125 = load %struct._IO_FILE** %potFile, align 8
  %126 = load double** %buf, align 8
  %127 = load i32* %ii2, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds double* %126, i64 %128
  %130 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([4 x i8]* @.str1256, i32 0, i32 0), double* %129)
  br label %131

; <label>:131                                     ; preds = %124
  %132 = load i32* %ii2, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %ii2, align 4
  br label %120

; <label>:134                                     ; preds = %120
  store i32 1, i32* %ii3, align 4
  br label %135

; <label>:135                                     ; preds = %153, %134
  %136 = load i32* %ii3, align 4
  %137 = load i32* %nR, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %156

; <label>:139                                     ; preds = %135
  %140 = load double* %x0, align 8
  %141 = load i32* %ii3, align 4
  %142 = sitofp i32 %141 to double
  %143 = load double* %dR, align 8
  %144 = fmul double %142, %143
  %145 = fadd double %140, %144
  store double %145, double* %r, align 8
  %146 = load double* %r, align 8
  %147 = load i32* %ii3, align 4
  %148 = sext i32 %147 to i64
  %149 = load double** %buf, align 8
  %150 = getelementptr inbounds double* %149, i64 %148
  %151 = load double* %150, align 8
  %152 = fdiv double %151, %146
  store double %152, double* %150, align 8
  br label %153

; <label>:153                                     ; preds = %139
  %154 = load i32* %ii3, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %ii3, align 4
  br label %135

; <label>:156                                     ; preds = %135
  %157 = load double** %buf, align 8
  %158 = getelementptr inbounds double* %157, i64 1
  %159 = load double* %158, align 8
  %160 = load double** %buf, align 8
  %161 = getelementptr inbounds double* %160, i64 1
  %162 = load double* %161, align 8
  %163 = load double** %buf, align 8
  %164 = getelementptr inbounds double* %163, i64 2
  %165 = load double* %164, align 8
  %166 = fsub double %162, %165
  %167 = fadd double %159, %166
  %168 = load double** %buf, align 8
  %169 = getelementptr inbounds double* %168, i64 0
  store double %167, double* %169, align 8
  %170 = load i32* %nR, align 4
  %171 = load double* %x0, align 8
  %172 = load double* %dR, align 8
  %173 = load double** %buf, align 8
  %174 = call %struct.InterpolationObjectSt* @initInterpolationObject(i32 %170, double %171, double %172, double* %173)
  %175 = load %struct.EamPotentialSt** %1, align 8
  %176 = getelementptr inbounds %struct.EamPotentialSt* %175, i32 0, i32 9
  store %struct.InterpolationObjectSt* %174, %struct.InterpolationObjectSt** %176, align 8
  %177 = load double** %buf, align 8
  %178 = bitcast double* %177 to i8*
  call void @comdFree74(i8* %178)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @eamReadFuncfl(%struct.EamPotentialSt* %pot, i8* %dir, i8* %potName) #0 {
  %1 = alloca %struct.EamPotentialSt*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %tmp = alloca [4096 x i8], align 16
  %potFile = alloca %struct._IO_FILE*, align 8
  %name = alloca [3 x i8], align 1
  %nAtomic = alloca i32, align 4
  %mass = alloca double, align 8
  %lat = alloca double, align 8
  %latticeType = alloca [8 x i8], align 1
  %nRho = alloca i32, align 4
  %nR = alloca i32, align 4
  %dRho = alloca double, align 8
  %dR = alloca double, align 8
  %cutoff = alloca double, align 8
  %x0 = alloca double, align 8
  %bufSize = alloca i32, align 4
  %buf = alloca double*, align 8
  %ii = alloca i32, align 4
  %ii1 = alloca i32, align 4
  %ii2 = alloca i32, align 4
  %r = alloca double, align 8
  %ii3 = alloca i32, align 4
  store %struct.EamPotentialSt* %pot, %struct.EamPotentialSt** %1, align 8
  store i8* %dir, i8** %2, align 8
  store i8* %potName, i8** %3, align 8
  %4 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %5 = load i8** %2, align 8
  %6 = load i8** %3, align 8
  %7 = call i32 (i8*, i8*, ...)* @sprintf(i8* %4, i8* getelementptr inbounds ([6 x i8]* @.str650, i32 0, i32 0), i8* %5, i8* %6) #5
  %8 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %9 = call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8]* @.str751, i32 0, i32 0))
  store %struct._IO_FILE* %9, %struct._IO_FILE** %potFile, align 8
  %10 = load %struct._IO_FILE** %potFile, align 8
  %11 = icmp eq %struct._IO_FILE* %10, null
  br i1 %11, label %12, label %14

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  call void @fileNotFound(i8* getelementptr inbounds ([14 x i8]* @.str852, i32 0, i32 0), i8* %13)
  br label %14

; <label>:14                                      ; preds = %12, %0
  %15 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %16 = load %struct._IO_FILE** %potFile, align 8
  %17 = call i8* @fgets(i8* %15, i32 4096, %struct._IO_FILE* %16)
  %18 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %19 = getelementptr inbounds [3 x i8]* %name, i32 0, i32 0
  %20 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8]* @.str953, i32 0, i32 0), i8* %19) #5
  %21 = load %struct.EamPotentialSt** %1, align 8
  %22 = getelementptr inbounds %struct.EamPotentialSt* %21, i32 0, i32 4
  %23 = getelementptr inbounds [3 x i8]* %22, i32 0, i32 0
  %24 = getelementptr inbounds [3 x i8]* %name, i32 0, i32 0
  %25 = call i8* @strcpy(i8* %23, i8* %24) #5
  %26 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %27 = load %struct._IO_FILE** %potFile, align 8
  %28 = call i8* @fgets(i8* %26, i32 4096, %struct._IO_FILE* %27)
  %29 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %30 = getelementptr inbounds [8 x i8]* %latticeType, i32 0, i32 0
  %31 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %29, i8* getelementptr inbounds ([14 x i8]* @.str1054, i32 0, i32 0), i32* %nAtomic, double* %mass, double* %lat, i8* %30) #5
  %32 = load i32* %nAtomic, align 4
  %33 = load %struct.EamPotentialSt** %1, align 8
  %34 = getelementptr inbounds %struct.EamPotentialSt* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load double* %lat, align 8
  %36 = load %struct.EamPotentialSt** %1, align 8
  %37 = getelementptr inbounds %struct.EamPotentialSt* %36, i32 0, i32 2
  store double %35, double* %37, align 8
  %38 = load double* %mass, align 8
  %39 = fmul double %38, 0x4059E921DD37DC65
  %40 = load %struct.EamPotentialSt** %1, align 8
  %41 = getelementptr inbounds %struct.EamPotentialSt* %40, i32 0, i32 1
  store double %39, double* %41, align 8
  %42 = load %struct.EamPotentialSt** %1, align 8
  %43 = getelementptr inbounds %struct.EamPotentialSt* %42, i32 0, i32 3
  %44 = getelementptr inbounds [8 x i8]* %43, i32 0, i32 0
  %45 = getelementptr inbounds [8 x i8]* %latticeType, i32 0, i32 0
  %46 = call i8* @strcpy(i8* %44, i8* %45) #5
  %47 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %48 = load %struct._IO_FILE** %potFile, align 8
  %49 = call i8* @fgets(i8* %47, i32 4096, %struct._IO_FILE* %48)
  %50 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %51 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %50, i8* getelementptr inbounds ([18 x i8]* @.str1155, i32 0, i32 0), i32* %nRho, double* %dRho, i32* %nR, double* %dR, double* %cutoff) #5
  %52 = load double* %cutoff, align 8
  %53 = load %struct.EamPotentialSt** %1, align 8
  %54 = getelementptr inbounds %struct.EamPotentialSt* %53, i32 0, i32 0
  store double %52, double* %54, align 8
  store double 0.000000e+00, double* %x0, align 8
  %55 = load i32* %nRho, align 4
  %56 = load i32* %nR, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %60

; <label>:58                                      ; preds = %14
  %59 = load i32* %nRho, align 4
  br label %62

; <label>:60                                      ; preds = %14
  %61 = load i32* %nR, align 4
  br label %62

; <label>:62                                      ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  store i32 %63, i32* %bufSize, align 4
  %64 = load i32* %bufSize, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 8
  %67 = call i8* @comdMalloc73(i64 %66)
  %68 = bitcast i8* %67 to double*
  store double* %68, double** %buf, align 8
  store i32 0, i32* %ii, align 4
  br label %69

; <label>:69                                      ; preds = %80, %62
  %70 = load i32* %ii, align 4
  %71 = load i32* %nRho, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %83

; <label>:73                                      ; preds = %69
  %74 = load %struct._IO_FILE** %potFile, align 8
  %75 = load double** %buf, align 8
  %76 = load i32* %ii, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double* %75, i64 %77
  %79 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([4 x i8]* @.str1256, i32 0, i32 0), double* %78)
  br label %80

; <label>:80                                      ; preds = %73
  %81 = load i32* %ii, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %ii, align 4
  br label %69

; <label>:83                                      ; preds = %69
  %84 = load i32* %nRho, align 4
  %85 = load double* %x0, align 8
  %86 = load double* %dRho, align 8
  %87 = load double** %buf, align 8
  %88 = call %struct.InterpolationObjectSt* @initInterpolationObject(i32 %84, double %85, double %86, double* %87)
  %89 = load %struct.EamPotentialSt** %1, align 8
  %90 = getelementptr inbounds %struct.EamPotentialSt* %89, i32 0, i32 11
  store %struct.InterpolationObjectSt* %88, %struct.InterpolationObjectSt** %90, align 8
  store i32 0, i32* %ii1, align 4
  br label %91

; <label>:91                                      ; preds = %102, %83
  %92 = load i32* %ii1, align 4
  %93 = load i32* %nR, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %105

; <label>:95                                      ; preds = %91
  %96 = load %struct._IO_FILE** %potFile, align 8
  %97 = load double** %buf, align 8
  %98 = load i32* %ii1, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds double* %97, i64 %99
  %101 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([4 x i8]* @.str1256, i32 0, i32 0), double* %100)
  br label %102

; <label>:102                                     ; preds = %95
  %103 = load i32* %ii1, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %ii1, align 4
  br label %91

; <label>:105                                     ; preds = %91
  store i32 1, i32* %ii2, align 4
  br label %106

; <label>:106                                     ; preds = %136, %105
  %107 = load i32* %ii2, align 4
  %108 = load i32* %nR, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %139

; <label>:110                                     ; preds = %106
  %111 = load double* %x0, align 8
  %112 = load i32* %ii2, align 4
  %113 = sitofp i32 %112 to double
  %114 = load double* %dR, align 8
  %115 = fmul double %113, %114
  %116 = fadd double %111, %115
  store double %116, double* %r, align 8
  %117 = load i32* %ii2, align 4
  %118 = sext i32 %117 to i64
  %119 = load double** %buf, align 8
  %120 = getelementptr inbounds double* %119, i64 %118
  %121 = load double* %120, align 8
  %122 = load double* %r, align 8
  %123 = fdiv double %121, %122
  %124 = load i32* %ii2, align 4
  %125 = sext i32 %124 to i64
  %126 = load double** %buf, align 8
  %127 = getelementptr inbounds double* %126, i64 %125
  %128 = load double* %127, align 8
  %129 = fmul double %128, %123
  store double %129, double* %127, align 8
  %130 = load i32* %ii2, align 4
  %131 = sext i32 %130 to i64
  %132 = load double** %buf, align 8
  %133 = getelementptr inbounds double* %132, i64 %131
  %134 = load double* %133, align 8
  %135 = fmul double %134, 0x402CCC9E3FCF6BAE
  store double %135, double* %133, align 8
  br label %136

; <label>:136                                     ; preds = %110
  %137 = load i32* %ii2, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %ii2, align 4
  br label %106

; <label>:139                                     ; preds = %106
  %140 = load double** %buf, align 8
  %141 = getelementptr inbounds double* %140, i64 1
  %142 = load double* %141, align 8
  %143 = load double** %buf, align 8
  %144 = getelementptr inbounds double* %143, i64 1
  %145 = load double* %144, align 8
  %146 = load double** %buf, align 8
  %147 = getelementptr inbounds double* %146, i64 2
  %148 = load double* %147, align 8
  %149 = fsub double %145, %148
  %150 = fadd double %142, %149
  %151 = load double** %buf, align 8
  %152 = getelementptr inbounds double* %151, i64 0
  store double %150, double* %152, align 8
  %153 = load i32* %nR, align 4
  %154 = load double* %x0, align 8
  %155 = load double* %dR, align 8
  %156 = load double** %buf, align 8
  %157 = call %struct.InterpolationObjectSt* @initInterpolationObject(i32 %153, double %154, double %155, double* %156)
  %158 = load %struct.EamPotentialSt** %1, align 8
  %159 = getelementptr inbounds %struct.EamPotentialSt* %158, i32 0, i32 9
  store %struct.InterpolationObjectSt* %157, %struct.InterpolationObjectSt** %159, align 8
  store i32 0, i32* %ii3, align 4
  br label %160

; <label>:160                                     ; preds = %171, %139
  %161 = load i32* %ii3, align 4
  %162 = load i32* %nR, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %174

; <label>:164                                     ; preds = %160
  %165 = load %struct._IO_FILE** %potFile, align 8
  %166 = load double** %buf, align 8
  %167 = load i32* %ii3, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds double* %166, i64 %168
  %170 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %165, i8* getelementptr inbounds ([4 x i8]* @.str1256, i32 0, i32 0), double* %169)
  br label %171

; <label>:171                                     ; preds = %164
  %172 = load i32* %ii3, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %ii3, align 4
  br label %160

; <label>:174                                     ; preds = %160
  %175 = load i32* %nR, align 4
  %176 = load double* %x0, align 8
  %177 = load double* %dR, align 8
  %178 = load double** %buf, align 8
  %179 = call %struct.InterpolationObjectSt* @initInterpolationObject(i32 %175, double %176, double %177, double* %178)
  %180 = load %struct.EamPotentialSt** %1, align 8
  %181 = getelementptr inbounds %struct.EamPotentialSt* %180, i32 0, i32 10
  store %struct.InterpolationObjectSt* %179, %struct.InterpolationObjectSt** %181, align 8
  %182 = load double** %buf, align 8
  %183 = bitcast double* %182 to i8*
  call void @comdFree74(i8* %183)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @typeNotSupported(i8* %callSite, i8* %type) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i8* %callSite, i8** %1, align 8
  store i8* %type, i8** %2, align 8
  %3 = load %struct._IO_FILE** @stdout, align 8
  %4 = load i8** %1, align 8
  %5 = load i8** %2, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([51 x i8]* @.str549, i32 0, i32 0), i8* %4, i8* %5)
  call void @exit(i32 -1) #8
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @eamBcastPotential(%struct.EamPotentialSt* %pot) #0 {
  %1 = alloca %struct.EamPotentialSt*, align 8
  %buf = alloca %struct.anon, align 8
  store %struct.EamPotentialSt* %pot, %struct.EamPotentialSt** %1, align 8
  %2 = load %struct.EamPotentialSt** %1, align 8
  %3 = icmp ne %struct.EamPotentialSt* %2, null
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  br label %7

; <label>:5                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str145, i32 0, i32 0), i32 409, i8* getelementptr inbounds ([39 x i8]* @__PRETTY_FUNCTION__.eamBcastPotential, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %7

; <label>:7                                       ; preds = %6, %4
  %8 = call i32 @getMyRank()
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %39

; <label>:10                                      ; preds = %7
  %11 = load %struct.EamPotentialSt** %1, align 8
  %12 = getelementptr inbounds %struct.EamPotentialSt* %11, i32 0, i32 0
  %13 = load double* %12, align 8
  %14 = getelementptr inbounds %struct.anon* %buf, i32 0, i32 0
  store double %13, double* %14, align 8
  %15 = load %struct.EamPotentialSt** %1, align 8
  %16 = getelementptr inbounds %struct.EamPotentialSt* %15, i32 0, i32 1
  %17 = load double* %16, align 8
  %18 = getelementptr inbounds %struct.anon* %buf, i32 0, i32 1
  store double %17, double* %18, align 8
  %19 = load %struct.EamPotentialSt** %1, align 8
  %20 = getelementptr inbounds %struct.EamPotentialSt* %19, i32 0, i32 2
  %21 = load double* %20, align 8
  %22 = getelementptr inbounds %struct.anon* %buf, i32 0, i32 2
  store double %21, double* %22, align 8
  %23 = load %struct.EamPotentialSt** %1, align 8
  %24 = getelementptr inbounds %struct.EamPotentialSt* %23, i32 0, i32 5
  %25 = load i32* %24, align 4
  %26 = getelementptr inbounds %struct.anon* %buf, i32 0, i32 5
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.anon* %buf, i32 0, i32 3
  %28 = getelementptr inbounds [8 x i8]* %27, i32 0, i32 0
  %29 = load %struct.EamPotentialSt** %1, align 8
  %30 = getelementptr inbounds %struct.EamPotentialSt* %29, i32 0, i32 3
  %31 = getelementptr inbounds [8 x i8]* %30, i32 0, i32 0
  %32 = call i8* @strcpy(i8* %28, i8* %31) #5
  %33 = getelementptr inbounds %struct.anon* %buf, i32 0, i32 4
  %34 = getelementptr inbounds [3 x i8]* %33, i32 0, i32 0
  %35 = load %struct.EamPotentialSt** %1, align 8
  %36 = getelementptr inbounds %struct.EamPotentialSt* %35, i32 0, i32 4
  %37 = getelementptr inbounds [3 x i8]* %36, i32 0, i32 0
  %38 = call i8* @strcpy(i8* %34, i8* %37) #5
  br label %39

; <label>:39                                      ; preds = %10, %7
  %40 = bitcast %struct.anon* %buf to i8*
  call void @bcastParallel(i8* %40, i32 40, i32 0)
  %41 = getelementptr inbounds %struct.anon* %buf, i32 0, i32 0
  %42 = load double* %41, align 8
  %43 = load %struct.EamPotentialSt** %1, align 8
  %44 = getelementptr inbounds %struct.EamPotentialSt* %43, i32 0, i32 0
  store double %42, double* %44, align 8
  %45 = getelementptr inbounds %struct.anon* %buf, i32 0, i32 1
  %46 = load double* %45, align 8
  %47 = load %struct.EamPotentialSt** %1, align 8
  %48 = getelementptr inbounds %struct.EamPotentialSt* %47, i32 0, i32 1
  store double %46, double* %48, align 8
  %49 = getelementptr inbounds %struct.anon* %buf, i32 0, i32 2
  %50 = load double* %49, align 8
  %51 = load %struct.EamPotentialSt** %1, align 8
  %52 = getelementptr inbounds %struct.EamPotentialSt* %51, i32 0, i32 2
  store double %50, double* %52, align 8
  %53 = getelementptr inbounds %struct.anon* %buf, i32 0, i32 5
  %54 = load i32* %53, align 4
  %55 = load %struct.EamPotentialSt** %1, align 8
  %56 = getelementptr inbounds %struct.EamPotentialSt* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.EamPotentialSt** %1, align 8
  %58 = getelementptr inbounds %struct.EamPotentialSt* %57, i32 0, i32 3
  %59 = getelementptr inbounds [8 x i8]* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.anon* %buf, i32 0, i32 3
  %61 = getelementptr inbounds [8 x i8]* %60, i32 0, i32 0
  %62 = call i8* @strcpy(i8* %59, i8* %61) #5
  %63 = load %struct.EamPotentialSt** %1, align 8
  %64 = getelementptr inbounds %struct.EamPotentialSt* %63, i32 0, i32 4
  %65 = getelementptr inbounds [3 x i8]* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.anon* %buf, i32 0, i32 4
  %67 = getelementptr inbounds [3 x i8]* %66, i32 0, i32 0
  %68 = call i8* @strcpy(i8* %65, i8* %67) #5
  %69 = load %struct.EamPotentialSt** %1, align 8
  %70 = getelementptr inbounds %struct.EamPotentialSt* %69, i32 0, i32 9
  call void @bcastInterpolationObject(%struct.InterpolationObjectSt** %70)
  %71 = load %struct.EamPotentialSt** %1, align 8
  %72 = getelementptr inbounds %struct.EamPotentialSt* %71, i32 0, i32 10
  call void @bcastInterpolationObject(%struct.InterpolationObjectSt** %72)
  %73 = load %struct.EamPotentialSt** %1, align 8
  %74 = getelementptr inbounds %struct.EamPotentialSt* %73, i32 0, i32 11
  call void @bcastInterpolationObject(%struct.InterpolationObjectSt** %74)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @interpolate(%struct.InterpolationObjectSt* %table, double %r, double* %f, double* %df) #0 {
  %1 = alloca %struct.InterpolationObjectSt*, align 8
  %2 = alloca double, align 8
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %tt = alloca double*, align 8
  %ii = alloca i32, align 4
  %g1 = alloca double, align 8
  %g2 = alloca double, align 8
  store %struct.InterpolationObjectSt* %table, %struct.InterpolationObjectSt** %1, align 8
  store double %r, double* %2, align 8
  store double* %f, double** %3, align 8
  store double* %df, double** %4, align 8
  %5 = load %struct.InterpolationObjectSt** %1, align 8
  %6 = getelementptr inbounds %struct.InterpolationObjectSt* %5, i32 0, i32 3
  %7 = load double** %6, align 8
  store double* %7, double** %tt, align 8
  %8 = load double* %2, align 8
  %9 = load %struct.InterpolationObjectSt** %1, align 8
  %10 = getelementptr inbounds %struct.InterpolationObjectSt* %9, i32 0, i32 1
  %11 = load double* %10, align 8
  %12 = fcmp olt double %8, %11
  br i1 %12, label %13, label %17

; <label>:13                                      ; preds = %0
  %14 = load %struct.InterpolationObjectSt** %1, align 8
  %15 = getelementptr inbounds %struct.InterpolationObjectSt* %14, i32 0, i32 1
  %16 = load double* %15, align 8
  store double %16, double* %2, align 8
  br label %17

; <label>:17                                      ; preds = %13, %0
  %18 = load double* %2, align 8
  %19 = load %struct.InterpolationObjectSt** %1, align 8
  %20 = getelementptr inbounds %struct.InterpolationObjectSt* %19, i32 0, i32 1
  %21 = load double* %20, align 8
  %22 = fsub double %18, %21
  %23 = load %struct.InterpolationObjectSt** %1, align 8
  %24 = getelementptr inbounds %struct.InterpolationObjectSt* %23, i32 0, i32 2
  %25 = load double* %24, align 8
  %26 = fmul double %22, %25
  store double %26, double* %2, align 8
  %27 = load double* %2, align 8
  %28 = call double @floor(double %27) #9
  %29 = fptosi double %28 to i32
  store i32 %29, i32* %ii, align 4
  %30 = load i32* %ii, align 4
  %31 = load %struct.InterpolationObjectSt** %1, align 8
  %32 = getelementptr inbounds %struct.InterpolationObjectSt* %31, i32 0, i32 0
  %33 = load i32* %32, align 4
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %47

; <label>:35                                      ; preds = %17
  %36 = load %struct.InterpolationObjectSt** %1, align 8
  %37 = getelementptr inbounds %struct.InterpolationObjectSt* %36, i32 0, i32 0
  %38 = load i32* %37, align 4
  store i32 %38, i32* %ii, align 4
  %39 = load %struct.InterpolationObjectSt** %1, align 8
  %40 = getelementptr inbounds %struct.InterpolationObjectSt* %39, i32 0, i32 0
  %41 = load i32* %40, align 4
  %42 = sitofp i32 %41 to double
  %43 = load %struct.InterpolationObjectSt** %1, align 8
  %44 = getelementptr inbounds %struct.InterpolationObjectSt* %43, i32 0, i32 2
  %45 = load double* %44, align 8
  %46 = fdiv double %42, %45
  store double %46, double* %2, align 8
  br label %47

; <label>:47                                      ; preds = %35, %17
  %48 = load double* %2, align 8
  %49 = load double* %2, align 8
  %50 = call double @floor(double %49) #9
  %51 = fsub double %48, %50
  store double %51, double* %2, align 8
  %52 = load i32* %ii, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = load double** %tt, align 8
  %56 = getelementptr inbounds double* %55, i64 %54
  %57 = load double* %56, align 8
  %58 = load i32* %ii, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = load double** %tt, align 8
  %62 = getelementptr inbounds double* %61, i64 %60
  %63 = load double* %62, align 8
  %64 = fsub double %57, %63
  store double %64, double* %g1, align 8
  %65 = load i32* %ii, align 4
  %66 = add nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = load double** %tt, align 8
  %69 = getelementptr inbounds double* %68, i64 %67
  %70 = load double* %69, align 8
  %71 = load i32* %ii, align 4
  %72 = sext i32 %71 to i64
  %73 = load double** %tt, align 8
  %74 = getelementptr inbounds double* %73, i64 %72
  %75 = load double* %74, align 8
  %76 = fsub double %70, %75
  store double %76, double* %g2, align 8
  %77 = load i32* %ii, align 4
  %78 = sext i32 %77 to i64
  %79 = load double** %tt, align 8
  %80 = getelementptr inbounds double* %79, i64 %78
  %81 = load double* %80, align 8
  %82 = load double* %2, align 8
  %83 = fmul double 5.000000e-01, %82
  %84 = load double* %g1, align 8
  %85 = load double* %2, align 8
  %86 = load i32* %ii, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = load double** %tt, align 8
  %90 = getelementptr inbounds double* %89, i64 %88
  %91 = load double* %90, align 8
  %92 = load i32* %ii, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = load double** %tt, align 8
  %96 = getelementptr inbounds double* %95, i64 %94
  %97 = load double* %96, align 8
  %98 = fadd double %91, %97
  %99 = load i32* %ii, align 4
  %100 = sext i32 %99 to i64
  %101 = load double** %tt, align 8
  %102 = getelementptr inbounds double* %101, i64 %100
  %103 = load double* %102, align 8
  %104 = fmul double 2.000000e+00, %103
  %105 = fsub double %98, %104
  %106 = fmul double %85, %105
  %107 = fadd double %84, %106
  %108 = fmul double %83, %107
  %109 = fadd double %81, %108
  %110 = load double** %3, align 8
  store double %109, double* %110, align 8
  %111 = load double* %g1, align 8
  %112 = load double* %2, align 8
  %113 = load double* %g2, align 8
  %114 = load double* %g1, align 8
  %115 = fsub double %113, %114
  %116 = fmul double %112, %115
  %117 = fadd double %111, %116
  %118 = fmul double 5.000000e-01, %117
  %119 = load %struct.InterpolationObjectSt** %1, align 8
  %120 = getelementptr inbounds %struct.InterpolationObjectSt* %119, i32 0, i32 2
  %121 = load double* %120, align 8
  %122 = fmul double %118, %121
  %123 = load double** %4, align 8
  store double %122, double* %123, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @destroyInterpolationObject(%struct.InterpolationObjectSt** %a) #0 {
  %1 = alloca %struct.InterpolationObjectSt**, align 8
  store %struct.InterpolationObjectSt** %a, %struct.InterpolationObjectSt*** %1, align 8
  %2 = load %struct.InterpolationObjectSt*** %1, align 8
  %3 = icmp ne %struct.InterpolationObjectSt** %2, null
  br i1 %3, label %5, label %4

; <label>:4                                       ; preds = %0
  br label %32

; <label>:5                                       ; preds = %0
  %6 = load %struct.InterpolationObjectSt*** %1, align 8
  %7 = load %struct.InterpolationObjectSt** %6, align 8
  %8 = icmp ne %struct.InterpolationObjectSt* %7, null
  br i1 %8, label %10, label %9

; <label>:9                                       ; preds = %5
  br label %32

; <label>:10                                      ; preds = %5
  %11 = load %struct.InterpolationObjectSt*** %1, align 8
  %12 = load %struct.InterpolationObjectSt** %11, align 8
  %13 = getelementptr inbounds %struct.InterpolationObjectSt* %12, i32 0, i32 3
  %14 = load double** %13, align 8
  %15 = icmp ne double* %14, null
  br i1 %15, label %16, label %27

; <label>:16                                      ; preds = %10
  %17 = load %struct.InterpolationObjectSt*** %1, align 8
  %18 = load %struct.InterpolationObjectSt** %17, align 8
  %19 = getelementptr inbounds %struct.InterpolationObjectSt* %18, i32 0, i32 3
  %20 = load double** %19, align 8
  %21 = getelementptr inbounds double* %20, i32 -1
  store double* %21, double** %19, align 8
  %22 = load %struct.InterpolationObjectSt*** %1, align 8
  %23 = load %struct.InterpolationObjectSt** %22, align 8
  %24 = getelementptr inbounds %struct.InterpolationObjectSt* %23, i32 0, i32 3
  %25 = load double** %24, align 8
  %26 = bitcast double* %25 to i8*
  call void @comdFree74(i8* %26)
  br label %27

; <label>:27                                      ; preds = %16, %10
  %28 = load %struct.InterpolationObjectSt*** %1, align 8
  %29 = load %struct.InterpolationObjectSt** %28, align 8
  %30 = bitcast %struct.InterpolationObjectSt* %29 to i8*
  call void @comdFree74(i8* %30)
  %31 = load %struct.InterpolationObjectSt*** %1, align 8
  store %struct.InterpolationObjectSt* null, %struct.InterpolationObjectSt** %31, align 8
  br label %32

; <label>:32                                      ; preds = %27, %9, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @comdFree74(i8* %ptr) #0 {
  %1 = alloca i8*, align 8
  store i8* %ptr, i8** %1, align 8
  %2 = load i8** %1, align 8
  call void @free(i8* %2) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fileNotFound(i8* %callSite, i8* %filename) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i8* %callSite, i8** %1, align 8
  store i8* %filename, i8** %2, align 8
  %3 = load %struct._IO_FILE** @stdout, align 8
  %4 = load i8** %1, align 8
  %5 = load i8** %2, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([39 x i8]* @.str1559, i32 0, i32 0), i8* %4, i8* %5)
  call void @exit(i32 -1) #8
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @notAlloyReady(i8* %callSite) #0 {
  %1 = alloca i8*, align 8
  store i8* %callSite, i8** %1, align 8
  %2 = load %struct._IO_FILE** @stdout, align 8
  %3 = load i8** %1, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([106 x i8]* @.str1862, i32 0, i32 0), i8* %3)
  call void @exit(i32 -1) #8
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.InterpolationObjectSt* @initInterpolationObject(i32 %n, double %x0, double %dx, double* %data) #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double*, align 8
  %table = alloca %struct.InterpolationObjectSt*, align 8
  %ii = alloca i32, align 4
  store i32 %n, i32* %1, align 4
  store double %x0, double* %2, align 8
  store double %dx, double* %3, align 8
  store double* %data, double** %4, align 8
  %5 = call i8* @comdMalloc73(i64 32)
  %6 = bitcast i8* %5 to %struct.InterpolationObjectSt*
  store %struct.InterpolationObjectSt* %6, %struct.InterpolationObjectSt** %table, align 8
  %7 = load %struct.InterpolationObjectSt** %table, align 8
  %8 = icmp ne %struct.InterpolationObjectSt* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  br label %12

; <label>:10                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8]* @.str1357, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str145, i32 0, i32 0), i32 457, i8* getelementptr inbounds ([76 x i8]* @__PRETTY_FUNCTION__.initInterpolationObject, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %12

; <label>:12                                      ; preds = %11, %9
  %13 = load i32* %1, align 4
  %14 = add nsw i32 %13, 3
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 8
  %17 = call i8* @comdCalloc75(i64 1, i64 %16)
  %18 = bitcast i8* %17 to double*
  %19 = load %struct.InterpolationObjectSt** %table, align 8
  %20 = getelementptr inbounds %struct.InterpolationObjectSt* %19, i32 0, i32 3
  store double* %18, double** %20, align 8
  %21 = load %struct.InterpolationObjectSt** %table, align 8
  %22 = getelementptr inbounds %struct.InterpolationObjectSt* %21, i32 0, i32 3
  %23 = load double** %22, align 8
  %24 = icmp ne double* %23, null
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %12
  br label %28

; <label>:26                                      ; preds = %12
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8]* @.str1458, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str145, i32 0, i32 0), i32 460, i8* getelementptr inbounds ([76 x i8]* @__PRETTY_FUNCTION__.initInterpolationObject, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %28

; <label>:28                                      ; preds = %27, %25
  %29 = load %struct.InterpolationObjectSt** %table, align 8
  %30 = getelementptr inbounds %struct.InterpolationObjectSt* %29, i32 0, i32 3
  %31 = load double** %30, align 8
  %32 = getelementptr inbounds double* %31, i32 1
  store double* %32, double** %30, align 8
  %33 = load i32* %1, align 4
  %34 = load %struct.InterpolationObjectSt** %table, align 8
  %35 = getelementptr inbounds %struct.InterpolationObjectSt* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load double* %3, align 8
  %37 = fdiv double 1.000000e+00, %36
  %38 = load %struct.InterpolationObjectSt** %table, align 8
  %39 = getelementptr inbounds %struct.InterpolationObjectSt* %38, i32 0, i32 2
  store double %37, double* %39, align 8
  %40 = load double* %2, align 8
  %41 = load %struct.InterpolationObjectSt** %table, align 8
  %42 = getelementptr inbounds %struct.InterpolationObjectSt* %41, i32 0, i32 1
  store double %40, double* %42, align 8
  store i32 0, i32* %ii, align 4
  br label %43

; <label>:43                                      ; preds = %59, %28
  %44 = load i32* %ii, align 4
  %45 = load i32* %1, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %62

; <label>:47                                      ; preds = %43
  %48 = load i32* %ii, align 4
  %49 = sext i32 %48 to i64
  %50 = load double** %4, align 8
  %51 = getelementptr inbounds double* %50, i64 %49
  %52 = load double* %51, align 8
  %53 = load i32* %ii, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.InterpolationObjectSt** %table, align 8
  %56 = getelementptr inbounds %struct.InterpolationObjectSt* %55, i32 0, i32 3
  %57 = load double** %56, align 8
  %58 = getelementptr inbounds double* %57, i64 %54
  store double %52, double* %58, align 8
  br label %59

; <label>:59                                      ; preds = %47
  %60 = load i32* %ii, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %ii, align 4
  br label %43

; <label>:62                                      ; preds = %43
  %63 = load %struct.InterpolationObjectSt** %table, align 8
  %64 = getelementptr inbounds %struct.InterpolationObjectSt* %63, i32 0, i32 3
  %65 = load double** %64, align 8
  %66 = getelementptr inbounds double* %65, i64 0
  %67 = load double* %66, align 8
  %68 = load %struct.InterpolationObjectSt** %table, align 8
  %69 = getelementptr inbounds %struct.InterpolationObjectSt* %68, i32 0, i32 3
  %70 = load double** %69, align 8
  %71 = getelementptr inbounds double* %70, i64 -1
  store double %67, double* %71, align 8
  %72 = load i32* %1, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = load %struct.InterpolationObjectSt** %table, align 8
  %76 = getelementptr inbounds %struct.InterpolationObjectSt* %75, i32 0, i32 3
  %77 = load double** %76, align 8
  %78 = getelementptr inbounds double* %77, i64 %74
  %79 = load double* %78, align 8
  %80 = load i32* %1, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.InterpolationObjectSt** %table, align 8
  %83 = getelementptr inbounds %struct.InterpolationObjectSt* %82, i32 0, i32 3
  %84 = load double** %83, align 8
  %85 = getelementptr inbounds double* %84, i64 %81
  store double %79, double* %85, align 8
  %86 = load i32* %1, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = load %struct.InterpolationObjectSt** %table, align 8
  %90 = getelementptr inbounds %struct.InterpolationObjectSt* %89, i32 0, i32 3
  %91 = load double** %90, align 8
  %92 = getelementptr inbounds double* %91, i64 %88
  store double %79, double* %92, align 8
  %93 = load %struct.InterpolationObjectSt** %table, align 8
  ret %struct.InterpolationObjectSt* %93
}

; Function Attrs: nounwind uwtable
define internal void @bcastInterpolationObject(%struct.InterpolationObjectSt** %table) #0 {
  %1 = alloca %struct.InterpolationObjectSt**, align 8
  %buf = alloca %struct.anon.0, align 8
  %valuesSize = alloca i32, align 4
  store %struct.InterpolationObjectSt** %table, %struct.InterpolationObjectSt*** %1, align 8
  %2 = call i32 @getMyRank()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %20

; <label>:4                                       ; preds = %0
  %5 = load %struct.InterpolationObjectSt*** %1, align 8
  %6 = load %struct.InterpolationObjectSt** %5, align 8
  %7 = getelementptr inbounds %struct.InterpolationObjectSt* %6, i32 0, i32 0
  %8 = load i32* %7, align 4
  %9 = getelementptr inbounds %struct.anon.0* %buf, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load %struct.InterpolationObjectSt*** %1, align 8
  %11 = load %struct.InterpolationObjectSt** %10, align 8
  %12 = getelementptr inbounds %struct.InterpolationObjectSt* %11, i32 0, i32 1
  %13 = load double* %12, align 8
  %14 = getelementptr inbounds %struct.anon.0* %buf, i32 0, i32 1
  store double %13, double* %14, align 8
  %15 = load %struct.InterpolationObjectSt*** %1, align 8
  %16 = load %struct.InterpolationObjectSt** %15, align 8
  %17 = getelementptr inbounds %struct.InterpolationObjectSt* %16, i32 0, i32 2
  %18 = load double* %17, align 8
  %19 = getelementptr inbounds %struct.anon.0* %buf, i32 0, i32 2
  store double %18, double* %19, align 8
  br label %20

; <label>:20                                      ; preds = %4, %0
  %21 = bitcast %struct.anon.0* %buf to i8*
  call void @bcastParallel(i8* %21, i32 24, i32 0)
  %22 = call i32 @getMyRank()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %65

; <label>:24                                      ; preds = %20
  %25 = load %struct.InterpolationObjectSt*** %1, align 8
  %26 = load %struct.InterpolationObjectSt** %25, align 8
  %27 = icmp eq %struct.InterpolationObjectSt* %26, null
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %24
  br label %31

; <label>:29                                      ; preds = %24
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8]* @.str1963, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str145, i32 0, i32 0), i32 562, i8* getelementptr inbounds ([54 x i8]* @__PRETTY_FUNCTION__.bcastInterpolationObject, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %31

; <label>:31                                      ; preds = %30, %28
  %32 = call i8* @comdMalloc73(i64 32)
  %33 = bitcast i8* %32 to %struct.InterpolationObjectSt*
  %34 = load %struct.InterpolationObjectSt*** %1, align 8
  store %struct.InterpolationObjectSt* %33, %struct.InterpolationObjectSt** %34, align 8
  %35 = getelementptr inbounds %struct.anon.0* %buf, i32 0, i32 0
  %36 = load i32* %35, align 4
  %37 = load %struct.InterpolationObjectSt*** %1, align 8
  %38 = load %struct.InterpolationObjectSt** %37, align 8
  %39 = getelementptr inbounds %struct.InterpolationObjectSt* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = getelementptr inbounds %struct.anon.0* %buf, i32 0, i32 1
  %41 = load double* %40, align 8
  %42 = load %struct.InterpolationObjectSt*** %1, align 8
  %43 = load %struct.InterpolationObjectSt** %42, align 8
  %44 = getelementptr inbounds %struct.InterpolationObjectSt* %43, i32 0, i32 1
  store double %41, double* %44, align 8
  %45 = getelementptr inbounds %struct.anon.0* %buf, i32 0, i32 2
  %46 = load double* %45, align 8
  %47 = load %struct.InterpolationObjectSt*** %1, align 8
  %48 = load %struct.InterpolationObjectSt** %47, align 8
  %49 = getelementptr inbounds %struct.InterpolationObjectSt* %48, i32 0, i32 2
  store double %46, double* %49, align 8
  %50 = getelementptr inbounds %struct.anon.0* %buf, i32 0, i32 0
  %51 = load i32* %50, align 4
  %52 = add nsw i32 %51, 3
  %53 = sext i32 %52 to i64
  %54 = mul i64 8, %53
  %55 = call i8* @comdMalloc73(i64 %54)
  %56 = bitcast i8* %55 to double*
  %57 = load %struct.InterpolationObjectSt*** %1, align 8
  %58 = load %struct.InterpolationObjectSt** %57, align 8
  %59 = getelementptr inbounds %struct.InterpolationObjectSt* %58, i32 0, i32 3
  store double* %56, double** %59, align 8
  %60 = load %struct.InterpolationObjectSt*** %1, align 8
  %61 = load %struct.InterpolationObjectSt** %60, align 8
  %62 = getelementptr inbounds %struct.InterpolationObjectSt* %61, i32 0, i32 3
  %63 = load double** %62, align 8
  %64 = getelementptr inbounds double* %63, i32 1
  store double* %64, double** %62, align 8
  br label %65

; <label>:65                                      ; preds = %31, %20
  %66 = load %struct.InterpolationObjectSt*** %1, align 8
  %67 = load %struct.InterpolationObjectSt** %66, align 8
  %68 = getelementptr inbounds %struct.InterpolationObjectSt* %67, i32 0, i32 0
  %69 = load i32* %68, align 4
  %70 = add nsw i32 %69, 3
  %71 = sext i32 %70 to i64
  %72 = mul i64 8, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %valuesSize, align 4
  %74 = load %struct.InterpolationObjectSt*** %1, align 8
  %75 = load %struct.InterpolationObjectSt** %74, align 8
  %76 = getelementptr inbounds %struct.InterpolationObjectSt* %75, i32 0, i32 3
  %77 = load double** %76, align 8
  %78 = getelementptr inbounds double* %77, i64 -1
  %79 = bitcast double* %78 to i8*
  %80 = load i32* %valuesSize, align 4
  call void @bcastParallel(i8* %79, i32 %80, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @comdCalloc75(i64 %num, i64 %iSize) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %num, i64* %1, align 8
  store i64 %iSize, i64* %2, align 8
  %3 = load i64* %1, align 8
  %4 = load i64* %2, align 8
  %5 = call noalias i8* @calloc(i64 %3, i64 %4) #5
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define %struct.HaloExchangeSt* @initAtomHaloExchange(%struct.DomainSt* %domain, %struct.LinkCellSt* %boxes) #0 {
  %1 = alloca %struct.DomainSt*, align 8
  %2 = alloca %struct.LinkCellSt*, align 8
  %hh = alloca %struct.HaloExchangeSt*, align 8
  %size0 = alloca i32, align 4
  %size1 = alloca i32, align 4
  %size2 = alloca i32, align 4
  %maxSize = alloca i32, align 4
  %parms = alloca %struct.AtomExchangeParmsSt*, align 8
  %ii = alloca i32, align 4
  %ii1 = alloca i32, align 4
  %jj = alloca i32, align 4
  %procCoord = alloca i32*, align 8
  %procGrid = alloca i32*, align 8
  store %struct.DomainSt* %domain, %struct.DomainSt** %1, align 8
  store %struct.LinkCellSt* %boxes, %struct.LinkCellSt** %2, align 8
  %3 = load %struct.DomainSt** %1, align 8
  %4 = call %struct.HaloExchangeSt* @initHaloExchange(%struct.DomainSt* %3)
  store %struct.HaloExchangeSt* %4, %struct.HaloExchangeSt** %hh, align 8
  %5 = load %struct.LinkCellSt** %2, align 8
  %6 = getelementptr inbounds %struct.LinkCellSt* %5, i32 0, i32 0
  %7 = getelementptr inbounds [3 x i32]* %6, i32 0, i64 1
  %8 = load i32* %7, align 4
  %9 = add nsw i32 %8, 2
  %10 = load %struct.LinkCellSt** %2, align 8
  %11 = getelementptr inbounds %struct.LinkCellSt* %10, i32 0, i32 0
  %12 = getelementptr inbounds [3 x i32]* %11, i32 0, i64 2
  %13 = load i32* %12, align 4
  %14 = add nsw i32 %13, 2
  %15 = mul nsw i32 %9, %14
  store i32 %15, i32* %size0, align 4
  %16 = load %struct.LinkCellSt** %2, align 8
  %17 = getelementptr inbounds %struct.LinkCellSt* %16, i32 0, i32 0
  %18 = getelementptr inbounds [3 x i32]* %17, i32 0, i64 0
  %19 = load i32* %18, align 4
  %20 = add nsw i32 %19, 2
  %21 = load %struct.LinkCellSt** %2, align 8
  %22 = getelementptr inbounds %struct.LinkCellSt* %21, i32 0, i32 0
  %23 = getelementptr inbounds [3 x i32]* %22, i32 0, i64 2
  %24 = load i32* %23, align 4
  %25 = add nsw i32 %24, 2
  %26 = mul nsw i32 %20, %25
  store i32 %26, i32* %size1, align 4
  %27 = load %struct.LinkCellSt** %2, align 8
  %28 = getelementptr inbounds %struct.LinkCellSt* %27, i32 0, i32 0
  %29 = getelementptr inbounds [3 x i32]* %28, i32 0, i64 0
  %30 = load i32* %29, align 4
  %31 = add nsw i32 %30, 2
  %32 = load %struct.LinkCellSt** %2, align 8
  %33 = getelementptr inbounds %struct.LinkCellSt* %32, i32 0, i32 0
  %34 = getelementptr inbounds [3 x i32]* %33, i32 0, i64 1
  %35 = load i32* %34, align 4
  %36 = add nsw i32 %35, 2
  %37 = mul nsw i32 %31, %36
  store i32 %37, i32* %size2, align 4
  %38 = load i32* %size0, align 4
  %39 = load i32* %size1, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

; <label>:41                                      ; preds = %0
  %42 = load i32* %size0, align 4
  br label %45

; <label>:43                                      ; preds = %0
  %44 = load i32* %size1, align 4
  br label %45

; <label>:45                                      ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %maxSize, align 4
  %47 = load i32* %size1, align 4
  %48 = load i32* %size2, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

; <label>:50                                      ; preds = %45
  %51 = load i32* %size1, align 4
  br label %54

; <label>:52                                      ; preds = %45
  %53 = load i32* %size2, align 4
  br label %54

; <label>:54                                      ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, i32* %maxSize, align 4
  %56 = load i32* %maxSize, align 4
  %57 = mul nsw i32 %56, 2
  %58 = mul nsw i32 %57, 64
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 56
  %61 = trunc i64 %60 to i32
  %62 = load %struct.HaloExchangeSt** %hh, align 8
  %63 = getelementptr inbounds %struct.HaloExchangeSt* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.HaloExchangeSt** %hh, align 8
  %65 = getelementptr inbounds %struct.HaloExchangeSt* %64, i32 0, i32 2
  store i32 (i8*, i8*, i32, i8*)* @loadAtomsBuffer, i32 (i8*, i8*, i32, i8*)** %65, align 8
  %66 = load %struct.HaloExchangeSt** %hh, align 8
  %67 = getelementptr inbounds %struct.HaloExchangeSt* %66, i32 0, i32 3
  store void (i8*, i8*, i32, i32, i8*)* @unloadAtomsBuffer, void (i8*, i8*, i32, i32, i8*)** %67, align 8
  %68 = load %struct.HaloExchangeSt** %hh, align 8
  %69 = getelementptr inbounds %struct.HaloExchangeSt* %68, i32 0, i32 4
  store void (i8*)* @destroyAtomsExchange, void (i8*)** %69, align 8
  %70 = call i8* @comdMalloc91(i64 120)
  %71 = bitcast i8* %70 to %struct.AtomExchangeParmsSt*
  store %struct.AtomExchangeParmsSt* %71, %struct.AtomExchangeParmsSt** %parms, align 8
  %72 = load %struct.LinkCellSt** %2, align 8
  %73 = getelementptr inbounds %struct.LinkCellSt* %72, i32 0, i32 0
  %74 = getelementptr inbounds [3 x i32]* %73, i32 0, i64 1
  %75 = load i32* %74, align 4
  %76 = add nsw i32 %75, 2
  %77 = mul nsw i32 2, %76
  %78 = load %struct.LinkCellSt** %2, align 8
  %79 = getelementptr inbounds %struct.LinkCellSt* %78, i32 0, i32 0
  %80 = getelementptr inbounds [3 x i32]* %79, i32 0, i64 2
  %81 = load i32* %80, align 4
  %82 = add nsw i32 %81, 2
  %83 = mul nsw i32 %77, %82
  %84 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %85 = getelementptr inbounds %struct.AtomExchangeParmsSt* %84, i32 0, i32 0
  %86 = getelementptr inbounds [6 x i32]* %85, i32 0, i64 0
  store i32 %83, i32* %86, align 4
  %87 = load %struct.LinkCellSt** %2, align 8
  %88 = getelementptr inbounds %struct.LinkCellSt* %87, i32 0, i32 0
  %89 = getelementptr inbounds [3 x i32]* %88, i32 0, i64 0
  %90 = load i32* %89, align 4
  %91 = add nsw i32 %90, 2
  %92 = mul nsw i32 2, %91
  %93 = load %struct.LinkCellSt** %2, align 8
  %94 = getelementptr inbounds %struct.LinkCellSt* %93, i32 0, i32 0
  %95 = getelementptr inbounds [3 x i32]* %94, i32 0, i64 2
  %96 = load i32* %95, align 4
  %97 = add nsw i32 %96, 2
  %98 = mul nsw i32 %92, %97
  %99 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %100 = getelementptr inbounds %struct.AtomExchangeParmsSt* %99, i32 0, i32 0
  %101 = getelementptr inbounds [6 x i32]* %100, i32 0, i64 2
  store i32 %98, i32* %101, align 4
  %102 = load %struct.LinkCellSt** %2, align 8
  %103 = getelementptr inbounds %struct.LinkCellSt* %102, i32 0, i32 0
  %104 = getelementptr inbounds [3 x i32]* %103, i32 0, i64 0
  %105 = load i32* %104, align 4
  %106 = add nsw i32 %105, 2
  %107 = mul nsw i32 2, %106
  %108 = load %struct.LinkCellSt** %2, align 8
  %109 = getelementptr inbounds %struct.LinkCellSt* %108, i32 0, i32 0
  %110 = getelementptr inbounds [3 x i32]* %109, i32 0, i64 1
  %111 = load i32* %110, align 4
  %112 = add nsw i32 %111, 2
  %113 = mul nsw i32 %107, %112
  %114 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %115 = getelementptr inbounds %struct.AtomExchangeParmsSt* %114, i32 0, i32 0
  %116 = getelementptr inbounds [6 x i32]* %115, i32 0, i64 4
  store i32 %113, i32* %116, align 4
  %117 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %118 = getelementptr inbounds %struct.AtomExchangeParmsSt* %117, i32 0, i32 0
  %119 = getelementptr inbounds [6 x i32]* %118, i32 0, i64 0
  %120 = load i32* %119, align 4
  %121 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %122 = getelementptr inbounds %struct.AtomExchangeParmsSt* %121, i32 0, i32 0
  %123 = getelementptr inbounds [6 x i32]* %122, i32 0, i64 1
  store i32 %120, i32* %123, align 4
  %124 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %125 = getelementptr inbounds %struct.AtomExchangeParmsSt* %124, i32 0, i32 0
  %126 = getelementptr inbounds [6 x i32]* %125, i32 0, i64 2
  %127 = load i32* %126, align 4
  %128 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %129 = getelementptr inbounds %struct.AtomExchangeParmsSt* %128, i32 0, i32 0
  %130 = getelementptr inbounds [6 x i32]* %129, i32 0, i64 3
  store i32 %127, i32* %130, align 4
  %131 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %132 = getelementptr inbounds %struct.AtomExchangeParmsSt* %131, i32 0, i32 0
  %133 = getelementptr inbounds [6 x i32]* %132, i32 0, i64 4
  %134 = load i32* %133, align 4
  %135 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %136 = getelementptr inbounds %struct.AtomExchangeParmsSt* %135, i32 0, i32 0
  %137 = getelementptr inbounds [6 x i32]* %136, i32 0, i64 5
  store i32 %134, i32* %137, align 4
  store i32 0, i32* %ii, align 4
  br label %138

; <label>:138                                     ; preds = %156, %54
  %139 = load i32* %ii, align 4
  %140 = icmp slt i32 %139, 6
  br i1 %140, label %141, label %159

; <label>:141                                     ; preds = %138
  %142 = load %struct.LinkCellSt** %2, align 8
  %143 = load i32* %ii, align 4
  %144 = load i32* %ii, align 4
  %145 = sext i32 %144 to i64
  %146 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %147 = getelementptr inbounds %struct.AtomExchangeParmsSt* %146, i32 0, i32 0
  %148 = getelementptr inbounds [6 x i32]* %147, i32 0, i64 %145
  %149 = load i32* %148, align 4
  %150 = call i32* @mkAtomCellList(%struct.LinkCellSt* %142, i32 %143, i32 %149)
  %151 = load i32* %ii, align 4
  %152 = sext i32 %151 to i64
  %153 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %154 = getelementptr inbounds %struct.AtomExchangeParmsSt* %153, i32 0, i32 1
  %155 = getelementptr inbounds [6 x i32*]* %154, i32 0, i64 %152
  store i32* %150, i32** %155, align 8
  br label %156

; <label>:156                                     ; preds = %141
  %157 = load i32* %ii, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %ii, align 4
  br label %138

; <label>:159                                     ; preds = %138
  store i32 0, i32* %ii1, align 4
  br label %160

; <label>:160                                     ; preds = %188, %159
  %161 = load i32* %ii1, align 4
  %162 = icmp slt i32 %161, 6
  br i1 %162, label %163, label %191

; <label>:163                                     ; preds = %160
  %164 = call i8* @comdMalloc91(i64 24)
  %165 = bitcast i8* %164 to double*
  %166 = load i32* %ii1, align 4
  %167 = sext i32 %166 to i64
  %168 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %169 = getelementptr inbounds %struct.AtomExchangeParmsSt* %168, i32 0, i32 2
  %170 = getelementptr inbounds [6 x double*]* %169, i32 0, i64 %167
  store double* %165, double** %170, align 8
  store i32 0, i32* %jj, align 4
  br label %171

; <label>:171                                     ; preds = %184, %163
  %172 = load i32* %jj, align 4
  %173 = icmp slt i32 %172, 3
  br i1 %173, label %174, label %187

; <label>:174                                     ; preds = %171
  %175 = load i32* %jj, align 4
  %176 = sext i32 %175 to i64
  %177 = load i32* %ii1, align 4
  %178 = sext i32 %177 to i64
  %179 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %180 = getelementptr inbounds %struct.AtomExchangeParmsSt* %179, i32 0, i32 2
  %181 = getelementptr inbounds [6 x double*]* %180, i32 0, i64 %178
  %182 = load double** %181, align 8
  %183 = getelementptr inbounds double* %182, i64 %176
  store double 0.000000e+00, double* %183, align 8
  br label %184

; <label>:184                                     ; preds = %174
  %185 = load i32* %jj, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %jj, align 4
  br label %171

; <label>:187                                     ; preds = %171
  br label %188

; <label>:188                                     ; preds = %187
  %189 = load i32* %ii1, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %ii1, align 4
  br label %160

; <label>:191                                     ; preds = %160
  %192 = load %struct.DomainSt** %1, align 8
  %193 = getelementptr inbounds %struct.DomainSt* %192, i32 0, i32 1
  %194 = getelementptr inbounds [3 x i32]* %193, i32 0, i32 0
  store i32* %194, i32** %procCoord, align 8
  %195 = load %struct.DomainSt** %1, align 8
  %196 = getelementptr inbounds %struct.DomainSt* %195, i32 0, i32 0
  %197 = getelementptr inbounds [3 x i32]* %196, i32 0, i32 0
  store i32* %197, i32** %procGrid, align 8
  %198 = load i32** %procCoord, align 8
  %199 = getelementptr inbounds i32* %198, i64 0
  %200 = load i32* %199, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %208

; <label>:202                                     ; preds = %191
  %203 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %204 = getelementptr inbounds %struct.AtomExchangeParmsSt* %203, i32 0, i32 2
  %205 = getelementptr inbounds [6 x double*]* %204, i32 0, i64 0
  %206 = load double** %205, align 8
  %207 = getelementptr inbounds double* %206, i64 0
  store double 1.000000e+00, double* %207, align 8
  br label %208

; <label>:208                                     ; preds = %202, %191
  %209 = load i32** %procCoord, align 8
  %210 = getelementptr inbounds i32* %209, i64 0
  %211 = load i32* %210, align 4
  %212 = load i32** %procGrid, align 8
  %213 = getelementptr inbounds i32* %212, i64 0
  %214 = load i32* %213, align 4
  %215 = sub nsw i32 %214, 1
  %216 = icmp eq i32 %211, %215
  br i1 %216, label %217, label %223

; <label>:217                                     ; preds = %208
  %218 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %219 = getelementptr inbounds %struct.AtomExchangeParmsSt* %218, i32 0, i32 2
  %220 = getelementptr inbounds [6 x double*]* %219, i32 0, i64 1
  %221 = load double** %220, align 8
  %222 = getelementptr inbounds double* %221, i64 0
  store double -1.000000e+00, double* %222, align 8
  br label %223

; <label>:223                                     ; preds = %217, %208
  %224 = load i32** %procCoord, align 8
  %225 = getelementptr inbounds i32* %224, i64 1
  %226 = load i32* %225, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %234

; <label>:228                                     ; preds = %223
  %229 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %230 = getelementptr inbounds %struct.AtomExchangeParmsSt* %229, i32 0, i32 2
  %231 = getelementptr inbounds [6 x double*]* %230, i32 0, i64 2
  %232 = load double** %231, align 8
  %233 = getelementptr inbounds double* %232, i64 1
  store double 1.000000e+00, double* %233, align 8
  br label %234

; <label>:234                                     ; preds = %228, %223
  %235 = load i32** %procCoord, align 8
  %236 = getelementptr inbounds i32* %235, i64 1
  %237 = load i32* %236, align 4
  %238 = load i32** %procGrid, align 8
  %239 = getelementptr inbounds i32* %238, i64 1
  %240 = load i32* %239, align 4
  %241 = sub nsw i32 %240, 1
  %242 = icmp eq i32 %237, %241
  br i1 %242, label %243, label %249

; <label>:243                                     ; preds = %234
  %244 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %245 = getelementptr inbounds %struct.AtomExchangeParmsSt* %244, i32 0, i32 2
  %246 = getelementptr inbounds [6 x double*]* %245, i32 0, i64 3
  %247 = load double** %246, align 8
  %248 = getelementptr inbounds double* %247, i64 1
  store double -1.000000e+00, double* %248, align 8
  br label %249

; <label>:249                                     ; preds = %243, %234
  %250 = load i32** %procCoord, align 8
  %251 = getelementptr inbounds i32* %250, i64 2
  %252 = load i32* %251, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %260

; <label>:254                                     ; preds = %249
  %255 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %256 = getelementptr inbounds %struct.AtomExchangeParmsSt* %255, i32 0, i32 2
  %257 = getelementptr inbounds [6 x double*]* %256, i32 0, i64 4
  %258 = load double** %257, align 8
  %259 = getelementptr inbounds double* %258, i64 2
  store double 1.000000e+00, double* %259, align 8
  br label %260

; <label>:260                                     ; preds = %254, %249
  %261 = load i32** %procCoord, align 8
  %262 = getelementptr inbounds i32* %261, i64 2
  %263 = load i32* %262, align 4
  %264 = load i32** %procGrid, align 8
  %265 = getelementptr inbounds i32* %264, i64 2
  %266 = load i32* %265, align 4
  %267 = sub nsw i32 %266, 1
  %268 = icmp eq i32 %263, %267
  br i1 %268, label %269, label %275

; <label>:269                                     ; preds = %260
  %270 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %271 = getelementptr inbounds %struct.AtomExchangeParmsSt* %270, i32 0, i32 2
  %272 = getelementptr inbounds [6 x double*]* %271, i32 0, i64 5
  %273 = load double** %272, align 8
  %274 = getelementptr inbounds double* %273, i64 2
  store double -1.000000e+00, double* %274, align 8
  br label %275

; <label>:275                                     ; preds = %269, %260
  %276 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %277 = bitcast %struct.AtomExchangeParmsSt* %276 to i8*
  %278 = load %struct.HaloExchangeSt** %hh, align 8
  %279 = getelementptr inbounds %struct.HaloExchangeSt* %278, i32 0, i32 5
  store i8* %277, i8** %279, align 8
  %280 = load %struct.HaloExchangeSt** %hh, align 8
  ret %struct.HaloExchangeSt* %280
}

; Function Attrs: nounwind uwtable
define %struct.HaloExchangeSt* @initForceHaloExchange(%struct.DomainSt* %domain, %struct.LinkCellSt* %boxes) #0 {
  %1 = alloca %struct.DomainSt*, align 8
  %2 = alloca %struct.LinkCellSt*, align 8
  %hh = alloca %struct.HaloExchangeSt*, align 8
  %size0 = alloca i32, align 4
  %size1 = alloca i32, align 4
  %size2 = alloca i32, align 4
  %maxSize = alloca i32, align 4
  %parms = alloca %struct.ForceExchangeParmsSt*, align 8
  %ii = alloca i32, align 4
  store %struct.DomainSt* %domain, %struct.DomainSt** %1, align 8
  store %struct.LinkCellSt* %boxes, %struct.LinkCellSt** %2, align 8
  %3 = load %struct.DomainSt** %1, align 8
  %4 = call %struct.HaloExchangeSt* @initHaloExchange(%struct.DomainSt* %3)
  store %struct.HaloExchangeSt* %4, %struct.HaloExchangeSt** %hh, align 8
  %5 = load %struct.HaloExchangeSt** %hh, align 8
  %6 = getelementptr inbounds %struct.HaloExchangeSt* %5, i32 0, i32 2
  store i32 (i8*, i8*, i32, i8*)* @loadForceBuffer, i32 (i8*, i8*, i32, i8*)** %6, align 8
  %7 = load %struct.HaloExchangeSt** %hh, align 8
  %8 = getelementptr inbounds %struct.HaloExchangeSt* %7, i32 0, i32 3
  store void (i8*, i8*, i32, i32, i8*)* @unloadForceBuffer, void (i8*, i8*, i32, i32, i8*)** %8, align 8
  %9 = load %struct.HaloExchangeSt** %hh, align 8
  %10 = getelementptr inbounds %struct.HaloExchangeSt* %9, i32 0, i32 4
  store void (i8*)* @destroyForceExchange, void (i8*)** %10, align 8
  %11 = load %struct.LinkCellSt** %2, align 8
  %12 = getelementptr inbounds %struct.LinkCellSt* %11, i32 0, i32 0
  %13 = getelementptr inbounds [3 x i32]* %12, i32 0, i64 1
  %14 = load i32* %13, align 4
  %15 = load %struct.LinkCellSt** %2, align 8
  %16 = getelementptr inbounds %struct.LinkCellSt* %15, i32 0, i32 0
  %17 = getelementptr inbounds [3 x i32]* %16, i32 0, i64 2
  %18 = load i32* %17, align 4
  %19 = mul nsw i32 %14, %18
  store i32 %19, i32* %size0, align 4
  %20 = load %struct.LinkCellSt** %2, align 8
  %21 = getelementptr inbounds %struct.LinkCellSt* %20, i32 0, i32 0
  %22 = getelementptr inbounds [3 x i32]* %21, i32 0, i64 0
  %23 = load i32* %22, align 4
  %24 = add nsw i32 %23, 2
  %25 = load %struct.LinkCellSt** %2, align 8
  %26 = getelementptr inbounds %struct.LinkCellSt* %25, i32 0, i32 0
  %27 = getelementptr inbounds [3 x i32]* %26, i32 0, i64 2
  %28 = load i32* %27, align 4
  %29 = mul nsw i32 %24, %28
  store i32 %29, i32* %size1, align 4
  %30 = load %struct.LinkCellSt** %2, align 8
  %31 = getelementptr inbounds %struct.LinkCellSt* %30, i32 0, i32 0
  %32 = getelementptr inbounds [3 x i32]* %31, i32 0, i64 0
  %33 = load i32* %32, align 4
  %34 = add nsw i32 %33, 2
  %35 = load %struct.LinkCellSt** %2, align 8
  %36 = getelementptr inbounds %struct.LinkCellSt* %35, i32 0, i32 0
  %37 = getelementptr inbounds [3 x i32]* %36, i32 0, i64 1
  %38 = load i32* %37, align 4
  %39 = add nsw i32 %38, 2
  %40 = mul nsw i32 %34, %39
  store i32 %40, i32* %size2, align 4
  %41 = load i32* %size0, align 4
  %42 = load i32* %size1, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

; <label>:44                                      ; preds = %0
  %45 = load i32* %size0, align 4
  br label %48

; <label>:46                                      ; preds = %0
  %47 = load i32* %size1, align 4
  br label %48

; <label>:48                                      ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %maxSize, align 4
  %50 = load i32* %size1, align 4
  %51 = load i32* %size2, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %55

; <label>:53                                      ; preds = %48
  %54 = load i32* %size1, align 4
  br label %57

; <label>:55                                      ; preds = %48
  %56 = load i32* %size2, align 4
  br label %57

; <label>:57                                      ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %maxSize, align 4
  %59 = load i32* %maxSize, align 4
  %60 = mul nsw i32 %59, 64
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.HaloExchangeSt** %hh, align 8
  %65 = getelementptr inbounds %struct.HaloExchangeSt* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = call i8* @comdMalloc91(i64 120)
  %67 = bitcast i8* %66 to %struct.ForceExchangeParmsSt*
  store %struct.ForceExchangeParmsSt* %67, %struct.ForceExchangeParmsSt** %parms, align 8
  %68 = load %struct.LinkCellSt** %2, align 8
  %69 = getelementptr inbounds %struct.LinkCellSt* %68, i32 0, i32 0
  %70 = getelementptr inbounds [3 x i32]* %69, i32 0, i64 1
  %71 = load i32* %70, align 4
  %72 = load %struct.LinkCellSt** %2, align 8
  %73 = getelementptr inbounds %struct.LinkCellSt* %72, i32 0, i32 0
  %74 = getelementptr inbounds [3 x i32]* %73, i32 0, i64 2
  %75 = load i32* %74, align 4
  %76 = mul nsw i32 %71, %75
  %77 = load %struct.ForceExchangeParmsSt** %parms, align 8
  %78 = getelementptr inbounds %struct.ForceExchangeParmsSt* %77, i32 0, i32 0
  %79 = getelementptr inbounds [6 x i32]* %78, i32 0, i64 0
  store i32 %76, i32* %79, align 4
  %80 = load %struct.LinkCellSt** %2, align 8
  %81 = getelementptr inbounds %struct.LinkCellSt* %80, i32 0, i32 0
  %82 = getelementptr inbounds [3 x i32]* %81, i32 0, i64 0
  %83 = load i32* %82, align 4
  %84 = add nsw i32 %83, 2
  %85 = load %struct.LinkCellSt** %2, align 8
  %86 = getelementptr inbounds %struct.LinkCellSt* %85, i32 0, i32 0
  %87 = getelementptr inbounds [3 x i32]* %86, i32 0, i64 2
  %88 = load i32* %87, align 4
  %89 = mul nsw i32 %84, %88
  %90 = load %struct.ForceExchangeParmsSt** %parms, align 8
  %91 = getelementptr inbounds %struct.ForceExchangeParmsSt* %90, i32 0, i32 0
  %92 = getelementptr inbounds [6 x i32]* %91, i32 0, i64 2
  store i32 %89, i32* %92, align 4
  %93 = load %struct.LinkCellSt** %2, align 8
  %94 = getelementptr inbounds %struct.LinkCellSt* %93, i32 0, i32 0
  %95 = getelementptr inbounds [3 x i32]* %94, i32 0, i64 0
  %96 = load i32* %95, align 4
  %97 = add nsw i32 %96, 2
  %98 = load %struct.LinkCellSt** %2, align 8
  %99 = getelementptr inbounds %struct.LinkCellSt* %98, i32 0, i32 0
  %100 = getelementptr inbounds [3 x i32]* %99, i32 0, i64 1
  %101 = load i32* %100, align 4
  %102 = add nsw i32 %101, 2
  %103 = mul nsw i32 %97, %102
  %104 = load %struct.ForceExchangeParmsSt** %parms, align 8
  %105 = getelementptr inbounds %struct.ForceExchangeParmsSt* %104, i32 0, i32 0
  %106 = getelementptr inbounds [6 x i32]* %105, i32 0, i64 4
  store i32 %103, i32* %106, align 4
  %107 = load %struct.ForceExchangeParmsSt** %parms, align 8
  %108 = getelementptr inbounds %struct.ForceExchangeParmsSt* %107, i32 0, i32 0
  %109 = getelementptr inbounds [6 x i32]* %108, i32 0, i64 0
  %110 = load i32* %109, align 4
  %111 = load %struct.ForceExchangeParmsSt** %parms, align 8
  %112 = getelementptr inbounds %struct.ForceExchangeParmsSt* %111, i32 0, i32 0
  %113 = getelementptr inbounds [6 x i32]* %112, i32 0, i64 1
  store i32 %110, i32* %113, align 4
  %114 = load %struct.ForceExchangeParmsSt** %parms, align 8
  %115 = getelementptr inbounds %struct.ForceExchangeParmsSt* %114, i32 0, i32 0
  %116 = getelementptr inbounds [6 x i32]* %115, i32 0, i64 2
  %117 = load i32* %116, align 4
  %118 = load %struct.ForceExchangeParmsSt** %parms, align 8
  %119 = getelementptr inbounds %struct.ForceExchangeParmsSt* %118, i32 0, i32 0
  %120 = getelementptr inbounds [6 x i32]* %119, i32 0, i64 3
  store i32 %117, i32* %120, align 4
  %121 = load %struct.ForceExchangeParmsSt** %parms, align 8
  %122 = getelementptr inbounds %struct.ForceExchangeParmsSt* %121, i32 0, i32 0
  %123 = getelementptr inbounds [6 x i32]* %122, i32 0, i64 4
  %124 = load i32* %123, align 4
  %125 = load %struct.ForceExchangeParmsSt** %parms, align 8
  %126 = getelementptr inbounds %struct.ForceExchangeParmsSt* %125, i32 0, i32 0
  %127 = getelementptr inbounds [6 x i32]* %126, i32 0, i64 5
  store i32 %124, i32* %127, align 4
  store i32 0, i32* %ii, align 4
  br label %128

; <label>:128                                     ; preds = %160, %57
  %129 = load i32* %ii, align 4
  %130 = icmp slt i32 %129, 6
  br i1 %130, label %131, label %163

; <label>:131                                     ; preds = %128
  %132 = load %struct.LinkCellSt** %2, align 8
  %133 = load i32* %ii, align 4
  %134 = load i32* %ii, align 4
  %135 = sext i32 %134 to i64
  %136 = load %struct.ForceExchangeParmsSt** %parms, align 8
  %137 = getelementptr inbounds %struct.ForceExchangeParmsSt* %136, i32 0, i32 0
  %138 = getelementptr inbounds [6 x i32]* %137, i32 0, i64 %135
  %139 = load i32* %138, align 4
  %140 = call i32* @mkForceSendCellList(%struct.LinkCellSt* %132, i32 %133, i32 %139)
  %141 = load i32* %ii, align 4
  %142 = sext i32 %141 to i64
  %143 = load %struct.ForceExchangeParmsSt** %parms, align 8
  %144 = getelementptr inbounds %struct.ForceExchangeParmsSt* %143, i32 0, i32 1
  %145 = getelementptr inbounds [6 x i32*]* %144, i32 0, i64 %142
  store i32* %140, i32** %145, align 8
  %146 = load %struct.LinkCellSt** %2, align 8
  %147 = load i32* %ii, align 4
  %148 = load i32* %ii, align 4
  %149 = sext i32 %148 to i64
  %150 = load %struct.ForceExchangeParmsSt** %parms, align 8
  %151 = getelementptr inbounds %struct.ForceExchangeParmsSt* %150, i32 0, i32 0
  %152 = getelementptr inbounds [6 x i32]* %151, i32 0, i64 %149
  %153 = load i32* %152, align 4
  %154 = call i32* @mkForceRecvCellList(%struct.LinkCellSt* %146, i32 %147, i32 %153)
  %155 = load i32* %ii, align 4
  %156 = sext i32 %155 to i64
  %157 = load %struct.ForceExchangeParmsSt** %parms, align 8
  %158 = getelementptr inbounds %struct.ForceExchangeParmsSt* %157, i32 0, i32 2
  %159 = getelementptr inbounds [6 x i32*]* %158, i32 0, i64 %156
  store i32* %154, i32** %159, align 8
  br label %160

; <label>:160                                     ; preds = %131
  %161 = load i32* %ii, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %ii, align 4
  br label %128

; <label>:163                                     ; preds = %128
  %164 = load %struct.ForceExchangeParmsSt** %parms, align 8
  %165 = bitcast %struct.ForceExchangeParmsSt* %164 to i8*
  %166 = load %struct.HaloExchangeSt** %hh, align 8
  %167 = getelementptr inbounds %struct.HaloExchangeSt* %166, i32 0, i32 5
  store i8* %165, i8** %167, align 8
  %168 = load %struct.HaloExchangeSt** %hh, align 8
  ret %struct.HaloExchangeSt* %168
}

; Function Attrs: nounwind uwtable
define void @destroyHaloExchange(%struct.HaloExchangeSt** %haloExchange) #0 {
  %1 = alloca %struct.HaloExchangeSt**, align 8
  store %struct.HaloExchangeSt** %haloExchange, %struct.HaloExchangeSt*** %1, align 8
  %2 = load %struct.HaloExchangeSt*** %1, align 8
  %3 = load %struct.HaloExchangeSt** %2, align 8
  %4 = getelementptr inbounds %struct.HaloExchangeSt* %3, i32 0, i32 4
  %5 = load void (i8*)** %4, align 8
  %6 = load %struct.HaloExchangeSt*** %1, align 8
  %7 = load %struct.HaloExchangeSt** %6, align 8
  %8 = getelementptr inbounds %struct.HaloExchangeSt* %7, i32 0, i32 5
  %9 = load i8** %8, align 8
  call void %5(i8* %9)
  %10 = load %struct.HaloExchangeSt*** %1, align 8
  %11 = load %struct.HaloExchangeSt** %10, align 8
  %12 = getelementptr inbounds %struct.HaloExchangeSt* %11, i32 0, i32 5
  %13 = load i8** %12, align 8
  call void @comdFree92(i8* %13)
  %14 = load %struct.HaloExchangeSt*** %1, align 8
  %15 = load %struct.HaloExchangeSt** %14, align 8
  %16 = bitcast %struct.HaloExchangeSt* %15 to i8*
  call void @comdFree92(i8* %16)
  %17 = load %struct.HaloExchangeSt*** %1, align 8
  store %struct.HaloExchangeSt* null, %struct.HaloExchangeSt** %17, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @haloExchange(%struct.HaloExchangeSt* %haloExchange, i8* %data) #0 {
  %1 = alloca %struct.HaloExchangeSt*, align 8
  %2 = alloca i8*, align 8
  %iAxis = alloca i32, align 4
  store %struct.HaloExchangeSt* %haloExchange, %struct.HaloExchangeSt** %1, align 8
  store i8* %data, i8** %2, align 8
  store i32 0, i32* %iAxis, align 4
  br label %3

; <label>:3                                       ; preds = %10, %0
  %4 = load i32* %iAxis, align 4
  %5 = icmp slt i32 %4, 3
  br i1 %5, label %6, label %13

; <label>:6                                       ; preds = %3
  %7 = load %struct.HaloExchangeSt** %1, align 8
  %8 = load i8** %2, align 8
  %9 = load i32* %iAxis, align 4
  call void @exchangeData(%struct.HaloExchangeSt* %7, i8* %8, i32 %9)
  br label %10

; <label>:10                                      ; preds = %6
  %11 = load i32* %iAxis, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %iAxis, align 4
  br label %3

; <label>:13                                      ; preds = %3
  ret void
}

; Function Attrs: nounwind uwtable
define void @sortAtomsInCell(%struct.AtomsSt* %atoms, %struct.LinkCellSt* %boxes, i32 %iBox) #0 {
  %1 = alloca %struct.AtomsSt*, align 8
  %2 = alloca %struct.LinkCellSt*, align 8
  %3 = alloca i32, align 4
  %nAtoms = alloca i32, align 4
  %4 = alloca i8*
  %begin = alloca i32, align 4
  %end = alloca i32, align 4
  %ii = alloca i32, align 4
  %iTmp = alloca i32, align 4
  %ii1 = alloca i32, align 4
  %iTmp2 = alloca i32, align 4
  store %struct.AtomsSt* %atoms, %struct.AtomsSt** %1, align 8
  store %struct.LinkCellSt* %boxes, %struct.LinkCellSt** %2, align 8
  store i32 %iBox, i32* %3, align 4
  %5 = load i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.LinkCellSt** %2, align 8
  %8 = getelementptr inbounds %struct.LinkCellSt* %7, i32 0, i32 8
  %9 = load i32** %8, align 8
  %10 = getelementptr inbounds i32* %9, i64 %6
  %11 = load i32* %10, align 4
  store i32 %11, i32* %nAtoms, align 4
  %12 = load i32* %nAtoms, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4
  %15 = alloca %struct.AtomMsgSt, i64 %13, align 16
  %16 = load i32* %3, align 4
  %17 = mul nsw i32 %16, 64
  store i32 %17, i32* %begin, align 4
  %18 = load i32* %begin, align 4
  %19 = load i32* %nAtoms, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %end, align 4
  %21 = load i32* %begin, align 4
  store i32 %21, i32* %ii, align 4
  store i32 0, i32* %iTmp, align 4
  br label %22

; <label>:22                                      ; preds = %121, %0
  %23 = load i32* %ii, align 4
  %24 = load i32* %end, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %126

; <label>:26                                      ; preds = %22
  %27 = load i32* %ii, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.AtomsSt** %1, align 8
  %30 = getelementptr inbounds %struct.AtomsSt* %29, i32 0, i32 2
  %31 = load i32** %30, align 8
  %32 = getelementptr inbounds i32* %31, i64 %28
  %33 = load i32* %32, align 4
  %34 = load i32* %iTmp, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.AtomMsgSt* %15, i64 %35
  %37 = getelementptr inbounds %struct.AtomMsgSt* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load i32* %ii, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.AtomsSt** %1, align 8
  %41 = getelementptr inbounds %struct.AtomsSt* %40, i32 0, i32 3
  %42 = load i32** %41, align 8
  %43 = getelementptr inbounds i32* %42, i64 %39
  %44 = load i32* %43, align 4
  %45 = load i32* %iTmp, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.AtomMsgSt* %15, i64 %46
  %48 = getelementptr inbounds %struct.AtomMsgSt* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 4
  %49 = load i32* %ii, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.AtomsSt** %1, align 8
  %52 = getelementptr inbounds %struct.AtomsSt* %51, i32 0, i32 4
  %53 = load [3 x double]** %52, align 8
  %54 = getelementptr inbounds [3 x double]* %53, i64 %50
  %55 = getelementptr inbounds [3 x double]* %54, i32 0, i64 0
  %56 = load double* %55, align 8
  %57 = load i32* %iTmp, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.AtomMsgSt* %15, i64 %58
  %60 = getelementptr inbounds %struct.AtomMsgSt* %59, i32 0, i32 2
  store double %56, double* %60, align 8
  %61 = load i32* %ii, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.AtomsSt** %1, align 8
  %64 = getelementptr inbounds %struct.AtomsSt* %63, i32 0, i32 4
  %65 = load [3 x double]** %64, align 8
  %66 = getelementptr inbounds [3 x double]* %65, i64 %62
  %67 = getelementptr inbounds [3 x double]* %66, i32 0, i64 1
  %68 = load double* %67, align 8
  %69 = load i32* %iTmp, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.AtomMsgSt* %15, i64 %70
  %72 = getelementptr inbounds %struct.AtomMsgSt* %71, i32 0, i32 3
  store double %68, double* %72, align 8
  %73 = load i32* %ii, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.AtomsSt** %1, align 8
  %76 = getelementptr inbounds %struct.AtomsSt* %75, i32 0, i32 4
  %77 = load [3 x double]** %76, align 8
  %78 = getelementptr inbounds [3 x double]* %77, i64 %74
  %79 = getelementptr inbounds [3 x double]* %78, i32 0, i64 2
  %80 = load double* %79, align 8
  %81 = load i32* %iTmp, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.AtomMsgSt* %15, i64 %82
  %84 = getelementptr inbounds %struct.AtomMsgSt* %83, i32 0, i32 4
  store double %80, double* %84, align 8
  %85 = load i32* %ii, align 4
  %86 = sext i32 %85 to i64
  %87 = load %struct.AtomsSt** %1, align 8
  %88 = getelementptr inbounds %struct.AtomsSt* %87, i32 0, i32 5
  %89 = load [3 x double]** %88, align 8
  %90 = getelementptr inbounds [3 x double]* %89, i64 %86
  %91 = getelementptr inbounds [3 x double]* %90, i32 0, i64 0
  %92 = load double* %91, align 8
  %93 = load i32* %iTmp, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.AtomMsgSt* %15, i64 %94
  %96 = getelementptr inbounds %struct.AtomMsgSt* %95, i32 0, i32 5
  store double %92, double* %96, align 8
  %97 = load i32* %ii, align 4
  %98 = sext i32 %97 to i64
  %99 = load %struct.AtomsSt** %1, align 8
  %100 = getelementptr inbounds %struct.AtomsSt* %99, i32 0, i32 5
  %101 = load [3 x double]** %100, align 8
  %102 = getelementptr inbounds [3 x double]* %101, i64 %98
  %103 = getelementptr inbounds [3 x double]* %102, i32 0, i64 1
  %104 = load double* %103, align 8
  %105 = load i32* %iTmp, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.AtomMsgSt* %15, i64 %106
  %108 = getelementptr inbounds %struct.AtomMsgSt* %107, i32 0, i32 6
  store double %104, double* %108, align 8
  %109 = load i32* %ii, align 4
  %110 = sext i32 %109 to i64
  %111 = load %struct.AtomsSt** %1, align 8
  %112 = getelementptr inbounds %struct.AtomsSt* %111, i32 0, i32 5
  %113 = load [3 x double]** %112, align 8
  %114 = getelementptr inbounds [3 x double]* %113, i64 %110
  %115 = getelementptr inbounds [3 x double]* %114, i32 0, i64 2
  %116 = load double* %115, align 8
  %117 = load i32* %iTmp, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.AtomMsgSt* %15, i64 %118
  %120 = getelementptr inbounds %struct.AtomMsgSt* %119, i32 0, i32 7
  store double %116, double* %120, align 8
  br label %121

; <label>:121                                     ; preds = %26
  %122 = load i32* %ii, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %ii, align 4
  %124 = load i32* %iTmp, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %iTmp, align 4
  br label %22

; <label>:126                                     ; preds = %22
  %127 = bitcast %struct.AtomMsgSt* %15 to i8*
  %128 = load i32* %nAtoms, align 4
  %129 = sext i32 %128 to i64
  call void @qsort(i8* %127, i64 %129, i64 56, i32 (i8*, i8*)* @sortAtomsById)
  %130 = load i32* %begin, align 4
  store i32 %130, i32* %ii1, align 4
  store i32 0, i32* %iTmp2, align 4
  br label %131

; <label>:131                                     ; preds = %230, %126
  %132 = load i32* %ii1, align 4
  %133 = load i32* %end, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %235

; <label>:135                                     ; preds = %131
  %136 = load i32* %iTmp2, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.AtomMsgSt* %15, i64 %137
  %139 = getelementptr inbounds %struct.AtomMsgSt* %138, i32 0, i32 0
  %140 = load i32* %139, align 4
  %141 = load i32* %ii1, align 4
  %142 = sext i32 %141 to i64
  %143 = load %struct.AtomsSt** %1, align 8
  %144 = getelementptr inbounds %struct.AtomsSt* %143, i32 0, i32 2
  %145 = load i32** %144, align 8
  %146 = getelementptr inbounds i32* %145, i64 %142
  store i32 %140, i32* %146, align 4
  %147 = load i32* %iTmp2, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.AtomMsgSt* %15, i64 %148
  %150 = getelementptr inbounds %struct.AtomMsgSt* %149, i32 0, i32 1
  %151 = load i32* %150, align 4
  %152 = load i32* %ii1, align 4
  %153 = sext i32 %152 to i64
  %154 = load %struct.AtomsSt** %1, align 8
  %155 = getelementptr inbounds %struct.AtomsSt* %154, i32 0, i32 3
  %156 = load i32** %155, align 8
  %157 = getelementptr inbounds i32* %156, i64 %153
  store i32 %151, i32* %157, align 4
  %158 = load i32* %iTmp2, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.AtomMsgSt* %15, i64 %159
  %161 = getelementptr inbounds %struct.AtomMsgSt* %160, i32 0, i32 2
  %162 = load double* %161, align 8
  %163 = load i32* %ii1, align 4
  %164 = sext i32 %163 to i64
  %165 = load %struct.AtomsSt** %1, align 8
  %166 = getelementptr inbounds %struct.AtomsSt* %165, i32 0, i32 4
  %167 = load [3 x double]** %166, align 8
  %168 = getelementptr inbounds [3 x double]* %167, i64 %164
  %169 = getelementptr inbounds [3 x double]* %168, i32 0, i64 0
  store double %162, double* %169, align 8
  %170 = load i32* %iTmp2, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.AtomMsgSt* %15, i64 %171
  %173 = getelementptr inbounds %struct.AtomMsgSt* %172, i32 0, i32 3
  %174 = load double* %173, align 8
  %175 = load i32* %ii1, align 4
  %176 = sext i32 %175 to i64
  %177 = load %struct.AtomsSt** %1, align 8
  %178 = getelementptr inbounds %struct.AtomsSt* %177, i32 0, i32 4
  %179 = load [3 x double]** %178, align 8
  %180 = getelementptr inbounds [3 x double]* %179, i64 %176
  %181 = getelementptr inbounds [3 x double]* %180, i32 0, i64 1
  store double %174, double* %181, align 8
  %182 = load i32* %iTmp2, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.AtomMsgSt* %15, i64 %183
  %185 = getelementptr inbounds %struct.AtomMsgSt* %184, i32 0, i32 4
  %186 = load double* %185, align 8
  %187 = load i32* %ii1, align 4
  %188 = sext i32 %187 to i64
  %189 = load %struct.AtomsSt** %1, align 8
  %190 = getelementptr inbounds %struct.AtomsSt* %189, i32 0, i32 4
  %191 = load [3 x double]** %190, align 8
  %192 = getelementptr inbounds [3 x double]* %191, i64 %188
  %193 = getelementptr inbounds [3 x double]* %192, i32 0, i64 2
  store double %186, double* %193, align 8
  %194 = load i32* %iTmp2, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.AtomMsgSt* %15, i64 %195
  %197 = getelementptr inbounds %struct.AtomMsgSt* %196, i32 0, i32 5
  %198 = load double* %197, align 8
  %199 = load i32* %ii1, align 4
  %200 = sext i32 %199 to i64
  %201 = load %struct.AtomsSt** %1, align 8
  %202 = getelementptr inbounds %struct.AtomsSt* %201, i32 0, i32 5
  %203 = load [3 x double]** %202, align 8
  %204 = getelementptr inbounds [3 x double]* %203, i64 %200
  %205 = getelementptr inbounds [3 x double]* %204, i32 0, i64 0
  store double %198, double* %205, align 8
  %206 = load i32* %iTmp2, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.AtomMsgSt* %15, i64 %207
  %209 = getelementptr inbounds %struct.AtomMsgSt* %208, i32 0, i32 6
  %210 = load double* %209, align 8
  %211 = load i32* %ii1, align 4
  %212 = sext i32 %211 to i64
  %213 = load %struct.AtomsSt** %1, align 8
  %214 = getelementptr inbounds %struct.AtomsSt* %213, i32 0, i32 5
  %215 = load [3 x double]** %214, align 8
  %216 = getelementptr inbounds [3 x double]* %215, i64 %212
  %217 = getelementptr inbounds [3 x double]* %216, i32 0, i64 1
  store double %210, double* %217, align 8
  %218 = load i32* %iTmp2, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.AtomMsgSt* %15, i64 %219
  %221 = getelementptr inbounds %struct.AtomMsgSt* %220, i32 0, i32 7
  %222 = load double* %221, align 8
  %223 = load i32* %ii1, align 4
  %224 = sext i32 %223 to i64
  %225 = load %struct.AtomsSt** %1, align 8
  %226 = getelementptr inbounds %struct.AtomsSt* %225, i32 0, i32 5
  %227 = load [3 x double]** %226, align 8
  %228 = getelementptr inbounds [3 x double]* %227, i64 %224
  %229 = getelementptr inbounds [3 x double]* %228, i32 0, i64 2
  store double %222, double* %229, align 8
  br label %230

; <label>:230                                     ; preds = %135
  %231 = load i32* %ii1, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %ii1, align 4
  %233 = load i32* %iTmp2, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %iTmp2, align 4
  br label %131

; <label>:235                                     ; preds = %131
  %236 = load i8** %4
  call void @llvm.stackrestore(i8* %236)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #5

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #5

; Function Attrs: nounwind uwtable
define internal %struct.HaloExchangeSt* @initHaloExchange(%struct.DomainSt* %domain) #0 {
  %1 = alloca %struct.DomainSt*, align 8
  %hh = alloca %struct.HaloExchangeSt*, align 8
  store %struct.DomainSt* %domain, %struct.DomainSt** %1, align 8
  %2 = call i8* @comdMalloc91(i64 64)
  %3 = bitcast i8* %2 to %struct.HaloExchangeSt*
  store %struct.HaloExchangeSt* %3, %struct.HaloExchangeSt** %hh, align 8
  %4 = load %struct.DomainSt** %1, align 8
  %5 = call i32 @processorNum(%struct.DomainSt* %4, i32 -1, i32 0, i32 0)
  %6 = load %struct.HaloExchangeSt** %hh, align 8
  %7 = getelementptr inbounds %struct.HaloExchangeSt* %6, i32 0, i32 0
  %8 = getelementptr inbounds [6 x i32]* %7, i32 0, i64 0
  store i32 %5, i32* %8, align 4
  %9 = load %struct.DomainSt** %1, align 8
  %10 = call i32 @processorNum(%struct.DomainSt* %9, i32 1, i32 0, i32 0)
  %11 = load %struct.HaloExchangeSt** %hh, align 8
  %12 = getelementptr inbounds %struct.HaloExchangeSt* %11, i32 0, i32 0
  %13 = getelementptr inbounds [6 x i32]* %12, i32 0, i64 1
  store i32 %10, i32* %13, align 4
  %14 = load %struct.DomainSt** %1, align 8
  %15 = call i32 @processorNum(%struct.DomainSt* %14, i32 0, i32 -1, i32 0)
  %16 = load %struct.HaloExchangeSt** %hh, align 8
  %17 = getelementptr inbounds %struct.HaloExchangeSt* %16, i32 0, i32 0
  %18 = getelementptr inbounds [6 x i32]* %17, i32 0, i64 2
  store i32 %15, i32* %18, align 4
  %19 = load %struct.DomainSt** %1, align 8
  %20 = call i32 @processorNum(%struct.DomainSt* %19, i32 0, i32 1, i32 0)
  %21 = load %struct.HaloExchangeSt** %hh, align 8
  %22 = getelementptr inbounds %struct.HaloExchangeSt* %21, i32 0, i32 0
  %23 = getelementptr inbounds [6 x i32]* %22, i32 0, i64 3
  store i32 %20, i32* %23, align 4
  %24 = load %struct.DomainSt** %1, align 8
  %25 = call i32 @processorNum(%struct.DomainSt* %24, i32 0, i32 0, i32 -1)
  %26 = load %struct.HaloExchangeSt** %hh, align 8
  %27 = getelementptr inbounds %struct.HaloExchangeSt* %26, i32 0, i32 0
  %28 = getelementptr inbounds [6 x i32]* %27, i32 0, i64 4
  store i32 %25, i32* %28, align 4
  %29 = load %struct.DomainSt** %1, align 8
  %30 = call i32 @processorNum(%struct.DomainSt* %29, i32 0, i32 0, i32 1)
  %31 = load %struct.HaloExchangeSt** %hh, align 8
  %32 = getelementptr inbounds %struct.HaloExchangeSt* %31, i32 0, i32 0
  %33 = getelementptr inbounds [6 x i32]* %32, i32 0, i64 5
  store i32 %30, i32* %33, align 4
  %34 = load %struct.HaloExchangeSt** %hh, align 8
  %35 = getelementptr inbounds %struct.HaloExchangeSt* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load %struct.HaloExchangeSt** %hh, align 8
  ret %struct.HaloExchangeSt* %36
}

; Function Attrs: nounwind uwtable
define internal i32 @loadAtomsBuffer(i8* %vparms, i8* %data, i32 %face, i8* %charBuf) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %parms = alloca %struct.AtomExchangeParmsSt*, align 8
  %s = alloca %struct.SimFlatSt*, align 8
  %buf = alloca %struct.AtomMsgSt*, align 8
  %pbcFactor = alloca double*, align 8
  %shift = alloca [3 x double], align 16
  %nCells = alloca i32, align 4
  %cellList = alloca i32*, align 8
  %nBuf = alloca i32, align 4
  %iCell = alloca i32, align 4
  %iBox = alloca i32, align 4
  %iOff = alloca i32, align 4
  %ii = alloca i32, align 4
  store i8* %vparms, i8** %1, align 8
  store i8* %data, i8** %2, align 8
  store i32 %face, i32* %3, align 4
  store i8* %charBuf, i8** %4, align 8
  %5 = load i8** %1, align 8
  %6 = bitcast i8* %5 to %struct.AtomExchangeParmsSt*
  store %struct.AtomExchangeParmsSt* %6, %struct.AtomExchangeParmsSt** %parms, align 8
  %7 = load i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.SimFlatSt*
  store %struct.SimFlatSt* %8, %struct.SimFlatSt** %s, align 8
  %9 = load i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.AtomMsgSt*
  store %struct.AtomMsgSt* %10, %struct.AtomMsgSt** %buf, align 8
  %11 = load i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %14 = getelementptr inbounds %struct.AtomExchangeParmsSt* %13, i32 0, i32 2
  %15 = getelementptr inbounds [6 x double*]* %14, i32 0, i64 %12
  %16 = load double** %15, align 8
  store double* %16, double** %pbcFactor, align 8
  %17 = load double** %pbcFactor, align 8
  %18 = getelementptr inbounds double* %17, i64 0
  %19 = load double* %18, align 8
  %20 = load %struct.SimFlatSt** %s, align 8
  %21 = getelementptr inbounds %struct.SimFlatSt* %20, i32 0, i32 3
  %22 = load %struct.DomainSt** %21, align 8
  %23 = getelementptr inbounds %struct.DomainSt* %22, i32 0, i32 4
  %24 = getelementptr inbounds [3 x double]* %23, i32 0, i64 0
  %25 = load double* %24, align 8
  %26 = fmul double %19, %25
  %27 = getelementptr inbounds [3 x double]* %shift, i32 0, i64 0
  store double %26, double* %27, align 8
  %28 = load double** %pbcFactor, align 8
  %29 = getelementptr inbounds double* %28, i64 1
  %30 = load double* %29, align 8
  %31 = load %struct.SimFlatSt** %s, align 8
  %32 = getelementptr inbounds %struct.SimFlatSt* %31, i32 0, i32 3
  %33 = load %struct.DomainSt** %32, align 8
  %34 = getelementptr inbounds %struct.DomainSt* %33, i32 0, i32 4
  %35 = getelementptr inbounds [3 x double]* %34, i32 0, i64 1
  %36 = load double* %35, align 8
  %37 = fmul double %30, %36
  %38 = getelementptr inbounds [3 x double]* %shift, i32 0, i64 1
  store double %37, double* %38, align 8
  %39 = load double** %pbcFactor, align 8
  %40 = getelementptr inbounds double* %39, i64 2
  %41 = load double* %40, align 8
  %42 = load %struct.SimFlatSt** %s, align 8
  %43 = getelementptr inbounds %struct.SimFlatSt* %42, i32 0, i32 3
  %44 = load %struct.DomainSt** %43, align 8
  %45 = getelementptr inbounds %struct.DomainSt* %44, i32 0, i32 4
  %46 = getelementptr inbounds [3 x double]* %45, i32 0, i64 2
  %47 = load double* %46, align 8
  %48 = fmul double %41, %47
  %49 = getelementptr inbounds [3 x double]* %shift, i32 0, i64 2
  store double %48, double* %49, align 8
  %50 = load i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %53 = getelementptr inbounds %struct.AtomExchangeParmsSt* %52, i32 0, i32 0
  %54 = getelementptr inbounds [6 x i32]* %53, i32 0, i64 %51
  %55 = load i32* %54, align 4
  store i32 %55, i32* %nCells, align 4
  %56 = load i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %59 = getelementptr inbounds %struct.AtomExchangeParmsSt* %58, i32 0, i32 1
  %60 = getelementptr inbounds [6 x i32*]* %59, i32 0, i64 %57
  %61 = load i32** %60, align 8
  store i32* %61, i32** %cellList, align 8
  store i32 0, i32* %nBuf, align 4
  store i32 0, i32* %iCell, align 4
  br label %62

; <label>:62                                      ; preds = %223, %0
  %63 = load i32* %iCell, align 4
  %64 = load i32* %nCells, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %226

; <label>:66                                      ; preds = %62
  %67 = load i32* %iCell, align 4
  %68 = sext i32 %67 to i64
  %69 = load i32** %cellList, align 8
  %70 = getelementptr inbounds i32* %69, i64 %68
  %71 = load i32* %70, align 4
  store i32 %71, i32* %iBox, align 4
  %72 = load i32* %iBox, align 4
  %73 = mul nsw i32 %72, 64
  store i32 %73, i32* %iOff, align 4
  %74 = load i32* %iOff, align 4
  store i32 %74, i32* %ii, align 4
  br label %75

; <label>:75                                      ; preds = %219, %66
  %76 = load i32* %ii, align 4
  %77 = load i32* %iOff, align 4
  %78 = load i32* %iBox, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.SimFlatSt** %s, align 8
  %81 = getelementptr inbounds %struct.SimFlatSt* %80, i32 0, i32 4
  %82 = load %struct.LinkCellSt** %81, align 8
  %83 = getelementptr inbounds %struct.LinkCellSt* %82, i32 0, i32 8
  %84 = load i32** %83, align 8
  %85 = getelementptr inbounds i32* %84, i64 %79
  %86 = load i32* %85, align 4
  %87 = add nsw i32 %77, %86
  %88 = icmp slt i32 %76, %87
  br i1 %88, label %89, label %222

; <label>:89                                      ; preds = %75
  %90 = load i32* %ii, align 4
  %91 = sext i32 %90 to i64
  %92 = load %struct.SimFlatSt** %s, align 8
  %93 = getelementptr inbounds %struct.SimFlatSt* %92, i32 0, i32 5
  %94 = load %struct.AtomsSt** %93, align 8
  %95 = getelementptr inbounds %struct.AtomsSt* %94, i32 0, i32 2
  %96 = load i32** %95, align 8
  %97 = getelementptr inbounds i32* %96, i64 %91
  %98 = load i32* %97, align 4
  %99 = load i32* %nBuf, align 4
  %100 = sext i32 %99 to i64
  %101 = load %struct.AtomMsgSt** %buf, align 8
  %102 = getelementptr inbounds %struct.AtomMsgSt* %101, i64 %100
  %103 = getelementptr inbounds %struct.AtomMsgSt* %102, i32 0, i32 0
  store i32 %98, i32* %103, align 4
  %104 = load i32* %ii, align 4
  %105 = sext i32 %104 to i64
  %106 = load %struct.SimFlatSt** %s, align 8
  %107 = getelementptr inbounds %struct.SimFlatSt* %106, i32 0, i32 5
  %108 = load %struct.AtomsSt** %107, align 8
  %109 = getelementptr inbounds %struct.AtomsSt* %108, i32 0, i32 3
  %110 = load i32** %109, align 8
  %111 = getelementptr inbounds i32* %110, i64 %105
  %112 = load i32* %111, align 4
  %113 = load i32* %nBuf, align 4
  %114 = sext i32 %113 to i64
  %115 = load %struct.AtomMsgSt** %buf, align 8
  %116 = getelementptr inbounds %struct.AtomMsgSt* %115, i64 %114
  %117 = getelementptr inbounds %struct.AtomMsgSt* %116, i32 0, i32 1
  store i32 %112, i32* %117, align 4
  %118 = load i32* %ii, align 4
  %119 = sext i32 %118 to i64
  %120 = load %struct.SimFlatSt** %s, align 8
  %121 = getelementptr inbounds %struct.SimFlatSt* %120, i32 0, i32 5
  %122 = load %struct.AtomsSt** %121, align 8
  %123 = getelementptr inbounds %struct.AtomsSt* %122, i32 0, i32 4
  %124 = load [3 x double]** %123, align 8
  %125 = getelementptr inbounds [3 x double]* %124, i64 %119
  %126 = getelementptr inbounds [3 x double]* %125, i32 0, i64 0
  %127 = load double* %126, align 8
  %128 = getelementptr inbounds [3 x double]* %shift, i32 0, i64 0
  %129 = load double* %128, align 8
  %130 = fadd double %127, %129
  %131 = load i32* %nBuf, align 4
  %132 = sext i32 %131 to i64
  %133 = load %struct.AtomMsgSt** %buf, align 8
  %134 = getelementptr inbounds %struct.AtomMsgSt* %133, i64 %132
  %135 = getelementptr inbounds %struct.AtomMsgSt* %134, i32 0, i32 2
  store double %130, double* %135, align 8
  %136 = load i32* %ii, align 4
  %137 = sext i32 %136 to i64
  %138 = load %struct.SimFlatSt** %s, align 8
  %139 = getelementptr inbounds %struct.SimFlatSt* %138, i32 0, i32 5
  %140 = load %struct.AtomsSt** %139, align 8
  %141 = getelementptr inbounds %struct.AtomsSt* %140, i32 0, i32 4
  %142 = load [3 x double]** %141, align 8
  %143 = getelementptr inbounds [3 x double]* %142, i64 %137
  %144 = getelementptr inbounds [3 x double]* %143, i32 0, i64 1
  %145 = load double* %144, align 8
  %146 = getelementptr inbounds [3 x double]* %shift, i32 0, i64 1
  %147 = load double* %146, align 8
  %148 = fadd double %145, %147
  %149 = load i32* %nBuf, align 4
  %150 = sext i32 %149 to i64
  %151 = load %struct.AtomMsgSt** %buf, align 8
  %152 = getelementptr inbounds %struct.AtomMsgSt* %151, i64 %150
  %153 = getelementptr inbounds %struct.AtomMsgSt* %152, i32 0, i32 3
  store double %148, double* %153, align 8
  %154 = load i32* %ii, align 4
  %155 = sext i32 %154 to i64
  %156 = load %struct.SimFlatSt** %s, align 8
  %157 = getelementptr inbounds %struct.SimFlatSt* %156, i32 0, i32 5
  %158 = load %struct.AtomsSt** %157, align 8
  %159 = getelementptr inbounds %struct.AtomsSt* %158, i32 0, i32 4
  %160 = load [3 x double]** %159, align 8
  %161 = getelementptr inbounds [3 x double]* %160, i64 %155
  %162 = getelementptr inbounds [3 x double]* %161, i32 0, i64 2
  %163 = load double* %162, align 8
  %164 = getelementptr inbounds [3 x double]* %shift, i32 0, i64 2
  %165 = load double* %164, align 8
  %166 = fadd double %163, %165
  %167 = load i32* %nBuf, align 4
  %168 = sext i32 %167 to i64
  %169 = load %struct.AtomMsgSt** %buf, align 8
  %170 = getelementptr inbounds %struct.AtomMsgSt* %169, i64 %168
  %171 = getelementptr inbounds %struct.AtomMsgSt* %170, i32 0, i32 4
  store double %166, double* %171, align 8
  %172 = load i32* %ii, align 4
  %173 = sext i32 %172 to i64
  %174 = load %struct.SimFlatSt** %s, align 8
  %175 = getelementptr inbounds %struct.SimFlatSt* %174, i32 0, i32 5
  %176 = load %struct.AtomsSt** %175, align 8
  %177 = getelementptr inbounds %struct.AtomsSt* %176, i32 0, i32 5
  %178 = load [3 x double]** %177, align 8
  %179 = getelementptr inbounds [3 x double]* %178, i64 %173
  %180 = getelementptr inbounds [3 x double]* %179, i32 0, i64 0
  %181 = load double* %180, align 8
  %182 = load i32* %nBuf, align 4
  %183 = sext i32 %182 to i64
  %184 = load %struct.AtomMsgSt** %buf, align 8
  %185 = getelementptr inbounds %struct.AtomMsgSt* %184, i64 %183
  %186 = getelementptr inbounds %struct.AtomMsgSt* %185, i32 0, i32 5
  store double %181, double* %186, align 8
  %187 = load i32* %ii, align 4
  %188 = sext i32 %187 to i64
  %189 = load %struct.SimFlatSt** %s, align 8
  %190 = getelementptr inbounds %struct.SimFlatSt* %189, i32 0, i32 5
  %191 = load %struct.AtomsSt** %190, align 8
  %192 = getelementptr inbounds %struct.AtomsSt* %191, i32 0, i32 5
  %193 = load [3 x double]** %192, align 8
  %194 = getelementptr inbounds [3 x double]* %193, i64 %188
  %195 = getelementptr inbounds [3 x double]* %194, i32 0, i64 1
  %196 = load double* %195, align 8
  %197 = load i32* %nBuf, align 4
  %198 = sext i32 %197 to i64
  %199 = load %struct.AtomMsgSt** %buf, align 8
  %200 = getelementptr inbounds %struct.AtomMsgSt* %199, i64 %198
  %201 = getelementptr inbounds %struct.AtomMsgSt* %200, i32 0, i32 6
  store double %196, double* %201, align 8
  %202 = load i32* %ii, align 4
  %203 = sext i32 %202 to i64
  %204 = load %struct.SimFlatSt** %s, align 8
  %205 = getelementptr inbounds %struct.SimFlatSt* %204, i32 0, i32 5
  %206 = load %struct.AtomsSt** %205, align 8
  %207 = getelementptr inbounds %struct.AtomsSt* %206, i32 0, i32 5
  %208 = load [3 x double]** %207, align 8
  %209 = getelementptr inbounds [3 x double]* %208, i64 %203
  %210 = getelementptr inbounds [3 x double]* %209, i32 0, i64 2
  %211 = load double* %210, align 8
  %212 = load i32* %nBuf, align 4
  %213 = sext i32 %212 to i64
  %214 = load %struct.AtomMsgSt** %buf, align 8
  %215 = getelementptr inbounds %struct.AtomMsgSt* %214, i64 %213
  %216 = getelementptr inbounds %struct.AtomMsgSt* %215, i32 0, i32 7
  store double %211, double* %216, align 8
  %217 = load i32* %nBuf, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %nBuf, align 4
  br label %219

; <label>:219                                     ; preds = %89
  %220 = load i32* %ii, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %ii, align 4
  br label %75

; <label>:222                                     ; preds = %75
  br label %223

; <label>:223                                     ; preds = %222
  %224 = load i32* %iCell, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %iCell, align 4
  br label %62

; <label>:226                                     ; preds = %62
  %227 = load i32* %nBuf, align 4
  %228 = sext i32 %227 to i64
  %229 = mul i64 %228, 56
  %230 = trunc i64 %229 to i32
  ret i32 %230
}

; Function Attrs: nounwind uwtable
define internal void @unloadAtomsBuffer(i8* %vparms, i8* %data, i32 %face, i32 %bufSize, i8* %charBuf) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %parms = alloca %struct.AtomExchangeParmsSt*, align 8
  %s = alloca %struct.SimFlatSt*, align 8
  %buf = alloca %struct.AtomMsgSt*, align 8
  %nBuf = alloca i32, align 4
  %ii = alloca i32, align 4
  %gid = alloca i32, align 4
  %type = alloca i32, align 4
  %rx = alloca double, align 8
  %ry = alloca double, align 8
  %rz = alloca double, align 8
  %px = alloca double, align 8
  %py = alloca double, align 8
  %pz = alloca double, align 8
  store i8* %vparms, i8** %1, align 8
  store i8* %data, i8** %2, align 8
  store i32 %face, i32* %3, align 4
  store i32 %bufSize, i32* %4, align 4
  store i8* %charBuf, i8** %5, align 8
  %6 = load i8** %1, align 8
  %7 = bitcast i8* %6 to %struct.AtomExchangeParmsSt*
  store %struct.AtomExchangeParmsSt* %7, %struct.AtomExchangeParmsSt** %parms, align 8
  %8 = load i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.SimFlatSt*
  store %struct.SimFlatSt* %9, %struct.SimFlatSt** %s, align 8
  %10 = load i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.AtomMsgSt*
  store %struct.AtomMsgSt* %11, %struct.AtomMsgSt** %buf, align 8
  %12 = load i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = udiv i64 %13, 56
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %nBuf, align 4
  %16 = load i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = urem i64 %17, 56
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %0
  br label %23

; <label>:21                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8]* @.str682, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str177, i32 0, i32 0), i32 412, i8* getelementptr inbounds ([57 x i8]* @__PRETTY_FUNCTION__.unloadAtomsBuffer, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %23

; <label>:23                                      ; preds = %22, %20
  store i32 0, i32* %ii, align 4
  br label %24

; <label>:24                                      ; preds = %91, %23
  %25 = load i32* %ii, align 4
  %26 = load i32* %nBuf, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %94

; <label>:28                                      ; preds = %24
  %29 = load i32* %ii, align 4
  %30 = sext i32 %29 to i64
  %31 = load %struct.AtomMsgSt** %buf, align 8
  %32 = getelementptr inbounds %struct.AtomMsgSt* %31, i64 %30
  %33 = getelementptr inbounds %struct.AtomMsgSt* %32, i32 0, i32 0
  %34 = load i32* %33, align 4
  store i32 %34, i32* %gid, align 4
  %35 = load i32* %ii, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.AtomMsgSt** %buf, align 8
  %38 = getelementptr inbounds %struct.AtomMsgSt* %37, i64 %36
  %39 = getelementptr inbounds %struct.AtomMsgSt* %38, i32 0, i32 1
  %40 = load i32* %39, align 4
  store i32 %40, i32* %type, align 4
  %41 = load i32* %ii, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.AtomMsgSt** %buf, align 8
  %44 = getelementptr inbounds %struct.AtomMsgSt* %43, i64 %42
  %45 = getelementptr inbounds %struct.AtomMsgSt* %44, i32 0, i32 2
  %46 = load double* %45, align 8
  store double %46, double* %rx, align 8
  %47 = load i32* %ii, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.AtomMsgSt** %buf, align 8
  %50 = getelementptr inbounds %struct.AtomMsgSt* %49, i64 %48
  %51 = getelementptr inbounds %struct.AtomMsgSt* %50, i32 0, i32 3
  %52 = load double* %51, align 8
  store double %52, double* %ry, align 8
  %53 = load i32* %ii, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.AtomMsgSt** %buf, align 8
  %56 = getelementptr inbounds %struct.AtomMsgSt* %55, i64 %54
  %57 = getelementptr inbounds %struct.AtomMsgSt* %56, i32 0, i32 4
  %58 = load double* %57, align 8
  store double %58, double* %rz, align 8
  %59 = load i32* %ii, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.AtomMsgSt** %buf, align 8
  %62 = getelementptr inbounds %struct.AtomMsgSt* %61, i64 %60
  %63 = getelementptr inbounds %struct.AtomMsgSt* %62, i32 0, i32 5
  %64 = load double* %63, align 8
  store double %64, double* %px, align 8
  %65 = load i32* %ii, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.AtomMsgSt** %buf, align 8
  %68 = getelementptr inbounds %struct.AtomMsgSt* %67, i64 %66
  %69 = getelementptr inbounds %struct.AtomMsgSt* %68, i32 0, i32 6
  %70 = load double* %69, align 8
  store double %70, double* %py, align 8
  %71 = load i32* %ii, align 4
  %72 = sext i32 %71 to i64
  %73 = load %struct.AtomMsgSt** %buf, align 8
  %74 = getelementptr inbounds %struct.AtomMsgSt* %73, i64 %72
  %75 = getelementptr inbounds %struct.AtomMsgSt* %74, i32 0, i32 7
  %76 = load double* %75, align 8
  store double %76, double* %pz, align 8
  %77 = load %struct.SimFlatSt** %s, align 8
  %78 = getelementptr inbounds %struct.SimFlatSt* %77, i32 0, i32 4
  %79 = load %struct.LinkCellSt** %78, align 8
  %80 = load %struct.SimFlatSt** %s, align 8
  %81 = getelementptr inbounds %struct.SimFlatSt* %80, i32 0, i32 5
  %82 = load %struct.AtomsSt** %81, align 8
  %83 = load i32* %gid, align 4
  %84 = load i32* %type, align 4
  %85 = load double* %rx, align 8
  %86 = load double* %ry, align 8
  %87 = load double* %rz, align 8
  %88 = load double* %px, align 8
  %89 = load double* %py, align 8
  %90 = load double* %pz, align 8
  call void @putAtomInBox(%struct.LinkCellSt* %79, %struct.AtomsSt* %82, i32 %83, i32 %84, double %85, double %86, double %87, double %88, double %89, double %90)
  br label %91

; <label>:91                                      ; preds = %28
  %92 = load i32* %ii, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %ii, align 4
  br label %24

; <label>:94                                      ; preds = %24
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @destroyAtomsExchange(i8* %vparms) #0 {
  %1 = alloca i8*, align 8
  %parms = alloca %struct.AtomExchangeParmsSt*, align 8
  %ii = alloca i32, align 4
  store i8* %vparms, i8** %1, align 8
  %2 = load i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.AtomExchangeParmsSt*
  store %struct.AtomExchangeParmsSt* %3, %struct.AtomExchangeParmsSt** %parms, align 8
  store i32 0, i32* %ii, align 4
  br label %4

; <label>:4                                       ; preds = %22, %0
  %5 = load i32* %ii, align 4
  %6 = icmp slt i32 %5, 6
  br i1 %6, label %7, label %25

; <label>:7                                       ; preds = %4
  %8 = load i32* %ii, align 4
  %9 = sext i32 %8 to i64
  %10 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %11 = getelementptr inbounds %struct.AtomExchangeParmsSt* %10, i32 0, i32 2
  %12 = getelementptr inbounds [6 x double*]* %11, i32 0, i64 %9
  %13 = load double** %12, align 8
  %14 = bitcast double* %13 to i8*
  call void @comdFree92(i8* %14)
  %15 = load i32* %ii, align 4
  %16 = sext i32 %15 to i64
  %17 = load %struct.AtomExchangeParmsSt** %parms, align 8
  %18 = getelementptr inbounds %struct.AtomExchangeParmsSt* %17, i32 0, i32 1
  %19 = getelementptr inbounds [6 x i32*]* %18, i32 0, i64 %16
  %20 = load i32** %19, align 8
  %21 = bitcast i32* %20 to i8*
  call void @comdFree92(i8* %21)
  br label %22

; <label>:22                                      ; preds = %7
  %23 = load i32* %ii, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %ii, align 4
  br label %4

; <label>:25                                      ; preds = %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @comdMalloc91(i64 %iSize) #0 {
  %1 = alloca i64, align 8
  store i64 %iSize, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = call noalias i8* @malloc(i64 %2) #5
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define internal i32* @mkAtomCellList(%struct.LinkCellSt* %boxes, i32 %iFace, i32 %nCells) #0 {
  %1 = alloca %struct.LinkCellSt*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %list = alloca i32*, align 8
  %xBegin = alloca i32, align 4
  %xEnd = alloca i32, align 4
  %yBegin = alloca i32, align 4
  %yEnd = alloca i32, align 4
  %zBegin = alloca i32, align 4
  %zEnd = alloca i32, align 4
  %count = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %iz = alloca i32, align 4
  store %struct.LinkCellSt* %boxes, %struct.LinkCellSt** %1, align 8
  store i32 %iFace, i32* %2, align 4
  store i32 %nCells, i32* %3, align 4
  %4 = load i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 4
  %7 = call i8* @comdMalloc91(i64 %6)
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %list, align 8
  store i32 -1, i32* %xBegin, align 4
  %9 = load %struct.LinkCellSt** %1, align 8
  %10 = getelementptr inbounds %struct.LinkCellSt* %9, i32 0, i32 0
  %11 = getelementptr inbounds [3 x i32]* %10, i32 0, i64 0
  %12 = load i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %xEnd, align 4
  store i32 -1, i32* %yBegin, align 4
  %14 = load %struct.LinkCellSt** %1, align 8
  %15 = getelementptr inbounds %struct.LinkCellSt* %14, i32 0, i32 0
  %16 = getelementptr inbounds [3 x i32]* %15, i32 0, i64 1
  %17 = load i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %yEnd, align 4
  store i32 -1, i32* %zBegin, align 4
  %19 = load %struct.LinkCellSt** %1, align 8
  %20 = getelementptr inbounds %struct.LinkCellSt* %19, i32 0, i32 0
  %21 = getelementptr inbounds [3 x i32]* %20, i32 0, i64 2
  %22 = load i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %zEnd, align 4
  %24 = load i32* %2, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

; <label>:26                                      ; preds = %0
  %27 = load i32* %xBegin, align 4
  %28 = add nsw i32 %27, 2
  store i32 %28, i32* %xEnd, align 4
  br label %29

; <label>:29                                      ; preds = %26, %0
  %30 = load i32* %2, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %35

; <label>:32                                      ; preds = %29
  %33 = load i32* %xEnd, align 4
  %34 = sub nsw i32 %33, 2
  store i32 %34, i32* %xBegin, align 4
  br label %35

; <label>:35                                      ; preds = %32, %29
  %36 = load i32* %2, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %41

; <label>:38                                      ; preds = %35
  %39 = load i32* %yBegin, align 4
  %40 = add nsw i32 %39, 2
  store i32 %40, i32* %yEnd, align 4
  br label %41

; <label>:41                                      ; preds = %38, %35
  %42 = load i32* %2, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %47

; <label>:44                                      ; preds = %41
  %45 = load i32* %yEnd, align 4
  %46 = sub nsw i32 %45, 2
  store i32 %46, i32* %yBegin, align 4
  br label %47

; <label>:47                                      ; preds = %44, %41
  %48 = load i32* %2, align 4
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %50, label %53

; <label>:50                                      ; preds = %47
  %51 = load i32* %zBegin, align 4
  %52 = add nsw i32 %51, 2
  store i32 %52, i32* %zEnd, align 4
  br label %53

; <label>:53                                      ; preds = %50, %47
  %54 = load i32* %2, align 4
  %55 = icmp eq i32 %54, 5
  br i1 %55, label %56, label %59

; <label>:56                                      ; preds = %53
  %57 = load i32* %zEnd, align 4
  %58 = sub nsw i32 %57, 2
  store i32 %58, i32* %zBegin, align 4
  br label %59

; <label>:59                                      ; preds = %56, %53
  store i32 0, i32* %count, align 4
  %60 = load i32* %xBegin, align 4
  store i32 %60, i32* %ix, align 4
  br label %61

; <label>:61                                      ; preds = %96, %59
  %62 = load i32* %ix, align 4
  %63 = load i32* %xEnd, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %99

; <label>:65                                      ; preds = %61
  %66 = load i32* %yBegin, align 4
  store i32 %66, i32* %iy, align 4
  br label %67

; <label>:67                                      ; preds = %92, %65
  %68 = load i32* %iy, align 4
  %69 = load i32* %yEnd, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %95

; <label>:71                                      ; preds = %67
  %72 = load i32* %zBegin, align 4
  store i32 %72, i32* %iz, align 4
  br label %73

; <label>:73                                      ; preds = %88, %71
  %74 = load i32* %iz, align 4
  %75 = load i32* %zEnd, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %91

; <label>:77                                      ; preds = %73
  %78 = load %struct.LinkCellSt** %1, align 8
  %79 = load i32* %ix, align 4
  %80 = load i32* %iy, align 4
  %81 = load i32* %iz, align 4
  %82 = call i32 @getBoxFromTuple(%struct.LinkCellSt* %78, i32 %79, i32 %80, i32 %81)
  %83 = load i32* %count, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %count, align 4
  %85 = sext i32 %83 to i64
  %86 = load i32** %list, align 8
  %87 = getelementptr inbounds i32* %86, i64 %85
  store i32 %82, i32* %87, align 4
  br label %88

; <label>:88                                      ; preds = %77
  %89 = load i32* %iz, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %iz, align 4
  br label %73

; <label>:91                                      ; preds = %73
  br label %92

; <label>:92                                      ; preds = %91
  %93 = load i32* %iy, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %iy, align 4
  br label %67

; <label>:95                                      ; preds = %67
  br label %96

; <label>:96                                      ; preds = %95
  %97 = load i32* %ix, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %ix, align 4
  br label %61

; <label>:99                                      ; preds = %61
  %100 = load i32* %count, align 4
  %101 = load i32* %3, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

; <label>:103                                     ; preds = %99
  br label %106

; <label>:104                                     ; preds = %99
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8]* @.str581, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str177, i32 0, i32 0), i32 350, i8* getelementptr inbounds ([63 x i8]* @__PRETTY_FUNCTION__.mkAtomCellList, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %106

; <label>:106                                     ; preds = %105, %103
  %107 = load i32** %list, align 8
  ret i32* %107
}

; Function Attrs: nounwind uwtable
define internal i32 @loadForceBuffer(i8* %vparms, i8* %vdata, i32 %face, i8* %charBuf) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %parms = alloca %struct.ForceExchangeParmsSt*, align 8
  %data = alloca %struct.ForceExchangeDataSt*, align 8
  %buf = alloca %struct.ForceMsgSt*, align 8
  %nCells = alloca i32, align 4
  %cellList = alloca i32*, align 8
  %nBuf = alloca i32, align 4
  %iCell = alloca i32, align 4
  %iBox = alloca i32, align 4
  %iOff = alloca i32, align 4
  %ii = alloca i32, align 4
  store i8* %vparms, i8** %1, align 8
  store i8* %vdata, i8** %2, align 8
  store i32 %face, i32* %3, align 4
  store i8* %charBuf, i8** %4, align 8
  %5 = load i8** %1, align 8
  %6 = bitcast i8* %5 to %struct.ForceExchangeParmsSt*
  store %struct.ForceExchangeParmsSt* %6, %struct.ForceExchangeParmsSt** %parms, align 8
  %7 = load i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.ForceExchangeDataSt*
  store %struct.ForceExchangeDataSt* %8, %struct.ForceExchangeDataSt** %data, align 8
  %9 = load i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ForceMsgSt*
  store %struct.ForceMsgSt* %10, %struct.ForceMsgSt** %buf, align 8
  %11 = load i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = load %struct.ForceExchangeParmsSt** %parms, align 8
  %14 = getelementptr inbounds %struct.ForceExchangeParmsSt* %13, i32 0, i32 0
  %15 = getelementptr inbounds [6 x i32]* %14, i32 0, i64 %12
  %16 = load i32* %15, align 4
  store i32 %16, i32* %nCells, align 4
  %17 = load i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = load %struct.ForceExchangeParmsSt** %parms, align 8
  %20 = getelementptr inbounds %struct.ForceExchangeParmsSt* %19, i32 0, i32 1
  %21 = getelementptr inbounds [6 x i32*]* %20, i32 0, i64 %18
  %22 = load i32** %21, align 8
  store i32* %22, i32** %cellList, align 8
  store i32 0, i32* %nBuf, align 4
  store i32 0, i32* %iCell, align 4
  br label %23

; <label>:23                                      ; preds = %69, %0
  %24 = load i32* %iCell, align 4
  %25 = load i32* %nCells, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %72

; <label>:27                                      ; preds = %23
  %28 = load i32* %iCell, align 4
  %29 = sext i32 %28 to i64
  %30 = load i32** %cellList, align 8
  %31 = getelementptr inbounds i32* %30, i64 %29
  %32 = load i32* %31, align 4
  store i32 %32, i32* %iBox, align 4
  %33 = load i32* %iBox, align 4
  %34 = mul nsw i32 %33, 64
  store i32 %34, i32* %iOff, align 4
  %35 = load i32* %iOff, align 4
  store i32 %35, i32* %ii, align 4
  br label %36

; <label>:36                                      ; preds = %65, %27
  %37 = load i32* %ii, align 4
  %38 = load i32* %iOff, align 4
  %39 = load i32* %iBox, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.ForceExchangeDataSt** %data, align 8
  %42 = getelementptr inbounds %struct.ForceExchangeDataSt* %41, i32 0, i32 1
  %43 = load %struct.LinkCellSt** %42, align 8
  %44 = getelementptr inbounds %struct.LinkCellSt* %43, i32 0, i32 8
  %45 = load i32** %44, align 8
  %46 = getelementptr inbounds i32* %45, i64 %40
  %47 = load i32* %46, align 4
  %48 = add nsw i32 %38, %47
  %49 = icmp slt i32 %37, %48
  br i1 %49, label %50, label %68

; <label>:50                                      ; preds = %36
  %51 = load i32* %ii, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.ForceExchangeDataSt** %data, align 8
  %54 = getelementptr inbounds %struct.ForceExchangeDataSt* %53, i32 0, i32 0
  %55 = load double** %54, align 8
  %56 = getelementptr inbounds double* %55, i64 %52
  %57 = load double* %56, align 8
  %58 = load i32* %nBuf, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.ForceMsgSt** %buf, align 8
  %61 = getelementptr inbounds %struct.ForceMsgSt* %60, i64 %59
  %62 = getelementptr inbounds %struct.ForceMsgSt* %61, i32 0, i32 0
  store double %57, double* %62, align 8
  %63 = load i32* %nBuf, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %nBuf, align 4
  br label %65

; <label>:65                                      ; preds = %50
  %66 = load i32* %ii, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %ii, align 4
  br label %36

; <label>:68                                      ; preds = %36
  br label %69

; <label>:69                                      ; preds = %68
  %70 = load i32* %iCell, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %iCell, align 4
  br label %23

; <label>:72                                      ; preds = %23
  %73 = load i32* %nBuf, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 8
  %76 = trunc i64 %75 to i32
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define internal void @unloadForceBuffer(i8* %vparms, i8* %vdata, i32 %face, i32 %bufSize, i8* %charBuf) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %parms = alloca %struct.ForceExchangeParmsSt*, align 8
  %data = alloca %struct.ForceExchangeDataSt*, align 8
  %buf = alloca %struct.ForceMsgSt*, align 8
  %nCells = alloca i32, align 4
  %cellList = alloca i32*, align 8
  %iBuf = alloca i32, align 4
  %iCell = alloca i32, align 4
  %iBox = alloca i32, align 4
  %iOff = alloca i32, align 4
  %ii = alloca i32, align 4
  store i8* %vparms, i8** %1, align 8
  store i8* %vdata, i8** %2, align 8
  store i32 %face, i32* %3, align 4
  store i32 %bufSize, i32* %4, align 4
  store i8* %charBuf, i8** %5, align 8
  %6 = load i8** %1, align 8
  %7 = bitcast i8* %6 to %struct.ForceExchangeParmsSt*
  store %struct.ForceExchangeParmsSt* %7, %struct.ForceExchangeParmsSt** %parms, align 8
  %8 = load i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.ForceExchangeDataSt*
  store %struct.ForceExchangeDataSt* %9, %struct.ForceExchangeDataSt** %data, align 8
  %10 = load i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ForceMsgSt*
  store %struct.ForceMsgSt* %11, %struct.ForceMsgSt** %buf, align 8
  %12 = load i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = urem i64 %13, 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %0
  br label %19

; <label>:17                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([32 x i8]* @.str278, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str177, i32 0, i32 0), i32 576, i8* getelementptr inbounds ([57 x i8]* @__PRETTY_FUNCTION__.unloadForceBuffer, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %19

; <label>:19                                      ; preds = %18, %16
  %20 = load i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = load %struct.ForceExchangeParmsSt** %parms, align 8
  %23 = getelementptr inbounds %struct.ForceExchangeParmsSt* %22, i32 0, i32 0
  %24 = getelementptr inbounds [6 x i32]* %23, i32 0, i64 %21
  %25 = load i32* %24, align 4
  store i32 %25, i32* %nCells, align 4
  %26 = load i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.ForceExchangeParmsSt** %parms, align 8
  %29 = getelementptr inbounds %struct.ForceExchangeParmsSt* %28, i32 0, i32 2
  %30 = getelementptr inbounds [6 x i32*]* %29, i32 0, i64 %27
  %31 = load i32** %30, align 8
  store i32* %31, i32** %cellList, align 8
  store i32 0, i32* %iBuf, align 4
  store i32 0, i32* %iCell, align 4
  br label %32

; <label>:32                                      ; preds = %78, %19
  %33 = load i32* %iCell, align 4
  %34 = load i32* %nCells, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %81

; <label>:36                                      ; preds = %32
  %37 = load i32* %iCell, align 4
  %38 = sext i32 %37 to i64
  %39 = load i32** %cellList, align 8
  %40 = getelementptr inbounds i32* %39, i64 %38
  %41 = load i32* %40, align 4
  store i32 %41, i32* %iBox, align 4
  %42 = load i32* %iBox, align 4
  %43 = mul nsw i32 %42, 64
  store i32 %43, i32* %iOff, align 4
  %44 = load i32* %iOff, align 4
  store i32 %44, i32* %ii, align 4
  br label %45

; <label>:45                                      ; preds = %74, %36
  %46 = load i32* %ii, align 4
  %47 = load i32* %iOff, align 4
  %48 = load i32* %iBox, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.ForceExchangeDataSt** %data, align 8
  %51 = getelementptr inbounds %struct.ForceExchangeDataSt* %50, i32 0, i32 1
  %52 = load %struct.LinkCellSt** %51, align 8
  %53 = getelementptr inbounds %struct.LinkCellSt* %52, i32 0, i32 8
  %54 = load i32** %53, align 8
  %55 = getelementptr inbounds i32* %54, i64 %49
  %56 = load i32* %55, align 4
  %57 = add nsw i32 %47, %56
  %58 = icmp slt i32 %46, %57
  br i1 %58, label %59, label %77

; <label>:59                                      ; preds = %45
  %60 = load i32* %iBuf, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.ForceMsgSt** %buf, align 8
  %63 = getelementptr inbounds %struct.ForceMsgSt* %62, i64 %61
  %64 = getelementptr inbounds %struct.ForceMsgSt* %63, i32 0, i32 0
  %65 = load double* %64, align 8
  %66 = load i32* %ii, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.ForceExchangeDataSt** %data, align 8
  %69 = getelementptr inbounds %struct.ForceExchangeDataSt* %68, i32 0, i32 0
  %70 = load double** %69, align 8
  %71 = getelementptr inbounds double* %70, i64 %67
  store double %65, double* %71, align 8
  %72 = load i32* %iBuf, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %iBuf, align 4
  br label %74

; <label>:74                                      ; preds = %59
  %75 = load i32* %ii, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %ii, align 4
  br label %45

; <label>:77                                      ; preds = %45
  br label %78

; <label>:78                                      ; preds = %77
  %79 = load i32* %iCell, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %iCell, align 4
  br label %32

; <label>:81                                      ; preds = %32
  %82 = load i32* %iBuf, align 4
  %83 = sext i32 %82 to i64
  %84 = load i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = udiv i64 %85, 8
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %81
  br label %91

; <label>:89                                      ; preds = %81
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8]* @.str379, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str177, i32 0, i32 0), i32 591, i8* getelementptr inbounds ([57 x i8]* @__PRETTY_FUNCTION__.unloadForceBuffer, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %91

; <label>:91                                      ; preds = %90, %88
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @destroyForceExchange(i8* %vparms) #0 {
  %1 = alloca i8*, align 8
  %parms = alloca %struct.ForceExchangeParmsSt*, align 8
  %ii = alloca i32, align 4
  store i8* %vparms, i8** %1, align 8
  %2 = load i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.ForceExchangeParmsSt*
  store %struct.ForceExchangeParmsSt* %3, %struct.ForceExchangeParmsSt** %parms, align 8
  store i32 0, i32* %ii, align 4
  br label %4

; <label>:4                                       ; preds = %22, %0
  %5 = load i32* %ii, align 4
  %6 = icmp slt i32 %5, 6
  br i1 %6, label %7, label %25

; <label>:7                                       ; preds = %4
  %8 = load i32* %ii, align 4
  %9 = sext i32 %8 to i64
  %10 = load %struct.ForceExchangeParmsSt** %parms, align 8
  %11 = getelementptr inbounds %struct.ForceExchangeParmsSt* %10, i32 0, i32 1
  %12 = getelementptr inbounds [6 x i32*]* %11, i32 0, i64 %9
  %13 = load i32** %12, align 8
  %14 = bitcast i32* %13 to i8*
  call void @comdFree92(i8* %14)
  %15 = load i32* %ii, align 4
  %16 = sext i32 %15 to i64
  %17 = load %struct.ForceExchangeParmsSt** %parms, align 8
  %18 = getelementptr inbounds %struct.ForceExchangeParmsSt* %17, i32 0, i32 2
  %19 = getelementptr inbounds [6 x i32*]* %18, i32 0, i64 %16
  %20 = load i32** %19, align 8
  %21 = bitcast i32* %20 to i8*
  call void @comdFree92(i8* %21)
  br label %22

; <label>:22                                      ; preds = %7
  %23 = load i32* %ii, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %ii, align 4
  br label %4

; <label>:25                                      ; preds = %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32* @mkForceSendCellList(%struct.LinkCellSt* %boxes, i32 %face, i32 %nCells) #0 {
  %1 = alloca %struct.LinkCellSt*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %list = alloca i32*, align 8
  %xBegin = alloca i32, align 4
  %xEnd = alloca i32, align 4
  %yBegin = alloca i32, align 4
  %yEnd = alloca i32, align 4
  %zBegin = alloca i32, align 4
  %zEnd = alloca i32, align 4
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %count = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %iz = alloca i32, align 4
  store %struct.LinkCellSt* %boxes, %struct.LinkCellSt** %1, align 8
  store i32 %face, i32* %2, align 4
  store i32 %nCells, i32* %3, align 4
  %4 = load i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 4
  %7 = call i8* @comdMalloc91(i64 %6)
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %list, align 8
  %9 = load %struct.LinkCellSt** %1, align 8
  %10 = getelementptr inbounds %struct.LinkCellSt* %9, i32 0, i32 0
  %11 = getelementptr inbounds [3 x i32]* %10, i32 0, i64 0
  %12 = load i32* %11, align 4
  store i32 %12, i32* %nx, align 4
  %13 = load %struct.LinkCellSt** %1, align 8
  %14 = getelementptr inbounds %struct.LinkCellSt* %13, i32 0, i32 0
  %15 = getelementptr inbounds [3 x i32]* %14, i32 0, i64 1
  %16 = load i32* %15, align 4
  store i32 %16, i32* %ny, align 4
  %17 = load %struct.LinkCellSt** %1, align 8
  %18 = getelementptr inbounds %struct.LinkCellSt* %17, i32 0, i32 0
  %19 = getelementptr inbounds [3 x i32]* %18, i32 0, i64 2
  %20 = load i32* %19, align 4
  store i32 %20, i32* %nz, align 4
  %21 = load i32* %2, align 4
  switch i32 %21, label %55 [
    i32 0, label %22
    i32 1, label %25
    i32 2, label %31
    i32 3, label %35
    i32 4, label %42
    i32 5, label %47
  ]

; <label>:22                                      ; preds = %0
  store i32 0, i32* %xBegin, align 4
  store i32 1, i32* %xEnd, align 4
  store i32 0, i32* %yBegin, align 4
  %23 = load i32* %ny, align 4
  store i32 %23, i32* %yEnd, align 4
  store i32 0, i32* %zBegin, align 4
  %24 = load i32* %nz, align 4
  store i32 %24, i32* %zEnd, align 4
  br label %56

; <label>:25                                      ; preds = %0
  %26 = load i32* %nx, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %xBegin, align 4
  %28 = load i32* %nx, align 4
  store i32 %28, i32* %xEnd, align 4
  store i32 0, i32* %yBegin, align 4
  %29 = load i32* %ny, align 4
  store i32 %29, i32* %yEnd, align 4
  store i32 0, i32* %zBegin, align 4
  %30 = load i32* %nz, align 4
  store i32 %30, i32* %zEnd, align 4
  br label %56

; <label>:31                                      ; preds = %0
  store i32 -1, i32* %xBegin, align 4
  %32 = load i32* %nx, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %xEnd, align 4
  store i32 0, i32* %yBegin, align 4
  store i32 1, i32* %yEnd, align 4
  store i32 0, i32* %zBegin, align 4
  %34 = load i32* %nz, align 4
  store i32 %34, i32* %zEnd, align 4
  br label %56

; <label>:35                                      ; preds = %0
  store i32 -1, i32* %xBegin, align 4
  %36 = load i32* %nx, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %xEnd, align 4
  %38 = load i32* %ny, align 4
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %yBegin, align 4
  %40 = load i32* %ny, align 4
  store i32 %40, i32* %yEnd, align 4
  store i32 0, i32* %zBegin, align 4
  %41 = load i32* %nz, align 4
  store i32 %41, i32* %zEnd, align 4
  br label %56

; <label>:42                                      ; preds = %0
  store i32 -1, i32* %xBegin, align 4
  %43 = load i32* %nx, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %xEnd, align 4
  store i32 -1, i32* %yBegin, align 4
  %45 = load i32* %ny, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %yEnd, align 4
  store i32 0, i32* %zBegin, align 4
  store i32 1, i32* %zEnd, align 4
  br label %56

; <label>:47                                      ; preds = %0
  store i32 -1, i32* %xBegin, align 4
  %48 = load i32* %nx, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %xEnd, align 4
  store i32 -1, i32* %yBegin, align 4
  %50 = load i32* %ny, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %yEnd, align 4
  %52 = load i32* %nz, align 4
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %zBegin, align 4
  %54 = load i32* %nz, align 4
  store i32 %54, i32* %zEnd, align 4
  br label %56

; <label>:55                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8]* @.str480, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str177, i32 0, i32 0), i32 475, i8* getelementptr inbounds ([47 x i8]* @__PRETTY_FUNCTION__.mkForceSendCellList, i32 0, i32 0)) #8
  unreachable

; <label>:56                                      ; preds = %47, %42, %35, %31, %25, %22
  store i32 0, i32* %count, align 4
  %57 = load i32* %xBegin, align 4
  store i32 %57, i32* %ix, align 4
  br label %58

; <label>:58                                      ; preds = %93, %56
  %59 = load i32* %ix, align 4
  %60 = load i32* %xEnd, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %96

; <label>:62                                      ; preds = %58
  %63 = load i32* %yBegin, align 4
  store i32 %63, i32* %iy, align 4
  br label %64

; <label>:64                                      ; preds = %89, %62
  %65 = load i32* %iy, align 4
  %66 = load i32* %yEnd, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %92

; <label>:68                                      ; preds = %64
  %69 = load i32* %zBegin, align 4
  store i32 %69, i32* %iz, align 4
  br label %70

; <label>:70                                      ; preds = %85, %68
  %71 = load i32* %iz, align 4
  %72 = load i32* %zEnd, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %88

; <label>:74                                      ; preds = %70
  %75 = load %struct.LinkCellSt** %1, align 8
  %76 = load i32* %ix, align 4
  %77 = load i32* %iy, align 4
  %78 = load i32* %iz, align 4
  %79 = call i32 @getBoxFromTuple(%struct.LinkCellSt* %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32* %count, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %count, align 4
  %82 = sext i32 %80 to i64
  %83 = load i32** %list, align 8
  %84 = getelementptr inbounds i32* %83, i64 %82
  store i32 %79, i32* %84, align 4
  br label %85

; <label>:85                                      ; preds = %74
  %86 = load i32* %iz, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %iz, align 4
  br label %70

; <label>:88                                      ; preds = %70
  br label %89

; <label>:89                                      ; preds = %88
  %90 = load i32* %iy, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %iy, align 4
  br label %64

; <label>:92                                      ; preds = %64
  br label %93

; <label>:93                                      ; preds = %92
  %94 = load i32* %ix, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %ix, align 4
  br label %58

; <label>:96                                      ; preds = %58
  %97 = load i32* %count, align 4
  %98 = load i32* %3, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %101

; <label>:100                                     ; preds = %96
  br label %103

; <label>:101                                     ; preds = %96
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8]* @.str581, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str177, i32 0, i32 0), i32 484, i8* getelementptr inbounds ([47 x i8]* @__PRETTY_FUNCTION__.mkForceSendCellList, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %103

; <label>:103                                     ; preds = %102, %100
  %104 = load i32** %list, align 8
  ret i32* %104
}

; Function Attrs: nounwind uwtable
define internal i32* @mkForceRecvCellList(%struct.LinkCellSt* %boxes, i32 %face, i32 %nCells) #0 {
  %1 = alloca %struct.LinkCellSt*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %list = alloca i32*, align 8
  %xBegin = alloca i32, align 4
  %xEnd = alloca i32, align 4
  %yBegin = alloca i32, align 4
  %yEnd = alloca i32, align 4
  %zBegin = alloca i32, align 4
  %zEnd = alloca i32, align 4
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %count = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %iz = alloca i32, align 4
  store %struct.LinkCellSt* %boxes, %struct.LinkCellSt** %1, align 8
  store i32 %face, i32* %2, align 4
  store i32 %nCells, i32* %3, align 4
  %4 = load i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 4
  %7 = call i8* @comdMalloc91(i64 %6)
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %list, align 8
  %9 = load %struct.LinkCellSt** %1, align 8
  %10 = getelementptr inbounds %struct.LinkCellSt* %9, i32 0, i32 0
  %11 = getelementptr inbounds [3 x i32]* %10, i32 0, i64 0
  %12 = load i32* %11, align 4
  store i32 %12, i32* %nx, align 4
  %13 = load %struct.LinkCellSt** %1, align 8
  %14 = getelementptr inbounds %struct.LinkCellSt* %13, i32 0, i32 0
  %15 = getelementptr inbounds [3 x i32]* %14, i32 0, i64 1
  %16 = load i32* %15, align 4
  store i32 %16, i32* %ny, align 4
  %17 = load %struct.LinkCellSt** %1, align 8
  %18 = getelementptr inbounds %struct.LinkCellSt* %17, i32 0, i32 0
  %19 = getelementptr inbounds [3 x i32]* %18, i32 0, i64 2
  %20 = load i32* %19, align 4
  store i32 %20, i32* %nz, align 4
  %21 = load i32* %2, align 4
  switch i32 %21, label %55 [
    i32 0, label %22
    i32 1, label %25
    i32 2, label %31
    i32 3, label %35
    i32 4, label %42
    i32 5, label %47
  ]

; <label>:22                                      ; preds = %0
  store i32 -1, i32* %xBegin, align 4
  store i32 0, i32* %xEnd, align 4
  store i32 0, i32* %yBegin, align 4
  %23 = load i32* %ny, align 4
  store i32 %23, i32* %yEnd, align 4
  store i32 0, i32* %zBegin, align 4
  %24 = load i32* %nz, align 4
  store i32 %24, i32* %zEnd, align 4
  br label %56

; <label>:25                                      ; preds = %0
  %26 = load i32* %nx, align 4
  store i32 %26, i32* %xBegin, align 4
  %27 = load i32* %nx, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %xEnd, align 4
  store i32 0, i32* %yBegin, align 4
  %29 = load i32* %ny, align 4
  store i32 %29, i32* %yEnd, align 4
  store i32 0, i32* %zBegin, align 4
  %30 = load i32* %nz, align 4
  store i32 %30, i32* %zEnd, align 4
  br label %56

; <label>:31                                      ; preds = %0
  store i32 -1, i32* %xBegin, align 4
  %32 = load i32* %nx, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %xEnd, align 4
  store i32 -1, i32* %yBegin, align 4
  store i32 0, i32* %yEnd, align 4
  store i32 0, i32* %zBegin, align 4
  %34 = load i32* %nz, align 4
  store i32 %34, i32* %zEnd, align 4
  br label %56

; <label>:35                                      ; preds = %0
  store i32 -1, i32* %xBegin, align 4
  %36 = load i32* %nx, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %xEnd, align 4
  %38 = load i32* %ny, align 4
  store i32 %38, i32* %yBegin, align 4
  %39 = load i32* %ny, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %yEnd, align 4
  store i32 0, i32* %zBegin, align 4
  %41 = load i32* %nz, align 4
  store i32 %41, i32* %zEnd, align 4
  br label %56

; <label>:42                                      ; preds = %0
  store i32 -1, i32* %xBegin, align 4
  %43 = load i32* %nx, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %xEnd, align 4
  store i32 -1, i32* %yBegin, align 4
  %45 = load i32* %ny, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %yEnd, align 4
  store i32 -1, i32* %zBegin, align 4
  store i32 0, i32* %zEnd, align 4
  br label %56

; <label>:47                                      ; preds = %0
  store i32 -1, i32* %xBegin, align 4
  %48 = load i32* %nx, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %xEnd, align 4
  store i32 -1, i32* %yBegin, align 4
  %50 = load i32* %ny, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %yEnd, align 4
  %52 = load i32* %nz, align 4
  store i32 %52, i32* %zBegin, align 4
  %53 = load i32* %nz, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %zEnd, align 4
  br label %56

; <label>:55                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8]* @.str480, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str177, i32 0, i32 0), i32 524, i8* getelementptr inbounds ([47 x i8]* @__PRETTY_FUNCTION__.mkForceRecvCellList, i32 0, i32 0)) #8
  unreachable

; <label>:56                                      ; preds = %47, %42, %35, %31, %25, %22
  store i32 0, i32* %count, align 4
  %57 = load i32* %xBegin, align 4
  store i32 %57, i32* %ix, align 4
  br label %58

; <label>:58                                      ; preds = %93, %56
  %59 = load i32* %ix, align 4
  %60 = load i32* %xEnd, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %96

; <label>:62                                      ; preds = %58
  %63 = load i32* %yBegin, align 4
  store i32 %63, i32* %iy, align 4
  br label %64

; <label>:64                                      ; preds = %89, %62
  %65 = load i32* %iy, align 4
  %66 = load i32* %yEnd, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %92

; <label>:68                                      ; preds = %64
  %69 = load i32* %zBegin, align 4
  store i32 %69, i32* %iz, align 4
  br label %70

; <label>:70                                      ; preds = %85, %68
  %71 = load i32* %iz, align 4
  %72 = load i32* %zEnd, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %88

; <label>:74                                      ; preds = %70
  %75 = load %struct.LinkCellSt** %1, align 8
  %76 = load i32* %ix, align 4
  %77 = load i32* %iy, align 4
  %78 = load i32* %iz, align 4
  %79 = call i32 @getBoxFromTuple(%struct.LinkCellSt* %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32* %count, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %count, align 4
  %82 = sext i32 %80 to i64
  %83 = load i32** %list, align 8
  %84 = getelementptr inbounds i32* %83, i64 %82
  store i32 %79, i32* %84, align 4
  br label %85

; <label>:85                                      ; preds = %74
  %86 = load i32* %iz, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %iz, align 4
  br label %70

; <label>:88                                      ; preds = %70
  br label %89

; <label>:89                                      ; preds = %88
  %90 = load i32* %iy, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %iy, align 4
  br label %64

; <label>:92                                      ; preds = %64
  br label %93

; <label>:93                                      ; preds = %92
  %94 = load i32* %ix, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %ix, align 4
  br label %58

; <label>:96                                      ; preds = %58
  %97 = load i32* %count, align 4
  %98 = load i32* %3, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %101

; <label>:100                                     ; preds = %96
  br label %103

; <label>:101                                     ; preds = %96
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8]* @.str581, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str177, i32 0, i32 0), i32 533, i8* getelementptr inbounds ([47 x i8]* @__PRETTY_FUNCTION__.mkForceRecvCellList, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %103

; <label>:103                                     ; preds = %102, %100
  %104 = load i32** %list, align 8
  ret i32* %104
}

; Function Attrs: nounwind uwtable
define internal void @comdFree92(i8* %ptr) #0 {
  %1 = alloca i8*, align 8
  store i8* %ptr, i8** %1, align 8
  %2 = load i8** %1, align 8
  call void @free(i8* %2) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @exchangeData(%struct.HaloExchangeSt* %haloExchange, i8* %data, i32 %iAxis) #0 {
  %1 = alloca %struct.HaloExchangeSt*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %faceM = alloca i32, align 4
  %faceP = alloca i32, align 4
  %sendBufM = alloca i8*, align 8
  %sendBufP = alloca i8*, align 8
  %recvBufM = alloca i8*, align 8
  %recvBufP = alloca i8*, align 8
  %nSendM = alloca i32, align 4
  %nSendP = alloca i32, align 4
  %nbrRankM = alloca i32, align 4
  %nbrRankP = alloca i32, align 4
  %nRecvM = alloca i32, align 4
  %nRecvP = alloca i32, align 4
  store %struct.HaloExchangeSt* %haloExchange, %struct.HaloExchangeSt** %1, align 8
  store i8* %data, i8** %2, align 8
  store i32 %iAxis, i32* %3, align 4
  %4 = load i32* %3, align 4
  %5 = mul nsw i32 2, %4
  store i32 %5, i32* %faceM, align 4
  %6 = load i32* %faceM, align 4
  %7 = add i32 %6, 1
  store i32 %7, i32* %faceP, align 4
  %8 = load %struct.HaloExchangeSt** %1, align 8
  %9 = getelementptr inbounds %struct.HaloExchangeSt* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = call i8* @comdMalloc91(i64 %11)
  store i8* %12, i8** %sendBufM, align 8
  %13 = load %struct.HaloExchangeSt** %1, align 8
  %14 = getelementptr inbounds %struct.HaloExchangeSt* %13, i32 0, i32 1
  %15 = load i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = call i8* @comdMalloc91(i64 %16)
  store i8* %17, i8** %sendBufP, align 8
  %18 = load %struct.HaloExchangeSt** %1, align 8
  %19 = getelementptr inbounds %struct.HaloExchangeSt* %18, i32 0, i32 1
  %20 = load i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = call i8* @comdMalloc91(i64 %21)
  store i8* %22, i8** %recvBufM, align 8
  %23 = load %struct.HaloExchangeSt** %1, align 8
  %24 = getelementptr inbounds %struct.HaloExchangeSt* %23, i32 0, i32 1
  %25 = load i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = call i8* @comdMalloc91(i64 %26)
  store i8* %27, i8** %recvBufP, align 8
  %28 = load %struct.HaloExchangeSt** %1, align 8
  %29 = getelementptr inbounds %struct.HaloExchangeSt* %28, i32 0, i32 2
  %30 = load i32 (i8*, i8*, i32, i8*)** %29, align 8
  %31 = load %struct.HaloExchangeSt** %1, align 8
  %32 = getelementptr inbounds %struct.HaloExchangeSt* %31, i32 0, i32 5
  %33 = load i8** %32, align 8
  %34 = load i8** %2, align 8
  %35 = load i32* %faceM, align 4
  %36 = load i8** %sendBufM, align 8
  %37 = call i32 %30(i8* %33, i8* %34, i32 %35, i8* %36)
  store i32 %37, i32* %nSendM, align 4
  %38 = load %struct.HaloExchangeSt** %1, align 8
  %39 = getelementptr inbounds %struct.HaloExchangeSt* %38, i32 0, i32 2
  %40 = load i32 (i8*, i8*, i32, i8*)** %39, align 8
  %41 = load %struct.HaloExchangeSt** %1, align 8
  %42 = getelementptr inbounds %struct.HaloExchangeSt* %41, i32 0, i32 5
  %43 = load i8** %42, align 8
  %44 = load i8** %2, align 8
  %45 = load i32* %faceP, align 4
  %46 = load i8** %sendBufP, align 8
  %47 = call i32 %40(i8* %43, i8* %44, i32 %45, i8* %46)
  store i32 %47, i32* %nSendP, align 4
  %48 = load i32* %faceM, align 4
  %49 = zext i32 %48 to i64
  %50 = load %struct.HaloExchangeSt** %1, align 8
  %51 = getelementptr inbounds %struct.HaloExchangeSt* %50, i32 0, i32 0
  %52 = getelementptr inbounds [6 x i32]* %51, i32 0, i64 %49
  %53 = load i32* %52, align 4
  store i32 %53, i32* %nbrRankM, align 4
  %54 = load i32* %faceP, align 4
  %55 = zext i32 %54 to i64
  %56 = load %struct.HaloExchangeSt** %1, align 8
  %57 = getelementptr inbounds %struct.HaloExchangeSt* %56, i32 0, i32 0
  %58 = getelementptr inbounds [6 x i32]* %57, i32 0, i64 %55
  %59 = load i32* %58, align 4
  store i32 %59, i32* %nbrRankP, align 4
  br label %60

; <label>:60                                      ; preds = %0
  call void @profileStart(i32 9)
  br label %61

; <label>:61                                      ; preds = %60
  %62 = load i8** %sendBufM, align 8
  %63 = load i32* %nSendM, align 4
  %64 = load i32* %nbrRankM, align 4
  %65 = load i8** %recvBufP, align 8
  %66 = load %struct.HaloExchangeSt** %1, align 8
  %67 = getelementptr inbounds %struct.HaloExchangeSt* %66, i32 0, i32 1
  %68 = load i32* %67, align 4
  %69 = load i32* %nbrRankP, align 4
  %70 = call i32 @sendReceiveParallel(i8* %62, i32 %63, i32 %64, i8* %65, i32 %68, i32 %69)
  store i32 %70, i32* %nRecvP, align 4
  %71 = load i8** %sendBufP, align 8
  %72 = load i32* %nSendP, align 4
  %73 = load i32* %nbrRankP, align 4
  %74 = load i8** %recvBufM, align 8
  %75 = load %struct.HaloExchangeSt** %1, align 8
  %76 = getelementptr inbounds %struct.HaloExchangeSt* %75, i32 0, i32 1
  %77 = load i32* %76, align 4
  %78 = load i32* %nbrRankM, align 4
  %79 = call i32 @sendReceiveParallel(i8* %71, i32 %72, i32 %73, i8* %74, i32 %77, i32 %78)
  store i32 %79, i32* %nRecvM, align 4
  br label %80

; <label>:80                                      ; preds = %61
  call void @profileStop(i32 9)
  br label %81

; <label>:81                                      ; preds = %80
  %82 = load %struct.HaloExchangeSt** %1, align 8
  %83 = getelementptr inbounds %struct.HaloExchangeSt* %82, i32 0, i32 3
  %84 = load void (i8*, i8*, i32, i32, i8*)** %83, align 8
  %85 = load %struct.HaloExchangeSt** %1, align 8
  %86 = getelementptr inbounds %struct.HaloExchangeSt* %85, i32 0, i32 5
  %87 = load i8** %86, align 8
  %88 = load i8** %2, align 8
  %89 = load i32* %faceM, align 4
  %90 = load i32* %nRecvM, align 4
  %91 = load i8** %recvBufM, align 8
  call void %84(i8* %87, i8* %88, i32 %89, i32 %90, i8* %91)
  %92 = load %struct.HaloExchangeSt** %1, align 8
  %93 = getelementptr inbounds %struct.HaloExchangeSt* %92, i32 0, i32 3
  %94 = load void (i8*, i8*, i32, i32, i8*)** %93, align 8
  %95 = load %struct.HaloExchangeSt** %1, align 8
  %96 = getelementptr inbounds %struct.HaloExchangeSt* %95, i32 0, i32 5
  %97 = load i8** %96, align 8
  %98 = load i8** %2, align 8
  %99 = load i32* %faceP, align 4
  %100 = load i32* %nRecvP, align 4
  %101 = load i8** %recvBufP, align 8
  call void %94(i8* %97, i8* %98, i32 %99, i32 %100, i8* %101)
  %102 = load i8** %recvBufP, align 8
  call void @comdFree92(i8* %102)
  %103 = load i8** %recvBufM, align 8
  call void @comdFree92(i8* %103)
  %104 = load i8** %sendBufP, align 8
  call void @comdFree92(i8* %104)
  %105 = load i8** %sendBufM, align 8
  call void @comdFree92(i8* %105)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @sortAtomsById(i8* %a, i8* %b) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %aId = alloca i32, align 4
  %bId = alloca i32, align 4
  store i8* %a, i8** %2, align 8
  store i8* %b, i8** %3, align 8
  %4 = load i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.AtomMsgSt*
  %6 = getelementptr inbounds %struct.AtomMsgSt* %5, i32 0, i32 0
  %7 = load i32* %6, align 4
  store i32 %7, i32* %aId, align 4
  %8 = load i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.AtomMsgSt*
  %10 = getelementptr inbounds %struct.AtomMsgSt* %9, i32 0, i32 0
  %11 = load i32* %10, align 4
  store i32 %11, i32* %bId, align 4
  %12 = load i32* %aId, align 4
  %13 = load i32* %bId, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %0
  br label %18

; <label>:16                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8]* @.str76, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str177, i32 0, i32 0), i32 656, i8* getelementptr inbounds ([46 x i8]* @__PRETTY_FUNCTION__.sortAtomsById, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %18

; <label>:18                                      ; preds = %17, %15
  %19 = load i32* %aId, align 4
  %20 = load i32* %bId, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %18
  store i32 -1, i32* %1
  br label %24

; <label>:23                                      ; preds = %18
  store i32 1, i32* %1
  br label %24

; <label>:24                                      ; preds = %23, %22
  %25 = load i32* %1
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define %struct.AtomsSt* @initAtoms(%struct.LinkCellSt* %boxes) #0 {
  %1 = alloca %struct.LinkCellSt*, align 8
  %atoms = alloca %struct.AtomsSt*, align 8
  %maxTotalAtoms = alloca i32, align 4
  %iOff = alloca i32, align 4
  store %struct.LinkCellSt* %boxes, %struct.LinkCellSt** %1, align 8
  %2 = call i8* @comdMalloc105(i64 56)
  %3 = bitcast i8* %2 to %struct.AtomsSt*
  store %struct.AtomsSt* %3, %struct.AtomsSt** %atoms, align 8
  %4 = load %struct.LinkCellSt** %1, align 8
  %5 = getelementptr inbounds %struct.LinkCellSt* %4, i32 0, i32 3
  %6 = load i32* %5, align 4
  %7 = mul nsw i32 64, %6
  store i32 %7, i32* %maxTotalAtoms, align 4
  %8 = load i32* %maxTotalAtoms, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = call i8* @comdMalloc105(i64 %10)
  %12 = bitcast i8* %11 to i32*
  %13 = load %struct.AtomsSt** %atoms, align 8
  %14 = getelementptr inbounds %struct.AtomsSt* %13, i32 0, i32 2
  store i32* %12, i32** %14, align 8
  %15 = load i32* %maxTotalAtoms, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = call i8* @comdMalloc105(i64 %17)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.AtomsSt** %atoms, align 8
  %21 = getelementptr inbounds %struct.AtomsSt* %20, i32 0, i32 3
  store i32* %19, i32** %21, align 8
  %22 = load i32* %maxTotalAtoms, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 24
  %25 = call i8* @comdMalloc105(i64 %24)
  %26 = bitcast i8* %25 to [3 x double]*
  %27 = load %struct.AtomsSt** %atoms, align 8
  %28 = getelementptr inbounds %struct.AtomsSt* %27, i32 0, i32 4
  store [3 x double]* %26, [3 x double]** %28, align 8
  %29 = load i32* %maxTotalAtoms, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 24
  %32 = call i8* @comdMalloc105(i64 %31)
  %33 = bitcast i8* %32 to [3 x double]*
  %34 = load %struct.AtomsSt** %atoms, align 8
  %35 = getelementptr inbounds %struct.AtomsSt* %34, i32 0, i32 5
  store [3 x double]* %33, [3 x double]** %35, align 8
  %36 = load i32* %maxTotalAtoms, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 24
  %39 = call i8* @comdMalloc105(i64 %38)
  %40 = bitcast i8* %39 to [3 x double]*
  %41 = load %struct.AtomsSt** %atoms, align 8
  %42 = getelementptr inbounds %struct.AtomsSt* %41, i32 0, i32 6
  store [3 x double]* %40, [3 x double]** %42, align 8
  %43 = load i32* %maxTotalAtoms, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 8
  %46 = call i8* @comdMalloc105(i64 %45)
  %47 = bitcast i8* %46 to double*
  %48 = load %struct.AtomsSt** %atoms, align 8
  %49 = getelementptr inbounds %struct.AtomsSt* %48, i32 0, i32 7
  store double* %47, double** %49, align 8
  %50 = load %struct.AtomsSt** %atoms, align 8
  %51 = getelementptr inbounds %struct.AtomsSt* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = load %struct.AtomsSt** %atoms, align 8
  %53 = getelementptr inbounds %struct.AtomsSt* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  store i32 0, i32* %iOff, align 4
  br label %54

; <label>:54                                      ; preds = %98, %0
  %55 = load i32* %iOff, align 4
  %56 = load i32* %maxTotalAtoms, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %101

; <label>:58                                      ; preds = %54
  %59 = load i32* %iOff, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.AtomsSt** %atoms, align 8
  %62 = getelementptr inbounds %struct.AtomsSt* %61, i32 0, i32 2
  %63 = load i32** %62, align 8
  %64 = getelementptr inbounds i32* %63, i64 %60
  store i32 0, i32* %64, align 4
  %65 = load i32* %iOff, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.AtomsSt** %atoms, align 8
  %68 = getelementptr inbounds %struct.AtomsSt* %67, i32 0, i32 3
  %69 = load i32** %68, align 8
  %70 = getelementptr inbounds i32* %69, i64 %66
  store i32 0, i32* %70, align 4
  %71 = load i32* %iOff, align 4
  %72 = sext i32 %71 to i64
  %73 = load %struct.AtomsSt** %atoms, align 8
  %74 = getelementptr inbounds %struct.AtomsSt* %73, i32 0, i32 4
  %75 = load [3 x double]** %74, align 8
  %76 = getelementptr inbounds [3 x double]* %75, i64 %72
  %77 = getelementptr inbounds [3 x double]* %76, i32 0, i32 0
  call void @zeroReal3(double* %77)
  %78 = load i32* %iOff, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.AtomsSt** %atoms, align 8
  %81 = getelementptr inbounds %struct.AtomsSt* %80, i32 0, i32 5
  %82 = load [3 x double]** %81, align 8
  %83 = getelementptr inbounds [3 x double]* %82, i64 %79
  %84 = getelementptr inbounds [3 x double]* %83, i32 0, i32 0
  call void @zeroReal3(double* %84)
  %85 = load i32* %iOff, align 4
  %86 = sext i32 %85 to i64
  %87 = load %struct.AtomsSt** %atoms, align 8
  %88 = getelementptr inbounds %struct.AtomsSt* %87, i32 0, i32 6
  %89 = load [3 x double]** %88, align 8
  %90 = getelementptr inbounds [3 x double]* %89, i64 %86
  %91 = getelementptr inbounds [3 x double]* %90, i32 0, i32 0
  call void @zeroReal3(double* %91)
  %92 = load i32* %iOff, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.AtomsSt** %atoms, align 8
  %95 = getelementptr inbounds %struct.AtomsSt* %94, i32 0, i32 7
  %96 = load double** %95, align 8
  %97 = getelementptr inbounds double* %96, i64 %93
  store double 0.000000e+00, double* %97, align 8
  br label %98

; <label>:98                                      ; preds = %58
  %99 = load i32* %iOff, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %iOff, align 4
  br label %54

; <label>:101                                     ; preds = %54
  %102 = load %struct.AtomsSt** %atoms, align 8
  ret %struct.AtomsSt* %102
}

; Function Attrs: nounwind uwtable
define void @destroyAtoms(%struct.AtomsSt* %atoms) #0 {
  %1 = alloca %struct.AtomsSt*, align 8
  store %struct.AtomsSt* %atoms, %struct.AtomsSt** %1, align 8
  %2 = load %struct.AtomsSt** %1, align 8
  %3 = getelementptr inbounds %struct.AtomsSt* %2, i32 0, i32 2
  %4 = load i32** %3, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = load %struct.AtomsSt** %1, align 8
  %8 = getelementptr inbounds %struct.AtomsSt* %7, i32 0, i32 2
  %9 = load i32** %8, align 8
  %10 = bitcast i32* %9 to i8*
  call void @comdFree106(i8* %10)
  br label %11

; <label>:11                                      ; preds = %6, %0
  %12 = load %struct.AtomsSt** %1, align 8
  %13 = getelementptr inbounds %struct.AtomsSt* %12, i32 0, i32 2
  store i32* null, i32** %13, align 8
  %14 = load %struct.AtomsSt** %1, align 8
  %15 = getelementptr inbounds %struct.AtomsSt* %14, i32 0, i32 3
  %16 = load i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

; <label>:18                                      ; preds = %11
  %19 = load %struct.AtomsSt** %1, align 8
  %20 = getelementptr inbounds %struct.AtomsSt* %19, i32 0, i32 3
  %21 = load i32** %20, align 8
  %22 = bitcast i32* %21 to i8*
  call void @comdFree106(i8* %22)
  br label %23

; <label>:23                                      ; preds = %18, %11
  %24 = load %struct.AtomsSt** %1, align 8
  %25 = getelementptr inbounds %struct.AtomsSt* %24, i32 0, i32 3
  store i32* null, i32** %25, align 8
  %26 = load %struct.AtomsSt** %1, align 8
  %27 = getelementptr inbounds %struct.AtomsSt* %26, i32 0, i32 4
  %28 = load [3 x double]** %27, align 8
  %29 = icmp ne [3 x double]* %28, null
  br i1 %29, label %30, label %35

; <label>:30                                      ; preds = %23
  %31 = load %struct.AtomsSt** %1, align 8
  %32 = getelementptr inbounds %struct.AtomsSt* %31, i32 0, i32 4
  %33 = load [3 x double]** %32, align 8
  %34 = bitcast [3 x double]* %33 to i8*
  call void @comdFree106(i8* %34)
  br label %35

; <label>:35                                      ; preds = %30, %23
  %36 = load %struct.AtomsSt** %1, align 8
  %37 = getelementptr inbounds %struct.AtomsSt* %36, i32 0, i32 4
  store [3 x double]* null, [3 x double]** %37, align 8
  %38 = load %struct.AtomsSt** %1, align 8
  %39 = getelementptr inbounds %struct.AtomsSt* %38, i32 0, i32 5
  %40 = load [3 x double]** %39, align 8
  %41 = icmp ne [3 x double]* %40, null
  br i1 %41, label %42, label %47

; <label>:42                                      ; preds = %35
  %43 = load %struct.AtomsSt** %1, align 8
  %44 = getelementptr inbounds %struct.AtomsSt* %43, i32 0, i32 5
  %45 = load [3 x double]** %44, align 8
  %46 = bitcast [3 x double]* %45 to i8*
  call void @comdFree106(i8* %46)
  br label %47

; <label>:47                                      ; preds = %42, %35
  %48 = load %struct.AtomsSt** %1, align 8
  %49 = getelementptr inbounds %struct.AtomsSt* %48, i32 0, i32 5
  store [3 x double]* null, [3 x double]** %49, align 8
  %50 = load %struct.AtomsSt** %1, align 8
  %51 = getelementptr inbounds %struct.AtomsSt* %50, i32 0, i32 6
  %52 = load [3 x double]** %51, align 8
  %53 = icmp ne [3 x double]* %52, null
  br i1 %53, label %54, label %59

; <label>:54                                      ; preds = %47
  %55 = load %struct.AtomsSt** %1, align 8
  %56 = getelementptr inbounds %struct.AtomsSt* %55, i32 0, i32 6
  %57 = load [3 x double]** %56, align 8
  %58 = bitcast [3 x double]* %57 to i8*
  call void @comdFree106(i8* %58)
  br label %59

; <label>:59                                      ; preds = %54, %47
  %60 = load %struct.AtomsSt** %1, align 8
  %61 = getelementptr inbounds %struct.AtomsSt* %60, i32 0, i32 6
  store [3 x double]* null, [3 x double]** %61, align 8
  %62 = load %struct.AtomsSt** %1, align 8
  %63 = getelementptr inbounds %struct.AtomsSt* %62, i32 0, i32 7
  %64 = load double** %63, align 8
  %65 = icmp ne double* %64, null
  br i1 %65, label %66, label %71

; <label>:66                                      ; preds = %59
  %67 = load %struct.AtomsSt** %1, align 8
  %68 = getelementptr inbounds %struct.AtomsSt* %67, i32 0, i32 7
  %69 = load double** %68, align 8
  %70 = bitcast double* %69 to i8*
  call void @comdFree106(i8* %70)
  br label %71

; <label>:71                                      ; preds = %66, %59
  %72 = load %struct.AtomsSt** %1, align 8
  %73 = getelementptr inbounds %struct.AtomsSt* %72, i32 0, i32 7
  store double* null, double** %73, align 8
  %74 = load %struct.AtomsSt** %1, align 8
  %75 = bitcast %struct.AtomsSt* %74 to i8*
  call void @comdFree106(i8* %75)
  ret void
}

; Function Attrs: nounwind uwtable
define void @createFccLattice(i32 %nx, i32 %ny, i32 %nz, double %lat, %struct.SimFlatSt* %s) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.SimFlatSt*, align 8
  %localMin = alloca double*, align 8
  %localMax = alloca double*, align 8
  %nb = alloca i32, align 4
  %basis = alloca [4 x [3 x double]], align 16
  %begin = alloca [3 x i32], align 4
  %end = alloca [3 x i32], align 4
  %ii = alloca i32, align 4
  %px = alloca double, align 8
  %py = alloca double, align 8
  %pz = alloca double, align 8
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %iz = alloca i32, align 4
  %ib = alloca i32, align 4
  %rx = alloca double, align 8
  %ry = alloca double, align 8
  %rz = alloca double, align 8
  %id = alloca i32, align 4
  store i32 %nx, i32* %1, align 4
  store i32 %ny, i32* %2, align 4
  store i32 %nz, i32* %3, align 4
  store double %lat, double* %4, align 8
  store %struct.SimFlatSt* %s, %struct.SimFlatSt** %5, align 8
  %6 = load %struct.SimFlatSt** %5, align 8
  %7 = getelementptr inbounds %struct.SimFlatSt* %6, i32 0, i32 3
  %8 = load %struct.DomainSt** %7, align 8
  %9 = getelementptr inbounds %struct.DomainSt* %8, i32 0, i32 5
  %10 = getelementptr inbounds [3 x double]* %9, i32 0, i32 0
  store double* %10, double** %localMin, align 8
  %11 = load %struct.SimFlatSt** %5, align 8
  %12 = getelementptr inbounds %struct.SimFlatSt* %11, i32 0, i32 3
  %13 = load %struct.DomainSt** %12, align 8
  %14 = getelementptr inbounds %struct.DomainSt* %13, i32 0, i32 6
  %15 = getelementptr inbounds [3 x double]* %14, i32 0, i32 0
  store double* %15, double** %localMax, align 8
  store i32 4, i32* %nb, align 4
  %16 = bitcast [4 x [3 x double]]* %basis to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* bitcast ([4 x [3 x double]]* @createFccLattice.basis to i8*), i64 96, i32 16, i1 false)
  store i32 0, i32* %ii, align 4
  br label %17

; <label>:17                                      ; preds = %45, %0
  %18 = load i32* %ii, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %48

; <label>:20                                      ; preds = %17
  %21 = load i32* %ii, align 4
  %22 = sext i32 %21 to i64
  %23 = load double** %localMin, align 8
  %24 = getelementptr inbounds double* %23, i64 %22
  %25 = load double* %24, align 8
  %26 = load double* %4, align 8
  %27 = fdiv double %25, %26
  %28 = call double @floor(double %27) #9
  %29 = fptosi double %28 to i32
  %30 = load i32* %ii, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [3 x i32]* %begin, i32 0, i64 %31
  store i32 %29, i32* %32, align 4
  %33 = load i32* %ii, align 4
  %34 = sext i32 %33 to i64
  %35 = load double** %localMax, align 8
  %36 = getelementptr inbounds double* %35, i64 %34
  %37 = load double* %36, align 8
  %38 = load double* %4, align 8
  %39 = fdiv double %37, %38
  %40 = call double @ceil(double %39) #9
  %41 = fptosi double %40 to i32
  %42 = load i32* %ii, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [3 x i32]* %end, i32 0, i64 %43
  store i32 %41, i32* %44, align 4
  br label %45

; <label>:45                                      ; preds = %20
  %46 = load i32* %ii, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %ii, align 4
  br label %17

; <label>:48                                      ; preds = %17
  store double 0.000000e+00, double* %pz, align 8
  store double 0.000000e+00, double* %py, align 8
  store double 0.000000e+00, double* %px, align 8
  %49 = getelementptr inbounds [3 x i32]* %begin, i32 0, i64 0
  %50 = load i32* %49, align 4
  store i32 %50, i32* %ix, align 4
  br label %51

; <label>:51                                      ; preds = %185, %48
  %52 = load i32* %ix, align 4
  %53 = getelementptr inbounds [3 x i32]* %end, i32 0, i64 0
  %54 = load i32* %53, align 4
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %188

; <label>:56                                      ; preds = %51
  %57 = getelementptr inbounds [3 x i32]* %begin, i32 0, i64 1
  %58 = load i32* %57, align 4
  store i32 %58, i32* %iy, align 4
  br label %59

; <label>:59                                      ; preds = %181, %56
  %60 = load i32* %iy, align 4
  %61 = getelementptr inbounds [3 x i32]* %end, i32 0, i64 1
  %62 = load i32* %61, align 4
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %184

; <label>:64                                      ; preds = %59
  %65 = getelementptr inbounds [3 x i32]* %begin, i32 0, i64 2
  %66 = load i32* %65, align 4
  store i32 %66, i32* %iz, align 4
  br label %67

; <label>:67                                      ; preds = %177, %64
  %68 = load i32* %iz, align 4
  %69 = getelementptr inbounds [3 x i32]* %end, i32 0, i64 2
  %70 = load i32* %69, align 4
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %180

; <label>:72                                      ; preds = %67
  store i32 0, i32* %ib, align 4
  br label %73

; <label>:73                                      ; preds = %173, %72
  %74 = load i32* %ib, align 4
  %75 = load i32* %nb, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %176

; <label>:77                                      ; preds = %73
  %78 = load i32* %ix, align 4
  %79 = sitofp i32 %78 to double
  %80 = load i32* %ib, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [4 x [3 x double]]* %basis, i32 0, i64 %81
  %83 = getelementptr inbounds [3 x double]* %82, i32 0, i64 0
  %84 = load double* %83, align 8
  %85 = fadd double %79, %84
  %86 = load double* %4, align 8
  %87 = fmul double %85, %86
  store double %87, double* %rx, align 8
  %88 = load i32* %iy, align 4
  %89 = sitofp i32 %88 to double
  %90 = load i32* %ib, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [4 x [3 x double]]* %basis, i32 0, i64 %91
  %93 = getelementptr inbounds [3 x double]* %92, i32 0, i64 1
  %94 = load double* %93, align 8
  %95 = fadd double %89, %94
  %96 = load double* %4, align 8
  %97 = fmul double %95, %96
  store double %97, double* %ry, align 8
  %98 = load i32* %iz, align 4
  %99 = sitofp i32 %98 to double
  %100 = load i32* %ib, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [4 x [3 x double]]* %basis, i32 0, i64 %101
  %103 = getelementptr inbounds [3 x double]* %102, i32 0, i64 2
  %104 = load double* %103, align 8
  %105 = fadd double %99, %104
  %106 = load double* %4, align 8
  %107 = fmul double %105, %106
  store double %107, double* %rz, align 8
  %108 = load double* %rx, align 8
  %109 = load double** %localMin, align 8
  %110 = getelementptr inbounds double* %109, i64 0
  %111 = load double* %110, align 8
  %112 = fcmp olt double %108, %111
  br i1 %112, label %119, label %113

; <label>:113                                     ; preds = %77
  %114 = load double* %rx, align 8
  %115 = load double** %localMax, align 8
  %116 = getelementptr inbounds double* %115, i64 0
  %117 = load double* %116, align 8
  %118 = fcmp oge double %114, %117
  br i1 %118, label %119, label %120

; <label>:119                                     ; preds = %113, %77
  br label %173

; <label>:120                                     ; preds = %113
  %121 = load double* %ry, align 8
  %122 = load double** %localMin, align 8
  %123 = getelementptr inbounds double* %122, i64 1
  %124 = load double* %123, align 8
  %125 = fcmp olt double %121, %124
  br i1 %125, label %132, label %126

; <label>:126                                     ; preds = %120
  %127 = load double* %ry, align 8
  %128 = load double** %localMax, align 8
  %129 = getelementptr inbounds double* %128, i64 1
  %130 = load double* %129, align 8
  %131 = fcmp oge double %127, %130
  br i1 %131, label %132, label %133

; <label>:132                                     ; preds = %126, %120
  br label %173

; <label>:133                                     ; preds = %126
  %134 = load double* %rz, align 8
  %135 = load double** %localMin, align 8
  %136 = getelementptr inbounds double* %135, i64 2
  %137 = load double* %136, align 8
  %138 = fcmp olt double %134, %137
  br i1 %138, label %145, label %139

; <label>:139                                     ; preds = %133
  %140 = load double* %rz, align 8
  %141 = load double** %localMax, align 8
  %142 = getelementptr inbounds double* %141, i64 2
  %143 = load double* %142, align 8
  %144 = fcmp oge double %140, %143
  br i1 %144, label %145, label %146

; <label>:145                                     ; preds = %139, %133
  br label %173

; <label>:146                                     ; preds = %139
  %147 = load i32* %ib, align 4
  %148 = load i32* %nb, align 4
  %149 = load i32* %iz, align 4
  %150 = load i32* %3, align 4
  %151 = load i32* %iy, align 4
  %152 = load i32* %2, align 4
  %153 = load i32* %ix, align 4
  %154 = mul nsw i32 %152, %153
  %155 = add nsw i32 %151, %154
  %156 = mul nsw i32 %150, %155
  %157 = add nsw i32 %149, %156
  %158 = mul nsw i32 %148, %157
  %159 = add nsw i32 %147, %158
  store i32 %159, i32* %id, align 4
  %160 = load %struct.SimFlatSt** %5, align 8
  %161 = getelementptr inbounds %struct.SimFlatSt* %160, i32 0, i32 4
  %162 = load %struct.LinkCellSt** %161, align 8
  %163 = load %struct.SimFlatSt** %5, align 8
  %164 = getelementptr inbounds %struct.SimFlatSt* %163, i32 0, i32 5
  %165 = load %struct.AtomsSt** %164, align 8
  %166 = load i32* %id, align 4
  %167 = load double* %rx, align 8
  %168 = load double* %ry, align 8
  %169 = load double* %rz, align 8
  %170 = load double* %px, align 8
  %171 = load double* %py, align 8
  %172 = load double* %pz, align 8
  call void @putAtomInBox(%struct.LinkCellSt* %162, %struct.AtomsSt* %165, i32 %166, i32 0, double %167, double %168, double %169, double %170, double %171, double %172)
  br label %173

; <label>:173                                     ; preds = %146, %145, %132, %119
  %174 = load i32* %ib, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %ib, align 4
  br label %73

; <label>:176                                     ; preds = %73
  br label %177

; <label>:177                                     ; preds = %176
  %178 = load i32* %iz, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %iz, align 4
  br label %67

; <label>:180                                     ; preds = %67
  br label %181

; <label>:181                                     ; preds = %180
  %182 = load i32* %iy, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %iy, align 4
  br label %59

; <label>:184                                     ; preds = %59
  br label %185

; <label>:185                                     ; preds = %184
  %186 = load i32* %ix, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %ix, align 4
  br label %51

; <label>:188                                     ; preds = %51
  br label %189

; <label>:189                                     ; preds = %188
  call void @profileStart(i32 10)
  br label %190

; <label>:190                                     ; preds = %189
  %191 = load %struct.SimFlatSt** %5, align 8
  %192 = getelementptr inbounds %struct.SimFlatSt* %191, i32 0, i32 5
  %193 = load %struct.AtomsSt** %192, align 8
  %194 = getelementptr inbounds %struct.AtomsSt* %193, i32 0, i32 0
  %195 = load %struct.SimFlatSt** %5, align 8
  %196 = getelementptr inbounds %struct.SimFlatSt* %195, i32 0, i32 5
  %197 = load %struct.AtomsSt** %196, align 8
  %198 = getelementptr inbounds %struct.AtomsSt* %197, i32 0, i32 1
  call void @addIntParallel(i32* %194, i32* %198, i32 1)
  br label %199

; <label>:199                                     ; preds = %190
  call void @profileStop(i32 10)
  br label %200

; <label>:200                                     ; preds = %199
  %201 = load %struct.SimFlatSt** %5, align 8
  %202 = getelementptr inbounds %struct.SimFlatSt* %201, i32 0, i32 5
  %203 = load %struct.AtomsSt** %202, align 8
  %204 = getelementptr inbounds %struct.AtomsSt* %203, i32 0, i32 1
  %205 = load i32* %204, align 4
  %206 = load i32* %nb, align 4
  %207 = load i32* %1, align 4
  %208 = mul nsw i32 %206, %207
  %209 = load i32* %2, align 4
  %210 = mul nsw i32 %208, %209
  %211 = load i32* %3, align 4
  %212 = mul nsw i32 %210, %211
  %213 = icmp eq i32 %205, %212
  br i1 %213, label %214, label %215

; <label>:214                                     ; preds = %200
  br label %217

; <label>:215                                     ; preds = %200
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8]* @.str93, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str194, i32 0, i32 0), i32 108, i8* getelementptr inbounds ([56 x i8]* @__PRETTY_FUNCTION__.createFccLattice, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %217

; <label>:217                                     ; preds = %216, %214
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind readnone
declare double @ceil(double) #6

; Function Attrs: nounwind uwtable
define void @setVcm(%struct.SimFlatSt* %s, double* %newVcm) #0 {
  %1 = alloca %struct.SimFlatSt*, align 8
  %2 = alloca double*, align 8
  %oldVcm = alloca [3 x double], align 16
  %vShift = alloca [3 x double], align 16
  %iBox = alloca i32, align 4
  %iOff = alloca i32, align 4
  %ii = alloca i32, align 4
  %iSpecies = alloca i32, align 4
  %mass = alloca double, align 8
  store %struct.SimFlatSt* %s, %struct.SimFlatSt** %1, align 8
  store double* %newVcm, double** %2, align 8
  %3 = load %struct.SimFlatSt** %1, align 8
  %4 = getelementptr inbounds [3 x double]* %oldVcm, i32 0, i32 0
  call void @computeVcm(%struct.SimFlatSt* %3, double* %4)
  %5 = load double** %2, align 8
  %6 = getelementptr inbounds double* %5, i64 0
  %7 = load double* %6, align 8
  %8 = getelementptr inbounds [3 x double]* %oldVcm, i32 0, i64 0
  %9 = load double* %8, align 8
  %10 = fsub double %7, %9
  %11 = getelementptr inbounds [3 x double]* %vShift, i32 0, i64 0
  store double %10, double* %11, align 8
  %12 = load double** %2, align 8
  %13 = getelementptr inbounds double* %12, i64 1
  %14 = load double* %13, align 8
  %15 = getelementptr inbounds [3 x double]* %oldVcm, i32 0, i64 1
  %16 = load double* %15, align 8
  %17 = fsub double %14, %16
  %18 = getelementptr inbounds [3 x double]* %vShift, i32 0, i64 1
  store double %17, double* %18, align 8
  %19 = load double** %2, align 8
  %20 = getelementptr inbounds double* %19, i64 2
  %21 = load double* %20, align 8
  %22 = getelementptr inbounds [3 x double]* %oldVcm, i32 0, i64 2
  %23 = load double* %22, align 8
  %24 = fsub double %21, %23
  %25 = getelementptr inbounds [3 x double]* %vShift, i32 0, i64 2
  store double %24, double* %25, align 8
  store i32 0, i32* %iBox, align 4
  br label %26

; <label>:26                                      ; preds = %118, %0
  %27 = load i32* %iBox, align 4
  %28 = load %struct.SimFlatSt** %1, align 8
  %29 = getelementptr inbounds %struct.SimFlatSt* %28, i32 0, i32 4
  %30 = load %struct.LinkCellSt** %29, align 8
  %31 = getelementptr inbounds %struct.LinkCellSt* %30, i32 0, i32 1
  %32 = load i32* %31, align 4
  %33 = icmp slt i32 %27, %32
  br i1 %33, label %34, label %121

; <label>:34                                      ; preds = %26
  %35 = load i32* %iBox, align 4
  %36 = mul nsw i32 64, %35
  store i32 %36, i32* %iOff, align 4
  store i32 0, i32* %ii, align 4
  br label %37

; <label>:37                                      ; preds = %112, %34
  %38 = load i32* %ii, align 4
  %39 = load i32* %iBox, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.SimFlatSt** %1, align 8
  %42 = getelementptr inbounds %struct.SimFlatSt* %41, i32 0, i32 4
  %43 = load %struct.LinkCellSt** %42, align 8
  %44 = getelementptr inbounds %struct.LinkCellSt* %43, i32 0, i32 8
  %45 = load i32** %44, align 8
  %46 = getelementptr inbounds i32* %45, i64 %40
  %47 = load i32* %46, align 4
  %48 = icmp slt i32 %38, %47
  br i1 %48, label %49, label %117

; <label>:49                                      ; preds = %37
  %50 = load i32* %iOff, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.SimFlatSt** %1, align 8
  %53 = getelementptr inbounds %struct.SimFlatSt* %52, i32 0, i32 5
  %54 = load %struct.AtomsSt** %53, align 8
  %55 = getelementptr inbounds %struct.AtomsSt* %54, i32 0, i32 3
  %56 = load i32** %55, align 8
  %57 = getelementptr inbounds i32* %56, i64 %51
  %58 = load i32* %57, align 4
  store i32 %58, i32* %iSpecies, align 4
  %59 = load i32* %iSpecies, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.SimFlatSt** %1, align 8
  %62 = getelementptr inbounds %struct.SimFlatSt* %61, i32 0, i32 6
  %63 = load %struct.SpeciesDataSt** %62, align 8
  %64 = getelementptr inbounds %struct.SpeciesDataSt* %63, i64 %60
  %65 = getelementptr inbounds %struct.SpeciesDataSt* %64, i32 0, i32 2
  %66 = load double* %65, align 8
  store double %66, double* %mass, align 8
  %67 = load double* %mass, align 8
  %68 = getelementptr inbounds [3 x double]* %vShift, i32 0, i64 0
  %69 = load double* %68, align 8
  %70 = fmul double %67, %69
  %71 = load i32* %iOff, align 4
  %72 = sext i32 %71 to i64
  %73 = load %struct.SimFlatSt** %1, align 8
  %74 = getelementptr inbounds %struct.SimFlatSt* %73, i32 0, i32 5
  %75 = load %struct.AtomsSt** %74, align 8
  %76 = getelementptr inbounds %struct.AtomsSt* %75, i32 0, i32 5
  %77 = load [3 x double]** %76, align 8
  %78 = getelementptr inbounds [3 x double]* %77, i64 %72
  %79 = getelementptr inbounds [3 x double]* %78, i32 0, i64 0
  %80 = load double* %79, align 8
  %81 = fadd double %80, %70
  store double %81, double* %79, align 8
  %82 = load double* %mass, align 8
  %83 = getelementptr inbounds [3 x double]* %vShift, i32 0, i64 1
  %84 = load double* %83, align 8
  %85 = fmul double %82, %84
  %86 = load i32* %iOff, align 4
  %87 = sext i32 %86 to i64
  %88 = load %struct.SimFlatSt** %1, align 8
  %89 = getelementptr inbounds %struct.SimFlatSt* %88, i32 0, i32 5
  %90 = load %struct.AtomsSt** %89, align 8
  %91 = getelementptr inbounds %struct.AtomsSt* %90, i32 0, i32 5
  %92 = load [3 x double]** %91, align 8
  %93 = getelementptr inbounds [3 x double]* %92, i64 %87
  %94 = getelementptr inbounds [3 x double]* %93, i32 0, i64 1
  %95 = load double* %94, align 8
  %96 = fadd double %95, %85
  store double %96, double* %94, align 8
  %97 = load double* %mass, align 8
  %98 = getelementptr inbounds [3 x double]* %vShift, i32 0, i64 2
  %99 = load double* %98, align 8
  %100 = fmul double %97, %99
  %101 = load i32* %iOff, align 4
  %102 = sext i32 %101 to i64
  %103 = load %struct.SimFlatSt** %1, align 8
  %104 = getelementptr inbounds %struct.SimFlatSt* %103, i32 0, i32 5
  %105 = load %struct.AtomsSt** %104, align 8
  %106 = getelementptr inbounds %struct.AtomsSt* %105, i32 0, i32 5
  %107 = load [3 x double]** %106, align 8
  %108 = getelementptr inbounds [3 x double]* %107, i64 %102
  %109 = getelementptr inbounds [3 x double]* %108, i32 0, i64 2
  %110 = load double* %109, align 8
  %111 = fadd double %110, %100
  store double %111, double* %109, align 8
  br label %112

; <label>:112                                     ; preds = %49
  %113 = load i32* %ii, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %ii, align 4
  %115 = load i32* %iOff, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %iOff, align 4
  br label %37

; <label>:117                                     ; preds = %37
  br label %118

; <label>:118                                     ; preds = %117
  %119 = load i32* %iBox, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %iBox, align 4
  br label %26

; <label>:121                                     ; preds = %26
  ret void
}

; Function Attrs: nounwind uwtable
define void @setTemperature(%struct.SimFlatSt* %s, double %temperature) #0 {
  %1 = alloca %struct.SimFlatSt*, align 8
  %2 = alloca double, align 8
  %iBox = alloca i32, align 4
  %iOff = alloca i32, align 4
  %ii = alloca i32, align 4
  %iType = alloca i32, align 4
  %mass = alloca double, align 8
  %sigma = alloca double, align 8
  %seed = alloca i64, align 8
  %vZero = alloca [3 x double], align 16
  %temp = alloca double, align 8
  %scaleFactor = alloca double, align 8
  %iBox1 = alloca i32, align 4
  %iOff2 = alloca i32, align 4
  %ii3 = alloca i32, align 4
  store %struct.SimFlatSt* %s, %struct.SimFlatSt** %1, align 8
  store double %temperature, double* %2, align 8
  store i32 0, i32* %iBox, align 4
  br label %3

; <label>:3                                       ; preds = %107, %0
  %4 = load i32* %iBox, align 4
  %5 = load %struct.SimFlatSt** %1, align 8
  %6 = getelementptr inbounds %struct.SimFlatSt* %5, i32 0, i32 4
  %7 = load %struct.LinkCellSt** %6, align 8
  %8 = getelementptr inbounds %struct.LinkCellSt* %7, i32 0, i32 1
  %9 = load i32* %8, align 4
  %10 = icmp slt i32 %4, %9
  br i1 %10, label %11, label %110

; <label>:11                                      ; preds = %3
  %12 = load i32* %iBox, align 4
  %13 = mul nsw i32 64, %12
  store i32 %13, i32* %iOff, align 4
  store i32 0, i32* %ii, align 4
  br label %14

; <label>:14                                      ; preds = %101, %11
  %15 = load i32* %ii, align 4
  %16 = load i32* %iBox, align 4
  %17 = sext i32 %16 to i64
  %18 = load %struct.SimFlatSt** %1, align 8
  %19 = getelementptr inbounds %struct.SimFlatSt* %18, i32 0, i32 4
  %20 = load %struct.LinkCellSt** %19, align 8
  %21 = getelementptr inbounds %struct.LinkCellSt* %20, i32 0, i32 8
  %22 = load i32** %21, align 8
  %23 = getelementptr inbounds i32* %22, i64 %17
  %24 = load i32* %23, align 4
  %25 = icmp slt i32 %15, %24
  br i1 %25, label %26, label %106

; <label>:26                                      ; preds = %14
  %27 = load i32* %iOff, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.SimFlatSt** %1, align 8
  %30 = getelementptr inbounds %struct.SimFlatSt* %29, i32 0, i32 5
  %31 = load %struct.AtomsSt** %30, align 8
  %32 = getelementptr inbounds %struct.AtomsSt* %31, i32 0, i32 3
  %33 = load i32** %32, align 8
  %34 = getelementptr inbounds i32* %33, i64 %28
  %35 = load i32* %34, align 4
  store i32 %35, i32* %iType, align 4
  %36 = load i32* %iType, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.SimFlatSt** %1, align 8
  %39 = getelementptr inbounds %struct.SimFlatSt* %38, i32 0, i32 6
  %40 = load %struct.SpeciesDataSt** %39, align 8
  %41 = getelementptr inbounds %struct.SpeciesDataSt* %40, i64 %37
  %42 = getelementptr inbounds %struct.SpeciesDataSt* %41, i32 0, i32 2
  %43 = load double* %42, align 8
  store double %43, double* %mass, align 8
  %44 = load double* %2, align 8
  %45 = fmul double 0x3F1696FE6EF7EB54, %44
  %46 = load double* %mass, align 8
  %47 = fdiv double %45, %46
  %48 = call double @sqrt(double %47) #5
  store double %48, double* %sigma, align 8
  %49 = load i32* %iOff, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.SimFlatSt** %1, align 8
  %52 = getelementptr inbounds %struct.SimFlatSt* %51, i32 0, i32 5
  %53 = load %struct.AtomsSt** %52, align 8
  %54 = getelementptr inbounds %struct.AtomsSt* %53, i32 0, i32 2
  %55 = load i32** %54, align 8
  %56 = getelementptr inbounds i32* %55, i64 %50
  %57 = load i32* %56, align 4
  %58 = call i64 @mkSeed(i32 %57, i32 123)
  store i64 %58, i64* %seed, align 8
  %59 = load double* %mass, align 8
  %60 = load double* %sigma, align 8
  %61 = fmul double %59, %60
  %62 = call double @gasdev(i64* %seed)
  %63 = fmul double %61, %62
  %64 = load i32* %iOff, align 4
  %65 = sext i32 %64 to i64
  %66 = load %struct.SimFlatSt** %1, align 8
  %67 = getelementptr inbounds %struct.SimFlatSt* %66, i32 0, i32 5
  %68 = load %struct.AtomsSt** %67, align 8
  %69 = getelementptr inbounds %struct.AtomsSt* %68, i32 0, i32 5
  %70 = load [3 x double]** %69, align 8
  %71 = getelementptr inbounds [3 x double]* %70, i64 %65
  %72 = getelementptr inbounds [3 x double]* %71, i32 0, i64 0
  store double %63, double* %72, align 8
  %73 = load double* %mass, align 8
  %74 = load double* %sigma, align 8
  %75 = fmul double %73, %74
  %76 = call double @gasdev(i64* %seed)
  %77 = fmul double %75, %76
  %78 = load i32* %iOff, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.SimFlatSt** %1, align 8
  %81 = getelementptr inbounds %struct.SimFlatSt* %80, i32 0, i32 5
  %82 = load %struct.AtomsSt** %81, align 8
  %83 = getelementptr inbounds %struct.AtomsSt* %82, i32 0, i32 5
  %84 = load [3 x double]** %83, align 8
  %85 = getelementptr inbounds [3 x double]* %84, i64 %79
  %86 = getelementptr inbounds [3 x double]* %85, i32 0, i64 1
  store double %77, double* %86, align 8
  %87 = load double* %mass, align 8
  %88 = load double* %sigma, align 8
  %89 = fmul double %87, %88
  %90 = call double @gasdev(i64* %seed)
  %91 = fmul double %89, %90
  %92 = load i32* %iOff, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.SimFlatSt** %1, align 8
  %95 = getelementptr inbounds %struct.SimFlatSt* %94, i32 0, i32 5
  %96 = load %struct.AtomsSt** %95, align 8
  %97 = getelementptr inbounds %struct.AtomsSt* %96, i32 0, i32 5
  %98 = load [3 x double]** %97, align 8
  %99 = getelementptr inbounds [3 x double]* %98, i64 %93
  %100 = getelementptr inbounds [3 x double]* %99, i32 0, i64 2
  store double %91, double* %100, align 8
  br label %101

; <label>:101                                     ; preds = %26
  %102 = load i32* %ii, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %ii, align 4
  %104 = load i32* %iOff, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %iOff, align 4
  br label %14

; <label>:106                                     ; preds = %14
  br label %107

; <label>:107                                     ; preds = %106
  %108 = load i32* %iBox, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %iBox, align 4
  br label %3

; <label>:110                                     ; preds = %3
  %111 = load double* %2, align 8
  %112 = fcmp oeq double %111, 0.000000e+00
  br i1 %112, label %113, label %114

; <label>:113                                     ; preds = %110
  br label %218

; <label>:114                                     ; preds = %110
  %115 = bitcast [3 x double]* %vZero to i8*
  call void @llvm.memset.p0i8.i64(i8* %115, i8 0, i64 24, i32 16, i1 false)
  %116 = load %struct.SimFlatSt** %1, align 8
  %117 = getelementptr inbounds [3 x double]* %vZero, i32 0, i32 0
  call void @setVcm(%struct.SimFlatSt* %116, double* %117)
  %118 = load %struct.SimFlatSt** %1, align 8
  call void @kineticEnergy(%struct.SimFlatSt* %118)
  %119 = load %struct.SimFlatSt** %1, align 8
  %120 = getelementptr inbounds %struct.SimFlatSt* %119, i32 0, i32 8
  %121 = load double* %120, align 8
  %122 = load %struct.SimFlatSt** %1, align 8
  %123 = getelementptr inbounds %struct.SimFlatSt* %122, i32 0, i32 5
  %124 = load %struct.AtomsSt** %123, align 8
  %125 = getelementptr inbounds %struct.AtomsSt* %124, i32 0, i32 1
  %126 = load i32* %125, align 4
  %127 = sitofp i32 %126 to double
  %128 = fdiv double %121, %127
  %129 = fdiv double %128, 0x3F1696FE6EF7EB54
  %130 = fdiv double %129, 1.500000e+00
  store double %130, double* %temp, align 8
  %131 = load double* %2, align 8
  %132 = load double* %temp, align 8
  %133 = fdiv double %131, %132
  %134 = call double @sqrt(double %133) #5
  store double %134, double* %scaleFactor, align 8
  store i32 0, i32* %iBox1, align 4
  br label %135

; <label>:135                                     ; preds = %201, %114
  %136 = load i32* %iBox1, align 4
  %137 = load %struct.SimFlatSt** %1, align 8
  %138 = getelementptr inbounds %struct.SimFlatSt* %137, i32 0, i32 4
  %139 = load %struct.LinkCellSt** %138, align 8
  %140 = getelementptr inbounds %struct.LinkCellSt* %139, i32 0, i32 1
  %141 = load i32* %140, align 4
  %142 = icmp slt i32 %136, %141
  br i1 %142, label %143, label %204

; <label>:143                                     ; preds = %135
  %144 = load i32* %iBox1, align 4
  %145 = mul nsw i32 64, %144
  store i32 %145, i32* %iOff2, align 4
  store i32 0, i32* %ii3, align 4
  br label %146

; <label>:146                                     ; preds = %195, %143
  %147 = load i32* %ii3, align 4
  %148 = load i32* %iBox1, align 4
  %149 = sext i32 %148 to i64
  %150 = load %struct.SimFlatSt** %1, align 8
  %151 = getelementptr inbounds %struct.SimFlatSt* %150, i32 0, i32 4
  %152 = load %struct.LinkCellSt** %151, align 8
  %153 = getelementptr inbounds %struct.LinkCellSt* %152, i32 0, i32 8
  %154 = load i32** %153, align 8
  %155 = getelementptr inbounds i32* %154, i64 %149
  %156 = load i32* %155, align 4
  %157 = icmp slt i32 %147, %156
  br i1 %157, label %158, label %200

; <label>:158                                     ; preds = %146
  %159 = load double* %scaleFactor, align 8
  %160 = load i32* %iOff2, align 4
  %161 = sext i32 %160 to i64
  %162 = load %struct.SimFlatSt** %1, align 8
  %163 = getelementptr inbounds %struct.SimFlatSt* %162, i32 0, i32 5
  %164 = load %struct.AtomsSt** %163, align 8
  %165 = getelementptr inbounds %struct.AtomsSt* %164, i32 0, i32 5
  %166 = load [3 x double]** %165, align 8
  %167 = getelementptr inbounds [3 x double]* %166, i64 %161
  %168 = getelementptr inbounds [3 x double]* %167, i32 0, i64 0
  %169 = load double* %168, align 8
  %170 = fmul double %169, %159
  store double %170, double* %168, align 8
  %171 = load double* %scaleFactor, align 8
  %172 = load i32* %iOff2, align 4
  %173 = sext i32 %172 to i64
  %174 = load %struct.SimFlatSt** %1, align 8
  %175 = getelementptr inbounds %struct.SimFlatSt* %174, i32 0, i32 5
  %176 = load %struct.AtomsSt** %175, align 8
  %177 = getelementptr inbounds %struct.AtomsSt* %176, i32 0, i32 5
  %178 = load [3 x double]** %177, align 8
  %179 = getelementptr inbounds [3 x double]* %178, i64 %173
  %180 = getelementptr inbounds [3 x double]* %179, i32 0, i64 1
  %181 = load double* %180, align 8
  %182 = fmul double %181, %171
  store double %182, double* %180, align 8
  %183 = load double* %scaleFactor, align 8
  %184 = load i32* %iOff2, align 4
  %185 = sext i32 %184 to i64
  %186 = load %struct.SimFlatSt** %1, align 8
  %187 = getelementptr inbounds %struct.SimFlatSt* %186, i32 0, i32 5
  %188 = load %struct.AtomsSt** %187, align 8
  %189 = getelementptr inbounds %struct.AtomsSt* %188, i32 0, i32 5
  %190 = load [3 x double]** %189, align 8
  %191 = getelementptr inbounds [3 x double]* %190, i64 %185
  %192 = getelementptr inbounds [3 x double]* %191, i32 0, i64 2
  %193 = load double* %192, align 8
  %194 = fmul double %193, %183
  store double %194, double* %192, align 8
  br label %195

; <label>:195                                     ; preds = %158
  %196 = load i32* %ii3, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %ii3, align 4
  %198 = load i32* %iOff2, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %iOff2, align 4
  br label %146

; <label>:200                                     ; preds = %146
  br label %201

; <label>:201                                     ; preds = %200
  %202 = load i32* %iBox1, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %iBox1, align 4
  br label %135

; <label>:204                                     ; preds = %135
  %205 = load %struct.SimFlatSt** %1, align 8
  call void @kineticEnergy(%struct.SimFlatSt* %205)
  %206 = load %struct.SimFlatSt** %1, align 8
  %207 = getelementptr inbounds %struct.SimFlatSt* %206, i32 0, i32 8
  %208 = load double* %207, align 8
  %209 = load %struct.SimFlatSt** %1, align 8
  %210 = getelementptr inbounds %struct.SimFlatSt* %209, i32 0, i32 5
  %211 = load %struct.AtomsSt** %210, align 8
  %212 = getelementptr inbounds %struct.AtomsSt* %211, i32 0, i32 1
  %213 = load i32* %212, align 4
  %214 = sitofp i32 %213 to double
  %215 = fdiv double %208, %214
  %216 = fdiv double %215, 0x3F1696FE6EF7EB54
  %217 = fdiv double %216, 1.500000e+00
  store double %217, double* %temp, align 8
  br label %218

; <label>:218                                     ; preds = %204, %113
  ret void
}

; Function Attrs: nounwind uwtable
define void @randomDisplacements(%struct.SimFlatSt* %s, double %delta) #0 {
  %1 = alloca %struct.SimFlatSt*, align 8
  %2 = alloca double, align 8
  %iBox = alloca i32, align 4
  %iOff = alloca i32, align 4
  %ii = alloca i32, align 4
  %seed = alloca i64, align 8
  store %struct.SimFlatSt* %s, %struct.SimFlatSt** %1, align 8
  store double %delta, double* %2, align 8
  store i32 0, i32* %iBox, align 4
  br label %3

; <label>:3                                       ; preds = %91, %0
  %4 = load i32* %iBox, align 4
  %5 = load %struct.SimFlatSt** %1, align 8
  %6 = getelementptr inbounds %struct.SimFlatSt* %5, i32 0, i32 4
  %7 = load %struct.LinkCellSt** %6, align 8
  %8 = getelementptr inbounds %struct.LinkCellSt* %7, i32 0, i32 1
  %9 = load i32* %8, align 4
  %10 = icmp slt i32 %4, %9
  br i1 %10, label %11, label %94

; <label>:11                                      ; preds = %3
  %12 = load i32* %iBox, align 4
  %13 = mul nsw i32 64, %12
  store i32 %13, i32* %iOff, align 4
  store i32 0, i32* %ii, align 4
  br label %14

; <label>:14                                      ; preds = %85, %11
  %15 = load i32* %ii, align 4
  %16 = load i32* %iBox, align 4
  %17 = sext i32 %16 to i64
  %18 = load %struct.SimFlatSt** %1, align 8
  %19 = getelementptr inbounds %struct.SimFlatSt* %18, i32 0, i32 4
  %20 = load %struct.LinkCellSt** %19, align 8
  %21 = getelementptr inbounds %struct.LinkCellSt* %20, i32 0, i32 8
  %22 = load i32** %21, align 8
  %23 = getelementptr inbounds i32* %22, i64 %17
  %24 = load i32* %23, align 4
  %25 = icmp slt i32 %15, %24
  br i1 %25, label %26, label %90

; <label>:26                                      ; preds = %14
  %27 = load i32* %iOff, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.SimFlatSt** %1, align 8
  %30 = getelementptr inbounds %struct.SimFlatSt* %29, i32 0, i32 5
  %31 = load %struct.AtomsSt** %30, align 8
  %32 = getelementptr inbounds %struct.AtomsSt* %31, i32 0, i32 2
  %33 = load i32** %32, align 8
  %34 = getelementptr inbounds i32* %33, i64 %28
  %35 = load i32* %34, align 4
  %36 = call i64 @mkSeed(i32 %35, i32 457)
  store i64 %36, i64* %seed, align 8
  %37 = call double @lcg61(i64* %seed)
  %38 = fmul double 2.000000e+00, %37
  %39 = fsub double %38, 1.000000e+00
  %40 = load double* %2, align 8
  %41 = fmul double %39, %40
  %42 = load i32* %iOff, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.SimFlatSt** %1, align 8
  %45 = getelementptr inbounds %struct.SimFlatSt* %44, i32 0, i32 5
  %46 = load %struct.AtomsSt** %45, align 8
  %47 = getelementptr inbounds %struct.AtomsSt* %46, i32 0, i32 4
  %48 = load [3 x double]** %47, align 8
  %49 = getelementptr inbounds [3 x double]* %48, i64 %43
  %50 = getelementptr inbounds [3 x double]* %49, i32 0, i64 0
  %51 = load double* %50, align 8
  %52 = fadd double %51, %41
  store double %52, double* %50, align 8
  %53 = call double @lcg61(i64* %seed)
  %54 = fmul double 2.000000e+00, %53
  %55 = fsub double %54, 1.000000e+00
  %56 = load double* %2, align 8
  %57 = fmul double %55, %56
  %58 = load i32* %iOff, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.SimFlatSt** %1, align 8
  %61 = getelementptr inbounds %struct.SimFlatSt* %60, i32 0, i32 5
  %62 = load %struct.AtomsSt** %61, align 8
  %63 = getelementptr inbounds %struct.AtomsSt* %62, i32 0, i32 4
  %64 = load [3 x double]** %63, align 8
  %65 = getelementptr inbounds [3 x double]* %64, i64 %59
  %66 = getelementptr inbounds [3 x double]* %65, i32 0, i64 1
  %67 = load double* %66, align 8
  %68 = fadd double %67, %57
  store double %68, double* %66, align 8
  %69 = call double @lcg61(i64* %seed)
  %70 = fmul double 2.000000e+00, %69
  %71 = fsub double %70, 1.000000e+00
  %72 = load double* %2, align 8
  %73 = fmul double %71, %72
  %74 = load i32* %iOff, align 4
  %75 = sext i32 %74 to i64
  %76 = load %struct.SimFlatSt** %1, align 8
  %77 = getelementptr inbounds %struct.SimFlatSt* %76, i32 0, i32 5
  %78 = load %struct.AtomsSt** %77, align 8
  %79 = getelementptr inbounds %struct.AtomsSt* %78, i32 0, i32 4
  %80 = load [3 x double]** %79, align 8
  %81 = getelementptr inbounds [3 x double]* %80, i64 %75
  %82 = getelementptr inbounds [3 x double]* %81, i32 0, i64 2
  %83 = load double* %82, align 8
  %84 = fadd double %83, %73
  store double %84, double* %82, align 8
  br label %85

; <label>:85                                      ; preds = %26
  %86 = load i32* %ii, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %ii, align 4
  %88 = load i32* %iOff, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %iOff, align 4
  br label %14

; <label>:90                                      ; preds = %14
  br label %91

; <label>:91                                      ; preds = %90
  %92 = load i32* %iBox, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %iBox, align 4
  br label %3

; <label>:94                                      ; preds = %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @comdMalloc105(i64 %iSize) #0 {
  %1 = alloca i64, align 8
  store i64 %iSize, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = call noalias i8* @malloc(i64 %2) #5
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define internal void @zeroReal3(double* %a) #0 {
  %1 = alloca double*, align 8
  store double* %a, double** %1, align 8
  %2 = load double** %1, align 8
  %3 = getelementptr inbounds double* %2, i64 0
  store double 0.000000e+00, double* %3, align 8
  %4 = load double** %1, align 8
  %5 = getelementptr inbounds double* %4, i64 1
  store double 0.000000e+00, double* %5, align 8
  %6 = load double** %1, align 8
  %7 = getelementptr inbounds double* %6, i64 2
  store double 0.000000e+00, double* %7, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @comdFree106(i8* %ptr) #0 {
  %1 = alloca i8*, align 8
  store i8* %ptr, i8** %1, align 8
  %2 = load i8** %1, align 8
  call void @free(i8* %2) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @computeVcm(%struct.SimFlatSt* %s, double* %vcm) #0 {
  %1 = alloca %struct.SimFlatSt*, align 8
  %2 = alloca double*, align 8
  %vcmLocal = alloca [4 x double], align 16
  %vcmSum = alloca [4 x double], align 16
  %iBox = alloca i32, align 4
  %iOff = alloca i32, align 4
  %ii = alloca i32, align 4
  %iSpecies = alloca i32, align 4
  %totalMass = alloca double, align 8
  store %struct.SimFlatSt* %s, %struct.SimFlatSt** %1, align 8
  store double* %vcm, double** %2, align 8
  %3 = bitcast [4 x double]* %vcmLocal to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 32, i32 16, i1 false)
  %4 = bitcast [4 x double]* %vcmSum to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 32, i32 16, i1 false)
  store i32 0, i32* %iBox, align 4
  br label %5

; <label>:5                                       ; preds = %94, %0
  %6 = load i32* %iBox, align 4
  %7 = load %struct.SimFlatSt** %1, align 8
  %8 = getelementptr inbounds %struct.SimFlatSt* %7, i32 0, i32 4
  %9 = load %struct.LinkCellSt** %8, align 8
  %10 = getelementptr inbounds %struct.LinkCellSt* %9, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = icmp slt i32 %6, %11
  br i1 %12, label %13, label %97

; <label>:13                                      ; preds = %5
  %14 = load i32* %iBox, align 4
  %15 = mul nsw i32 64, %14
  store i32 %15, i32* %iOff, align 4
  store i32 0, i32* %ii, align 4
  br label %16

; <label>:16                                      ; preds = %88, %13
  %17 = load i32* %ii, align 4
  %18 = load i32* %iBox, align 4
  %19 = sext i32 %18 to i64
  %20 = load %struct.SimFlatSt** %1, align 8
  %21 = getelementptr inbounds %struct.SimFlatSt* %20, i32 0, i32 4
  %22 = load %struct.LinkCellSt** %21, align 8
  %23 = getelementptr inbounds %struct.LinkCellSt* %22, i32 0, i32 8
  %24 = load i32** %23, align 8
  %25 = getelementptr inbounds i32* %24, i64 %19
  %26 = load i32* %25, align 4
  %27 = icmp slt i32 %17, %26
  br i1 %27, label %28, label %93

; <label>:28                                      ; preds = %16
  %29 = load i32* %iOff, align 4
  %30 = sext i32 %29 to i64
  %31 = load %struct.SimFlatSt** %1, align 8
  %32 = getelementptr inbounds %struct.SimFlatSt* %31, i32 0, i32 5
  %33 = load %struct.AtomsSt** %32, align 8
  %34 = getelementptr inbounds %struct.AtomsSt* %33, i32 0, i32 5
  %35 = load [3 x double]** %34, align 8
  %36 = getelementptr inbounds [3 x double]* %35, i64 %30
  %37 = getelementptr inbounds [3 x double]* %36, i32 0, i64 0
  %38 = load double* %37, align 8
  %39 = getelementptr inbounds [4 x double]* %vcmLocal, i32 0, i64 0
  %40 = load double* %39, align 8
  %41 = fadd double %40, %38
  store double %41, double* %39, align 8
  %42 = load i32* %iOff, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.SimFlatSt** %1, align 8
  %45 = getelementptr inbounds %struct.SimFlatSt* %44, i32 0, i32 5
  %46 = load %struct.AtomsSt** %45, align 8
  %47 = getelementptr inbounds %struct.AtomsSt* %46, i32 0, i32 5
  %48 = load [3 x double]** %47, align 8
  %49 = getelementptr inbounds [3 x double]* %48, i64 %43
  %50 = getelementptr inbounds [3 x double]* %49, i32 0, i64 1
  %51 = load double* %50, align 8
  %52 = getelementptr inbounds [4 x double]* %vcmLocal, i32 0, i64 1
  %53 = load double* %52, align 8
  %54 = fadd double %53, %51
  store double %54, double* %52, align 8
  %55 = load i32* %iOff, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.SimFlatSt** %1, align 8
  %58 = getelementptr inbounds %struct.SimFlatSt* %57, i32 0, i32 5
  %59 = load %struct.AtomsSt** %58, align 8
  %60 = getelementptr inbounds %struct.AtomsSt* %59, i32 0, i32 5
  %61 = load [3 x double]** %60, align 8
  %62 = getelementptr inbounds [3 x double]* %61, i64 %56
  %63 = getelementptr inbounds [3 x double]* %62, i32 0, i64 2
  %64 = load double* %63, align 8
  %65 = getelementptr inbounds [4 x double]* %vcmLocal, i32 0, i64 2
  %66 = load double* %65, align 8
  %67 = fadd double %66, %64
  store double %67, double* %65, align 8
  %68 = load i32* %iOff, align 4
  %69 = sext i32 %68 to i64
  %70 = load %struct.SimFlatSt** %1, align 8
  %71 = getelementptr inbounds %struct.SimFlatSt* %70, i32 0, i32 5
  %72 = load %struct.AtomsSt** %71, align 8
  %73 = getelementptr inbounds %struct.AtomsSt* %72, i32 0, i32 3
  %74 = load i32** %73, align 8
  %75 = getelementptr inbounds i32* %74, i64 %69
  %76 = load i32* %75, align 4
  store i32 %76, i32* %iSpecies, align 4
  %77 = load i32* %iSpecies, align 4
  %78 = sext i32 %77 to i64
  %79 = load %struct.SimFlatSt** %1, align 8
  %80 = getelementptr inbounds %struct.SimFlatSt* %79, i32 0, i32 6
  %81 = load %struct.SpeciesDataSt** %80, align 8
  %82 = getelementptr inbounds %struct.SpeciesDataSt* %81, i64 %78
  %83 = getelementptr inbounds %struct.SpeciesDataSt* %82, i32 0, i32 2
  %84 = load double* %83, align 8
  %85 = getelementptr inbounds [4 x double]* %vcmLocal, i32 0, i64 3
  %86 = load double* %85, align 8
  %87 = fadd double %86, %84
  store double %87, double* %85, align 8
  br label %88

; <label>:88                                      ; preds = %28
  %89 = load i32* %ii, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %ii, align 4
  %91 = load i32* %iOff, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %iOff, align 4
  br label %16

; <label>:93                                      ; preds = %16
  br label %94

; <label>:94                                      ; preds = %93
  %95 = load i32* %iBox, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %iBox, align 4
  br label %5

; <label>:97                                      ; preds = %5
  br label %98

; <label>:98                                      ; preds = %97
  call void @profileStart(i32 10)
  br label %99

; <label>:99                                      ; preds = %98
  %100 = getelementptr inbounds [4 x double]* %vcmLocal, i32 0, i32 0
  %101 = getelementptr inbounds [4 x double]* %vcmSum, i32 0, i32 0
  call void @addRealParallel(double* %100, double* %101, i32 4)
  br label %102

; <label>:102                                     ; preds = %99
  call void @profileStop(i32 10)
  br label %103

; <label>:103                                     ; preds = %102
  %104 = getelementptr inbounds [4 x double]* %vcmSum, i32 0, i64 3
  %105 = load double* %104, align 8
  store double %105, double* %totalMass, align 8
  %106 = getelementptr inbounds [4 x double]* %vcmSum, i32 0, i64 0
  %107 = load double* %106, align 8
  %108 = load double* %totalMass, align 8
  %109 = fdiv double %107, %108
  %110 = load double** %2, align 8
  %111 = getelementptr inbounds double* %110, i64 0
  store double %109, double* %111, align 8
  %112 = getelementptr inbounds [4 x double]* %vcmSum, i32 0, i64 1
  %113 = load double* %112, align 8
  %114 = load double* %totalMass, align 8
  %115 = fdiv double %113, %114
  %116 = load double** %2, align 8
  %117 = getelementptr inbounds double* %116, i64 1
  store double %115, double* %117, align 8
  %118 = getelementptr inbounds [4 x double]* %vcmSum, i32 0, i64 2
  %119 = load double* %118, align 8
  %120 = load double* %totalMass, align 8
  %121 = fdiv double %119, %120
  %122 = load double** %2, align 8
  %123 = getelementptr inbounds double* %122, i64 2
  store double %121, double* %123, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.LinkCellSt* @initLinkCells(%struct.DomainSt* %domain, double %cutoff) #0 {
  %1 = alloca %struct.DomainSt*, align 8
  %2 = alloca double, align 8
  %ll = alloca %struct.LinkCellSt*, align 8
  %i = alloca i32, align 4
  %iBox = alloca i32, align 4
  store %struct.DomainSt* %domain, %struct.DomainSt** %1, align 8
  store double %cutoff, double* %2, align 8
  %3 = load %struct.DomainSt** %1, align 8
  %4 = icmp ne %struct.DomainSt* %3, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %8

; <label>:6                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8]* @.str107, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str1108, i32 0, i32 0), i32 85, i8* getelementptr inbounds ([48 x i8]* @__PRETTY_FUNCTION__.initLinkCells, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %8

; <label>:8                                       ; preds = %7, %5
  %9 = call i8* @comdMalloc125(i64 128)
  %10 = bitcast i8* %9 to %struct.LinkCellSt*
  store %struct.LinkCellSt* %10, %struct.LinkCellSt** %ll, align 8
  store i32 0, i32* %i, align 4
  br label %11

; <label>:11                                      ; preds = %82, %8
  %12 = load i32* %i, align 4
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %85

; <label>:14                                      ; preds = %11
  %15 = load i32* %i, align 4
  %16 = sext i32 %15 to i64
  %17 = load %struct.DomainSt** %1, align 8
  %18 = getelementptr inbounds %struct.DomainSt* %17, i32 0, i32 5
  %19 = getelementptr inbounds [3 x double]* %18, i32 0, i64 %16
  %20 = load double* %19, align 8
  %21 = load i32* %i, align 4
  %22 = sext i32 %21 to i64
  %23 = load %struct.LinkCellSt** %ll, align 8
  %24 = getelementptr inbounds %struct.LinkCellSt* %23, i32 0, i32 4
  %25 = getelementptr inbounds [3 x double]* %24, i32 0, i64 %22
  store double %20, double* %25, align 8
  %26 = load i32* %i, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.DomainSt** %1, align 8
  %29 = getelementptr inbounds %struct.DomainSt* %28, i32 0, i32 6
  %30 = getelementptr inbounds [3 x double]* %29, i32 0, i64 %27
  %31 = load double* %30, align 8
  %32 = load i32* %i, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.LinkCellSt** %ll, align 8
  %35 = getelementptr inbounds %struct.LinkCellSt* %34, i32 0, i32 5
  %36 = getelementptr inbounds [3 x double]* %35, i32 0, i64 %33
  store double %31, double* %36, align 8
  %37 = load i32* %i, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.DomainSt** %1, align 8
  %40 = getelementptr inbounds %struct.DomainSt* %39, i32 0, i32 7
  %41 = getelementptr inbounds [3 x double]* %40, i32 0, i64 %38
  %42 = load double* %41, align 8
  %43 = load double* %2, align 8
  %44 = fdiv double %42, %43
  %45 = fptosi double %44 to i32
  %46 = load i32* %i, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.LinkCellSt** %ll, align 8
  %49 = getelementptr inbounds %struct.LinkCellSt* %48, i32 0, i32 0
  %50 = getelementptr inbounds [3 x i32]* %49, i32 0, i64 %47
  store i32 %45, i32* %50, align 4
  %51 = load i32* %i, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.DomainSt** %1, align 8
  %54 = getelementptr inbounds %struct.DomainSt* %53, i32 0, i32 7
  %55 = getelementptr inbounds [3 x double]* %54, i32 0, i64 %52
  %56 = load double* %55, align 8
  %57 = load i32* %i, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.LinkCellSt** %ll, align 8
  %60 = getelementptr inbounds %struct.LinkCellSt* %59, i32 0, i32 0
  %61 = getelementptr inbounds [3 x i32]* %60, i32 0, i64 %58
  %62 = load i32* %61, align 4
  %63 = sitofp i32 %62 to double
  %64 = fdiv double %56, %63
  %65 = load i32* %i, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.LinkCellSt** %ll, align 8
  %68 = getelementptr inbounds %struct.LinkCellSt* %67, i32 0, i32 6
  %69 = getelementptr inbounds [3 x double]* %68, i32 0, i64 %66
  store double %64, double* %69, align 8
  %70 = load i32* %i, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.LinkCellSt** %ll, align 8
  %73 = getelementptr inbounds %struct.LinkCellSt* %72, i32 0, i32 6
  %74 = getelementptr inbounds [3 x double]* %73, i32 0, i64 %71
  %75 = load double* %74, align 8
  %76 = fdiv double 1.000000e+00, %75
  %77 = load i32* %i, align 4
  %78 = sext i32 %77 to i64
  %79 = load %struct.LinkCellSt** %ll, align 8
  %80 = getelementptr inbounds %struct.LinkCellSt* %79, i32 0, i32 7
  %81 = getelementptr inbounds [3 x double]* %80, i32 0, i64 %78
  store double %76, double* %81, align 8
  br label %82

; <label>:82                                      ; preds = %14
  %83 = load i32* %i, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %i, align 4
  br label %11

; <label>:85                                      ; preds = %11
  %86 = load %struct.LinkCellSt** %ll, align 8
  %87 = getelementptr inbounds %struct.LinkCellSt* %86, i32 0, i32 0
  %88 = getelementptr inbounds [3 x i32]* %87, i32 0, i64 0
  %89 = load i32* %88, align 4
  %90 = load %struct.LinkCellSt** %ll, align 8
  %91 = getelementptr inbounds %struct.LinkCellSt* %90, i32 0, i32 0
  %92 = getelementptr inbounds [3 x i32]* %91, i32 0, i64 1
  %93 = load i32* %92, align 4
  %94 = mul nsw i32 %89, %93
  %95 = load %struct.LinkCellSt** %ll, align 8
  %96 = getelementptr inbounds %struct.LinkCellSt* %95, i32 0, i32 0
  %97 = getelementptr inbounds [3 x i32]* %96, i32 0, i64 2
  %98 = load i32* %97, align 4
  %99 = mul nsw i32 %94, %98
  %100 = load %struct.LinkCellSt** %ll, align 8
  %101 = getelementptr inbounds %struct.LinkCellSt* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.LinkCellSt** %ll, align 8
  %103 = getelementptr inbounds %struct.LinkCellSt* %102, i32 0, i32 0
  %104 = getelementptr inbounds [3 x i32]* %103, i32 0, i64 0
  %105 = load i32* %104, align 4
  %106 = add nsw i32 %105, 2
  %107 = load %struct.LinkCellSt** %ll, align 8
  %108 = getelementptr inbounds %struct.LinkCellSt* %107, i32 0, i32 0
  %109 = getelementptr inbounds [3 x i32]* %108, i32 0, i64 1
  %110 = load i32* %109, align 4
  %111 = load %struct.LinkCellSt** %ll, align 8
  %112 = getelementptr inbounds %struct.LinkCellSt* %111, i32 0, i32 0
  %113 = getelementptr inbounds [3 x i32]* %112, i32 0, i64 2
  %114 = load i32* %113, align 4
  %115 = add nsw i32 %110, %114
  %116 = add nsw i32 %115, 2
  %117 = mul nsw i32 %106, %116
  %118 = load %struct.LinkCellSt** %ll, align 8
  %119 = getelementptr inbounds %struct.LinkCellSt* %118, i32 0, i32 0
  %120 = getelementptr inbounds [3 x i32]* %119, i32 0, i64 1
  %121 = load i32* %120, align 4
  %122 = load %struct.LinkCellSt** %ll, align 8
  %123 = getelementptr inbounds %struct.LinkCellSt* %122, i32 0, i32 0
  %124 = getelementptr inbounds [3 x i32]* %123, i32 0, i64 2
  %125 = load i32* %124, align 4
  %126 = mul nsw i32 %121, %125
  %127 = add nsw i32 %117, %126
  %128 = mul nsw i32 2, %127
  %129 = load %struct.LinkCellSt** %ll, align 8
  %130 = getelementptr inbounds %struct.LinkCellSt* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 4
  %131 = load %struct.LinkCellSt** %ll, align 8
  %132 = getelementptr inbounds %struct.LinkCellSt* %131, i32 0, i32 1
  %133 = load i32* %132, align 4
  %134 = load %struct.LinkCellSt** %ll, align 8
  %135 = getelementptr inbounds %struct.LinkCellSt* %134, i32 0, i32 2
  %136 = load i32* %135, align 4
  %137 = add nsw i32 %133, %136
  %138 = load %struct.LinkCellSt** %ll, align 8
  %139 = getelementptr inbounds %struct.LinkCellSt* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 4
  %140 = load %struct.LinkCellSt** %ll, align 8
  %141 = getelementptr inbounds %struct.LinkCellSt* %140, i32 0, i32 3
  %142 = load i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 4
  %145 = call i8* @comdMalloc125(i64 %144)
  %146 = bitcast i8* %145 to i32*
  %147 = load %struct.LinkCellSt** %ll, align 8
  %148 = getelementptr inbounds %struct.LinkCellSt* %147, i32 0, i32 8
  store i32* %146, i32** %148, align 8
  store i32 0, i32* %iBox, align 4
  br label %149

; <label>:149                                     ; preds = %162, %85
  %150 = load i32* %iBox, align 4
  %151 = load %struct.LinkCellSt** %ll, align 8
  %152 = getelementptr inbounds %struct.LinkCellSt* %151, i32 0, i32 3
  %153 = load i32* %152, align 4
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %165

; <label>:155                                     ; preds = %149
  %156 = load i32* %iBox, align 4
  %157 = sext i32 %156 to i64
  %158 = load %struct.LinkCellSt** %ll, align 8
  %159 = getelementptr inbounds %struct.LinkCellSt* %158, i32 0, i32 8
  %160 = load i32** %159, align 8
  %161 = getelementptr inbounds i32* %160, i64 %157
  store i32 0, i32* %161, align 4
  br label %162

; <label>:162                                     ; preds = %155
  %163 = load i32* %iBox, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %iBox, align 4
  br label %149

; <label>:165                                     ; preds = %149
  %166 = load %struct.LinkCellSt** %ll, align 8
  %167 = getelementptr inbounds %struct.LinkCellSt* %166, i32 0, i32 0
  %168 = getelementptr inbounds [3 x i32]* %167, i32 0, i64 0
  %169 = load i32* %168, align 4
  %170 = icmp sge i32 %169, 2
  br i1 %170, label %171, label %184

; <label>:171                                     ; preds = %165
  %172 = load %struct.LinkCellSt** %ll, align 8
  %173 = getelementptr inbounds %struct.LinkCellSt* %172, i32 0, i32 0
  %174 = getelementptr inbounds [3 x i32]* %173, i32 0, i64 1
  %175 = load i32* %174, align 4
  %176 = icmp sge i32 %175, 2
  br i1 %176, label %177, label %184

; <label>:177                                     ; preds = %171
  %178 = load %struct.LinkCellSt** %ll, align 8
  %179 = getelementptr inbounds %struct.LinkCellSt* %178, i32 0, i32 0
  %180 = getelementptr inbounds [3 x i32]* %179, i32 0, i64 2
  %181 = load i32* %180, align 4
  %182 = icmp sge i32 %181, 2
  br i1 %182, label %183, label %184

; <label>:183                                     ; preds = %177
  br label %186

; <label>:184                                     ; preds = %177, %171, %165
  call void @__assert_fail(i8* getelementptr inbounds ([75 x i8]* @.str2109, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str1108, i32 0, i32 0), i32 109, i8* getelementptr inbounds ([48 x i8]* @__PRETTY_FUNCTION__.initLinkCells, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %186

; <label>:186                                     ; preds = %185, %183
  %187 = load %struct.LinkCellSt** %ll, align 8
  ret %struct.LinkCellSt* %187
}

; Function Attrs: nounwind uwtable
define void @destroyLinkCells(%struct.LinkCellSt** %boxes) #0 {
  %1 = alloca %struct.LinkCellSt**, align 8
  store %struct.LinkCellSt** %boxes, %struct.LinkCellSt*** %1, align 8
  %2 = load %struct.LinkCellSt*** %1, align 8
  %3 = icmp ne %struct.LinkCellSt** %2, null
  br i1 %3, label %5, label %4

; <label>:4                                       ; preds = %0
  br label %20

; <label>:5                                       ; preds = %0
  %6 = load %struct.LinkCellSt*** %1, align 8
  %7 = load %struct.LinkCellSt** %6, align 8
  %8 = icmp ne %struct.LinkCellSt* %7, null
  br i1 %8, label %10, label %9

; <label>:9                                       ; preds = %5
  br label %20

; <label>:10                                      ; preds = %5
  %11 = load %struct.LinkCellSt*** %1, align 8
  %12 = load %struct.LinkCellSt** %11, align 8
  %13 = getelementptr inbounds %struct.LinkCellSt* %12, i32 0, i32 8
  %14 = load i32** %13, align 8
  %15 = bitcast i32* %14 to i8*
  call void @comdFree126(i8* %15)
  %16 = load %struct.LinkCellSt*** %1, align 8
  %17 = load %struct.LinkCellSt** %16, align 8
  %18 = bitcast %struct.LinkCellSt* %17 to i8*
  call void @comdFree126(i8* %18)
  %19 = load %struct.LinkCellSt*** %1, align 8
  store %struct.LinkCellSt* null, %struct.LinkCellSt** %19, align 8
  br label %20

; <label>:20                                      ; preds = %10, %9, %4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @getNeighborBoxes(%struct.LinkCellSt* %boxes, i32 %iBox, i32* %nbrBoxes) #0 {
  %1 = alloca %struct.LinkCellSt*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %iz = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.LinkCellSt* %boxes, %struct.LinkCellSt** %1, align 8
  store i32 %iBox, i32* %2, align 4
  store i32* %nbrBoxes, i32** %3, align 8
  %4 = load %struct.LinkCellSt** %1, align 8
  %5 = load i32* %2, align 4
  call void @getTuple(%struct.LinkCellSt* %4, i32 %5, i32* %ix, i32* %iy, i32* %iz)
  store i32 0, i32* %count, align 4
  %6 = load i32* %ix, align 4
  %7 = sub nsw i32 %6, 1
  store i32 %7, i32* %i, align 4
  br label %8

; <label>:8                                       ; preds = %48, %0
  %9 = load i32* %i, align 4
  %10 = load i32* %ix, align 4
  %11 = add nsw i32 %10, 1
  %12 = icmp sle i32 %9, %11
  br i1 %12, label %13, label %51

; <label>:13                                      ; preds = %8
  %14 = load i32* %iy, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %j, align 4
  br label %16

; <label>:16                                      ; preds = %44, %13
  %17 = load i32* %j, align 4
  %18 = load i32* %iy, align 4
  %19 = add nsw i32 %18, 1
  %20 = icmp sle i32 %17, %19
  br i1 %20, label %21, label %47

; <label>:21                                      ; preds = %16
  %22 = load i32* %iz, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %k, align 4
  br label %24

; <label>:24                                      ; preds = %40, %21
  %25 = load i32* %k, align 4
  %26 = load i32* %iz, align 4
  %27 = add nsw i32 %26, 1
  %28 = icmp sle i32 %25, %27
  br i1 %28, label %29, label %43

; <label>:29                                      ; preds = %24
  %30 = load %struct.LinkCellSt** %1, align 8
  %31 = load i32* %i, align 4
  %32 = load i32* %j, align 4
  %33 = load i32* %k, align 4
  %34 = call i32 @getBoxFromTuple(%struct.LinkCellSt* %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32* %count, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %count, align 4
  %37 = sext i32 %35 to i64
  %38 = load i32** %3, align 8
  %39 = getelementptr inbounds i32* %38, i64 %37
  store i32 %34, i32* %39, align 4
  br label %40

; <label>:40                                      ; preds = %29
  %41 = load i32* %k, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %k, align 4
  br label %24

; <label>:43                                      ; preds = %24
  br label %44

; <label>:44                                      ; preds = %43
  %45 = load i32* %j, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %j, align 4
  br label %16

; <label>:47                                      ; preds = %16
  br label %48

; <label>:48                                      ; preds = %47
  %49 = load i32* %i, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %i, align 4
  br label %8

; <label>:51                                      ; preds = %8
  %52 = load i32* %count, align 4
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define i32 @getBoxFromTuple(%struct.LinkCellSt* %boxes, i32 %ix, i32 %iy, i32 %iz) #0 {
  %1 = alloca %struct.LinkCellSt*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %iBox = alloca i32, align 4
  %gridSize = alloca i32*, align 8
  store %struct.LinkCellSt* %boxes, %struct.LinkCellSt** %1, align 8
  store i32 %ix, i32* %2, align 4
  store i32 %iy, i32* %3, align 4
  store i32 %iz, i32* %4, align 4
  store i32 0, i32* %iBox, align 4
  %5 = load %struct.LinkCellSt** %1, align 8
  %6 = getelementptr inbounds %struct.LinkCellSt* %5, i32 0, i32 0
  %7 = getelementptr inbounds [3 x i32]* %6, i32 0, i32 0
  store i32* %7, i32** %gridSize, align 8
  %8 = load i32* %4, align 4
  %9 = load i32** %gridSize, align 8
  %10 = getelementptr inbounds i32* %9, i64 2
  %11 = load i32* %10, align 4
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %57

; <label>:13                                      ; preds = %0
  %14 = load %struct.LinkCellSt** %1, align 8
  %15 = getelementptr inbounds %struct.LinkCellSt* %14, i32 0, i32 1
  %16 = load i32* %15, align 4
  %17 = load i32** %gridSize, align 8
  %18 = getelementptr inbounds i32* %17, i64 2
  %19 = load i32* %18, align 4
  %20 = mul nsw i32 2, %19
  %21 = load i32** %gridSize, align 8
  %22 = getelementptr inbounds i32* %21, i64 1
  %23 = load i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  %25 = add nsw i32 %16, %24
  %26 = load i32** %gridSize, align 8
  %27 = getelementptr inbounds i32* %26, i64 2
  %28 = load i32* %27, align 4
  %29 = mul nsw i32 2, %28
  %30 = load i32** %gridSize, align 8
  %31 = getelementptr inbounds i32* %30, i64 0
  %32 = load i32* %31, align 4
  %33 = add nsw i32 %32, 2
  %34 = mul nsw i32 %29, %33
  %35 = add nsw i32 %25, %34
  %36 = load i32** %gridSize, align 8
  %37 = getelementptr inbounds i32* %36, i64 0
  %38 = load i32* %37, align 4
  %39 = add nsw i32 %38, 2
  %40 = load i32** %gridSize, align 8
  %41 = getelementptr inbounds i32* %40, i64 1
  %42 = load i32* %41, align 4
  %43 = add nsw i32 %42, 2
  %44 = mul nsw i32 %39, %43
  %45 = add nsw i32 %35, %44
  %46 = load i32** %gridSize, align 8
  %47 = getelementptr inbounds i32* %46, i64 0
  %48 = load i32* %47, align 4
  %49 = add nsw i32 %48, 2
  %50 = load i32* %3, align 4
  %51 = add nsw i32 %50, 1
  %52 = mul nsw i32 %49, %51
  %53 = add nsw i32 %45, %52
  %54 = load i32* %2, align 4
  %55 = add nsw i32 %54, 1
  %56 = add nsw i32 %53, %55
  store i32 %56, i32* %iBox, align 4
  br label %222

; <label>:57                                      ; preds = %0
  %58 = load i32* %4, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %94

; <label>:60                                      ; preds = %57
  %61 = load %struct.LinkCellSt** %1, align 8
  %62 = getelementptr inbounds %struct.LinkCellSt* %61, i32 0, i32 1
  %63 = load i32* %62, align 4
  %64 = load i32** %gridSize, align 8
  %65 = getelementptr inbounds i32* %64, i64 2
  %66 = load i32* %65, align 4
  %67 = mul nsw i32 2, %66
  %68 = load i32** %gridSize, align 8
  %69 = getelementptr inbounds i32* %68, i64 1
  %70 = load i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  %72 = add nsw i32 %63, %71
  %73 = load i32** %gridSize, align 8
  %74 = getelementptr inbounds i32* %73, i64 2
  %75 = load i32* %74, align 4
  %76 = mul nsw i32 2, %75
  %77 = load i32** %gridSize, align 8
  %78 = getelementptr inbounds i32* %77, i64 0
  %79 = load i32* %78, align 4
  %80 = add nsw i32 %79, 2
  %81 = mul nsw i32 %76, %80
  %82 = add nsw i32 %72, %81
  %83 = load i32** %gridSize, align 8
  %84 = getelementptr inbounds i32* %83, i64 0
  %85 = load i32* %84, align 4
  %86 = add nsw i32 %85, 2
  %87 = load i32* %3, align 4
  %88 = add nsw i32 %87, 1
  %89 = mul nsw i32 %86, %88
  %90 = add nsw i32 %82, %89
  %91 = load i32* %2, align 4
  %92 = add nsw i32 %91, 1
  %93 = add nsw i32 %90, %92
  store i32 %93, i32* %iBox, align 4
  br label %221

; <label>:94                                      ; preds = %57
  %95 = load i32* %3, align 4
  %96 = load i32** %gridSize, align 8
  %97 = getelementptr inbounds i32* %96, i64 1
  %98 = load i32* %97, align 4
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %100, label %132

; <label>:100                                     ; preds = %94
  %101 = load %struct.LinkCellSt** %1, align 8
  %102 = getelementptr inbounds %struct.LinkCellSt* %101, i32 0, i32 1
  %103 = load i32* %102, align 4
  %104 = load i32** %gridSize, align 8
  %105 = getelementptr inbounds i32* %104, i64 2
  %106 = load i32* %105, align 4
  %107 = mul nsw i32 2, %106
  %108 = load i32** %gridSize, align 8
  %109 = getelementptr inbounds i32* %108, i64 1
  %110 = load i32* %109, align 4
  %111 = mul nsw i32 %107, %110
  %112 = add nsw i32 %103, %111
  %113 = load i32** %gridSize, align 8
  %114 = getelementptr inbounds i32* %113, i64 2
  %115 = load i32* %114, align 4
  %116 = load i32** %gridSize, align 8
  %117 = getelementptr inbounds i32* %116, i64 0
  %118 = load i32* %117, align 4
  %119 = add nsw i32 %118, 2
  %120 = mul nsw i32 %115, %119
  %121 = add nsw i32 %112, %120
  %122 = load i32** %gridSize, align 8
  %123 = getelementptr inbounds i32* %122, i64 0
  %124 = load i32* %123, align 4
  %125 = add nsw i32 %124, 2
  %126 = load i32* %4, align 4
  %127 = mul nsw i32 %125, %126
  %128 = add nsw i32 %121, %127
  %129 = load i32* %2, align 4
  %130 = add nsw i32 %129, 1
  %131 = add nsw i32 %128, %130
  store i32 %131, i32* %iBox, align 4
  br label %220

; <label>:132                                     ; preds = %94
  %133 = load i32* %3, align 4
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %135, label %158

; <label>:135                                     ; preds = %132
  %136 = load %struct.LinkCellSt** %1, align 8
  %137 = getelementptr inbounds %struct.LinkCellSt* %136, i32 0, i32 1
  %138 = load i32* %137, align 4
  %139 = load i32** %gridSize, align 8
  %140 = getelementptr inbounds i32* %139, i64 2
  %141 = load i32* %140, align 4
  %142 = mul nsw i32 2, %141
  %143 = load i32** %gridSize, align 8
  %144 = getelementptr inbounds i32* %143, i64 1
  %145 = load i32* %144, align 4
  %146 = mul nsw i32 %142, %145
  %147 = add nsw i32 %138, %146
  %148 = load i32* %4, align 4
  %149 = load i32** %gridSize, align 8
  %150 = getelementptr inbounds i32* %149, i64 0
  %151 = load i32* %150, align 4
  %152 = add nsw i32 %151, 2
  %153 = mul nsw i32 %148, %152
  %154 = add nsw i32 %147, %153
  %155 = load i32* %2, align 4
  %156 = add nsw i32 %155, 1
  %157 = add nsw i32 %154, %156
  store i32 %157, i32* %iBox, align 4
  br label %219

; <label>:158                                     ; preds = %132
  %159 = load i32* %2, align 4
  %160 = load i32** %gridSize, align 8
  %161 = getelementptr inbounds i32* %160, i64 0
  %162 = load i32* %161, align 4
  %163 = icmp eq i32 %159, %162
  br i1 %163, label %164, label %184

; <label>:164                                     ; preds = %158
  %165 = load %struct.LinkCellSt** %1, align 8
  %166 = getelementptr inbounds %struct.LinkCellSt* %165, i32 0, i32 1
  %167 = load i32* %166, align 4
  %168 = load i32** %gridSize, align 8
  %169 = getelementptr inbounds i32* %168, i64 1
  %170 = load i32* %169, align 4
  %171 = load i32** %gridSize, align 8
  %172 = getelementptr inbounds i32* %171, i64 2
  %173 = load i32* %172, align 4
  %174 = mul nsw i32 %170, %173
  %175 = add nsw i32 %167, %174
  %176 = load i32* %4, align 4
  %177 = load i32** %gridSize, align 8
  %178 = getelementptr inbounds i32* %177, i64 1
  %179 = load i32* %178, align 4
  %180 = mul nsw i32 %176, %179
  %181 = add nsw i32 %175, %180
  %182 = load i32* %3, align 4
  %183 = add nsw i32 %181, %182
  store i32 %183, i32* %iBox, align 4
  br label %218

; <label>:184                                     ; preds = %158
  %185 = load i32* %2, align 4
  %186 = icmp eq i32 %185, -1
  br i1 %186, label %187, label %199

; <label>:187                                     ; preds = %184
  %188 = load %struct.LinkCellSt** %1, align 8
  %189 = getelementptr inbounds %struct.LinkCellSt* %188, i32 0, i32 1
  %190 = load i32* %189, align 4
  %191 = load i32* %4, align 4
  %192 = load i32** %gridSize, align 8
  %193 = getelementptr inbounds i32* %192, i64 1
  %194 = load i32* %193, align 4
  %195 = mul nsw i32 %191, %194
  %196 = add nsw i32 %190, %195
  %197 = load i32* %3, align 4
  %198 = add nsw i32 %196, %197
  store i32 %198, i32* %iBox, align 4
  br label %217

; <label>:199                                     ; preds = %184
  %200 = load i32* %2, align 4
  %201 = load i32** %gridSize, align 8
  %202 = getelementptr inbounds i32* %201, i64 0
  %203 = load i32* %202, align 4
  %204 = load i32* %3, align 4
  %205 = mul nsw i32 %203, %204
  %206 = add nsw i32 %200, %205
  %207 = load i32** %gridSize, align 8
  %208 = getelementptr inbounds i32* %207, i64 0
  %209 = load i32* %208, align 4
  %210 = load i32** %gridSize, align 8
  %211 = getelementptr inbounds i32* %210, i64 1
  %212 = load i32* %211, align 4
  %213 = mul nsw i32 %209, %212
  %214 = load i32* %4, align 4
  %215 = mul nsw i32 %213, %214
  %216 = add nsw i32 %206, %215
  store i32 %216, i32* %iBox, align 4
  br label %217

; <label>:217                                     ; preds = %199, %187
  br label %218

; <label>:218                                     ; preds = %217, %164
  br label %219

; <label>:219                                     ; preds = %218, %135
  br label %220

; <label>:220                                     ; preds = %219, %100
  br label %221

; <label>:221                                     ; preds = %220, %60
  br label %222

; <label>:222                                     ; preds = %221, %13
  %223 = load i32* %iBox, align 4
  %224 = icmp sge i32 %223, 0
  br i1 %224, label %225, label %226

; <label>:225                                     ; preds = %222
  br label %228

; <label>:226                                     ; preds = %222
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8]* @.str3110, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str1108, i32 0, i32 0), i32 233, i8* getelementptr inbounds ([47 x i8]* @__PRETTY_FUNCTION__.getBoxFromTuple, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %228

; <label>:228                                     ; preds = %227, %225
  %229 = load i32* %iBox, align 4
  %230 = load %struct.LinkCellSt** %1, align 8
  %231 = getelementptr inbounds %struct.LinkCellSt* %230, i32 0, i32 3
  %232 = load i32* %231, align 4
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %235

; <label>:234                                     ; preds = %228
  br label %237

; <label>:235                                     ; preds = %228
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str4111, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str1108, i32 0, i32 0), i32 234, i8* getelementptr inbounds ([47 x i8]* @__PRETTY_FUNCTION__.getBoxFromTuple, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %237

; <label>:237                                     ; preds = %236, %234
  %238 = load i32* %iBox, align 4
  ret i32 %238
}

; Function Attrs: nounwind uwtable
define void @putAtomInBox(%struct.LinkCellSt* %boxes, %struct.AtomsSt* %atoms, i32 %gid, i32 %iType, double %x, double %y, double %z, double %px, double %py, double %pz) #0 {
  %1 = alloca %struct.LinkCellSt*, align 8
  %2 = alloca %struct.AtomsSt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %xyz = alloca [3 x double], align 16
  %iBox = alloca i32, align 4
  %iOff = alloca i32, align 4
  store %struct.LinkCellSt* %boxes, %struct.LinkCellSt** %1, align 8
  store %struct.AtomsSt* %atoms, %struct.AtomsSt** %2, align 8
  store i32 %gid, i32* %3, align 4
  store i32 %iType, i32* %4, align 4
  store double %x, double* %5, align 8
  store double %y, double* %6, align 8
  store double %z, double* %7, align 8
  store double %px, double* %8, align 8
  store double %py, double* %9, align 8
  store double %pz, double* %10, align 8
  %11 = getelementptr inbounds [3 x double]* %xyz, i64 0, i64 0
  %12 = load double* %5, align 8
  store double %12, double* %11
  %13 = getelementptr inbounds double* %11, i64 1
  %14 = load double* %6, align 8
  store double %14, double* %13
  %15 = getelementptr inbounds double* %13, i64 1
  %16 = load double* %7, align 8
  store double %16, double* %15
  %17 = load %struct.LinkCellSt** %1, align 8
  %18 = getelementptr inbounds [3 x double]* %xyz, i32 0, i32 0
  %19 = call i32 @getBoxFromCoord(%struct.LinkCellSt* %17, double* %18)
  store i32 %19, i32* %iBox, align 4
  %20 = load i32* %iBox, align 4
  %21 = mul nsw i32 %20, 64
  store i32 %21, i32* %iOff, align 4
  %22 = load i32* %iBox, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct.LinkCellSt** %1, align 8
  %25 = getelementptr inbounds %struct.LinkCellSt* %24, i32 0, i32 8
  %26 = load i32** %25, align 8
  %27 = getelementptr inbounds i32* %26, i64 %23
  %28 = load i32* %27, align 4
  %29 = load i32* %iOff, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %iOff, align 4
  %31 = load i32* %iBox, align 4
  %32 = load %struct.LinkCellSt** %1, align 8
  %33 = getelementptr inbounds %struct.LinkCellSt* %32, i32 0, i32 1
  %34 = load i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %41

; <label>:36                                      ; preds = %0
  %37 = load %struct.AtomsSt** %2, align 8
  %38 = getelementptr inbounds %struct.AtomsSt* %37, i32 0, i32 0
  %39 = load i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

; <label>:41                                      ; preds = %36, %0
  %42 = load i32* %iBox, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.LinkCellSt** %1, align 8
  %45 = getelementptr inbounds %struct.LinkCellSt* %44, i32 0, i32 8
  %46 = load i32** %45, align 8
  %47 = getelementptr inbounds i32* %46, i64 %43
  %48 = load i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load i32* %3, align 4
  %51 = load i32* %iOff, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.AtomsSt** %2, align 8
  %54 = getelementptr inbounds %struct.AtomsSt* %53, i32 0, i32 2
  %55 = load i32** %54, align 8
  %56 = getelementptr inbounds i32* %55, i64 %52
  store i32 %50, i32* %56, align 4
  %57 = load i32* %4, align 4
  %58 = load i32* %iOff, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.AtomsSt** %2, align 8
  %61 = getelementptr inbounds %struct.AtomsSt* %60, i32 0, i32 3
  %62 = load i32** %61, align 8
  %63 = getelementptr inbounds i32* %62, i64 %59
  store i32 %57, i32* %63, align 4
  %64 = load double* %5, align 8
  %65 = load i32* %iOff, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.AtomsSt** %2, align 8
  %68 = getelementptr inbounds %struct.AtomsSt* %67, i32 0, i32 4
  %69 = load [3 x double]** %68, align 8
  %70 = getelementptr inbounds [3 x double]* %69, i64 %66
  %71 = getelementptr inbounds [3 x double]* %70, i32 0, i64 0
  store double %64, double* %71, align 8
  %72 = load double* %6, align 8
  %73 = load i32* %iOff, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.AtomsSt** %2, align 8
  %76 = getelementptr inbounds %struct.AtomsSt* %75, i32 0, i32 4
  %77 = load [3 x double]** %76, align 8
  %78 = getelementptr inbounds [3 x double]* %77, i64 %74
  %79 = getelementptr inbounds [3 x double]* %78, i32 0, i64 1
  store double %72, double* %79, align 8
  %80 = load double* %7, align 8
  %81 = load i32* %iOff, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.AtomsSt** %2, align 8
  %84 = getelementptr inbounds %struct.AtomsSt* %83, i32 0, i32 4
  %85 = load [3 x double]** %84, align 8
  %86 = getelementptr inbounds [3 x double]* %85, i64 %82
  %87 = getelementptr inbounds [3 x double]* %86, i32 0, i64 2
  store double %80, double* %87, align 8
  %88 = load double* %8, align 8
  %89 = load i32* %iOff, align 4
  %90 = sext i32 %89 to i64
  %91 = load %struct.AtomsSt** %2, align 8
  %92 = getelementptr inbounds %struct.AtomsSt* %91, i32 0, i32 5
  %93 = load [3 x double]** %92, align 8
  %94 = getelementptr inbounds [3 x double]* %93, i64 %90
  %95 = getelementptr inbounds [3 x double]* %94, i32 0, i64 0
  store double %88, double* %95, align 8
  %96 = load double* %9, align 8
  %97 = load i32* %iOff, align 4
  %98 = sext i32 %97 to i64
  %99 = load %struct.AtomsSt** %2, align 8
  %100 = getelementptr inbounds %struct.AtomsSt* %99, i32 0, i32 5
  %101 = load [3 x double]** %100, align 8
  %102 = getelementptr inbounds [3 x double]* %101, i64 %98
  %103 = getelementptr inbounds [3 x double]* %102, i32 0, i64 1
  store double %96, double* %103, align 8
  %104 = load double* %10, align 8
  %105 = load i32* %iOff, align 4
  %106 = sext i32 %105 to i64
  %107 = load %struct.AtomsSt** %2, align 8
  %108 = getelementptr inbounds %struct.AtomsSt* %107, i32 0, i32 5
  %109 = load [3 x double]** %108, align 8
  %110 = getelementptr inbounds [3 x double]* %109, i64 %106
  %111 = getelementptr inbounds [3 x double]* %110, i32 0, i64 2
  store double %104, double* %111, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @moveAtom(%struct.LinkCellSt* %boxes, %struct.AtomsSt* %atoms, i32 %iId, i32 %iBox, i32 %jBox) #0 {
  %1 = alloca %struct.LinkCellSt*, align 8
  %2 = alloca %struct.AtomsSt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %nj = alloca i32, align 4
  %ni = alloca i32, align 4
  store %struct.LinkCellSt* %boxes, %struct.LinkCellSt** %1, align 8
  store %struct.AtomsSt* %atoms, %struct.AtomsSt** %2, align 8
  store i32 %iId, i32* %3, align 4
  store i32 %iBox, i32* %4, align 4
  store i32 %jBox, i32* %5, align 4
  %6 = load i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = load %struct.LinkCellSt** %1, align 8
  %9 = getelementptr inbounds %struct.LinkCellSt* %8, i32 0, i32 8
  %10 = load i32** %9, align 8
  %11 = getelementptr inbounds i32* %10, i64 %7
  %12 = load i32* %11, align 4
  store i32 %12, i32* %nj, align 4
  %13 = load %struct.LinkCellSt** %1, align 8
  %14 = load %struct.AtomsSt** %2, align 8
  %15 = load i32* %3, align 4
  %16 = load i32* %4, align 4
  %17 = load i32* %nj, align 4
  %18 = load i32* %5, align 4
  call void @copyAtom(%struct.LinkCellSt* %13, %struct.AtomsSt* %14, i32 %15, i32 %16, i32 %17, i32 %18)
  %19 = load i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.LinkCellSt** %1, align 8
  %22 = getelementptr inbounds %struct.LinkCellSt* %21, i32 0, i32 8
  %23 = load i32** %22, align 8
  %24 = getelementptr inbounds i32* %23, i64 %20
  %25 = load i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.LinkCellSt** %1, align 8
  %30 = getelementptr inbounds %struct.LinkCellSt* %29, i32 0, i32 8
  %31 = load i32** %30, align 8
  %32 = getelementptr inbounds i32* %31, i64 %28
  %33 = load i32* %32, align 4
  %34 = icmp slt i32 %33, 64
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %0
  br label %38

; <label>:36                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8]* @.str5112, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str1108, i32 0, i32 0), i32 249, i8* getelementptr inbounds ([50 x i8]* @__PRETTY_FUNCTION__.moveAtom, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = load i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.LinkCellSt** %1, align 8
  %42 = getelementptr inbounds %struct.LinkCellSt* %41, i32 0, i32 8
  %43 = load i32** %42, align 8
  %44 = getelementptr inbounds i32* %43, i64 %40
  %45 = load i32* %44, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 4
  %47 = load i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.LinkCellSt** %1, align 8
  %50 = getelementptr inbounds %struct.LinkCellSt* %49, i32 0, i32 8
  %51 = load i32** %50, align 8
  %52 = getelementptr inbounds i32* %51, i64 %48
  %53 = load i32* %52, align 4
  store i32 %53, i32* %ni, align 4
  %54 = load i32* %ni, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

; <label>:56                                      ; preds = %38
  %57 = load %struct.LinkCellSt** %1, align 8
  %58 = load %struct.AtomsSt** %2, align 8
  %59 = load i32* %ni, align 4
  %60 = load i32* %4, align 4
  %61 = load i32* %3, align 4
  %62 = load i32* %4, align 4
  call void @copyAtom(%struct.LinkCellSt* %57, %struct.AtomsSt* %58, i32 %59, i32 %60, i32 %61, i32 %62)
  br label %63

; <label>:63                                      ; preds = %56, %38
  %64 = load i32* %5, align 4
  %65 = load %struct.LinkCellSt** %1, align 8
  %66 = getelementptr inbounds %struct.LinkCellSt* %65, i32 0, i32 1
  %67 = load i32* %66, align 4
  %68 = icmp sgt i32 %64, %67
  br i1 %68, label %69, label %74

; <label>:69                                      ; preds = %63
  %70 = load %struct.AtomsSt** %2, align 8
  %71 = getelementptr inbounds %struct.AtomsSt* %70, i32 0, i32 0
  %72 = load i32* %71, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 4
  br label %74

; <label>:74                                      ; preds = %69, %63
  ret void
}

; Function Attrs: nounwind uwtable
define void @updateLinkCells(%struct.LinkCellSt* %boxes, %struct.AtomsSt* %atoms) #0 {
  %1 = alloca %struct.LinkCellSt*, align 8
  %2 = alloca %struct.AtomsSt*, align 8
  %iBox = alloca i32, align 4
  %iOff = alloca i32, align 4
  %ii = alloca i32, align 4
  %jBox = alloca i32, align 4
  store %struct.LinkCellSt* %boxes, %struct.LinkCellSt** %1, align 8
  store %struct.AtomsSt* %atoms, %struct.AtomsSt** %2, align 8
  %3 = load %struct.LinkCellSt** %1, align 8
  call void @emptyHaloCells(%struct.LinkCellSt* %3)
  store i32 0, i32* %iBox, align 4
  br label %4

; <label>:4                                       ; preds = %49, %0
  %5 = load i32* %iBox, align 4
  %6 = load %struct.LinkCellSt** %1, align 8
  %7 = getelementptr inbounds %struct.LinkCellSt* %6, i32 0, i32 1
  %8 = load i32* %7, align 4
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %52

; <label>:10                                      ; preds = %4
  %11 = load i32* %iBox, align 4
  %12 = mul nsw i32 %11, 64
  store i32 %12, i32* %iOff, align 4
  store i32 0, i32* %ii, align 4
  br label %13

; <label>:13                                      ; preds = %47, %10
  %14 = load i32* %ii, align 4
  %15 = load i32* %iBox, align 4
  %16 = sext i32 %15 to i64
  %17 = load %struct.LinkCellSt** %1, align 8
  %18 = getelementptr inbounds %struct.LinkCellSt* %17, i32 0, i32 8
  %19 = load i32** %18, align 8
  %20 = getelementptr inbounds i32* %19, i64 %16
  %21 = load i32* %20, align 4
  %22 = icmp slt i32 %14, %21
  br i1 %22, label %23, label %48

; <label>:23                                      ; preds = %13
  %24 = load %struct.LinkCellSt** %1, align 8
  %25 = load i32* %iOff, align 4
  %26 = load i32* %ii, align 4
  %27 = add nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = load %struct.AtomsSt** %2, align 8
  %30 = getelementptr inbounds %struct.AtomsSt* %29, i32 0, i32 4
  %31 = load [3 x double]** %30, align 8
  %32 = getelementptr inbounds [3 x double]* %31, i64 %28
  %33 = getelementptr inbounds [3 x double]* %32, i32 0, i32 0
  %34 = call i32 @getBoxFromCoord(%struct.LinkCellSt* %24, double* %33)
  store i32 %34, i32* %jBox, align 4
  %35 = load i32* %jBox, align 4
  %36 = load i32* %iBox, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %44

; <label>:38                                      ; preds = %23
  %39 = load %struct.LinkCellSt** %1, align 8
  %40 = load %struct.AtomsSt** %2, align 8
  %41 = load i32* %ii, align 4
  %42 = load i32* %iBox, align 4
  %43 = load i32* %jBox, align 4
  call void @moveAtom(%struct.LinkCellSt* %39, %struct.AtomsSt* %40, i32 %41, i32 %42, i32 %43)
  br label %47

; <label>:44                                      ; preds = %23
  %45 = load i32* %ii, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %ii, align 4
  br label %47

; <label>:47                                      ; preds = %44, %38
  br label %13

; <label>:48                                      ; preds = %13
  br label %49

; <label>:49                                      ; preds = %48
  %50 = load i32* %iBox, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %iBox, align 4
  br label %4

; <label>:52                                      ; preds = %4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @maxOccupancy(%struct.LinkCellSt* %boxes) #0 {
  %1 = alloca %struct.LinkCellSt*, align 8
  %localMax = alloca i32, align 4
  %ii = alloca i32, align 4
  %globalMax = alloca i32, align 4
  store %struct.LinkCellSt* %boxes, %struct.LinkCellSt** %1, align 8
  store i32 0, i32* %localMax, align 4
  store i32 0, i32* %ii, align 4
  br label %2

; <label>:2                                       ; preds = %30, %0
  %3 = load i32* %ii, align 4
  %4 = load %struct.LinkCellSt** %1, align 8
  %5 = getelementptr inbounds %struct.LinkCellSt* %4, i32 0, i32 1
  %6 = load i32* %5, align 4
  %7 = icmp slt i32 %3, %6
  br i1 %7, label %8, label %33

; <label>:8                                       ; preds = %2
  %9 = load i32* %localMax, align 4
  %10 = load i32* %ii, align 4
  %11 = sext i32 %10 to i64
  %12 = load %struct.LinkCellSt** %1, align 8
  %13 = getelementptr inbounds %struct.LinkCellSt* %12, i32 0, i32 8
  %14 = load i32** %13, align 8
  %15 = getelementptr inbounds i32* %14, i64 %11
  %16 = load i32* %15, align 4
  %17 = icmp sgt i32 %9, %16
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %8
  %19 = load i32* %localMax, align 4
  br label %28

; <label>:20                                      ; preds = %8
  %21 = load i32* %ii, align 4
  %22 = sext i32 %21 to i64
  %23 = load %struct.LinkCellSt** %1, align 8
  %24 = getelementptr inbounds %struct.LinkCellSt* %23, i32 0, i32 8
  %25 = load i32** %24, align 8
  %26 = getelementptr inbounds i32* %25, i64 %22
  %27 = load i32* %26, align 4
  br label %28

; <label>:28                                      ; preds = %20, %18
  %29 = phi i32 [ %19, %18 ], [ %27, %20 ]
  store i32 %29, i32* %localMax, align 4
  br label %30

; <label>:30                                      ; preds = %28
  %31 = load i32* %ii, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %ii, align 4
  br label %2

; <label>:33                                      ; preds = %2
  br label %34

; <label>:34                                      ; preds = %33
  call void @profileStart(i32 10)
  br label %35

; <label>:35                                      ; preds = %34
  call void @maxIntParallel(i32* %localMax, i32* %globalMax, i32 1)
  br label %36

; <label>:36                                      ; preds = %35
  call void @profileStop(i32 10)
  br label %37

; <label>:37                                      ; preds = %36
  %38 = load i32* %globalMax, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i8* @comdMalloc125(i64 %iSize) #0 {
  %1 = alloca i64, align 8
  store i64 %iSize, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = call noalias i8* @malloc(i64 %2) #5
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define internal void @comdFree126(i8* %ptr) #0 {
  %1 = alloca i8*, align 8
  store i8* %ptr, i8** %1, align 8
  %2 = load i8** %1, align 8
  call void @free(i8* %2) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @getTuple(%struct.LinkCellSt* %boxes, i32 %iBox, i32* %ixp, i32* %iyp, i32* %izp) #0 {
  %1 = alloca %struct.LinkCellSt*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %iz = alloca i32, align 4
  %gridSize = alloca i32*, align 8
  %ink = alloca i32, align 4
  store %struct.LinkCellSt* %boxes, %struct.LinkCellSt** %1, align 8
  store i32 %iBox, i32* %2, align 4
  store i32* %ixp, i32** %3, align 8
  store i32* %iyp, i32** %4, align 8
  store i32* %izp, i32** %5, align 8
  %6 = load %struct.LinkCellSt** %1, align 8
  %7 = getelementptr inbounds %struct.LinkCellSt* %6, i32 0, i32 0
  %8 = getelementptr inbounds [3 x i32]* %7, i32 0, i32 0
  store i32* %8, i32** %gridSize, align 8
  %9 = load i32* %2, align 4
  %10 = load %struct.LinkCellSt** %1, align 8
  %11 = getelementptr inbounds %struct.LinkCellSt* %10, i32 0, i32 1
  %12 = load i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %35

; <label>:14                                      ; preds = %0
  %15 = load i32* %2, align 4
  %16 = load i32** %gridSize, align 8
  %17 = getelementptr inbounds i32* %16, i64 0
  %18 = load i32* %17, align 4
  %19 = srem i32 %15, %18
  store i32 %19, i32* %ix, align 4
  %20 = load i32** %gridSize, align 8
  %21 = getelementptr inbounds i32* %20, i64 0
  %22 = load i32* %21, align 4
  %23 = load i32* %2, align 4
  %24 = sdiv i32 %23, %22
  store i32 %24, i32* %2, align 4
  %25 = load i32* %2, align 4
  %26 = load i32** %gridSize, align 8
  %27 = getelementptr inbounds i32* %26, i64 1
  %28 = load i32* %27, align 4
  %29 = srem i32 %25, %28
  store i32 %29, i32* %iy, align 4
  %30 = load i32* %2, align 4
  %31 = load i32** %gridSize, align 8
  %32 = getelementptr inbounds i32* %31, i64 1
  %33 = load i32* %32, align 4
  %34 = sdiv i32 %30, %33
  store i32 %34, i32* %iz, align 4
  br label %221

; <label>:35                                      ; preds = %0
  %36 = load i32* %2, align 4
  %37 = load %struct.LinkCellSt** %1, align 8
  %38 = getelementptr inbounds %struct.LinkCellSt* %37, i32 0, i32 1
  %39 = load i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  store i32 %40, i32* %ink, align 4
  %41 = load i32* %ink, align 4
  %42 = load i32** %gridSize, align 8
  %43 = getelementptr inbounds i32* %42, i64 1
  %44 = load i32* %43, align 4
  %45 = mul nsw i32 2, %44
  %46 = load i32** %gridSize, align 8
  %47 = getelementptr inbounds i32* %46, i64 2
  %48 = load i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = icmp slt i32 %41, %49
  br i1 %50, label %51, label %89

; <label>:51                                      ; preds = %35
  %52 = load i32* %ink, align 4
  %53 = load i32** %gridSize, align 8
  %54 = getelementptr inbounds i32* %53, i64 1
  %55 = load i32* %54, align 4
  %56 = load i32** %gridSize, align 8
  %57 = getelementptr inbounds i32* %56, i64 2
  %58 = load i32* %57, align 4
  %59 = mul nsw i32 %55, %58
  %60 = icmp slt i32 %52, %59
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %51
  store i32 0, i32* %ix, align 4
  br label %76

; <label>:62                                      ; preds = %51
  %63 = load i32** %gridSize, align 8
  %64 = getelementptr inbounds i32* %63, i64 1
  %65 = load i32* %64, align 4
  %66 = load i32** %gridSize, align 8
  %67 = getelementptr inbounds i32* %66, i64 2
  %68 = load i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = load i32* %ink, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %ink, align 4
  %72 = load i32** %gridSize, align 8
  %73 = getelementptr inbounds i32* %72, i64 0
  %74 = load i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %ix, align 4
  br label %76

; <label>:76                                      ; preds = %62, %61
  %77 = load i32* %ink, align 4
  %78 = load i32** %gridSize, align 8
  %79 = getelementptr inbounds i32* %78, i64 1
  %80 = load i32* %79, align 4
  %81 = srem i32 %77, %80
  %82 = add nsw i32 1, %81
  store i32 %82, i32* %iy, align 4
  %83 = load i32* %ink, align 4
  %84 = load i32** %gridSize, align 8
  %85 = getelementptr inbounds i32* %84, i64 1
  %86 = load i32* %85, align 4
  %87 = sdiv i32 %83, %86
  %88 = add nsw i32 1, %87
  store i32 %88, i32* %iz, align 4
  br label %214

; <label>:89                                      ; preds = %35
  %90 = load i32* %ink, align 4
  %91 = load i32** %gridSize, align 8
  %92 = getelementptr inbounds i32* %91, i64 2
  %93 = load i32* %92, align 4
  %94 = mul nsw i32 2, %93
  %95 = load i32** %gridSize, align 8
  %96 = getelementptr inbounds i32* %95, i64 1
  %97 = load i32* %96, align 4
  %98 = load i32** %gridSize, align 8
  %99 = getelementptr inbounds i32* %98, i64 0
  %100 = load i32* %99, align 4
  %101 = add nsw i32 %97, %100
  %102 = add nsw i32 %101, 2
  %103 = mul nsw i32 %94, %102
  %104 = icmp slt i32 %90, %103
  br i1 %104, label %105, label %156

; <label>:105                                     ; preds = %89
  %106 = load i32** %gridSize, align 8
  %107 = getelementptr inbounds i32* %106, i64 2
  %108 = load i32* %107, align 4
  %109 = mul nsw i32 2, %108
  %110 = load i32** %gridSize, align 8
  %111 = getelementptr inbounds i32* %110, i64 1
  %112 = load i32* %111, align 4
  %113 = mul nsw i32 %109, %112
  %114 = load i32* %ink, align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, i32* %ink, align 4
  %116 = load i32* %ink, align 4
  %117 = load i32** %gridSize, align 8
  %118 = getelementptr inbounds i32* %117, i64 0
  %119 = load i32* %118, align 4
  %120 = add nsw i32 %119, 2
  %121 = load i32** %gridSize, align 8
  %122 = getelementptr inbounds i32* %121, i64 2
  %123 = load i32* %122, align 4
  %124 = mul nsw i32 %120, %123
  %125 = icmp slt i32 %116, %124
  br i1 %125, label %126, label %127

; <label>:126                                     ; preds = %105
  store i32 0, i32* %iy, align 4
  br label %142

; <label>:127                                     ; preds = %105
  %128 = load i32** %gridSize, align 8
  %129 = getelementptr inbounds i32* %128, i64 0
  %130 = load i32* %129, align 4
  %131 = add nsw i32 %130, 2
  %132 = load i32** %gridSize, align 8
  %133 = getelementptr inbounds i32* %132, i64 2
  %134 = load i32* %133, align 4
  %135 = mul nsw i32 %131, %134
  %136 = load i32* %ink, align 4
  %137 = sub nsw i32 %136, %135
  store i32 %137, i32* %ink, align 4
  %138 = load i32** %gridSize, align 8
  %139 = getelementptr inbounds i32* %138, i64 1
  %140 = load i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %iy, align 4
  br label %142

; <label>:142                                     ; preds = %127, %126
  %143 = load i32* %ink, align 4
  %144 = load i32** %gridSize, align 8
  %145 = getelementptr inbounds i32* %144, i64 0
  %146 = load i32* %145, align 4
  %147 = add nsw i32 %146, 2
  %148 = srem i32 %143, %147
  store i32 %148, i32* %ix, align 4
  %149 = load i32* %ink, align 4
  %150 = load i32** %gridSize, align 8
  %151 = getelementptr inbounds i32* %150, i64 0
  %152 = load i32* %151, align 4
  %153 = add nsw i32 %152, 2
  %154 = sdiv i32 %149, %153
  %155 = add nsw i32 1, %154
  store i32 %155, i32* %iz, align 4
  br label %213

; <label>:156                                     ; preds = %89
  %157 = load i32** %gridSize, align 8
  %158 = getelementptr inbounds i32* %157, i64 2
  %159 = load i32* %158, align 4
  %160 = mul nsw i32 2, %159
  %161 = load i32** %gridSize, align 8
  %162 = getelementptr inbounds i32* %161, i64 1
  %163 = load i32* %162, align 4
  %164 = load i32** %gridSize, align 8
  %165 = getelementptr inbounds i32* %164, i64 0
  %166 = load i32* %165, align 4
  %167 = add nsw i32 %163, %166
  %168 = add nsw i32 %167, 2
  %169 = mul nsw i32 %160, %168
  %170 = load i32* %ink, align 4
  %171 = sub nsw i32 %170, %169
  store i32 %171, i32* %ink, align 4
  %172 = load i32* %ink, align 4
  %173 = load i32** %gridSize, align 8
  %174 = getelementptr inbounds i32* %173, i64 0
  %175 = load i32* %174, align 4
  %176 = add nsw i32 %175, 2
  %177 = load i32** %gridSize, align 8
  %178 = getelementptr inbounds i32* %177, i64 1
  %179 = load i32* %178, align 4
  %180 = add nsw i32 %179, 2
  %181 = mul nsw i32 %176, %180
  %182 = icmp slt i32 %172, %181
  br i1 %182, label %183, label %184

; <label>:183                                     ; preds = %156
  store i32 0, i32* %iz, align 4
  br label %200

; <label>:184                                     ; preds = %156
  %185 = load i32** %gridSize, align 8
  %186 = getelementptr inbounds i32* %185, i64 0
  %187 = load i32* %186, align 4
  %188 = add nsw i32 %187, 2
  %189 = load i32** %gridSize, align 8
  %190 = getelementptr inbounds i32* %189, i64 1
  %191 = load i32* %190, align 4
  %192 = add nsw i32 %191, 2
  %193 = mul nsw i32 %188, %192
  %194 = load i32* %ink, align 4
  %195 = sub nsw i32 %194, %193
  store i32 %195, i32* %ink, align 4
  %196 = load i32** %gridSize, align 8
  %197 = getelementptr inbounds i32* %196, i64 2
  %198 = load i32* %197, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %iz, align 4
  br label %200

; <label>:200                                     ; preds = %184, %183
  %201 = load i32* %ink, align 4
  %202 = load i32** %gridSize, align 8
  %203 = getelementptr inbounds i32* %202, i64 0
  %204 = load i32* %203, align 4
  %205 = add nsw i32 %204, 2
  %206 = srem i32 %201, %205
  store i32 %206, i32* %ix, align 4
  %207 = load i32* %ink, align 4
  %208 = load i32** %gridSize, align 8
  %209 = getelementptr inbounds i32* %208, i64 0
  %210 = load i32* %209, align 4
  %211 = add nsw i32 %210, 2
  %212 = sdiv i32 %207, %211
  store i32 %212, i32* %iy, align 4
  br label %213

; <label>:213                                     ; preds = %200, %142
  br label %214

; <label>:214                                     ; preds = %213, %76
  %215 = load i32* %ix, align 4
  %216 = add nsw i32 %215, -1
  store i32 %216, i32* %ix, align 4
  %217 = load i32* %iy, align 4
  %218 = add nsw i32 %217, -1
  store i32 %218, i32* %iy, align 4
  %219 = load i32* %iz, align 4
  %220 = add nsw i32 %219, -1
  store i32 %220, i32* %iz, align 4
  br label %221

; <label>:221                                     ; preds = %214, %14
  %222 = load i32* %ix, align 4
  %223 = load i32** %3, align 8
  store i32 %222, i32* %223, align 4
  %224 = load i32* %iy, align 4
  %225 = load i32** %4, align 8
  store i32 %224, i32* %225, align 4
  %226 = load i32* %iz, align 4
  %227 = load i32** %5, align 8
  store i32 %226, i32* %227, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @getBoxFromCoord(%struct.LinkCellSt* %boxes, double* %rr) #0 {
  %1 = alloca %struct.LinkCellSt*, align 8
  %2 = alloca double*, align 8
  %localMin = alloca double*, align 8
  %localMax = alloca double*, align 8
  %gridSize = alloca i32*, align 8
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %iz = alloca i32, align 4
  store %struct.LinkCellSt* %boxes, %struct.LinkCellSt** %1, align 8
  store double* %rr, double** %2, align 8
  %3 = load %struct.LinkCellSt** %1, align 8
  %4 = getelementptr inbounds %struct.LinkCellSt* %3, i32 0, i32 4
  %5 = getelementptr inbounds [3 x double]* %4, i32 0, i32 0
  store double* %5, double** %localMin, align 8
  %6 = load %struct.LinkCellSt** %1, align 8
  %7 = getelementptr inbounds %struct.LinkCellSt* %6, i32 0, i32 5
  %8 = getelementptr inbounds [3 x double]* %7, i32 0, i32 0
  store double* %8, double** %localMax, align 8
  %9 = load %struct.LinkCellSt** %1, align 8
  %10 = getelementptr inbounds %struct.LinkCellSt* %9, i32 0, i32 0
  %11 = getelementptr inbounds [3 x i32]* %10, i32 0, i32 0
  store i32* %11, i32** %gridSize, align 8
  %12 = load double** %2, align 8
  %13 = getelementptr inbounds double* %12, i64 0
  %14 = load double* %13, align 8
  %15 = load double** %localMin, align 8
  %16 = getelementptr inbounds double* %15, i64 0
  %17 = load double* %16, align 8
  %18 = fsub double %14, %17
  %19 = load %struct.LinkCellSt** %1, align 8
  %20 = getelementptr inbounds %struct.LinkCellSt* %19, i32 0, i32 7
  %21 = getelementptr inbounds [3 x double]* %20, i32 0, i64 0
  %22 = load double* %21, align 8
  %23 = fmul double %18, %22
  %24 = call double @floor(double %23) #9
  %25 = fptosi double %24 to i32
  store i32 %25, i32* %ix, align 4
  %26 = load double** %2, align 8
  %27 = getelementptr inbounds double* %26, i64 1
  %28 = load double* %27, align 8
  %29 = load double** %localMin, align 8
  %30 = getelementptr inbounds double* %29, i64 1
  %31 = load double* %30, align 8
  %32 = fsub double %28, %31
  %33 = load %struct.LinkCellSt** %1, align 8
  %34 = getelementptr inbounds %struct.LinkCellSt* %33, i32 0, i32 7
  %35 = getelementptr inbounds [3 x double]* %34, i32 0, i64 1
  %36 = load double* %35, align 8
  %37 = fmul double %32, %36
  %38 = call double @floor(double %37) #9
  %39 = fptosi double %38 to i32
  store i32 %39, i32* %iy, align 4
  %40 = load double** %2, align 8
  %41 = getelementptr inbounds double* %40, i64 2
  %42 = load double* %41, align 8
  %43 = load double** %localMin, align 8
  %44 = getelementptr inbounds double* %43, i64 2
  %45 = load double* %44, align 8
  %46 = fsub double %42, %45
  %47 = load %struct.LinkCellSt** %1, align 8
  %48 = getelementptr inbounds %struct.LinkCellSt* %47, i32 0, i32 7
  %49 = getelementptr inbounds [3 x double]* %48, i32 0, i64 2
  %50 = load double* %49, align 8
  %51 = fmul double %46, %50
  %52 = call double @floor(double %51) #9
  %53 = fptosi double %52 to i32
  store i32 %53, i32* %iz, align 4
  %54 = load double** %2, align 8
  %55 = getelementptr inbounds double* %54, i64 0
  %56 = load double* %55, align 8
  %57 = load double** %localMax, align 8
  %58 = getelementptr inbounds double* %57, i64 0
  %59 = load double* %58, align 8
  %60 = fcmp olt double %56, %59
  br i1 %60, label %61, label %73

; <label>:61                                      ; preds = %0
  %62 = load i32* %ix, align 4
  %63 = load i32** %gridSize, align 8
  %64 = getelementptr inbounds i32* %63, i64 0
  %65 = load i32* %64, align 4
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %67, label %72

; <label>:67                                      ; preds = %61
  %68 = load i32** %gridSize, align 8
  %69 = getelementptr inbounds i32* %68, i64 0
  %70 = load i32* %69, align 4
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %ix, align 4
  br label %72

; <label>:72                                      ; preds = %67, %61
  br label %77

; <label>:73                                      ; preds = %0
  %74 = load i32** %gridSize, align 8
  %75 = getelementptr inbounds i32* %74, i64 0
  %76 = load i32* %75, align 4
  store i32 %76, i32* %ix, align 4
  br label %77

; <label>:77                                      ; preds = %73, %72
  %78 = load double** %2, align 8
  %79 = getelementptr inbounds double* %78, i64 1
  %80 = load double* %79, align 8
  %81 = load double** %localMax, align 8
  %82 = getelementptr inbounds double* %81, i64 1
  %83 = load double* %82, align 8
  %84 = fcmp olt double %80, %83
  br i1 %84, label %85, label %97

; <label>:85                                      ; preds = %77
  %86 = load i32* %iy, align 4
  %87 = load i32** %gridSize, align 8
  %88 = getelementptr inbounds i32* %87, i64 1
  %89 = load i32* %88, align 4
  %90 = icmp eq i32 %86, %89
  br i1 %90, label %91, label %96

; <label>:91                                      ; preds = %85
  %92 = load i32** %gridSize, align 8
  %93 = getelementptr inbounds i32* %92, i64 1
  %94 = load i32* %93, align 4
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %iy, align 4
  br label %96

; <label>:96                                      ; preds = %91, %85
  br label %101

; <label>:97                                      ; preds = %77
  %98 = load i32** %gridSize, align 8
  %99 = getelementptr inbounds i32* %98, i64 1
  %100 = load i32* %99, align 4
  store i32 %100, i32* %iy, align 4
  br label %101

; <label>:101                                     ; preds = %97, %96
  %102 = load double** %2, align 8
  %103 = getelementptr inbounds double* %102, i64 2
  %104 = load double* %103, align 8
  %105 = load double** %localMax, align 8
  %106 = getelementptr inbounds double* %105, i64 2
  %107 = load double* %106, align 8
  %108 = fcmp olt double %104, %107
  br i1 %108, label %109, label %121

; <label>:109                                     ; preds = %101
  %110 = load i32* %iz, align 4
  %111 = load i32** %gridSize, align 8
  %112 = getelementptr inbounds i32* %111, i64 2
  %113 = load i32* %112, align 4
  %114 = icmp eq i32 %110, %113
  br i1 %114, label %115, label %120

; <label>:115                                     ; preds = %109
  %116 = load i32** %gridSize, align 8
  %117 = getelementptr inbounds i32* %116, i64 2
  %118 = load i32* %117, align 4
  %119 = sub nsw i32 %118, 1
  store i32 %119, i32* %iz, align 4
  br label %120

; <label>:120                                     ; preds = %115, %109
  br label %125

; <label>:121                                     ; preds = %101
  %122 = load i32** %gridSize, align 8
  %123 = getelementptr inbounds i32* %122, i64 2
  %124 = load i32* %123, align 4
  store i32 %124, i32* %iz, align 4
  br label %125

; <label>:125                                     ; preds = %121, %120
  %126 = load %struct.LinkCellSt** %1, align 8
  %127 = load i32* %ix, align 4
  %128 = load i32* %iy, align 4
  %129 = load i32* %iz, align 4
  %130 = call i32 @getBoxFromTuple(%struct.LinkCellSt* %126, i32 %127, i32 %128, i32 %129)
  ret i32 %130
}

; Function Attrs: nounwind uwtable
define internal void @copyAtom(%struct.LinkCellSt* %boxes, %struct.AtomsSt* %atoms, i32 %iAtom, i32 %iBox, i32 %jAtom, i32 %jBox) #0 {
  %1 = alloca %struct.LinkCellSt*, align 8
  %2 = alloca %struct.AtomsSt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %iOff = alloca i32, align 4
  %jOff = alloca i32, align 4
  store %struct.LinkCellSt* %boxes, %struct.LinkCellSt** %1, align 8
  store %struct.AtomsSt* %atoms, %struct.AtomsSt** %2, align 8
  store i32 %iAtom, i32* %3, align 4
  store i32 %iBox, i32* %4, align 4
  store i32 %jAtom, i32* %5, align 4
  store i32 %jBox, i32* %6, align 4
  %7 = load i32* %4, align 4
  %8 = mul nsw i32 64, %7
  %9 = load i32* %3, align 4
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* %iOff, align 4
  %11 = load i32* %6, align 4
  %12 = mul nsw i32 64, %11
  %13 = load i32* %5, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %jOff, align 4
  %15 = load i32* %iOff, align 4
  %16 = sext i32 %15 to i64
  %17 = load %struct.AtomsSt** %2, align 8
  %18 = getelementptr inbounds %struct.AtomsSt* %17, i32 0, i32 2
  %19 = load i32** %18, align 8
  %20 = getelementptr inbounds i32* %19, i64 %16
  %21 = load i32* %20, align 4
  %22 = load i32* %jOff, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct.AtomsSt** %2, align 8
  %25 = getelementptr inbounds %struct.AtomsSt* %24, i32 0, i32 2
  %26 = load i32** %25, align 8
  %27 = getelementptr inbounds i32* %26, i64 %23
  store i32 %21, i32* %27, align 4
  %28 = load i32* %iOff, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.AtomsSt** %2, align 8
  %31 = getelementptr inbounds %struct.AtomsSt* %30, i32 0, i32 3
  %32 = load i32** %31, align 8
  %33 = getelementptr inbounds i32* %32, i64 %29
  %34 = load i32* %33, align 4
  %35 = load i32* %jOff, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.AtomsSt** %2, align 8
  %38 = getelementptr inbounds %struct.AtomsSt* %37, i32 0, i32 3
  %39 = load i32** %38, align 8
  %40 = getelementptr inbounds i32* %39, i64 %36
  store i32 %34, i32* %40, align 4
  %41 = load i32* %jOff, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.AtomsSt** %2, align 8
  %44 = getelementptr inbounds %struct.AtomsSt* %43, i32 0, i32 4
  %45 = load [3 x double]** %44, align 8
  %46 = getelementptr inbounds [3 x double]* %45, i64 %42
  %47 = bitcast [3 x double]* %46 to i8*
  %48 = load i32* %iOff, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.AtomsSt** %2, align 8
  %51 = getelementptr inbounds %struct.AtomsSt* %50, i32 0, i32 4
  %52 = load [3 x double]** %51, align 8
  %53 = getelementptr inbounds [3 x double]* %52, i64 %49
  %54 = bitcast [3 x double]* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %54, i64 24, i32 8, i1 false)
  %55 = load i32* %jOff, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.AtomsSt** %2, align 8
  %58 = getelementptr inbounds %struct.AtomsSt* %57, i32 0, i32 5
  %59 = load [3 x double]** %58, align 8
  %60 = getelementptr inbounds [3 x double]* %59, i64 %56
  %61 = bitcast [3 x double]* %60 to i8*
  %62 = load i32* %iOff, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.AtomsSt** %2, align 8
  %65 = getelementptr inbounds %struct.AtomsSt* %64, i32 0, i32 5
  %66 = load [3 x double]** %65, align 8
  %67 = getelementptr inbounds [3 x double]* %66, i64 %63
  %68 = bitcast [3 x double]* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %68, i64 24, i32 8, i1 false)
  %69 = load i32* %jOff, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.AtomsSt** %2, align 8
  %72 = getelementptr inbounds %struct.AtomsSt* %71, i32 0, i32 6
  %73 = load [3 x double]** %72, align 8
  %74 = getelementptr inbounds [3 x double]* %73, i64 %70
  %75 = bitcast [3 x double]* %74 to i8*
  %76 = load i32* %iOff, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.AtomsSt** %2, align 8
  %79 = getelementptr inbounds %struct.AtomsSt* %78, i32 0, i32 6
  %80 = load [3 x double]** %79, align 8
  %81 = getelementptr inbounds [3 x double]* %80, i64 %77
  %82 = bitcast [3 x double]* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %82, i64 24, i32 8, i1 false)
  %83 = load %struct.AtomsSt** %2, align 8
  %84 = getelementptr inbounds %struct.AtomsSt* %83, i32 0, i32 7
  %85 = load double** %84, align 8
  %86 = load i32* %jOff, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double* %85, i64 %87
  %89 = bitcast double* %88 to i8*
  %90 = load %struct.AtomsSt** %2, align 8
  %91 = getelementptr inbounds %struct.AtomsSt* %90, i32 0, i32 7
  %92 = load double** %91, align 8
  %93 = load i32* %iOff, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds double* %92, i64 %94
  %96 = bitcast double* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %96, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emptyHaloCells(%struct.LinkCellSt* %boxes) #0 {
  %1 = alloca %struct.LinkCellSt*, align 8
  %ii = alloca i32, align 4
  store %struct.LinkCellSt* %boxes, %struct.LinkCellSt** %1, align 8
  %2 = load %struct.LinkCellSt** %1, align 8
  %3 = getelementptr inbounds %struct.LinkCellSt* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  store i32 %4, i32* %ii, align 4
  br label %5

; <label>:5                                       ; preds = %18, %0
  %6 = load i32* %ii, align 4
  %7 = load %struct.LinkCellSt** %1, align 8
  %8 = getelementptr inbounds %struct.LinkCellSt* %7, i32 0, i32 3
  %9 = load i32* %8, align 4
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %21

; <label>:11                                      ; preds = %5
  %12 = load i32* %ii, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.LinkCellSt** %1, align 8
  %15 = getelementptr inbounds %struct.LinkCellSt* %14, i32 0, i32 8
  %16 = load i32** %15, align 8
  %17 = getelementptr inbounds i32* %16, i64 %13
  store i32 0, i32* %17, align 4
  br label %18

; <label>:18                                      ; preds = %11
  %19 = load i32* %ii, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %ii, align 4
  br label %5

; <label>:21                                      ; preds = %5
  ret void
}

; Function Attrs: nounwind uwtable
define void @ljDestroy(%struct.BasePotentialSt.34** %inppot) #0 {
  %1 = alloca %struct.BasePotentialSt.34**, align 8
  %pot = alloca %struct.LjPotentialSt*, align 8
  store %struct.BasePotentialSt.34** %inppot, %struct.BasePotentialSt.34*** %1, align 8
  %2 = load %struct.BasePotentialSt.34*** %1, align 8
  %3 = icmp ne %struct.BasePotentialSt.34** %2, null
  br i1 %3, label %5, label %4

; <label>:4                                       ; preds = %0
  br label %16

; <label>:5                                       ; preds = %0
  %6 = load %struct.BasePotentialSt.34*** %1, align 8
  %7 = load %struct.BasePotentialSt.34** %6, align 8
  %8 = bitcast %struct.BasePotentialSt.34* %7 to %struct.LjPotentialSt*
  store %struct.LjPotentialSt* %8, %struct.LjPotentialSt** %pot, align 8
  %9 = load %struct.LjPotentialSt** %pot, align 8
  %10 = icmp ne %struct.LjPotentialSt* %9, null
  br i1 %10, label %12, label %11

; <label>:11                                      ; preds = %5
  br label %16

; <label>:12                                      ; preds = %5
  %13 = load %struct.LjPotentialSt** %pot, align 8
  %14 = bitcast %struct.LjPotentialSt* %13 to i8*
  call void @comdFree142(i8* %14)
  %15 = load %struct.BasePotentialSt.34*** %1, align 8
  store %struct.BasePotentialSt.34* null, %struct.BasePotentialSt.34** %15, align 8
  br label %16

; <label>:16                                      ; preds = %12, %11, %4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.BasePotentialSt.34* @initLjPot() #0 {
  %pot = alloca %struct.LjPotentialSt*, align 8
  %1 = call i8* @comdMalloc143(i64 80)
  %2 = bitcast i8* %1 to %struct.LjPotentialSt*
  store %struct.LjPotentialSt* %2, %struct.LjPotentialSt** %pot, align 8
  %3 = load %struct.LjPotentialSt** %pot, align 8
  %4 = getelementptr inbounds %struct.LjPotentialSt* %3, i32 0, i32 6
  store i32 (%struct.SimFlatSt.35*)* @ljForce, i32 (%struct.SimFlatSt.35*)** %4, align 8
  %5 = load %struct.LjPotentialSt** %pot, align 8
  %6 = getelementptr inbounds %struct.LjPotentialSt* %5, i32 0, i32 7
  store void (%struct._IO_FILE*, %struct.BasePotentialSt.34*)* @ljPrint, void (%struct._IO_FILE*, %struct.BasePotentialSt.34*)** %6, align 8
  %7 = load %struct.LjPotentialSt** %pot, align 8
  %8 = getelementptr inbounds %struct.LjPotentialSt* %7, i32 0, i32 8
  store void (%struct.BasePotentialSt.34**)* @ljDestroy, void (%struct.BasePotentialSt.34**)** %8, align 8
  %9 = load %struct.LjPotentialSt** %pot, align 8
  %10 = getelementptr inbounds %struct.LjPotentialSt* %9, i32 0, i32 9
  store double 2.315000e+00, double* %10, align 8
  %11 = load %struct.LjPotentialSt** %pot, align 8
  %12 = getelementptr inbounds %struct.LjPotentialSt* %11, i32 0, i32 10
  store double 1.670000e-01, double* %12, align 8
  %13 = load %struct.LjPotentialSt** %pot, align 8
  %14 = getelementptr inbounds %struct.LjPotentialSt* %13, i32 0, i32 1
  store double 0x40B9BA7E39DCDE3E, double* %14, align 8
  %15 = load %struct.LjPotentialSt** %pot, align 8
  %16 = getelementptr inbounds %struct.LjPotentialSt* %15, i32 0, i32 2
  store double 3.615000e+00, double* %16, align 8
  %17 = load %struct.LjPotentialSt** %pot, align 8
  %18 = getelementptr inbounds %struct.LjPotentialSt* %17, i32 0, i32 3
  %19 = getelementptr inbounds [8 x i8]* %18, i32 0, i32 0
  %20 = call i8* @strcpy(i8* %19, i8* getelementptr inbounds ([4 x i8]* @.str127, i32 0, i32 0)) #5
  %21 = load %struct.LjPotentialSt** %pot, align 8
  %22 = getelementptr inbounds %struct.LjPotentialSt* %21, i32 0, i32 9
  %23 = load double* %22, align 8
  %24 = fmul double 2.500000e+00, %23
  %25 = load %struct.LjPotentialSt** %pot, align 8
  %26 = getelementptr inbounds %struct.LjPotentialSt* %25, i32 0, i32 0
  store double %24, double* %26, align 8
  %27 = load %struct.LjPotentialSt** %pot, align 8
  %28 = getelementptr inbounds %struct.LjPotentialSt* %27, i32 0, i32 4
  %29 = getelementptr inbounds [3 x i8]* %28, i32 0, i32 0
  %30 = call i8* @strcpy(i8* %29, i8* getelementptr inbounds ([3 x i8]* @.str1128, i32 0, i32 0)) #5
  %31 = load %struct.LjPotentialSt** %pot, align 8
  %32 = getelementptr inbounds %struct.LjPotentialSt* %31, i32 0, i32 5
  store i32 29, i32* %32, align 4
  %33 = load %struct.LjPotentialSt** %pot, align 8
  %34 = bitcast %struct.LjPotentialSt* %33 to %struct.BasePotentialSt.34*
  ret %struct.BasePotentialSt.34* %34
}

; Function Attrs: nounwind uwtable
define internal void @comdFree142(i8* %ptr) #0 {
  %1 = alloca i8*, align 8
  store i8* %ptr, i8** %1, align 8
  %2 = load i8** %1, align 8
  call void @free(i8* %2) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @comdMalloc143(i64 %iSize) #0 {
  %1 = alloca i64, align 8
  store i64 %iSize, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = call noalias i8* @malloc(i64 %2) #5
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define internal i32 @ljForce(%struct.SimFlatSt.35* %s) #0 {
  %1 = alloca %struct.SimFlatSt.35*, align 8
  %pot = alloca %struct.LjPotentialSt*, align 8
  %sigma = alloca double, align 8
  %epsilon = alloca double, align 8
  %rCut = alloca double, align 8
  %rCut2 = alloca double, align 8
  %ePot = alloca double, align 8
  %fSize = alloca i32, align 4
  %ii = alloca i32, align 4
  %s6 = alloca double, align 8
  %rCut6 = alloca double, align 8
  %eShift = alloca double, align 8
  %nbrBoxes = alloca [27 x i32], align 16
  %iBox = alloca i32, align 4
  %nIBox = alloca i32, align 4
  %nNbrBoxes = alloca i32, align 4
  %jTmp = alloca i32, align 4
  %jBox = alloca i32, align 4
  %nJBox = alloca i32, align 4
  %iOff = alloca i32, align 4
  %ii1 = alloca i32, align 4
  %iId = alloca i32, align 4
  %jOff = alloca i32, align 4
  %ij = alloca i32, align 4
  %dr = alloca [3 x double], align 16
  %jId = alloca i32, align 4
  %r2 = alloca double, align 8
  %m = alloca i32, align 4
  %r6 = alloca double, align 8
  %eLocal = alloca double, align 8
  %fr = alloca double, align 8
  %m2 = alloca i32, align 4
  store %struct.SimFlatSt.35* %s, %struct.SimFlatSt.35** %1, align 8
  %2 = load %struct.SimFlatSt.35** %1, align 8
  %3 = getelementptr inbounds %struct.SimFlatSt.35* %2, i32 0, i32 9
  %4 = load %struct.BasePotentialSt.34** %3, align 8
  %5 = bitcast %struct.BasePotentialSt.34* %4 to %struct.LjPotentialSt*
  store %struct.LjPotentialSt* %5, %struct.LjPotentialSt** %pot, align 8
  %6 = load %struct.LjPotentialSt** %pot, align 8
  %7 = getelementptr inbounds %struct.LjPotentialSt* %6, i32 0, i32 9
  %8 = load double* %7, align 8
  store double %8, double* %sigma, align 8
  %9 = load %struct.LjPotentialSt** %pot, align 8
  %10 = getelementptr inbounds %struct.LjPotentialSt* %9, i32 0, i32 10
  %11 = load double* %10, align 8
  store double %11, double* %epsilon, align 8
  %12 = load %struct.LjPotentialSt** %pot, align 8
  %13 = getelementptr inbounds %struct.LjPotentialSt* %12, i32 0, i32 0
  %14 = load double* %13, align 8
  store double %14, double* %rCut, align 8
  %15 = load double* %rCut, align 8
  %16 = load double* %rCut, align 8
  %17 = fmul double %15, %16
  store double %17, double* %rCut2, align 8
  store double 0.000000e+00, double* %ePot, align 8
  %18 = load %struct.SimFlatSt.35** %1, align 8
  %19 = getelementptr inbounds %struct.SimFlatSt.35* %18, i32 0, i32 7
  store double 0.000000e+00, double* %19, align 8
  %20 = load %struct.SimFlatSt.35** %1, align 8
  %21 = getelementptr inbounds %struct.SimFlatSt.35* %20, i32 0, i32 4
  %22 = load %struct.LinkCellSt** %21, align 8
  %23 = getelementptr inbounds %struct.LinkCellSt* %22, i32 0, i32 3
  %24 = load i32* %23, align 4
  %25 = mul nsw i32 %24, 64
  store i32 %25, i32* %fSize, align 4
  store i32 0, i32* %ii, align 4
  br label %26

; <label>:26                                      ; preds = %48, %0
  %27 = load i32* %ii, align 4
  %28 = load i32* %fSize, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %51

; <label>:30                                      ; preds = %26
  %31 = load i32* %ii, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.SimFlatSt.35** %1, align 8
  %34 = getelementptr inbounds %struct.SimFlatSt.35* %33, i32 0, i32 5
  %35 = load %struct.AtomsSt** %34, align 8
  %36 = getelementptr inbounds %struct.AtomsSt* %35, i32 0, i32 6
  %37 = load [3 x double]** %36, align 8
  %38 = getelementptr inbounds [3 x double]* %37, i64 %32
  %39 = getelementptr inbounds [3 x double]* %38, i32 0, i32 0
  call void @zeroReal3144(double* %39)
  %40 = load i32* %ii, align 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.SimFlatSt.35** %1, align 8
  %43 = getelementptr inbounds %struct.SimFlatSt.35* %42, i32 0, i32 5
  %44 = load %struct.AtomsSt** %43, align 8
  %45 = getelementptr inbounds %struct.AtomsSt* %44, i32 0, i32 7
  %46 = load double** %45, align 8
  %47 = getelementptr inbounds double* %46, i64 %41
  store double 0.000000e+00, double* %47, align 8
  br label %48

; <label>:48                                      ; preds = %30
  %49 = load i32* %ii, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %ii, align 4
  br label %26

; <label>:51                                      ; preds = %26
  %52 = load double* %sigma, align 8
  %53 = load double* %sigma, align 8
  %54 = fmul double %52, %53
  %55 = load double* %sigma, align 8
  %56 = fmul double %54, %55
  %57 = load double* %sigma, align 8
  %58 = fmul double %56, %57
  %59 = load double* %sigma, align 8
  %60 = fmul double %58, %59
  %61 = load double* %sigma, align 8
  %62 = fmul double %60, %61
  store double %62, double* %s6, align 8
  %63 = load double* %s6, align 8
  %64 = load double* %rCut2, align 8
  %65 = load double* %rCut2, align 8
  %66 = fmul double %64, %65
  %67 = load double* %rCut2, align 8
  %68 = fmul double %66, %67
  %69 = fdiv double %63, %68
  store double %69, double* %rCut6, align 8
  %70 = load double* %rCut6, align 8
  %71 = fmul double 1.000000e+00, %70
  %72 = load double* %rCut6, align 8
  %73 = fsub double %72, 1.000000e+00
  %74 = fmul double %71, %73
  store double %74, double* %eShift, align 8
  store i32 0, i32* %iBox, align 4
  br label %75

; <label>:75                                      ; preds = %356, %51
  %76 = load i32* %iBox, align 4
  %77 = load %struct.SimFlatSt.35** %1, align 8
  %78 = getelementptr inbounds %struct.SimFlatSt.35* %77, i32 0, i32 4
  %79 = load %struct.LinkCellSt** %78, align 8
  %80 = getelementptr inbounds %struct.LinkCellSt* %79, i32 0, i32 1
  %81 = load i32* %80, align 4
  %82 = icmp slt i32 %76, %81
  br i1 %82, label %83, label %359

; <label>:83                                      ; preds = %75
  %84 = load i32* %iBox, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.SimFlatSt.35** %1, align 8
  %87 = getelementptr inbounds %struct.SimFlatSt.35* %86, i32 0, i32 4
  %88 = load %struct.LinkCellSt** %87, align 8
  %89 = getelementptr inbounds %struct.LinkCellSt* %88, i32 0, i32 8
  %90 = load i32** %89, align 8
  %91 = getelementptr inbounds i32* %90, i64 %85
  %92 = load i32* %91, align 4
  store i32 %92, i32* %nIBox, align 4
  %93 = load i32* %nIBox, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

; <label>:95                                      ; preds = %83
  br label %356

; <label>:96                                      ; preds = %83
  %97 = load %struct.SimFlatSt.35** %1, align 8
  %98 = getelementptr inbounds %struct.SimFlatSt.35* %97, i32 0, i32 4
  %99 = load %struct.LinkCellSt** %98, align 8
  %100 = load i32* %iBox, align 4
  %101 = getelementptr inbounds [27 x i32]* %nbrBoxes, i32 0, i32 0
  %102 = call i32 @getNeighborBoxes(%struct.LinkCellSt* %99, i32 %100, i32* %101)
  store i32 %102, i32* %nNbrBoxes, align 4
  store i32 0, i32* %jTmp, align 4
  br label %103

; <label>:103                                     ; preds = %352, %96
  %104 = load i32* %jTmp, align 4
  %105 = load i32* %nNbrBoxes, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %355

; <label>:107                                     ; preds = %103
  %108 = load i32* %jTmp, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [27 x i32]* %nbrBoxes, i32 0, i64 %109
  %111 = load i32* %110, align 4
  store i32 %111, i32* %jBox, align 4
  %112 = load i32* %jBox, align 4
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %115

; <label>:114                                     ; preds = %107
  br label %117

; <label>:115                                     ; preds = %107
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8]* @.str2129, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str3130, i32 0, i32 0), i32 179, i8* getelementptr inbounds ([23 x i8]* @__PRETTY_FUNCTION__.ljForce, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %117

; <label>:117                                     ; preds = %116, %114
  %118 = load i32* %jBox, align 4
  %119 = sext i32 %118 to i64
  %120 = load %struct.SimFlatSt.35** %1, align 8
  %121 = getelementptr inbounds %struct.SimFlatSt.35* %120, i32 0, i32 4
  %122 = load %struct.LinkCellSt** %121, align 8
  %123 = getelementptr inbounds %struct.LinkCellSt* %122, i32 0, i32 8
  %124 = load i32** %123, align 8
  %125 = getelementptr inbounds i32* %124, i64 %119
  %126 = load i32* %125, align 4
  store i32 %126, i32* %nJBox, align 4
  %127 = load i32* %nJBox, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

; <label>:129                                     ; preds = %117
  br label %352

; <label>:130                                     ; preds = %117
  %131 = load i32* %iBox, align 4
  %132 = mul nsw i32 %131, 64
  store i32 %132, i32* %iOff, align 4
  store i32 0, i32* %ii1, align 4
  br label %133

; <label>:133                                     ; preds = %346, %130
  %134 = load i32* %ii1, align 4
  %135 = load i32* %nIBox, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %351

; <label>:137                                     ; preds = %133
  %138 = load i32* %iOff, align 4
  %139 = sext i32 %138 to i64
  %140 = load %struct.SimFlatSt.35** %1, align 8
  %141 = getelementptr inbounds %struct.SimFlatSt.35* %140, i32 0, i32 5
  %142 = load %struct.AtomsSt** %141, align 8
  %143 = getelementptr inbounds %struct.AtomsSt* %142, i32 0, i32 2
  %144 = load i32** %143, align 8
  %145 = getelementptr inbounds i32* %144, i64 %139
  %146 = load i32* %145, align 4
  store i32 %146, i32* %iId, align 4
  %147 = load i32* %jBox, align 4
  %148 = mul nsw i32 64, %147
  store i32 %148, i32* %jOff, align 4
  store i32 0, i32* %ij, align 4
  br label %149

; <label>:149                                     ; preds = %340, %137
  %150 = load i32* %ij, align 4
  %151 = load i32* %nJBox, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %345

; <label>:153                                     ; preds = %149
  %154 = load i32* %jOff, align 4
  %155 = sext i32 %154 to i64
  %156 = load %struct.SimFlatSt.35** %1, align 8
  %157 = getelementptr inbounds %struct.SimFlatSt.35* %156, i32 0, i32 5
  %158 = load %struct.AtomsSt** %157, align 8
  %159 = getelementptr inbounds %struct.AtomsSt* %158, i32 0, i32 2
  %160 = load i32** %159, align 8
  %161 = getelementptr inbounds i32* %160, i64 %155
  %162 = load i32* %161, align 4
  store i32 %162, i32* %jId, align 4
  %163 = load i32* %jBox, align 4
  %164 = load %struct.SimFlatSt.35** %1, align 8
  %165 = getelementptr inbounds %struct.SimFlatSt.35* %164, i32 0, i32 4
  %166 = load %struct.LinkCellSt** %165, align 8
  %167 = getelementptr inbounds %struct.LinkCellSt* %166, i32 0, i32 1
  %168 = load i32* %167, align 4
  %169 = icmp slt i32 %163, %168
  br i1 %169, label %170, label %175

; <label>:170                                     ; preds = %153
  %171 = load i32* %jId, align 4
  %172 = load i32* %iId, align 4
  %173 = icmp sle i32 %171, %172
  br i1 %173, label %174, label %175

; <label>:174                                     ; preds = %170
  br label %340

; <label>:175                                     ; preds = %170, %153
  store double 0.000000e+00, double* %r2, align 8
  store i32 0, i32* %m, align 4
  br label %176

; <label>:176                                     ; preds = %219, %175
  %177 = load i32* %m, align 4
  %178 = icmp slt i32 %177, 3
  br i1 %178, label %179, label %222

; <label>:179                                     ; preds = %176
  %180 = load i32* %m, align 4
  %181 = sext i32 %180 to i64
  %182 = load i32* %iOff, align 4
  %183 = sext i32 %182 to i64
  %184 = load %struct.SimFlatSt.35** %1, align 8
  %185 = getelementptr inbounds %struct.SimFlatSt.35* %184, i32 0, i32 5
  %186 = load %struct.AtomsSt** %185, align 8
  %187 = getelementptr inbounds %struct.AtomsSt* %186, i32 0, i32 4
  %188 = load [3 x double]** %187, align 8
  %189 = getelementptr inbounds [3 x double]* %188, i64 %183
  %190 = getelementptr inbounds [3 x double]* %189, i32 0, i64 %181
  %191 = load double* %190, align 8
  %192 = load i32* %m, align 4
  %193 = sext i32 %192 to i64
  %194 = load i32* %jOff, align 4
  %195 = sext i32 %194 to i64
  %196 = load %struct.SimFlatSt.35** %1, align 8
  %197 = getelementptr inbounds %struct.SimFlatSt.35* %196, i32 0, i32 5
  %198 = load %struct.AtomsSt** %197, align 8
  %199 = getelementptr inbounds %struct.AtomsSt* %198, i32 0, i32 4
  %200 = load [3 x double]** %199, align 8
  %201 = getelementptr inbounds [3 x double]* %200, i64 %195
  %202 = getelementptr inbounds [3 x double]* %201, i32 0, i64 %193
  %203 = load double* %202, align 8
  %204 = fsub double %191, %203
  %205 = load i32* %m, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [3 x double]* %dr, i32 0, i64 %206
  store double %204, double* %207, align 8
  %208 = load i32* %m, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [3 x double]* %dr, i32 0, i64 %209
  %211 = load double* %210, align 8
  %212 = load i32* %m, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [3 x double]* %dr, i32 0, i64 %213
  %215 = load double* %214, align 8
  %216 = fmul double %211, %215
  %217 = load double* %r2, align 8
  %218 = fadd double %217, %216
  store double %218, double* %r2, align 8
  br label %219

; <label>:219                                     ; preds = %179
  %220 = load i32* %m, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %m, align 4
  br label %176

; <label>:222                                     ; preds = %176
  %223 = load double* %r2, align 8
  %224 = load double* %rCut2, align 8
  %225 = fcmp ogt double %223, %224
  br i1 %225, label %226, label %227

; <label>:226                                     ; preds = %222
  br label %340

; <label>:227                                     ; preds = %222
  %228 = load double* %r2, align 8
  %229 = fdiv double 1.000000e+00, %228
  store double %229, double* %r2, align 8
  %230 = load double* %s6, align 8
  %231 = load double* %r2, align 8
  %232 = load double* %r2, align 8
  %233 = fmul double %231, %232
  %234 = load double* %r2, align 8
  %235 = fmul double %233, %234
  %236 = fmul double %230, %235
  store double %236, double* %r6, align 8
  %237 = load double* %r6, align 8
  %238 = load double* %r6, align 8
  %239 = fsub double %238, 1.000000e+00
  %240 = fmul double %237, %239
  %241 = load double* %eShift, align 8
  %242 = fsub double %240, %241
  store double %242, double* %eLocal, align 8
  %243 = load double* %eLocal, align 8
  %244 = fmul double 5.000000e-01, %243
  %245 = load i32* %iOff, align 4
  %246 = sext i32 %245 to i64
  %247 = load %struct.SimFlatSt.35** %1, align 8
  %248 = getelementptr inbounds %struct.SimFlatSt.35* %247, i32 0, i32 5
  %249 = load %struct.AtomsSt** %248, align 8
  %250 = getelementptr inbounds %struct.AtomsSt* %249, i32 0, i32 7
  %251 = load double** %250, align 8
  %252 = getelementptr inbounds double* %251, i64 %246
  %253 = load double* %252, align 8
  %254 = fadd double %253, %244
  store double %254, double* %252, align 8
  %255 = load double* %eLocal, align 8
  %256 = fmul double 5.000000e-01, %255
  %257 = load i32* %jOff, align 4
  %258 = sext i32 %257 to i64
  %259 = load %struct.SimFlatSt.35** %1, align 8
  %260 = getelementptr inbounds %struct.SimFlatSt.35* %259, i32 0, i32 5
  %261 = load %struct.AtomsSt** %260, align 8
  %262 = getelementptr inbounds %struct.AtomsSt* %261, i32 0, i32 7
  %263 = load double** %262, align 8
  %264 = getelementptr inbounds double* %263, i64 %258
  %265 = load double* %264, align 8
  %266 = fadd double %265, %256
  store double %266, double* %264, align 8
  %267 = load i32* %jBox, align 4
  %268 = load %struct.SimFlatSt.35** %1, align 8
  %269 = getelementptr inbounds %struct.SimFlatSt.35* %268, i32 0, i32 4
  %270 = load %struct.LinkCellSt** %269, align 8
  %271 = getelementptr inbounds %struct.LinkCellSt* %270, i32 0, i32 1
  %272 = load i32* %271, align 4
  %273 = icmp slt i32 %267, %272
  br i1 %273, label %274, label %278

; <label>:274                                     ; preds = %227
  %275 = load double* %eLocal, align 8
  %276 = load double* %ePot, align 8
  %277 = fadd double %276, %275
  store double %277, double* %ePot, align 8
  br label %283

; <label>:278                                     ; preds = %227
  %279 = load double* %eLocal, align 8
  %280 = fmul double 5.000000e-01, %279
  %281 = load double* %ePot, align 8
  %282 = fadd double %281, %280
  store double %282, double* %ePot, align 8
  br label %283

; <label>:283                                     ; preds = %278, %274
  %284 = load double* %epsilon, align 8
  %285 = fmul double -4.000000e+00, %284
  %286 = load double* %r6, align 8
  %287 = fmul double %285, %286
  %288 = load double* %r2, align 8
  %289 = fmul double %287, %288
  %290 = load double* %r6, align 8
  %291 = fmul double 1.200000e+01, %290
  %292 = fsub double %291, 6.000000e+00
  %293 = fmul double %289, %292
  store double %293, double* %fr, align 8
  store i32 0, i32* %m2, align 4
  br label %294

; <label>:294                                     ; preds = %336, %283
  %295 = load i32* %m2, align 4
  %296 = icmp slt i32 %295, 3
  br i1 %296, label %297, label %339

; <label>:297                                     ; preds = %294
  %298 = load i32* %m2, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [3 x double]* %dr, i32 0, i64 %299
  %301 = load double* %300, align 8
  %302 = load double* %fr, align 8
  %303 = fmul double %301, %302
  %304 = load i32* %m2, align 4
  %305 = sext i32 %304 to i64
  %306 = load i32* %iOff, align 4
  %307 = sext i32 %306 to i64
  %308 = load %struct.SimFlatSt.35** %1, align 8
  %309 = getelementptr inbounds %struct.SimFlatSt.35* %308, i32 0, i32 5
  %310 = load %struct.AtomsSt** %309, align 8
  %311 = getelementptr inbounds %struct.AtomsSt* %310, i32 0, i32 6
  %312 = load [3 x double]** %311, align 8
  %313 = getelementptr inbounds [3 x double]* %312, i64 %307
  %314 = getelementptr inbounds [3 x double]* %313, i32 0, i64 %305
  %315 = load double* %314, align 8
  %316 = fsub double %315, %303
  store double %316, double* %314, align 8
  %317 = load i32* %m2, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [3 x double]* %dr, i32 0, i64 %318
  %320 = load double* %319, align 8
  %321 = load double* %fr, align 8
  %322 = fmul double %320, %321
  %323 = load i32* %m2, align 4
  %324 = sext i32 %323 to i64
  %325 = load i32* %jOff, align 4
  %326 = sext i32 %325 to i64
  %327 = load %struct.SimFlatSt.35** %1, align 8
  %328 = getelementptr inbounds %struct.SimFlatSt.35* %327, i32 0, i32 5
  %329 = load %struct.AtomsSt** %328, align 8
  %330 = getelementptr inbounds %struct.AtomsSt* %329, i32 0, i32 6
  %331 = load [3 x double]** %330, align 8
  %332 = getelementptr inbounds [3 x double]* %331, i64 %326
  %333 = getelementptr inbounds [3 x double]* %332, i32 0, i64 %324
  %334 = load double* %333, align 8
  %335 = fadd double %334, %322
  store double %335, double* %333, align 8
  br label %336

; <label>:336                                     ; preds = %297
  %337 = load i32* %m2, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %m2, align 4
  br label %294

; <label>:339                                     ; preds = %294
  br label %340

; <label>:340                                     ; preds = %339, %226, %174
  %341 = load i32* %ij, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %ij, align 4
  %343 = load i32* %jOff, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %jOff, align 4
  br label %149

; <label>:345                                     ; preds = %149
  br label %346

; <label>:346                                     ; preds = %345
  %347 = load i32* %ii1, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %ii1, align 4
  %349 = load i32* %iOff, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %iOff, align 4
  br label %133

; <label>:351                                     ; preds = %133
  br label %352

; <label>:352                                     ; preds = %351, %129
  %353 = load i32* %jTmp, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %jTmp, align 4
  br label %103

; <label>:355                                     ; preds = %103
  br label %356

; <label>:356                                     ; preds = %355, %95
  %357 = load i32* %iBox, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %iBox, align 4
  br label %75

; <label>:359                                     ; preds = %75
  %360 = load double* %ePot, align 8
  %361 = fmul double %360, 4.000000e+00
  %362 = load double* %epsilon, align 8
  %363 = fmul double %361, %362
  store double %363, double* %ePot, align 8
  %364 = load double* %ePot, align 8
  %365 = load %struct.SimFlatSt.35** %1, align 8
  %366 = getelementptr inbounds %struct.SimFlatSt.35* %365, i32 0, i32 7
  store double %364, double* %366, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @ljPrint(%struct._IO_FILE* %file, %struct.BasePotentialSt.34* %pot) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca %struct.BasePotentialSt.34*, align 8
  %ljPot = alloca %struct.LjPotentialSt*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %1, align 8
  store %struct.BasePotentialSt.34* %pot, %struct.BasePotentialSt.34** %2, align 8
  %3 = load %struct.BasePotentialSt.34** %2, align 8
  %4 = bitcast %struct.BasePotentialSt.34* %3 to %struct.LjPotentialSt*
  store %struct.LjPotentialSt* %4, %struct.LjPotentialSt** %ljPot, align 8
  %5 = load %struct._IO_FILE** %1, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([36 x i8]* @.str4131, i32 0, i32 0))
  %7 = load %struct._IO_FILE** %1, align 8
  %8 = load %struct.LjPotentialSt** %ljPot, align 8
  %9 = getelementptr inbounds %struct.LjPotentialSt* %8, i32 0, i32 4
  %10 = getelementptr inbounds [3 x i8]* %9, i32 0, i32 0
  %11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([25 x i8]* @.str5132, i32 0, i32 0), i8* %10)
  %12 = load %struct._IO_FILE** %1, align 8
  %13 = load %struct.LjPotentialSt** %ljPot, align 8
  %14 = getelementptr inbounds %struct.LjPotentialSt* %13, i32 0, i32 5
  %15 = load i32* %14, align 4
  %16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([25 x i8]* @.str6133, i32 0, i32 0), i32 %15)
  %17 = load %struct._IO_FILE** %1, align 8
  %18 = load %struct.LjPotentialSt** %ljPot, align 8
  %19 = getelementptr inbounds %struct.LjPotentialSt* %18, i32 0, i32 1
  %20 = load double* %19, align 8
  %21 = fdiv double %20, 0x4059E921DD37DC65
  %22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([30 x i8]* @.str7134, i32 0, i32 0), double %21)
  %23 = load %struct._IO_FILE** %1, align 8
  %24 = load %struct.LjPotentialSt** %ljPot, align 8
  %25 = getelementptr inbounds %struct.LjPotentialSt* %24, i32 0, i32 3
  %26 = getelementptr inbounds [8 x i8]* %25, i32 0, i32 0
  %27 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([25 x i8]* @.str8135, i32 0, i32 0), i8* %26)
  %28 = load %struct._IO_FILE** %1, align 8
  %29 = load %struct.LjPotentialSt** %ljPot, align 8
  %30 = getelementptr inbounds %struct.LjPotentialSt* %29, i32 0, i32 2
  %31 = load double* %30, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([36 x i8]* @.str9136, i32 0, i32 0), double %31)
  %33 = load %struct._IO_FILE** %1, align 8
  %34 = load %struct.LjPotentialSt** %ljPot, align 8
  %35 = getelementptr inbounds %struct.LjPotentialSt* %34, i32 0, i32 0
  %36 = load double* %35, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([36 x i8]* @.str10137, i32 0, i32 0), double %36)
  %38 = load %struct._IO_FILE** %1, align 8
  %39 = load %struct.LjPotentialSt** %ljPot, align 8
  %40 = getelementptr inbounds %struct.LjPotentialSt* %39, i32 0, i32 10
  %41 = load double* %40, align 8
  %42 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([29 x i8]* @.str11138, i32 0, i32 0), double %41)
  %43 = load %struct._IO_FILE** %1, align 8
  %44 = load %struct.LjPotentialSt** %ljPot, align 8
  %45 = getelementptr inbounds %struct.LjPotentialSt* %44, i32 0, i32 9
  %46 = load double* %45, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([36 x i8]* @.str12139, i32 0, i32 0), double %46)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @zeroReal3144(double* %a) #0 {
  %1 = alloca double*, align 8
  store double* %a, double** %1, align 8
  %2 = load double** %1, align 8
  %3 = getelementptr inbounds double* %2, i64 0
  store double 0.000000e+00, double* %3, align 8
  %4 = load double** %1, align 8
  %5 = getelementptr inbounds double* %4, i64 1
  store double 0.000000e+00, double* %5, align 8
  %6 = load double** %1, align 8
  %7 = getelementptr inbounds double* %6, i64 2
  store double 0.000000e+00, double* %7, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @parseCommandLine(%struct.CommandSt* noalias sret %agg.result, i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %cmd = alloca %struct.CommandSt, align 8
  %help = alloca i32, align 4
  store i32 %argc, i32* %1, align 4
  store i8** %argv, i8*** %2, align 8
  %3 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 0
  %4 = bitcast [1024 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 1024, i32 8, i1 false)
  %5 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 1
  %6 = bitcast [1024 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 1024, i32 8, i1 false)
  %7 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 2
  %8 = bitcast [1024 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 1024, i32 8, i1 false)
  %9 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 0
  %10 = getelementptr inbounds [1024 x i8]* %9, i32 0, i32 0
  %11 = call i8* @strcpy(i8* %10, i8* getelementptr inbounds ([5 x i8]* @.str146, i32 0, i32 0)) #5
  %12 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 1
  %13 = getelementptr inbounds [1024 x i8]* %12, i32 0, i32 0
  %14 = call i8* @strcpy(i8* %13, i8* getelementptr inbounds ([2 x i8]* @.str1147, i32 0, i32 0)) #5
  %15 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 2
  %16 = getelementptr inbounds [1024 x i8]* %15, i32 0, i32 0
  %17 = call i8* @strcpy(i8* %16, i8* getelementptr inbounds ([7 x i8]* @.str2148, i32 0, i32 0)) #5
  %18 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 3
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 4
  store i32 20, i32* %19, align 4
  %20 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 5
  store i32 20, i32* %20, align 4
  %21 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 6
  store i32 20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 7
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 8
  store i32 1, i32* %23, align 4
  %24 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 9
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 10
  store i32 100, i32* %25, align 4
  %26 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 11
  store i32 10, i32* %26, align 4
  %27 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 12
  store double 1.000000e+00, double* %27, align 8
  %28 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 13
  store double -1.000000e+00, double* %28, align 8
  %29 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 14
  store double 6.000000e+02, double* %29, align 8
  %30 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 15
  store double 0.000000e+00, double* %30, align 8
  store i32 0, i32* %help, align 4
  %31 = bitcast i32* %help to i8*
  %32 = call i32 @addArg(i8* getelementptr inbounds ([5 x i8]* @.str3149, i32 0, i32 0), i8 signext 104, i32 0, i8 signext 105, i8* %31, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str4150, i32 0, i32 0))
  %33 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 0
  %34 = getelementptr inbounds [1024 x i8]* %33, i32 0, i32 0
  %35 = call i32 @addArg(i8* getelementptr inbounds ([7 x i8]* @.str5151, i32 0, i32 0), i8 signext 100, i32 1, i8 signext 115, i8* %34, i32 1024, i8* getelementptr inbounds ([20 x i8]* @.str6152, i32 0, i32 0))
  %36 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 1
  %37 = getelementptr inbounds [1024 x i8]* %36, i32 0, i32 0
  %38 = call i32 @addArg(i8* getelementptr inbounds ([8 x i8]* @.str7153, i32 0, i32 0), i8 signext 112, i32 1, i8 signext 115, i8* %37, i32 1024, i8* getelementptr inbounds ([15 x i8]* @.str8154, i32 0, i32 0))
  %39 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 2
  %40 = getelementptr inbounds [1024 x i8]* %39, i32 0, i32 0
  %41 = call i32 @addArg(i8* getelementptr inbounds ([8 x i8]* @.str9155, i32 0, i32 0), i8 signext 116, i32 1, i8 signext 115, i8* %40, i32 1024, i8* getelementptr inbounds ([33 x i8]* @.str10156, i32 0, i32 0))
  %42 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 3
  %43 = bitcast i32* %42 to i8*
  %44 = call i32 @addArg(i8* getelementptr inbounds ([6 x i8]* @.str11157, i32 0, i32 0), i8 signext 101, i32 0, i8 signext 105, i8* %43, i32 0, i8* getelementptr inbounds ([23 x i8]* @.str12158, i32 0, i32 0))
  %45 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 4
  %46 = bitcast i32* %45 to i8*
  %47 = call i32 @addArg(i8* getelementptr inbounds ([3 x i8]* @.str13159, i32 0, i32 0), i8 signext 120, i32 1, i8 signext 105, i8* %46, i32 0, i8* getelementptr inbounds ([26 x i8]* @.str14160, i32 0, i32 0))
  %48 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 5
  %49 = bitcast i32* %48 to i8*
  %50 = call i32 @addArg(i8* getelementptr inbounds ([3 x i8]* @.str15161, i32 0, i32 0), i8 signext 121, i32 1, i8 signext 105, i8* %49, i32 0, i8* getelementptr inbounds ([26 x i8]* @.str16162, i32 0, i32 0))
  %51 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 6
  %52 = bitcast i32* %51 to i8*
  %53 = call i32 @addArg(i8* getelementptr inbounds ([3 x i8]* @.str17163, i32 0, i32 0), i8 signext 122, i32 1, i8 signext 105, i8* %52, i32 0, i8* getelementptr inbounds ([26 x i8]* @.str18164, i32 0, i32 0))
  %54 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 7
  %55 = bitcast i32* %54 to i8*
  %56 = call i32 @addArg(i8* getelementptr inbounds ([6 x i8]* @.str19165, i32 0, i32 0), i8 signext 105, i32 1, i8 signext 105, i8* %55, i32 0, i8* getelementptr inbounds ([26 x i8]* @.str20166, i32 0, i32 0))
  %57 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 8
  %58 = bitcast i32* %57 to i8*
  %59 = call i32 @addArg(i8* getelementptr inbounds ([6 x i8]* @.str21167, i32 0, i32 0), i8 signext 106, i32 1, i8 signext 105, i8* %58, i32 0, i8* getelementptr inbounds ([26 x i8]* @.str22168, i32 0, i32 0))
  %60 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 9
  %61 = bitcast i32* %60 to i8*
  %62 = call i32 @addArg(i8* getelementptr inbounds ([6 x i8]* @.str23169, i32 0, i32 0), i8 signext 107, i32 1, i8 signext 105, i8* %61, i32 0, i8* getelementptr inbounds ([26 x i8]* @.str24170, i32 0, i32 0))
  %63 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 10
  %64 = bitcast i32* %63 to i8*
  %65 = call i32 @addArg(i8* getelementptr inbounds ([7 x i8]* @.str25171, i32 0, i32 0), i8 signext 78, i32 1, i8 signext 105, i8* %64, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str26172, i32 0, i32 0))
  %66 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 11
  %67 = bitcast i32* %66 to i8*
  %68 = call i32 @addArg(i8* getelementptr inbounds ([10 x i8]* @.str27173, i32 0, i32 0), i8 signext 110, i32 1, i8 signext 105, i8* %67, i32 0, i8* getelementptr inbounds ([31 x i8]* @.str28174, i32 0, i32 0))
  %69 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 12
  %70 = bitcast double* %69 to i8*
  %71 = call i32 @addArg(i8* getelementptr inbounds ([3 x i8]* @.str29175, i32 0, i32 0), i8 signext 68, i32 1, i8 signext 100, i8* %70, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str30176, i32 0, i32 0))
  %72 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 13
  %73 = bitcast double* %72 to i8*
  %74 = call i32 @addArg(i8* getelementptr inbounds ([4 x i8]* @.str31177, i32 0, i32 0), i8 signext 108, i32 1, i8 signext 100, i8* %73, i32 0, i8* getelementptr inbounds ([30 x i8]* @.str32178, i32 0, i32 0))
  %75 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 14
  %76 = bitcast double* %75 to i8*
  %77 = call i32 @addArg(i8* getelementptr inbounds ([5 x i8]* @.str33179, i32 0, i32 0), i8 signext 84, i32 1, i8 signext 100, i8* %76, i32 0, i8* getelementptr inbounds ([24 x i8]* @.str34180, i32 0, i32 0))
  %78 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 15
  %79 = bitcast double* %78 to i8*
  %80 = call i32 @addArg(i8* getelementptr inbounds ([6 x i8]* @.str35181, i32 0, i32 0), i8 signext 114, i32 1, i8 signext 100, i8* %79, i32 0, i8* getelementptr inbounds ([26 x i8]* @.str36182, i32 0, i32 0))
  %81 = load i32* %1, align 4
  %82 = load i8*** %2, align 8
  call void @processArgs(i32 %81, i8** %82)
  %83 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 1
  %84 = getelementptr inbounds [1024 x i8]* %83, i32 0, i32 0
  %85 = call i64 @strlen(i8* %84) #7
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %106

; <label>:87                                      ; preds = %0
  %88 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 2
  %89 = getelementptr inbounds [1024 x i8]* %88, i32 0, i32 0
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([6 x i8]* @.str37183, i32 0, i32 0)) #7
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

; <label>:92                                      ; preds = %87
  %93 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 1
  %94 = getelementptr inbounds [1024 x i8]* %93, i32 0, i32 0
  %95 = call i8* @strcpy(i8* %94, i8* getelementptr inbounds ([15 x i8]* @.str38184, i32 0, i32 0)) #5
  br label %96

; <label>:96                                      ; preds = %92, %87
  %97 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 2
  %98 = getelementptr inbounds [1024 x i8]* %97, i32 0, i32 0
  %99 = call i32 @strcmp(i8* %98, i8* getelementptr inbounds ([7 x i8]* @.str2148, i32 0, i32 0)) #7
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

; <label>:101                                     ; preds = %96
  %102 = getelementptr inbounds %struct.CommandSt* %cmd, i32 0, i32 1
  %103 = getelementptr inbounds [1024 x i8]* %102, i32 0, i32 0
  %104 = call i8* @strcpy(i8* %103, i8* getelementptr inbounds ([10 x i8]* @.str39185, i32 0, i32 0)) #5
  br label %105

; <label>:105                                     ; preds = %101, %96
  br label %106

; <label>:106                                     ; preds = %105, %0
  %107 = load i32* %help, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

; <label>:109                                     ; preds = %106
  call void @printArgs()
  call void @freeArgs()
  call void @exit(i32 2) #8
  unreachable

; <label>:110                                     ; preds = %106
  call void @freeArgs()
  %111 = bitcast %struct.CommandSt* %agg.result to i8*
  %112 = bitcast %struct.CommandSt* %cmd to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %111, i8* %112, i64 3144, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @printCmdYaml(%struct._IO_FILE* %file, %struct.CommandSt* %cmd) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca %struct.CommandSt*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %1, align 8
  store %struct.CommandSt* %cmd, %struct.CommandSt** %2, align 8
  %3 = call i32 @printRank()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

; <label>:5                                       ; preds = %0
  br label %59

; <label>:6                                       ; preds = %0
  %7 = load %struct._IO_FILE** %1, align 8
  %8 = load %struct.CommandSt** %2, align 8
  %9 = getelementptr inbounds %struct.CommandSt* %8, i32 0, i32 3
  %10 = load i32* %9, align 4
  %11 = load %struct.CommandSt** %2, align 8
  %12 = getelementptr inbounds %struct.CommandSt* %11, i32 0, i32 0
  %13 = getelementptr inbounds [1024 x i8]* %12, i32 0, i32 0
  %14 = load %struct.CommandSt** %2, align 8
  %15 = getelementptr inbounds %struct.CommandSt* %14, i32 0, i32 1
  %16 = getelementptr inbounds [1024 x i8]* %15, i32 0, i32 0
  %17 = load %struct.CommandSt** %2, align 8
  %18 = getelementptr inbounds %struct.CommandSt* %17, i32 0, i32 2
  %19 = getelementptr inbounds [1024 x i8]* %18, i32 0, i32 0
  %20 = load %struct.CommandSt** %2, align 8
  %21 = getelementptr inbounds %struct.CommandSt* %20, i32 0, i32 4
  %22 = load i32* %21, align 4
  %23 = load %struct.CommandSt** %2, align 8
  %24 = getelementptr inbounds %struct.CommandSt* %23, i32 0, i32 5
  %25 = load i32* %24, align 4
  %26 = load %struct.CommandSt** %2, align 8
  %27 = getelementptr inbounds %struct.CommandSt* %26, i32 0, i32 6
  %28 = load i32* %27, align 4
  %29 = load %struct.CommandSt** %2, align 8
  %30 = getelementptr inbounds %struct.CommandSt* %29, i32 0, i32 7
  %31 = load i32* %30, align 4
  %32 = load %struct.CommandSt** %2, align 8
  %33 = getelementptr inbounds %struct.CommandSt* %32, i32 0, i32 8
  %34 = load i32* %33, align 4
  %35 = load %struct.CommandSt** %2, align 8
  %36 = getelementptr inbounds %struct.CommandSt* %35, i32 0, i32 9
  %37 = load i32* %36, align 4
  %38 = load %struct.CommandSt** %2, align 8
  %39 = getelementptr inbounds %struct.CommandSt* %38, i32 0, i32 13
  %40 = load double* %39, align 8
  %41 = load %struct.CommandSt** %2, align 8
  %42 = getelementptr inbounds %struct.CommandSt* %41, i32 0, i32 10
  %43 = load i32* %42, align 4
  %44 = load %struct.CommandSt** %2, align 8
  %45 = getelementptr inbounds %struct.CommandSt* %44, i32 0, i32 11
  %46 = load i32* %45, align 4
  %47 = load %struct.CommandSt** %2, align 8
  %48 = getelementptr inbounds %struct.CommandSt* %47, i32 0, i32 12
  %49 = load double* %48, align 8
  %50 = load %struct.CommandSt** %2, align 8
  %51 = getelementptr inbounds %struct.CommandSt* %50, i32 0, i32 14
  %52 = load double* %51, align 8
  %53 = load %struct.CommandSt** %2, align 8
  %54 = getelementptr inbounds %struct.CommandSt* %53, i32 0, i32 15
  %55 = load double* %54, align 8
  %56 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([282 x i8]* @.str40, i32 0, i32 0), i32 %10, i8* %13, i8* %16, i8* %19, i32 %22, i32 %25, i32 %28, i32 %31, i32 %34, i32 %37, double %40, i32 %43, i32 %46, double %49, double %52, double %55)
  %57 = load %struct._IO_FILE** %1, align 8
  %58 = call i32 @fflush(%struct._IO_FILE* %57)
  br label %59

; <label>:59                                      ; preds = %6, %5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @getNRanks() #0 {
  %1 = load i32* @nRanks, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @getMyRank() #0 {
  %1 = load i32* @myRank, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @printRank() #0 {
  %1 = alloca i32, align 4
  %2 = load i32* @myRank, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  store i32 1, i32* %1
  br label %6

; <label>:5                                       ; preds = %0
  store i32 0, i32* %1
  br label %6

; <label>:6                                       ; preds = %5, %4
  %7 = load i32* %1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define void @timestampBarrier(i8* %msg) #0 {
  %1 = alloca i8*, align 8
  %t = alloca i64, align 8
  %timeString = alloca i8*, align 8
  store i8* %msg, i8** %1, align 8
  call void @barrierParallel()
  %2 = call i32 @printRank()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

; <label>:4                                       ; preds = %0
  br label %16

; <label>:5                                       ; preds = %0
  %6 = call i64 @time(i64* null) #5
  store i64 %6, i64* %t, align 8
  %7 = call i8* @ctime(i64* %t) #5
  store i8* %7, i8** %timeString, align 8
  %8 = load i8** %timeString, align 8
  %9 = getelementptr inbounds i8* %8, i64 24
  store i8 0, i8* %9, align 1
  %10 = load %struct._IO_FILE** @stdout, align 8
  %11 = load i8** %timeString, align 8
  %12 = load i8** %1, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([8 x i8]* @.str190, i32 0, i32 0), i8* %11, i8* %12)
  %14 = load %struct._IO_FILE** @stdout, align 8
  %15 = call i32 @fflush(%struct._IO_FILE* %14)
  br label %16

; <label>:16                                      ; preds = %5, %4
  ret void
}

; Function Attrs: nounwind uwtable
define void @barrierParallel() #0 {
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind
declare i8* @ctime(i64*) #2

; Function Attrs: nounwind uwtable
define void @initParallel(i32* %argc, i8*** %argv) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8***, align 8
  store i32* %argc, i32** %1, align 8
  store i8*** %argv, i8**** %2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @destroyParallel() #0 {
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sendReceiveParallel(i8* %sendBuf, i32 %sendLen, i32 %dest, i8* %recvBuf, i32 %recvLen, i32 %source) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %sendBuf, i8** %1, align 8
  store i32 %sendLen, i32* %2, align 4
  store i32 %dest, i32* %3, align 4
  store i8* %recvBuf, i8** %4, align 8
  store i32 %recvLen, i32* %5, align 4
  store i32 %source, i32* %6, align 4
  %7 = load i32* %6, align 4
  %8 = load i32* %3, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  br label %13

; <label>:11                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8]* @.str1191, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str2192, i32 0, i32 0), i32 106, i8* getelementptr inbounds ([60 x i8]* @__PRETTY_FUNCTION__.sendReceiveParallel, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = load i8** %4, align 8
  %15 = load i8** %1, align 8
  %16 = load i32* %2, align 4
  %17 = sext i32 %16 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 %17, i32 1, i1 false)
  %18 = load i32* %2, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define void @addIntParallel(i32* %sendBuf, i32* %recvBuf, i32 %count) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %ii = alloca i32, align 4
  store i32* %sendBuf, i32** %1, align 8
  store i32* %recvBuf, i32** %2, align 8
  store i32 %count, i32* %3, align 4
  store i32 0, i32* %ii, align 4
  br label %4

; <label>:4                                       ; preds = %18, %0
  %5 = load i32* %ii, align 4
  %6 = load i32* %3, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %21

; <label>:8                                       ; preds = %4
  %9 = load i32* %ii, align 4
  %10 = sext i32 %9 to i64
  %11 = load i32** %1, align 8
  %12 = getelementptr inbounds i32* %11, i64 %10
  %13 = load i32* %12, align 4
  %14 = load i32* %ii, align 4
  %15 = sext i32 %14 to i64
  %16 = load i32** %2, align 8
  %17 = getelementptr inbounds i32* %16, i64 %15
  store i32 %13, i32* %17, align 4
  br label %18

; <label>:18                                      ; preds = %8
  %19 = load i32* %ii, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %ii, align 4
  br label %4

; <label>:21                                      ; preds = %4
  ret void
}

; Function Attrs: nounwind uwtable
define void @addRealParallel(double* %sendBuf, double* %recvBuf, i32 %count) #0 {
  %1 = alloca double*, align 8
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %ii = alloca i32, align 4
  store double* %sendBuf, double** %1, align 8
  store double* %recvBuf, double** %2, align 8
  store i32 %count, i32* %3, align 4
  store i32 0, i32* %ii, align 4
  br label %4

; <label>:4                                       ; preds = %18, %0
  %5 = load i32* %ii, align 4
  %6 = load i32* %3, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %21

; <label>:8                                       ; preds = %4
  %9 = load i32* %ii, align 4
  %10 = sext i32 %9 to i64
  %11 = load double** %1, align 8
  %12 = getelementptr inbounds double* %11, i64 %10
  %13 = load double* %12, align 8
  %14 = load i32* %ii, align 4
  %15 = sext i32 %14 to i64
  %16 = load double** %2, align 8
  %17 = getelementptr inbounds double* %16, i64 %15
  store double %13, double* %17, align 8
  br label %18

; <label>:18                                      ; preds = %8
  %19 = load i32* %ii, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %ii, align 4
  br label %4

; <label>:21                                      ; preds = %4
  ret void
}

; Function Attrs: nounwind uwtable
define void @addDoubleParallel(double* %sendBuf, double* %recvBuf, i32 %count) #0 {
  %1 = alloca double*, align 8
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %ii = alloca i32, align 4
  store double* %sendBuf, double** %1, align 8
  store double* %recvBuf, double** %2, align 8
  store i32 %count, i32* %3, align 4
  store i32 0, i32* %ii, align 4
  br label %4

; <label>:4                                       ; preds = %18, %0
  %5 = load i32* %ii, align 4
  %6 = load i32* %3, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %21

; <label>:8                                       ; preds = %4
  %9 = load i32* %ii, align 4
  %10 = sext i32 %9 to i64
  %11 = load double** %1, align 8
  %12 = getelementptr inbounds double* %11, i64 %10
  %13 = load double* %12, align 8
  %14 = load i32* %ii, align 4
  %15 = sext i32 %14 to i64
  %16 = load double** %2, align 8
  %17 = getelementptr inbounds double* %16, i64 %15
  store double %13, double* %17, align 8
  br label %18

; <label>:18                                      ; preds = %8
  %19 = load i32* %ii, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %ii, align 4
  br label %4

; <label>:21                                      ; preds = %4
  ret void
}

; Function Attrs: nounwind uwtable
define void @maxIntParallel(i32* %sendBuf, i32* %recvBuf, i32 %count) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %ii = alloca i32, align 4
  store i32* %sendBuf, i32** %1, align 8
  store i32* %recvBuf, i32** %2, align 8
  store i32 %count, i32* %3, align 4
  store i32 0, i32* %ii, align 4
  br label %4

; <label>:4                                       ; preds = %18, %0
  %5 = load i32* %ii, align 4
  %6 = load i32* %3, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %21

; <label>:8                                       ; preds = %4
  %9 = load i32* %ii, align 4
  %10 = sext i32 %9 to i64
  %11 = load i32** %1, align 8
  %12 = getelementptr inbounds i32* %11, i64 %10
  %13 = load i32* %12, align 4
  %14 = load i32* %ii, align 4
  %15 = sext i32 %14 to i64
  %16 = load i32** %2, align 8
  %17 = getelementptr inbounds i32* %16, i64 %15
  store i32 %13, i32* %17, align 4
  br label %18

; <label>:18                                      ; preds = %8
  %19 = load i32* %ii, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %ii, align 4
  br label %4

; <label>:21                                      ; preds = %4
  ret void
}

; Function Attrs: nounwind uwtable
define void @minRankDoubleParallel(%struct.RankReduceDataSt* %sendBuf, %struct.RankReduceDataSt* %recvBuf, i32 %count) #0 {
  %1 = alloca %struct.RankReduceDataSt*, align 8
  %2 = alloca %struct.RankReduceDataSt*, align 8
  %3 = alloca i32, align 4
  %ii = alloca i32, align 4
  store %struct.RankReduceDataSt* %sendBuf, %struct.RankReduceDataSt** %1, align 8
  store %struct.RankReduceDataSt* %recvBuf, %struct.RankReduceDataSt** %2, align 8
  store i32 %count, i32* %3, align 4
  store i32 0, i32* %ii, align 4
  br label %4

; <label>:4                                       ; preds = %31, %0
  %5 = load i32* %ii, align 4
  %6 = load i32* %3, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %34

; <label>:8                                       ; preds = %4
  %9 = load i32* %ii, align 4
  %10 = sext i32 %9 to i64
  %11 = load %struct.RankReduceDataSt** %1, align 8
  %12 = getelementptr inbounds %struct.RankReduceDataSt* %11, i64 %10
  %13 = getelementptr inbounds %struct.RankReduceDataSt* %12, i32 0, i32 0
  %14 = load double* %13, align 8
  %15 = load i32* %ii, align 4
  %16 = sext i32 %15 to i64
  %17 = load %struct.RankReduceDataSt** %2, align 8
  %18 = getelementptr inbounds %struct.RankReduceDataSt* %17, i64 %16
  %19 = getelementptr inbounds %struct.RankReduceDataSt* %18, i32 0, i32 0
  store double %14, double* %19, align 8
  %20 = load i32* %ii, align 4
  %21 = sext i32 %20 to i64
  %22 = load %struct.RankReduceDataSt** %1, align 8
  %23 = getelementptr inbounds %struct.RankReduceDataSt* %22, i64 %21
  %24 = getelementptr inbounds %struct.RankReduceDataSt* %23, i32 0, i32 1
  %25 = load i32* %24, align 4
  %26 = load i32* %ii, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.RankReduceDataSt** %2, align 8
  %29 = getelementptr inbounds %struct.RankReduceDataSt* %28, i64 %27
  %30 = getelementptr inbounds %struct.RankReduceDataSt* %29, i32 0, i32 1
  store i32 %25, i32* %30, align 4
  br label %31

; <label>:31                                      ; preds = %8
  %32 = load i32* %ii, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %ii, align 4
  br label %4

; <label>:34                                      ; preds = %4
  ret void
}

; Function Attrs: nounwind uwtable
define void @maxRankDoubleParallel(%struct.RankReduceDataSt* %sendBuf, %struct.RankReduceDataSt* %recvBuf, i32 %count) #0 {
  %1 = alloca %struct.RankReduceDataSt*, align 8
  %2 = alloca %struct.RankReduceDataSt*, align 8
  %3 = alloca i32, align 4
  %ii = alloca i32, align 4
  store %struct.RankReduceDataSt* %sendBuf, %struct.RankReduceDataSt** %1, align 8
  store %struct.RankReduceDataSt* %recvBuf, %struct.RankReduceDataSt** %2, align 8
  store i32 %count, i32* %3, align 4
  store i32 0, i32* %ii, align 4
  br label %4

; <label>:4                                       ; preds = %31, %0
  %5 = load i32* %ii, align 4
  %6 = load i32* %3, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %34

; <label>:8                                       ; preds = %4
  %9 = load i32* %ii, align 4
  %10 = sext i32 %9 to i64
  %11 = load %struct.RankReduceDataSt** %1, align 8
  %12 = getelementptr inbounds %struct.RankReduceDataSt* %11, i64 %10
  %13 = getelementptr inbounds %struct.RankReduceDataSt* %12, i32 0, i32 0
  %14 = load double* %13, align 8
  %15 = load i32* %ii, align 4
  %16 = sext i32 %15 to i64
  %17 = load %struct.RankReduceDataSt** %2, align 8
  %18 = getelementptr inbounds %struct.RankReduceDataSt* %17, i64 %16
  %19 = getelementptr inbounds %struct.RankReduceDataSt* %18, i32 0, i32 0
  store double %14, double* %19, align 8
  %20 = load i32* %ii, align 4
  %21 = sext i32 %20 to i64
  %22 = load %struct.RankReduceDataSt** %1, align 8
  %23 = getelementptr inbounds %struct.RankReduceDataSt* %22, i64 %21
  %24 = getelementptr inbounds %struct.RankReduceDataSt* %23, i32 0, i32 1
  %25 = load i32* %24, align 4
  %26 = load i32* %ii, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.RankReduceDataSt** %2, align 8
  %29 = getelementptr inbounds %struct.RankReduceDataSt* %28, i64 %27
  %30 = getelementptr inbounds %struct.RankReduceDataSt* %29, i32 0, i32 1
  store i32 %25, i32* %30, align 4
  br label %31

; <label>:31                                      ; preds = %8
  %32 = load i32* %ii, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %ii, align 4
  br label %4

; <label>:34                                      ; preds = %4
  ret void
}

; Function Attrs: nounwind uwtable
define void @bcastParallel(i8* %buf, i32 %count, i32 %root) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i8* %buf, i8** %1, align 8
  store i32 %count, i32* %2, align 4
  store i32 %root, i32* %3, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @builtWithMpi() #0 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @profileStart(i32 %handle) #0 {
  %1 = alloca i32, align 4
  store i32 %handle, i32* %1, align 4
  %2 = call i64 @getTime()
  %3 = load i32* %1, align 4
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %4
  %6 = getelementptr inbounds %struct.TimersSt* %5, i32 0, i32 0
  store i64 %2, i64* %6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @profileStop(i32 %handle) #0 {
  %1 = alloca i32, align 4
  %delta = alloca i64, align 8
  store i32 %handle, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %3
  %5 = getelementptr inbounds %struct.TimersSt* %4, i32 0, i32 2
  %6 = load i64* %5, align 8
  %7 = add i64 %6, 1
  store i64 %7, i64* %5, align 8
  %8 = call i64 @getTime()
  %9 = load i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %10
  %12 = getelementptr inbounds %struct.TimersSt* %11, i32 0, i32 0
  %13 = load i64* %12, align 8
  %14 = sub i64 %8, %13
  store i64 %14, i64* %delta, align 8
  %15 = load i64* %delta, align 8
  %16 = load i32* %1, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %17
  %19 = getelementptr inbounds %struct.TimersSt* %18, i32 0, i32 1
  %20 = load i64* %19, align 8
  %21 = add i64 %20, %15
  store i64 %21, i64* %19, align 8
  %22 = load i64* %delta, align 8
  %23 = load i32* %1, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %24
  %26 = getelementptr inbounds %struct.TimersSt* %25, i32 0, i32 3
  %27 = load i64* %26, align 8
  %28 = add i64 %27, %22
  store i64 %28, i64* %26, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define double @getElapsedTime(i32 %handle) #0 {
  %1 = alloca i32, align 4
  %etime = alloca double, align 8
  store i32 %handle, i32* %1, align 4
  %2 = call double @getTick()
  %3 = load i32* %1, align 4
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %4
  %6 = getelementptr inbounds %struct.TimersSt* %5, i32 0, i32 3
  %7 = load i64* %6, align 8
  %8 = uitofp i64 %7 to double
  %9 = fmul double %2, %8
  store double %9, double* %etime, align 8
  %10 = load i32* %1, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %11
  %13 = getelementptr inbounds %struct.TimersSt* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load double* %etime, align 8
  ret double %14
}

; Function Attrs: nounwind uwtable
define void @printPerformanceResults(i32 %nGlobalAtoms, i32 %printRate) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %tick = alloca double, align 8
  %loopTime = alloca double, align 8
  %ii = alloca i32, align 4
  %totalTime = alloca double, align 8
  %ii1 = alloca i32, align 4
  %atomsPerTask = alloca double, align 8
  store i32 %nGlobalAtoms, i32* %1, align 4
  store i32 %printRate, i32* %2, align 4
  call void @timerStats()
  %3 = call i32 @printRank()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

; <label>:5                                       ; preds = %0
  br label %187

; <label>:6                                       ; preds = %0
  %7 = call double @getTick()
  store double %7, double* %tick, align 8
  %8 = load i64* getelementptr inbounds ([11 x %struct.TimersSt]* @perfTimer, i32 0, i64 1, i32 1), align 8
  %9 = uitofp i64 %8 to double
  %10 = load double* %tick, align 8
  %11 = fmul double %9, %10
  store double %11, double* %loopTime, align 8
  %12 = load %struct._IO_FILE** @stdout, align 8
  %13 = call i32 @getMyRank()
  %14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([23 x i8]* @.str11227, i32 0, i32 0), i32 %13)
  %15 = load %struct._IO_FILE** @stdout, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([69 x i8]* @.str12228, i32 0, i32 0))
  %17 = load %struct._IO_FILE** @stdout, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([69 x i8]* @.str13229, i32 0, i32 0))
  store i32 0, i32* %ii, align 4
  br label %19

; <label>:19                                      ; preds = %63, %6
  %20 = load i32* %ii, align 4
  %21 = icmp slt i32 %20, 11
  br i1 %21, label %22, label %66

; <label>:22                                      ; preds = %19
  %23 = load i32* %ii, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %24
  %26 = getelementptr inbounds %struct.TimersSt* %25, i32 0, i32 1
  %27 = load i64* %26, align 8
  %28 = uitofp i64 %27 to double
  %29 = load double* %tick, align 8
  %30 = fmul double %28, %29
  store double %30, double* %totalTime, align 8
  %31 = load i32* %ii, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %32
  %34 = getelementptr inbounds %struct.TimersSt* %33, i32 0, i32 2
  %35 = load i64* %34, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %62

; <label>:37                                      ; preds = %22
  %38 = load %struct._IO_FILE** @stdout, align 8
  %39 = load i32* %ii, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [11 x i8*]* @timerName, i32 0, i64 %40
  %42 = load i8** %41, align 8
  %43 = load i32* %ii, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %44
  %46 = getelementptr inbounds %struct.TimersSt* %45, i32 0, i32 2
  %47 = load i64* %46, align 8
  %48 = load double* %totalTime, align 8
  %49 = load i32* %ii, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %50
  %52 = getelementptr inbounds %struct.TimersSt* %51, i32 0, i32 2
  %53 = load i64* %52, align 8
  %54 = uitofp i64 %53 to double
  %55 = fdiv double %48, %54
  %56 = load double* %totalTime, align 8
  %57 = load double* %totalTime, align 8
  %58 = load double* %loopTime, align 8
  %59 = fdiv double %57, %58
  %60 = fmul double %59, 1.000000e+02
  %61 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([42 x i8]* @.str14230, i32 0, i32 0), i8* %42, i64 %47, double %55, double %56, double %60)
  br label %62

; <label>:62                                      ; preds = %37, %22
  br label %63

; <label>:63                                      ; preds = %62
  %64 = load i32* %ii, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %ii, align 4
  br label %19

; <label>:66                                      ; preds = %19
  %67 = load %struct._IO_FILE** @stdout, align 8
  %68 = call i32 @getNRanks()
  %69 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([37 x i8]* @.str15231, i32 0, i32 0), i32 %68)
  %70 = load %struct._IO_FILE** @stdout, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([78 x i8]* @.str16232, i32 0, i32 0))
  %72 = load %struct._IO_FILE** @stdout, align 8
  %73 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([79 x i8]* @.str17233, i32 0, i32 0))
  store i32 0, i32* %ii1, align 4
  br label %74

; <label>:74                                      ; preds = %130, %66
  %75 = load i32* %ii1, align 4
  %76 = icmp slt i32 %75, 11
  br i1 %76, label %77, label %133

; <label>:77                                      ; preds = %74
  %78 = load i32* %ii1, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %79
  %81 = getelementptr inbounds %struct.TimersSt* %80, i32 0, i32 2
  %82 = load i64* %81, align 8
  %83 = icmp ugt i64 %82, 0
  br i1 %83, label %84, label %129

; <label>:84                                      ; preds = %77
  %85 = load %struct._IO_FILE** @stdout, align 8
  %86 = load i32* %ii1, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [11 x i8*]* @timerName, i32 0, i64 %87
  %89 = load i8** %88, align 8
  %90 = load i32* %ii1, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %91
  %93 = getelementptr inbounds %struct.TimersSt* %92, i32 0, i32 4
  %94 = load i32* %93, align 4
  %95 = load i32* %ii1, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %96
  %98 = getelementptr inbounds %struct.TimersSt* %97, i32 0, i32 6
  %99 = load double* %98, align 8
  %100 = load double* %tick, align 8
  %101 = fmul double %99, %100
  %102 = load i32* %ii1, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %103
  %105 = getelementptr inbounds %struct.TimersSt* %104, i32 0, i32 5
  %106 = load i32* %105, align 4
  %107 = load i32* %ii1, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %108
  %110 = getelementptr inbounds %struct.TimersSt* %109, i32 0, i32 7
  %111 = load double* %110, align 8
  %112 = load double* %tick, align 8
  %113 = fmul double %111, %112
  %114 = load i32* %ii1, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %115
  %117 = getelementptr inbounds %struct.TimersSt* %116, i32 0, i32 8
  %118 = load double* %117, align 8
  %119 = load double* %tick, align 8
  %120 = fmul double %118, %119
  %121 = load i32* %ii1, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %122
  %124 = getelementptr inbounds %struct.TimersSt* %123, i32 0, i32 9
  %125 = load double* %124, align 8
  %126 = load double* %tick, align 8
  %127 = fmul double %125, %126
  %128 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([45 x i8]* @.str18234, i32 0, i32 0), i8* %89, i32 %94, double %101, i32 %106, double %113, double %120, double %127)
  br label %129

; <label>:129                                     ; preds = %84, %77
  br label %130

; <label>:130                                     ; preds = %129
  %131 = load i32* %ii1, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %ii1, align 4
  br label %74

; <label>:133                                     ; preds = %74
  %134 = load i32* %1, align 4
  %135 = sitofp i32 %134 to double
  %136 = call i32 @getNRanks()
  %137 = sitofp i32 %136 to double
  %138 = fdiv double %135, %137
  store double %138, double* %atomsPerTask, align 8
  %139 = load double* getelementptr inbounds ([11 x %struct.TimersSt]* @perfTimer, i32 0, i64 2, i32 8), align 8
  %140 = load double* %tick, align 8
  %141 = fmul double %139, %140
  %142 = fmul double %141, 1.000000e+06
  %143 = load double* %atomsPerTask, align 8
  %144 = load i64* getelementptr inbounds ([11 x %struct.TimersSt]* @perfTimer, i32 0, i64 2, i32 2), align 8
  %145 = uitofp i64 %144 to double
  %146 = fmul double %143, %145
  %147 = load i32* %2, align 4
  %148 = sitofp i32 %147 to double
  %149 = fmul double %146, %148
  %150 = fdiv double %142, %149
  store double %150, double* getelementptr inbounds (%struct.TimerGlobalSt* @perfGlobal, i32 0, i32 0), align 8
  %151 = load double* getelementptr inbounds ([11 x %struct.TimersSt]* @perfTimer, i32 0, i64 2, i32 8), align 8
  %152 = load double* %tick, align 8
  %153 = fmul double %151, %152
  %154 = fmul double %153, 1.000000e+06
  %155 = load i32* %1, align 4
  %156 = sext i32 %155 to i64
  %157 = load i64* getelementptr inbounds ([11 x %struct.TimersSt]* @perfTimer, i32 0, i64 2, i32 2), align 8
  %158 = mul i64 %156, %157
  %159 = load i32* %2, align 4
  %160 = sext i32 %159 to i64
  %161 = mul i64 %158, %160
  %162 = uitofp i64 %161 to double
  %163 = fdiv double %154, %162
  store double %163, double* getelementptr inbounds (%struct.TimerGlobalSt* @perfGlobal, i32 0, i32 1), align 8
  %164 = load double* getelementptr inbounds (%struct.TimerGlobalSt* @perfGlobal, i32 0, i32 1), align 8
  %165 = fdiv double 1.000000e+00, %164
  store double %165, double* getelementptr inbounds (%struct.TimerGlobalSt* @perfGlobal, i32 0, i32 2), align 8
  %166 = load %struct._IO_FILE** @stdout, align 8
  %167 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %166, i8* getelementptr inbounds ([54 x i8]* @.str19235, i32 0, i32 0))
  %168 = load %struct._IO_FILE** @stdout, align 8
  %169 = load double* getelementptr inbounds (%struct.TimerGlobalSt* @perfGlobal, i32 0, i32 0), align 8
  %170 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %168, i8* getelementptr inbounds ([51 x i8]* @.str20236, i32 0, i32 0), double %169)
  %171 = load %struct._IO_FILE** @stdout, align 8
  %172 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %171, i8* getelementptr inbounds ([54 x i8]* @.str21237, i32 0, i32 0))
  %173 = load %struct._IO_FILE** @stdout, align 8
  %174 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %173, i8* getelementptr inbounds ([54 x i8]* @.str19235, i32 0, i32 0))
  %175 = load %struct._IO_FILE** @stdout, align 8
  %176 = load double* getelementptr inbounds (%struct.TimerGlobalSt* @perfGlobal, i32 0, i32 1), align 8
  %177 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %175, i8* getelementptr inbounds ([46 x i8]* @.str22238, i32 0, i32 0), double %176)
  %178 = load %struct._IO_FILE** @stdout, align 8
  %179 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %178, i8* getelementptr inbounds ([54 x i8]* @.str21237, i32 0, i32 0))
  %180 = load %struct._IO_FILE** @stdout, align 8
  %181 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %180, i8* getelementptr inbounds ([54 x i8]* @.str19235, i32 0, i32 0))
  %182 = load %struct._IO_FILE** @stdout, align 8
  %183 = load double* getelementptr inbounds (%struct.TimerGlobalSt* @perfGlobal, i32 0, i32 2), align 8
  %184 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %182, i8* getelementptr inbounds ([47 x i8]* @.str23239, i32 0, i32 0), double %183)
  %185 = load %struct._IO_FILE** @stdout, align 8
  %186 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %185, i8* getelementptr inbounds ([54 x i8]* @.str21237, i32 0, i32 0))
  br label %187

; <label>:187                                     ; preds = %133, %5
  ret void
}

; Function Attrs: nounwind uwtable
define void @printPerformanceResultsYaml(%struct._IO_FILE* %file) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %tick = alloca double, align 8
  %loopTime = alloca double, align 8
  %ii = alloca i32, align 4
  %totalTime = alloca double, align 8
  %ii1 = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %1, align 8
  %2 = call i32 @printRank()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

; <label>:4                                       ; preds = %0
  br label %176

; <label>:5                                       ; preds = %0
  %6 = call double @getTick()
  store double %6, double* %tick, align 8
  %7 = load i64* getelementptr inbounds ([11 x %struct.TimersSt]* @perfTimer, i32 0, i64 1, i32 1), align 8
  %8 = uitofp i64 %7 to double
  %9 = load double* %tick, align 8
  %10 = fmul double %8, %9
  store double %10, double* %loopTime, align 8
  %11 = load %struct._IO_FILE** %1, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([23 x i8]* @.str24240, i32 0, i32 0))
  %13 = load %struct._IO_FILE** %1, align 8
  %14 = call i32 @getNRanks()
  %15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([18 x i8]* @.str25241, i32 0, i32 0), i32 %14)
  %16 = load %struct._IO_FILE** %1, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([31 x i8]* @.str26242, i32 0, i32 0))
  %18 = load %struct._IO_FILE** %1, align 8
  %19 = call i32 @getMyRank()
  %20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([34 x i8]* @.str27243, i32 0, i32 0), i32 %19)
  store i32 0, i32* %ii, align 4
  br label %21

; <label>:21                                      ; preds = %73, %5
  %22 = load i32* %ii, align 4
  %23 = icmp slt i32 %22, 11
  br i1 %23, label %24, label %76

; <label>:24                                      ; preds = %21
  %25 = load i32* %ii, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %26
  %28 = getelementptr inbounds %struct.TimersSt* %27, i32 0, i32 2
  %29 = load i64* %28, align 8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %72

; <label>:31                                      ; preds = %24
  %32 = load i32* %ii, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %33
  %35 = getelementptr inbounds %struct.TimersSt* %34, i32 0, i32 1
  %36 = load i64* %35, align 8
  %37 = uitofp i64 %36 to double
  %38 = load double* %tick, align 8
  %39 = fmul double %37, %38
  store double %39, double* %totalTime, align 8
  %40 = load %struct._IO_FILE** %1, align 8
  %41 = load i32* %ii, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [11 x i8*]* @timerName, i32 0, i64 %42
  %44 = load i8** %43, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([13 x i8]* @.str28244, i32 0, i32 0), i8* %44)
  %46 = load %struct._IO_FILE** %1, align 8
  %47 = load i32* %ii, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %48
  %50 = getelementptr inbounds %struct.TimersSt* %49, i32 0, i32 2
  %51 = load i64* %50, align 8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([21 x i8]* @.str29245, i32 0, i32 0), i64 %51)
  %53 = load %struct._IO_FILE** %1, align 8
  %54 = load double* %totalTime, align 8
  %55 = load i32* %ii, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %56
  %58 = getelementptr inbounds %struct.TimersSt* %57, i32 0, i32 2
  %59 = load i64* %58, align 8
  %60 = uitofp i64 %59 to double
  %61 = fdiv double %54, %60
  %62 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([23 x i8]* @.str30246, i32 0, i32 0), double %61)
  %63 = load %struct._IO_FILE** %1, align 8
  %64 = load double* %totalTime, align 8
  %65 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([23 x i8]* @.str31247, i32 0, i32 0), double %64)
  %66 = load %struct._IO_FILE** %1, align 8
  %67 = load double* %totalTime, align 8
  %68 = load double* %loopTime, align 8
  %69 = fdiv double %67, %68
  %70 = fmul double %69, 1.000000e+02
  %71 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([24 x i8]* @.str32248, i32 0, i32 0), double %70)
  br label %72

; <label>:72                                      ; preds = %31, %24
  br label %73

; <label>:73                                      ; preds = %72
  %74 = load i32* %ii, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %ii, align 4
  br label %21

; <label>:76                                      ; preds = %21
  %77 = load %struct._IO_FILE** %1, align 8
  %78 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([35 x i8]* @.str33249, i32 0, i32 0))
  store i32 0, i32* %ii1, align 4
  br label %79

; <label>:79                                      ; preds = %147, %76
  %80 = load i32* %ii1, align 4
  %81 = icmp slt i32 %80, 11
  br i1 %81, label %82, label %150

; <label>:82                                      ; preds = %79
  %83 = load i32* %ii1, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %84
  %86 = getelementptr inbounds %struct.TimersSt* %85, i32 0, i32 2
  %87 = load i64* %86, align 8
  %88 = icmp ugt i64 %87, 0
  br i1 %88, label %89, label %146

; <label>:89                                      ; preds = %82
  %90 = load %struct._IO_FILE** %1, align 8
  %91 = load i32* %ii1, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [11 x i8*]* @timerName, i32 0, i64 %92
  %94 = load i8** %93, align 8
  %95 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([13 x i8]* @.str28244, i32 0, i32 0), i8* %94)
  %96 = load %struct._IO_FILE** %1, align 8
  %97 = load i32* %ii1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %98
  %100 = getelementptr inbounds %struct.TimersSt* %99, i32 0, i32 4
  %101 = load i32* %100, align 4
  %102 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([17 x i8]* @.str34250, i32 0, i32 0), i32 %101)
  %103 = load %struct._IO_FILE** %1, align 8
  %104 = load i32* %ii1, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %105
  %107 = getelementptr inbounds %struct.TimersSt* %106, i32 0, i32 6
  %108 = load double* %107, align 8
  %109 = load double* %tick, align 8
  %110 = fmul double %108, %109
  %111 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([20 x i8]* @.str35251, i32 0, i32 0), double %110)
  %112 = load %struct._IO_FILE** %1, align 8
  %113 = load i32* %ii1, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %114
  %116 = getelementptr inbounds %struct.TimersSt* %115, i32 0, i32 5
  %117 = load i32* %116, align 4
  %118 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([17 x i8]* @.str36252, i32 0, i32 0), i32 %117)
  %119 = load %struct._IO_FILE** %1, align 8
  %120 = load i32* %ii1, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %121
  %123 = getelementptr inbounds %struct.TimersSt* %122, i32 0, i32 7
  %124 = load double* %123, align 8
  %125 = load double* %tick, align 8
  %126 = fmul double %124, %125
  %127 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([20 x i8]* @.str37253, i32 0, i32 0), double %126)
  %128 = load %struct._IO_FILE** %1, align 8
  %129 = load i32* %ii1, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %130
  %132 = getelementptr inbounds %struct.TimersSt* %131, i32 0, i32 8
  %133 = load double* %132, align 8
  %134 = load double* %tick, align 8
  %135 = fmul double %133, %134
  %136 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([20 x i8]* @.str38254, i32 0, i32 0), double %135)
  %137 = load %struct._IO_FILE** %1, align 8
  %138 = load i32* %ii1, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %139
  %141 = getelementptr inbounds %struct.TimersSt* %140, i32 0, i32 9
  %142 = load double* %141, align 8
  %143 = load double* %tick, align 8
  %144 = fmul double %142, %143
  %145 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %137, i8* getelementptr inbounds ([22 x i8]* @.str39255, i32 0, i32 0), double %144)
  br label %146

; <label>:146                                     ; preds = %89, %82
  br label %147

; <label>:147                                     ; preds = %146
  %148 = load i32* %ii1, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %ii1, align 4
  br label %79

; <label>:150                                     ; preds = %79
  %151 = load %struct._IO_FILE** %1, align 8
  %152 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %151, i8* getelementptr inbounds ([34 x i8]* @.str40256, i32 0, i32 0))
  %153 = load %struct._IO_FILE** %1, align 8
  %154 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %153, i8* getelementptr inbounds ([19 x i8]* @.str41, i32 0, i32 0))
  %155 = load %struct._IO_FILE** %1, align 8
  %156 = load double* getelementptr inbounds (%struct.TimerGlobalSt* @perfGlobal, i32 0, i32 0), align 8
  %157 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %155, i8* getelementptr inbounds ([24 x i8]* @.str42, i32 0, i32 0), double %156)
  %158 = load %struct._IO_FILE** %1, align 8
  %159 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %158, i8* getelementptr inbounds ([25 x i8]* @.str43, i32 0, i32 0))
  %160 = load %struct._IO_FILE** %1, align 8
  %161 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %160, i8* getelementptr inbounds ([22 x i8]* @.str44257, i32 0, i32 0))
  %162 = load %struct._IO_FILE** %1, align 8
  %163 = load double* getelementptr inbounds (%struct.TimerGlobalSt* @perfGlobal, i32 0, i32 1), align 8
  %164 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %162, i8* getelementptr inbounds ([24 x i8]* @.str42, i32 0, i32 0), double %163)
  %165 = load %struct._IO_FILE** %1, align 8
  %166 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %165, i8* getelementptr inbounds ([20 x i8]* @.str45, i32 0, i32 0))
  %167 = load %struct._IO_FILE** %1, align 8
  %168 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %167, i8* getelementptr inbounds ([13 x i8]* @.str46, i32 0, i32 0))
  %169 = load %struct._IO_FILE** %1, align 8
  %170 = load double* getelementptr inbounds (%struct.TimerGlobalSt* @perfGlobal, i32 0, i32 2), align 8
  %171 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([24 x i8]* @.str42, i32 0, i32 0), double %170)
  %172 = load %struct._IO_FILE** %1, align 8
  %173 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %172, i8* getelementptr inbounds ([21 x i8]* @.str47, i32 0, i32 0))
  %174 = load %struct._IO_FILE** %1, align 8
  %175 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %174, i8* getelementptr inbounds ([2 x i8]* @.str48, i32 0, i32 0))
  br label %176

; <label>:176                                     ; preds = %150, %4
  ret void
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

; Function Attrs: nounwind uwtable
define internal i64 @getTime() #0 {
  %ptime = alloca %struct.timeval, align 8
  %t = alloca i64, align 8
  store i64 0, i64* %t, align 8
  %1 = call i32 @gettimeofday(%struct.timeval* %ptime, %struct.timezone* null) #5
  %2 = getelementptr inbounds %struct.timeval* %ptime, i32 0, i32 0
  %3 = load i64* %2, align 8
  %4 = mul i64 1000000, %3
  %5 = getelementptr inbounds %struct.timeval* %ptime, i32 0, i32 1
  %6 = load i64* %5, align 8
  %7 = add i64 %4, %6
  store i64 %7, i64* %t, align 8
  %8 = load i64* %t, align 8
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define internal double @getTick() #0 {
  %seconds_per_cycle = alloca double, align 8
  store double 1.000000e-06, double* %seconds_per_cycle, align 8
  %1 = load double* %seconds_per_cycle, align 8
  ret double %1
}

; Function Attrs: nounwind uwtable
define internal void @timerStats() #0 {
  %sendBuf = alloca [11 x double], align 16
  %recvBuf = alloca [11 x double], align 16
  %ii = alloca i32, align 4
  %ii1 = alloca i32, align 4
  %reduceSendBuf = alloca [11 x %struct.RankReduceDataSt], align 16
  %reduceRecvBuf = alloca [11 x %struct.RankReduceDataSt], align 16
  %ii2 = alloca i32, align 4
  %ii3 = alloca i32, align 4
  %ii4 = alloca i32, align 4
  %ii5 = alloca i32, align 4
  %temp = alloca double, align 8
  %ii6 = alloca i32, align 4
  store i32 0, i32* %ii, align 4
  br label %1

; <label>:1                                       ; preds = %14, %0
  %2 = load i32* %ii, align 4
  %3 = icmp slt i32 %2, 11
  br i1 %3, label %4, label %17

; <label>:4                                       ; preds = %1
  %5 = load i32* %ii, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %6
  %8 = getelementptr inbounds %struct.TimersSt* %7, i32 0, i32 1
  %9 = load i64* %8, align 8
  %10 = uitofp i64 %9 to double
  %11 = load i32* %ii, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [11 x double]* %sendBuf, i32 0, i64 %12
  store double %10, double* %13, align 8
  br label %14

; <label>:14                                      ; preds = %4
  %15 = load i32* %ii, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %ii, align 4
  br label %1

; <label>:17                                      ; preds = %1
  %18 = getelementptr inbounds [11 x double]* %sendBuf, i32 0, i32 0
  %19 = getelementptr inbounds [11 x double]* %recvBuf, i32 0, i32 0
  call void @addDoubleParallel(double* %18, double* %19, i32 11)
  store i32 0, i32* %ii1, align 4
  br label %20

; <label>:20                                      ; preds = %35, %17
  %21 = load i32* %ii1, align 4
  %22 = icmp slt i32 %21, 11
  br i1 %22, label %23, label %38

; <label>:23                                      ; preds = %20
  %24 = load i32* %ii1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [11 x double]* %recvBuf, i32 0, i64 %25
  %27 = load double* %26, align 8
  %28 = call i32 @getNRanks()
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %27, %29
  %31 = load i32* %ii1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %32
  %34 = getelementptr inbounds %struct.TimersSt* %33, i32 0, i32 8
  store double %30, double* %34, align 8
  br label %35

; <label>:35                                      ; preds = %23
  %36 = load i32* %ii1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %ii1, align 4
  br label %20

; <label>:38                                      ; preds = %20
  store i32 0, i32* %ii2, align 4
  br label %39

; <label>:39                                      ; preds = %58, %38
  %40 = load i32* %ii2, align 4
  %41 = icmp slt i32 %40, 11
  br i1 %41, label %42, label %61

; <label>:42                                      ; preds = %39
  %43 = load i32* %ii2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %44
  %46 = getelementptr inbounds %struct.TimersSt* %45, i32 0, i32 1
  %47 = load i64* %46, align 8
  %48 = uitofp i64 %47 to double
  %49 = load i32* %ii2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [11 x %struct.RankReduceDataSt]* %reduceSendBuf, i32 0, i64 %50
  %52 = getelementptr inbounds %struct.RankReduceDataSt* %51, i32 0, i32 0
  store double %48, double* %52, align 8
  %53 = call i32 @getMyRank()
  %54 = load i32* %ii2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [11 x %struct.RankReduceDataSt]* %reduceSendBuf, i32 0, i64 %55
  %57 = getelementptr inbounds %struct.RankReduceDataSt* %56, i32 0, i32 1
  store i32 %53, i32* %57, align 4
  br label %58

; <label>:58                                      ; preds = %42
  %59 = load i32* %ii2, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %ii2, align 4
  br label %39

; <label>:61                                      ; preds = %39
  %62 = getelementptr inbounds [11 x %struct.RankReduceDataSt]* %reduceSendBuf, i32 0, i32 0
  %63 = getelementptr inbounds [11 x %struct.RankReduceDataSt]* %reduceRecvBuf, i32 0, i32 0
  call void @minRankDoubleParallel(%struct.RankReduceDataSt* %62, %struct.RankReduceDataSt* %63, i32 11)
  store i32 0, i32* %ii3, align 4
  br label %64

; <label>:64                                      ; preds = %86, %61
  %65 = load i32* %ii3, align 4
  %66 = icmp slt i32 %65, 11
  br i1 %66, label %67, label %89

; <label>:67                                      ; preds = %64
  %68 = load i32* %ii3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [11 x %struct.RankReduceDataSt]* %reduceRecvBuf, i32 0, i64 %69
  %71 = getelementptr inbounds %struct.RankReduceDataSt* %70, i32 0, i32 0
  %72 = load double* %71, align 8
  %73 = load i32* %ii3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %74
  %76 = getelementptr inbounds %struct.TimersSt* %75, i32 0, i32 6
  store double %72, double* %76, align 8
  %77 = load i32* %ii3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [11 x %struct.RankReduceDataSt]* %reduceRecvBuf, i32 0, i64 %78
  %80 = getelementptr inbounds %struct.RankReduceDataSt* %79, i32 0, i32 1
  %81 = load i32* %80, align 4
  %82 = load i32* %ii3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %83
  %85 = getelementptr inbounds %struct.TimersSt* %84, i32 0, i32 4
  store i32 %81, i32* %85, align 4
  br label %86

; <label>:86                                      ; preds = %67
  %87 = load i32* %ii3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %ii3, align 4
  br label %64

; <label>:89                                      ; preds = %64
  %90 = getelementptr inbounds [11 x %struct.RankReduceDataSt]* %reduceSendBuf, i32 0, i32 0
  %91 = getelementptr inbounds [11 x %struct.RankReduceDataSt]* %reduceRecvBuf, i32 0, i32 0
  call void @maxRankDoubleParallel(%struct.RankReduceDataSt* %90, %struct.RankReduceDataSt* %91, i32 11)
  store i32 0, i32* %ii4, align 4
  br label %92

; <label>:92                                      ; preds = %114, %89
  %93 = load i32* %ii4, align 4
  %94 = icmp slt i32 %93, 11
  br i1 %94, label %95, label %117

; <label>:95                                      ; preds = %92
  %96 = load i32* %ii4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [11 x %struct.RankReduceDataSt]* %reduceRecvBuf, i32 0, i64 %97
  %99 = getelementptr inbounds %struct.RankReduceDataSt* %98, i32 0, i32 0
  %100 = load double* %99, align 8
  %101 = load i32* %ii4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %102
  %104 = getelementptr inbounds %struct.TimersSt* %103, i32 0, i32 7
  store double %100, double* %104, align 8
  %105 = load i32* %ii4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [11 x %struct.RankReduceDataSt]* %reduceRecvBuf, i32 0, i64 %106
  %108 = getelementptr inbounds %struct.RankReduceDataSt* %107, i32 0, i32 1
  %109 = load i32* %108, align 4
  %110 = load i32* %ii4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %111
  %113 = getelementptr inbounds %struct.TimersSt* %112, i32 0, i32 5
  store i32 %109, i32* %113, align 4
  br label %114

; <label>:114                                     ; preds = %95
  %115 = load i32* %ii4, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %ii4, align 4
  br label %92

; <label>:117                                     ; preds = %92
  store i32 0, i32* %ii5, align 4
  br label %118

; <label>:118                                     ; preds = %140, %117
  %119 = load i32* %ii5, align 4
  %120 = icmp slt i32 %119, 11
  br i1 %120, label %121, label %143

; <label>:121                                     ; preds = %118
  %122 = load i32* %ii5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %123
  %125 = getelementptr inbounds %struct.TimersSt* %124, i32 0, i32 1
  %126 = load i64* %125, align 8
  %127 = uitofp i64 %126 to double
  %128 = load i32* %ii5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %129
  %131 = getelementptr inbounds %struct.TimersSt* %130, i32 0, i32 8
  %132 = load double* %131, align 8
  %133 = fsub double %127, %132
  store double %133, double* %temp, align 8
  %134 = load double* %temp, align 8
  %135 = load double* %temp, align 8
  %136 = fmul double %134, %135
  %137 = load i32* %ii5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [11 x double]* %sendBuf, i32 0, i64 %138
  store double %136, double* %139, align 8
  br label %140

; <label>:140                                     ; preds = %121
  %141 = load i32* %ii5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %ii5, align 4
  br label %118

; <label>:143                                     ; preds = %118
  %144 = getelementptr inbounds [11 x double]* %sendBuf, i32 0, i32 0
  %145 = getelementptr inbounds [11 x double]* %recvBuf, i32 0, i32 0
  call void @addDoubleParallel(double* %144, double* %145, i32 11)
  store i32 0, i32* %ii6, align 4
  br label %146

; <label>:146                                     ; preds = %162, %143
  %147 = load i32* %ii6, align 4
  %148 = icmp slt i32 %147, 11
  br i1 %148, label %149, label %165

; <label>:149                                     ; preds = %146
  %150 = load i32* %ii6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [11 x double]* %recvBuf, i32 0, i64 %151
  %153 = load double* %152, align 8
  %154 = call i32 @getNRanks()
  %155 = sitofp i32 %154 to double
  %156 = fdiv double %153, %155
  %157 = call double @sqrt(double %156) #5
  %158 = load i32* %ii6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [11 x %struct.TimersSt]* @perfTimer, i32 0, i64 %159
  %161 = getelementptr inbounds %struct.TimersSt* %160, i32 0, i32 9
  store double %157, double* %161, align 8
  br label %162

; <label>:162                                     ; preds = %149
  %163 = load i32* %ii6, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %ii6, align 4
  br label %146

; <label>:165                                     ; preds = %146
  ret void
}

; Function Attrs: nounwind uwtable
define double @gasdev(i64* %seed) #0 {
  %1 = alloca i64*, align 8
  %rsq = alloca double, align 8
  %v1 = alloca double, align 8
  %v2 = alloca double, align 8
  store i64* %seed, i64** %1, align 8
  br label %2

; <label>:2                                       ; preds = %24, %0
  %3 = load i64** %1, align 8
  %4 = call double @lcg61(i64* %3)
  %5 = fmul double 2.000000e+00, %4
  %6 = fsub double %5, 1.000000e+00
  store double %6, double* %v1, align 8
  %7 = load i64** %1, align 8
  %8 = call double @lcg61(i64* %7)
  %9 = fmul double 2.000000e+00, %8
  %10 = fsub double %9, 1.000000e+00
  store double %10, double* %v2, align 8
  %11 = load double* %v1, align 8
  %12 = load double* %v1, align 8
  %13 = fmul double %11, %12
  %14 = load double* %v2, align 8
  %15 = load double* %v2, align 8
  %16 = fmul double %14, %15
  %17 = fadd double %13, %16
  store double %17, double* %rsq, align 8
  br label %18

; <label>:18                                      ; preds = %2
  %19 = load double* %rsq, align 8
  %20 = fcmp oge double %19, 1.000000e+00
  br i1 %20, label %24, label %21

; <label>:21                                      ; preds = %18
  %22 = load double* %rsq, align 8
  %23 = fcmp oeq double %22, 0.000000e+00
  br label %24

; <label>:24                                      ; preds = %21, %18
  %25 = phi i1 [ true, %18 ], [ %23, %21 ]
  br i1 %25, label %2, label %26

; <label>:26                                      ; preds = %24
  %27 = load double* %v2, align 8
  %28 = load double* %rsq, align 8
  %29 = call double @log(double %28) #5
  %30 = fmul double -2.000000e+00, %29
  %31 = load double* %rsq, align 8
  %32 = fdiv double %30, %31
  %33 = call double @sqrt(double %32) #5
  %34 = fmul double %27, %33
  ret double %34
}

; Function Attrs: nounwind uwtable
define double @lcg61(i64* %seed) #0 {
  %1 = alloca i64*, align 8
  store i64* %seed, i64** %1, align 8
  %2 = load i64** %1, align 8
  %3 = load i64* %2, align 8
  %4 = mul i64 %3, 437799614237992725
  store i64 %4, i64* %2, align 8
  %5 = load i64** %1, align 8
  %6 = load i64* %5, align 8
  %7 = urem i64 %6, 2305843009213693951
  store i64 %7, i64* %5, align 8
  %8 = load i64** %1, align 8
  %9 = load i64* %8, align 8
  %10 = uitofp i64 %9 to double
  %11 = fmul double %10, 0x3C20000000000000
  ret double %11
}

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind uwtable
define i64 @mkSeed(i32 %id, i32 %callSite) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %iSeed = alloca i64, align 8
  %jj = alloca i32, align 4
  store i32 %id, i32* %1, align 4
  store i32 %callSite, i32* %2, align 4
  %3 = load i32* %1, align 4
  %4 = mul i32 %3, -1640531535
  store i32 %4, i32* %s1, align 4
  %5 = load i32* %1, align 4
  %6 = load i32* %2, align 4
  %7 = add i32 %5, %6
  %8 = mul i32 %7, -1640531535
  store i32 %8, i32* %s2, align 4
  %9 = load i32* %s1, align 4
  %10 = zext i32 %9 to i64
  %11 = mul i64 4294967296, %10
  %12 = load i32* %s2, align 4
  %13 = zext i32 %12 to i64
  %14 = add i64 %11, %13
  store i64 %14, i64* %iSeed, align 8
  store i32 0, i32* %jj, align 4
  br label %15

; <label>:15                                      ; preds = %20, %0
  %16 = load i32* %jj, align 4
  %17 = icmp ult i32 %16, 10
  br i1 %17, label %18, label %23

; <label>:18                                      ; preds = %15
  %19 = call double @lcg61(i64* %iSeed)
  br label %20

; <label>:20                                      ; preds = %18
  %21 = load i32* %jj, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %jj, align 4
  br label %15

; <label>:23                                      ; preds = %15
  %24 = load i64* %iSeed, align 8
  ret i64 %24
}

; Function Attrs: nounwind uwtable
define double @timestep(%struct.SimFlatSt* %s, i32 %nSteps, double %dt) #0 {
  %1 = alloca %struct.SimFlatSt*, align 8
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %ii = alloca i32, align 4
  store %struct.SimFlatSt* %s, %struct.SimFlatSt** %1, align 8
  store i32 %nSteps, i32* %2, align 4
  store double %dt, double* %3, align 8
  store i32 0, i32* %ii, align 4
  br label %4

; <label>:4                                       ; preds = %54, %0
  %5 = load i32* %ii, align 4
  %6 = load i32* %2, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %57

; <label>:8                                       ; preds = %4
  br label %9

; <label>:9                                       ; preds = %8
  call void @profileStart(i32 4)
  br label %10

; <label>:10                                      ; preds = %9
  %11 = load %struct.SimFlatSt** %1, align 8
  %12 = load %struct.SimFlatSt** %1, align 8
  %13 = getelementptr inbounds %struct.SimFlatSt* %12, i32 0, i32 4
  %14 = load %struct.LinkCellSt** %13, align 8
  %15 = getelementptr inbounds %struct.LinkCellSt* %14, i32 0, i32 1
  %16 = load i32* %15, align 4
  %17 = load double* %3, align 8
  %18 = fmul double 5.000000e-01, %17
  call void @advanceVelocity(%struct.SimFlatSt* %11, i32 %16, double %18)
  br label %19

; <label>:19                                      ; preds = %10
  call void @profileStop(i32 4)
  br label %20

; <label>:20                                      ; preds = %19
  br label %21

; <label>:21                                      ; preds = %20
  call void @profileStart(i32 3)
  br label %22

; <label>:22                                      ; preds = %21
  %23 = load %struct.SimFlatSt** %1, align 8
  %24 = load %struct.SimFlatSt** %1, align 8
  %25 = getelementptr inbounds %struct.SimFlatSt* %24, i32 0, i32 4
  %26 = load %struct.LinkCellSt** %25, align 8
  %27 = getelementptr inbounds %struct.LinkCellSt* %26, i32 0, i32 1
  %28 = load i32* %27, align 4
  %29 = load double* %3, align 8
  call void @advancePosition(%struct.SimFlatSt* %23, i32 %28, double %29)
  br label %30

; <label>:30                                      ; preds = %22
  call void @profileStop(i32 3)
  br label %31

; <label>:31                                      ; preds = %30
  br label %32

; <label>:32                                      ; preds = %31
  call void @profileStart(i32 5)
  br label %33

; <label>:33                                      ; preds = %32
  %34 = load %struct.SimFlatSt** %1, align 8
  call void @redistributeAtoms(%struct.SimFlatSt* %34)
  br label %35

; <label>:35                                      ; preds = %33
  call void @profileStop(i32 5)
  br label %36

; <label>:36                                      ; preds = %35
  br label %37

; <label>:37                                      ; preds = %36
  call void @profileStart(i32 7)
  br label %38

; <label>:38                                      ; preds = %37
  %39 = load %struct.SimFlatSt** %1, align 8
  call void @computeForce(%struct.SimFlatSt* %39)
  br label %40

; <label>:40                                      ; preds = %38
  call void @profileStop(i32 7)
  br label %41

; <label>:41                                      ; preds = %40
  br label %42

; <label>:42                                      ; preds = %41
  call void @profileStart(i32 4)
  br label %43

; <label>:43                                      ; preds = %42
  %44 = load %struct.SimFlatSt** %1, align 8
  %45 = load %struct.SimFlatSt** %1, align 8
  %46 = getelementptr inbounds %struct.SimFlatSt* %45, i32 0, i32 4
  %47 = load %struct.LinkCellSt** %46, align 8
  %48 = getelementptr inbounds %struct.LinkCellSt* %47, i32 0, i32 1
  %49 = load i32* %48, align 4
  %50 = load double* %3, align 8
  %51 = fmul double 5.000000e-01, %50
  call void @advanceVelocity(%struct.SimFlatSt* %44, i32 %49, double %51)
  br label %52

; <label>:52                                      ; preds = %43
  call void @profileStop(i32 4)
  br label %53

; <label>:53                                      ; preds = %52
  br label %54

; <label>:54                                      ; preds = %53
  %55 = load i32* %ii, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %ii, align 4
  br label %4

; <label>:57                                      ; preds = %4
  %58 = load %struct.SimFlatSt** %1, align 8
  call void @kineticEnergy(%struct.SimFlatSt* %58)
  %59 = load %struct.SimFlatSt** %1, align 8
  %60 = getelementptr inbounds %struct.SimFlatSt* %59, i32 0, i32 7
  %61 = load double* %60, align 8
  ret double %61
}

; Function Attrs: nounwind uwtable
define void @redistributeAtoms(%struct.SimFlatSt* %sim) #0 {
  %1 = alloca %struct.SimFlatSt*, align 8
  %ii = alloca i32, align 4
  store %struct.SimFlatSt* %sim, %struct.SimFlatSt** %1, align 8
  %2 = load %struct.SimFlatSt** %1, align 8
  %3 = getelementptr inbounds %struct.SimFlatSt* %2, i32 0, i32 4
  %4 = load %struct.LinkCellSt** %3, align 8
  %5 = load %struct.SimFlatSt** %1, align 8
  %6 = getelementptr inbounds %struct.SimFlatSt* %5, i32 0, i32 5
  %7 = load %struct.AtomsSt** %6, align 8
  call void @updateLinkCells(%struct.LinkCellSt* %4, %struct.AtomsSt* %7)
  br label %8

; <label>:8                                       ; preds = %0
  call void @profileStart(i32 6)
  br label %9

; <label>:9                                       ; preds = %8
  %10 = load %struct.SimFlatSt** %1, align 8
  %11 = getelementptr inbounds %struct.SimFlatSt* %10, i32 0, i32 10
  %12 = load %struct.HaloExchangeSt** %11, align 8
  %13 = load %struct.SimFlatSt** %1, align 8
  %14 = bitcast %struct.SimFlatSt* %13 to i8*
  call void @haloExchange(%struct.HaloExchangeSt* %12, i8* %14)
  br label %15

; <label>:15                                      ; preds = %9
  call void @profileStop(i32 6)
  br label %16

; <label>:16                                      ; preds = %15
  store i32 0, i32* %ii, align 4
  br label %17

; <label>:17                                      ; preds = %33, %16
  %18 = load i32* %ii, align 4
  %19 = load %struct.SimFlatSt** %1, align 8
  %20 = getelementptr inbounds %struct.SimFlatSt* %19, i32 0, i32 4
  %21 = load %struct.LinkCellSt** %20, align 8
  %22 = getelementptr inbounds %struct.LinkCellSt* %21, i32 0, i32 3
  %23 = load i32* %22, align 4
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %25, label %36

; <label>:25                                      ; preds = %17
  %26 = load %struct.SimFlatSt** %1, align 8
  %27 = getelementptr inbounds %struct.SimFlatSt* %26, i32 0, i32 5
  %28 = load %struct.AtomsSt** %27, align 8
  %29 = load %struct.SimFlatSt** %1, align 8
  %30 = getelementptr inbounds %struct.SimFlatSt* %29, i32 0, i32 4
  %31 = load %struct.LinkCellSt** %30, align 8
  %32 = load i32* %ii, align 4
  call void @sortAtomsInCell(%struct.AtomsSt* %28, %struct.LinkCellSt* %31, i32 %32)
  br label %33

; <label>:33                                      ; preds = %25
  %34 = load i32* %ii, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %ii, align 4
  br label %17

; <label>:36                                      ; preds = %17
  ret void
}

; Function Attrs: nounwind uwtable
define void @computeForce(%struct.SimFlatSt* %s) #0 {
  %1 = alloca %struct.SimFlatSt*, align 8
  store %struct.SimFlatSt* %s, %struct.SimFlatSt** %1, align 8
  %2 = load %struct.SimFlatSt** %1, align 8
  %3 = getelementptr inbounds %struct.SimFlatSt* %2, i32 0, i32 9
  %4 = load %struct.BasePotentialSt** %3, align 8
  %5 = getelementptr inbounds %struct.BasePotentialSt* %4, i32 0, i32 6
  %6 = load i32 (%struct.SimFlatSt*)** %5, align 8
  %7 = load %struct.SimFlatSt** %1, align 8
  %8 = call i32 %6(%struct.SimFlatSt* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define void @kineticEnergy(%struct.SimFlatSt* %s) #0 {
  %1 = alloca %struct.SimFlatSt*, align 8
  %eLocal = alloca [2 x double], align 16
  %iBox = alloca i32, align 4
  %iOff = alloca i32, align 4
  %ii = alloca i32, align 4
  %iSpecies = alloca i32, align 4
  %invMass = alloca double, align 8
  %eSum = alloca [2 x double], align 16
  store %struct.SimFlatSt* %s, %struct.SimFlatSt** %1, align 8
  %2 = load %struct.SimFlatSt** %1, align 8
  %3 = getelementptr inbounds %struct.SimFlatSt* %2, i32 0, i32 7
  %4 = load double* %3, align 8
  %5 = getelementptr inbounds [2 x double]* %eLocal, i32 0, i64 0
  store double %4, double* %5, align 8
  %6 = getelementptr inbounds [2 x double]* %eLocal, i32 0, i64 1
  store double 0.000000e+00, double* %6, align 8
  store i32 0, i32* %iBox, align 4
  br label %7

; <label>:7                                       ; preds = %125, %0
  %8 = load i32* %iBox, align 4
  %9 = load %struct.SimFlatSt** %1, align 8
  %10 = getelementptr inbounds %struct.SimFlatSt* %9, i32 0, i32 4
  %11 = load %struct.LinkCellSt** %10, align 8
  %12 = getelementptr inbounds %struct.LinkCellSt* %11, i32 0, i32 1
  %13 = load i32* %12, align 4
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %128

; <label>:15                                      ; preds = %7
  %16 = load i32* %iBox, align 4
  %17 = mul nsw i32 64, %16
  store i32 %17, i32* %iOff, align 4
  store i32 0, i32* %ii, align 4
  br label %18

; <label>:18                                      ; preds = %119, %15
  %19 = load i32* %ii, align 4
  %20 = load i32* %iBox, align 4
  %21 = sext i32 %20 to i64
  %22 = load %struct.SimFlatSt** %1, align 8
  %23 = getelementptr inbounds %struct.SimFlatSt* %22, i32 0, i32 4
  %24 = load %struct.LinkCellSt** %23, align 8
  %25 = getelementptr inbounds %struct.LinkCellSt* %24, i32 0, i32 8
  %26 = load i32** %25, align 8
  %27 = getelementptr inbounds i32* %26, i64 %21
  %28 = load i32* %27, align 4
  %29 = icmp slt i32 %19, %28
  br i1 %29, label %30, label %124

; <label>:30                                      ; preds = %18
  %31 = load i32* %iOff, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.SimFlatSt** %1, align 8
  %34 = getelementptr inbounds %struct.SimFlatSt* %33, i32 0, i32 5
  %35 = load %struct.AtomsSt** %34, align 8
  %36 = getelementptr inbounds %struct.AtomsSt* %35, i32 0, i32 3
  %37 = load i32** %36, align 8
  %38 = getelementptr inbounds i32* %37, i64 %32
  %39 = load i32* %38, align 4
  store i32 %39, i32* %iSpecies, align 4
  %40 = load i32* %iSpecies, align 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.SimFlatSt** %1, align 8
  %43 = getelementptr inbounds %struct.SimFlatSt* %42, i32 0, i32 6
  %44 = load %struct.SpeciesDataSt** %43, align 8
  %45 = getelementptr inbounds %struct.SpeciesDataSt* %44, i64 %41
  %46 = getelementptr inbounds %struct.SpeciesDataSt* %45, i32 0, i32 2
  %47 = load double* %46, align 8
  %48 = fdiv double 5.000000e-01, %47
  store double %48, double* %invMass, align 8
  %49 = load i32* %iOff, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.SimFlatSt** %1, align 8
  %52 = getelementptr inbounds %struct.SimFlatSt* %51, i32 0, i32 5
  %53 = load %struct.AtomsSt** %52, align 8
  %54 = getelementptr inbounds %struct.AtomsSt* %53, i32 0, i32 5
  %55 = load [3 x double]** %54, align 8
  %56 = getelementptr inbounds [3 x double]* %55, i64 %50
  %57 = getelementptr inbounds [3 x double]* %56, i32 0, i64 0
  %58 = load double* %57, align 8
  %59 = load i32* %iOff, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.SimFlatSt** %1, align 8
  %62 = getelementptr inbounds %struct.SimFlatSt* %61, i32 0, i32 5
  %63 = load %struct.AtomsSt** %62, align 8
  %64 = getelementptr inbounds %struct.AtomsSt* %63, i32 0, i32 5
  %65 = load [3 x double]** %64, align 8
  %66 = getelementptr inbounds [3 x double]* %65, i64 %60
  %67 = getelementptr inbounds [3 x double]* %66, i32 0, i64 0
  %68 = load double* %67, align 8
  %69 = fmul double %58, %68
  %70 = load i32* %iOff, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.SimFlatSt** %1, align 8
  %73 = getelementptr inbounds %struct.SimFlatSt* %72, i32 0, i32 5
  %74 = load %struct.AtomsSt** %73, align 8
  %75 = getelementptr inbounds %struct.AtomsSt* %74, i32 0, i32 5
  %76 = load [3 x double]** %75, align 8
  %77 = getelementptr inbounds [3 x double]* %76, i64 %71
  %78 = getelementptr inbounds [3 x double]* %77, i32 0, i64 1
  %79 = load double* %78, align 8
  %80 = load i32* %iOff, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.SimFlatSt** %1, align 8
  %83 = getelementptr inbounds %struct.SimFlatSt* %82, i32 0, i32 5
  %84 = load %struct.AtomsSt** %83, align 8
  %85 = getelementptr inbounds %struct.AtomsSt* %84, i32 0, i32 5
  %86 = load [3 x double]** %85, align 8
  %87 = getelementptr inbounds [3 x double]* %86, i64 %81
  %88 = getelementptr inbounds [3 x double]* %87, i32 0, i64 1
  %89 = load double* %88, align 8
  %90 = fmul double %79, %89
  %91 = fadd double %69, %90
  %92 = load i32* %iOff, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.SimFlatSt** %1, align 8
  %95 = getelementptr inbounds %struct.SimFlatSt* %94, i32 0, i32 5
  %96 = load %struct.AtomsSt** %95, align 8
  %97 = getelementptr inbounds %struct.AtomsSt* %96, i32 0, i32 5
  %98 = load [3 x double]** %97, align 8
  %99 = getelementptr inbounds [3 x double]* %98, i64 %93
  %100 = getelementptr inbounds [3 x double]* %99, i32 0, i64 2
  %101 = load double* %100, align 8
  %102 = load i32* %iOff, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct.SimFlatSt** %1, align 8
  %105 = getelementptr inbounds %struct.SimFlatSt* %104, i32 0, i32 5
  %106 = load %struct.AtomsSt** %105, align 8
  %107 = getelementptr inbounds %struct.AtomsSt* %106, i32 0, i32 5
  %108 = load [3 x double]** %107, align 8
  %109 = getelementptr inbounds [3 x double]* %108, i64 %103
  %110 = getelementptr inbounds [3 x double]* %109, i32 0, i64 2
  %111 = load double* %110, align 8
  %112 = fmul double %101, %111
  %113 = fadd double %91, %112
  %114 = load double* %invMass, align 8
  %115 = fmul double %113, %114
  %116 = getelementptr inbounds [2 x double]* %eLocal, i32 0, i64 1
  %117 = load double* %116, align 8
  %118 = fadd double %117, %115
  store double %118, double* %116, align 8
  br label %119

; <label>:119                                     ; preds = %30
  %120 = load i32* %ii, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %ii, align 4
  %122 = load i32* %iOff, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %iOff, align 4
  br label %18

; <label>:124                                     ; preds = %18
  br label %125

; <label>:125                                     ; preds = %124
  %126 = load i32* %iBox, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %iBox, align 4
  br label %7

; <label>:128                                     ; preds = %7
  br label %129

; <label>:129                                     ; preds = %128
  call void @profileStart(i32 10)
  br label %130

; <label>:130                                     ; preds = %129
  %131 = getelementptr inbounds [2 x double]* %eLocal, i32 0, i32 0
  %132 = getelementptr inbounds [2 x double]* %eSum, i32 0, i32 0
  call void @addRealParallel(double* %131, double* %132, i32 2)
  br label %133

; <label>:133                                     ; preds = %130
  call void @profileStop(i32 10)
  br label %134

; <label>:134                                     ; preds = %133
  %135 = getelementptr inbounds [2 x double]* %eSum, i32 0, i64 0
  %136 = load double* %135, align 8
  %137 = load %struct.SimFlatSt** %1, align 8
  %138 = getelementptr inbounds %struct.SimFlatSt* %137, i32 0, i32 7
  store double %136, double* %138, align 8
  %139 = getelementptr inbounds [2 x double]* %eSum, i32 0, i64 1
  %140 = load double* %139, align 8
  %141 = load %struct.SimFlatSt** %1, align 8
  %142 = getelementptr inbounds %struct.SimFlatSt* %141, i32 0, i32 8
  store double %140, double* %142, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @advanceVelocity(%struct.SimFlatSt* %s, i32 %nBoxes, double %dt) #0 {
  %1 = alloca %struct.SimFlatSt*, align 8
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %iBox = alloca i32, align 4
  %iOff = alloca i32, align 4
  %ii = alloca i32, align 4
  store %struct.SimFlatSt* %s, %struct.SimFlatSt** %1, align 8
  store i32 %nBoxes, i32* %2, align 4
  store double %dt, double* %3, align 8
  store i32 0, i32* %iBox, align 4
  br label %4

; <label>:4                                       ; preds = %99, %0
  %5 = load i32* %iBox, align 4
  %6 = load i32* %2, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %102

; <label>:8                                       ; preds = %4
  %9 = load i32* %iBox, align 4
  %10 = mul nsw i32 64, %9
  store i32 %10, i32* %iOff, align 4
  store i32 0, i32* %ii, align 4
  br label %11

; <label>:11                                      ; preds = %93, %8
  %12 = load i32* %ii, align 4
  %13 = load i32* %iBox, align 4
  %14 = sext i32 %13 to i64
  %15 = load %struct.SimFlatSt** %1, align 8
  %16 = getelementptr inbounds %struct.SimFlatSt* %15, i32 0, i32 4
  %17 = load %struct.LinkCellSt** %16, align 8
  %18 = getelementptr inbounds %struct.LinkCellSt* %17, i32 0, i32 8
  %19 = load i32** %18, align 8
  %20 = getelementptr inbounds i32* %19, i64 %14
  %21 = load i32* %20, align 4
  %22 = icmp slt i32 %12, %21
  br i1 %22, label %23, label %98

; <label>:23                                      ; preds = %11
  %24 = load double* %3, align 8
  %25 = load i32* %iOff, align 4
  %26 = sext i32 %25 to i64
  %27 = load %struct.SimFlatSt** %1, align 8
  %28 = getelementptr inbounds %struct.SimFlatSt* %27, i32 0, i32 5
  %29 = load %struct.AtomsSt** %28, align 8
  %30 = getelementptr inbounds %struct.AtomsSt* %29, i32 0, i32 6
  %31 = load [3 x double]** %30, align 8
  %32 = getelementptr inbounds [3 x double]* %31, i64 %26
  %33 = getelementptr inbounds [3 x double]* %32, i32 0, i64 0
  %34 = load double* %33, align 8
  %35 = fmul double %24, %34
  %36 = load i32* %iOff, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.SimFlatSt** %1, align 8
  %39 = getelementptr inbounds %struct.SimFlatSt* %38, i32 0, i32 5
  %40 = load %struct.AtomsSt** %39, align 8
  %41 = getelementptr inbounds %struct.AtomsSt* %40, i32 0, i32 5
  %42 = load [3 x double]** %41, align 8
  %43 = getelementptr inbounds [3 x double]* %42, i64 %37
  %44 = getelementptr inbounds [3 x double]* %43, i32 0, i64 0
  %45 = load double* %44, align 8
  %46 = fadd double %45, %35
  store double %46, double* %44, align 8
  %47 = load double* %3, align 8
  %48 = load i32* %iOff, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.SimFlatSt** %1, align 8
  %51 = getelementptr inbounds %struct.SimFlatSt* %50, i32 0, i32 5
  %52 = load %struct.AtomsSt** %51, align 8
  %53 = getelementptr inbounds %struct.AtomsSt* %52, i32 0, i32 6
  %54 = load [3 x double]** %53, align 8
  %55 = getelementptr inbounds [3 x double]* %54, i64 %49
  %56 = getelementptr inbounds [3 x double]* %55, i32 0, i64 1
  %57 = load double* %56, align 8
  %58 = fmul double %47, %57
  %59 = load i32* %iOff, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.SimFlatSt** %1, align 8
  %62 = getelementptr inbounds %struct.SimFlatSt* %61, i32 0, i32 5
  %63 = load %struct.AtomsSt** %62, align 8
  %64 = getelementptr inbounds %struct.AtomsSt* %63, i32 0, i32 5
  %65 = load [3 x double]** %64, align 8
  %66 = getelementptr inbounds [3 x double]* %65, i64 %60
  %67 = getelementptr inbounds [3 x double]* %66, i32 0, i64 1
  %68 = load double* %67, align 8
  %69 = fadd double %68, %58
  store double %69, double* %67, align 8
  %70 = load double* %3, align 8
  %71 = load i32* %iOff, align 4
  %72 = sext i32 %71 to i64
  %73 = load %struct.SimFlatSt** %1, align 8
  %74 = getelementptr inbounds %struct.SimFlatSt* %73, i32 0, i32 5
  %75 = load %struct.AtomsSt** %74, align 8
  %76 = getelementptr inbounds %struct.AtomsSt* %75, i32 0, i32 6
  %77 = load [3 x double]** %76, align 8
  %78 = getelementptr inbounds [3 x double]* %77, i64 %72
  %79 = getelementptr inbounds [3 x double]* %78, i32 0, i64 2
  %80 = load double* %79, align 8
  %81 = fmul double %70, %80
  %82 = load i32* %iOff, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.SimFlatSt** %1, align 8
  %85 = getelementptr inbounds %struct.SimFlatSt* %84, i32 0, i32 5
  %86 = load %struct.AtomsSt** %85, align 8
  %87 = getelementptr inbounds %struct.AtomsSt* %86, i32 0, i32 5
  %88 = load [3 x double]** %87, align 8
  %89 = getelementptr inbounds [3 x double]* %88, i64 %83
  %90 = getelementptr inbounds [3 x double]* %89, i32 0, i64 2
  %91 = load double* %90, align 8
  %92 = fadd double %91, %81
  store double %92, double* %90, align 8
  br label %93

; <label>:93                                      ; preds = %23
  %94 = load i32* %ii, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %ii, align 4
  %96 = load i32* %iOff, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %iOff, align 4
  br label %11

; <label>:98                                      ; preds = %11
  br label %99

; <label>:99                                      ; preds = %98
  %100 = load i32* %iBox, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %iBox, align 4
  br label %4

; <label>:102                                     ; preds = %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @advancePosition(%struct.SimFlatSt* %s, i32 %nBoxes, double %dt) #0 {
  %1 = alloca %struct.SimFlatSt*, align 8
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %iBox = alloca i32, align 4
  %iOff = alloca i32, align 4
  %ii = alloca i32, align 4
  %iSpecies = alloca i32, align 4
  %invMass = alloca double, align 8
  store %struct.SimFlatSt* %s, %struct.SimFlatSt** %1, align 8
  store i32 %nBoxes, i32* %2, align 4
  store double %dt, double* %3, align 8
  store i32 0, i32* %iBox, align 4
  br label %4

; <label>:4                                       ; preds = %123, %0
  %5 = load i32* %iBox, align 4
  %6 = load i32* %2, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %126

; <label>:8                                       ; preds = %4
  %9 = load i32* %iBox, align 4
  %10 = mul nsw i32 64, %9
  store i32 %10, i32* %iOff, align 4
  store i32 0, i32* %ii, align 4
  br label %11

; <label>:11                                      ; preds = %117, %8
  %12 = load i32* %ii, align 4
  %13 = load i32* %iBox, align 4
  %14 = sext i32 %13 to i64
  %15 = load %struct.SimFlatSt** %1, align 8
  %16 = getelementptr inbounds %struct.SimFlatSt* %15, i32 0, i32 4
  %17 = load %struct.LinkCellSt** %16, align 8
  %18 = getelementptr inbounds %struct.LinkCellSt* %17, i32 0, i32 8
  %19 = load i32** %18, align 8
  %20 = getelementptr inbounds i32* %19, i64 %14
  %21 = load i32* %20, align 4
  %22 = icmp slt i32 %12, %21
  br i1 %22, label %23, label %122

; <label>:23                                      ; preds = %11
  %24 = load i32* %iOff, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.SimFlatSt** %1, align 8
  %27 = getelementptr inbounds %struct.SimFlatSt* %26, i32 0, i32 5
  %28 = load %struct.AtomsSt** %27, align 8
  %29 = getelementptr inbounds %struct.AtomsSt* %28, i32 0, i32 3
  %30 = load i32** %29, align 8
  %31 = getelementptr inbounds i32* %30, i64 %25
  %32 = load i32* %31, align 4
  store i32 %32, i32* %iSpecies, align 4
  %33 = load i32* %iSpecies, align 4
  %34 = sext i32 %33 to i64
  %35 = load %struct.SimFlatSt** %1, align 8
  %36 = getelementptr inbounds %struct.SimFlatSt* %35, i32 0, i32 6
  %37 = load %struct.SpeciesDataSt** %36, align 8
  %38 = getelementptr inbounds %struct.SpeciesDataSt* %37, i64 %34
  %39 = getelementptr inbounds %struct.SpeciesDataSt* %38, i32 0, i32 2
  %40 = load double* %39, align 8
  %41 = fdiv double 1.000000e+00, %40
  store double %41, double* %invMass, align 8
  %42 = load double* %3, align 8
  %43 = load i32* %iOff, align 4
  %44 = sext i32 %43 to i64
  %45 = load %struct.SimFlatSt** %1, align 8
  %46 = getelementptr inbounds %struct.SimFlatSt* %45, i32 0, i32 5
  %47 = load %struct.AtomsSt** %46, align 8
  %48 = getelementptr inbounds %struct.AtomsSt* %47, i32 0, i32 5
  %49 = load [3 x double]** %48, align 8
  %50 = getelementptr inbounds [3 x double]* %49, i64 %44
  %51 = getelementptr inbounds [3 x double]* %50, i32 0, i64 0
  %52 = load double* %51, align 8
  %53 = fmul double %42, %52
  %54 = load double* %invMass, align 8
  %55 = fmul double %53, %54
  %56 = load i32* %iOff, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.SimFlatSt** %1, align 8
  %59 = getelementptr inbounds %struct.SimFlatSt* %58, i32 0, i32 5
  %60 = load %struct.AtomsSt** %59, align 8
  %61 = getelementptr inbounds %struct.AtomsSt* %60, i32 0, i32 4
  %62 = load [3 x double]** %61, align 8
  %63 = getelementptr inbounds [3 x double]* %62, i64 %57
  %64 = getelementptr inbounds [3 x double]* %63, i32 0, i64 0
  %65 = load double* %64, align 8
  %66 = fadd double %65, %55
  store double %66, double* %64, align 8
  %67 = load double* %3, align 8
  %68 = load i32* %iOff, align 4
  %69 = sext i32 %68 to i64
  %70 = load %struct.SimFlatSt** %1, align 8
  %71 = getelementptr inbounds %struct.SimFlatSt* %70, i32 0, i32 5
  %72 = load %struct.AtomsSt** %71, align 8
  %73 = getelementptr inbounds %struct.AtomsSt* %72, i32 0, i32 5
  %74 = load [3 x double]** %73, align 8
  %75 = getelementptr inbounds [3 x double]* %74, i64 %69
  %76 = getelementptr inbounds [3 x double]* %75, i32 0, i64 1
  %77 = load double* %76, align 8
  %78 = fmul double %67, %77
  %79 = load double* %invMass, align 8
  %80 = fmul double %78, %79
  %81 = load i32* %iOff, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.SimFlatSt** %1, align 8
  %84 = getelementptr inbounds %struct.SimFlatSt* %83, i32 0, i32 5
  %85 = load %struct.AtomsSt** %84, align 8
  %86 = getelementptr inbounds %struct.AtomsSt* %85, i32 0, i32 4
  %87 = load [3 x double]** %86, align 8
  %88 = getelementptr inbounds [3 x double]* %87, i64 %82
  %89 = getelementptr inbounds [3 x double]* %88, i32 0, i64 1
  %90 = load double* %89, align 8
  %91 = fadd double %90, %80
  store double %91, double* %89, align 8
  %92 = load double* %3, align 8
  %93 = load i32* %iOff, align 4
  %94 = sext i32 %93 to i64
  %95 = load %struct.SimFlatSt** %1, align 8
  %96 = getelementptr inbounds %struct.SimFlatSt* %95, i32 0, i32 5
  %97 = load %struct.AtomsSt** %96, align 8
  %98 = getelementptr inbounds %struct.AtomsSt* %97, i32 0, i32 5
  %99 = load [3 x double]** %98, align 8
  %100 = getelementptr inbounds [3 x double]* %99, i64 %94
  %101 = getelementptr inbounds [3 x double]* %100, i32 0, i64 2
  %102 = load double* %101, align 8
  %103 = fmul double %92, %102
  %104 = load double* %invMass, align 8
  %105 = fmul double %103, %104
  %106 = load i32* %iOff, align 4
  %107 = sext i32 %106 to i64
  %108 = load %struct.SimFlatSt** %1, align 8
  %109 = getelementptr inbounds %struct.SimFlatSt* %108, i32 0, i32 5
  %110 = load %struct.AtomsSt** %109, align 8
  %111 = getelementptr inbounds %struct.AtomsSt* %110, i32 0, i32 4
  %112 = load [3 x double]** %111, align 8
  %113 = getelementptr inbounds [3 x double]* %112, i64 %107
  %114 = getelementptr inbounds [3 x double]* %113, i32 0, i64 2
  %115 = load double* %114, align 8
  %116 = fadd double %115, %105
  store double %116, double* %114, align 8
  br label %117

; <label>:117                                     ; preds = %23
  %118 = load i32* %ii, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %ii, align 4
  %120 = load i32* %iOff, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %iOff, align 4
  br label %11

; <label>:122                                     ; preds = %11
  br label %123

; <label>:123                                     ; preds = %122
  %124 = load i32* %iBox, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %iBox, align 4
  br label %4

; <label>:126                                     ; preds = %4
  ret void
}

; Function Attrs: nounwind uwtable
define void @yamlBegin() #0 {
  %filename = alloca [64 x i8], align 16
  %rawtime = alloca i64, align 8
  %ptm = alloca %struct.tm*, align 8
  %sdate = alloca [25 x i8], align 16
  %1 = call i32 @printRank()
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

; <label>:3                                       ; preds = %0
  br label %35

; <label>:4                                       ; preds = %0
  %5 = call i64 @time(i64* %rawtime) #5
  %6 = call %struct.tm* @localtime(i64* %rawtime) #5
  store %struct.tm* %6, %struct.tm** %ptm, align 8
  %7 = getelementptr inbounds [25 x i8]* %sdate, i32 0, i32 0
  %8 = load %struct.tm** %ptm, align 8
  %9 = getelementptr inbounds %struct.tm* %8, i32 0, i32 5
  %10 = load i32* %9, align 4
  %11 = add nsw i32 %10, 1900
  %12 = load %struct.tm** %ptm, align 8
  %13 = getelementptr inbounds %struct.tm* %12, i32 0, i32 4
  %14 = load i32* %13, align 4
  %15 = add nsw i32 %14, 1
  %16 = load %struct.tm** %ptm, align 8
  %17 = getelementptr inbounds %struct.tm* %16, i32 0, i32 3
  %18 = load i32* %17, align 4
  %19 = load %struct.tm** %ptm, align 8
  %20 = getelementptr inbounds %struct.tm* %19, i32 0, i32 2
  %21 = load i32* %20, align 4
  %22 = load %struct.tm** %ptm, align 8
  %23 = getelementptr inbounds %struct.tm* %22, i32 0, i32 1
  %24 = load i32* %23, align 4
  %25 = load %struct.tm** %ptm, align 8
  %26 = getelementptr inbounds %struct.tm* %25, i32 0, i32 0
  %27 = load i32* %26, align 4
  %28 = call i32 (i8*, i8*, ...)* @sprintf(i8* %7, i8* getelementptr inbounds ([30 x i8]* @.str284, i32 0, i32 0), i32 %11, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27) #5
  %29 = getelementptr inbounds [64 x i8]* %filename, i32 0, i32 0
  %30 = load i8** @CoMDVariant, align 8
  %31 = getelementptr inbounds [25 x i8]* %sdate, i32 0, i32 0
  %32 = call i32 (i8*, i8*, ...)* @sprintf(i8* %29, i8* getelementptr inbounds ([11 x i8]* @.str1285, i32 0, i32 0), i8* %30, i8* %31) #5
  %33 = getelementptr inbounds [64 x i8]* %filename, i32 0, i32 0
  %34 = call %struct._IO_FILE* @fopen(i8* %33, i8* getelementptr inbounds ([2 x i8]* @.str2286, i32 0, i32 0))
  store %struct._IO_FILE* %34, %struct._IO_FILE** @yamlFile, align 8
  br label %35

; <label>:35                                      ; preds = %4, %3
  ret void
}

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #2

; Function Attrs: nounwind uwtable
define void @yamlAppInfo(%struct._IO_FILE* %file) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %1, align 8
  %2 = call i32 @printRank()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

; <label>:4                                       ; preds = %0
  br label %46

; <label>:5                                       ; preds = %0
  %6 = load %struct._IO_FILE** %1, align 8
  call void @printSeparator(%struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE** %1, align 8
  %8 = load i8** @CoMDVariant, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([31 x i8]* @.str3287, i32 0, i32 0), i8* %8)
  %10 = load %struct._IO_FILE** %1, align 8
  %11 = load i8** @CoMDVersion, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([31 x i8]* @.str4288, i32 0, i32 0), i8* %11)
  %13 = load %struct._IO_FILE** %1, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([11 x i8]* @.str5289, i32 0, i32 0))
  %15 = load %struct._IO_FILE** %1, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([16 x i8]* @.str6290, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str7291, i32 0, i32 0))
  %17 = load %struct._IO_FILE** %1, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([19 x i8]* @.str8292, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str9293, i32 0, i32 0))
  %19 = load %struct._IO_FILE** %1, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([22 x i8]* @.str10294, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str11295, i32 0, i32 0))
  %21 = load %struct._IO_FILE** %1, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([17 x i8]* @.str12296, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str13297, i32 0, i32 0))
  %23 = load %struct._IO_FILE** %1, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([8 x i8]* @.str14298, i32 0, i32 0))
  %25 = load %struct._IO_FILE** %1, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([10 x i8]* @.str15299, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8]* @.str16300, i32 0, i32 0))
  %27 = load %struct._IO_FILE** %1, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([24 x i8]* @.str17301, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8]* @.str18302, i32 0, i32 0))
  %29 = load %struct._IO_FILE** %1, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([14 x i8]* @.str19303, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8]* @.str20304, i32 0, i32 0))
  %31 = load %struct._IO_FILE** %1, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([15 x i8]* @.str21305, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str22306, i32 0, i32 0))
  %33 = load %struct._IO_FILE** %1, align 8
  %34 = call i32 @builtWithMpi()
  %35 = icmp ne i32 %34, 0
  %36 = select i1 %35, i8* getelementptr inbounds ([5 x i8]* @.str24308, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str25309, i32 0, i32 0)
  %37 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([17 x i8]* @.str23307, i32 0, i32 0), i8* %36)
  %38 = load %struct._IO_FILE** %1, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([19 x i8]* @.str26310, i32 0, i32 0))
  %40 = load %struct._IO_FILE** %1, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([24 x i8]* @.str27311, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str24308, i32 0, i32 0))
  %42 = load %struct._IO_FILE** %1, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([2 x i8]* @.str28312, i32 0, i32 0))
  %44 = load %struct._IO_FILE** %1, align 8
  %45 = call i32 @fflush(%struct._IO_FILE* %44)
  br label %46

; <label>:46                                      ; preds = %5, %4
  ret void
}

; Function Attrs: nounwind uwtable
define void @printSeparator(%struct._IO_FILE* %file) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %1, align 8
  %2 = load %struct._IO_FILE** %1, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([2 x i8]* @.str28312, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @yamlEnd() #0 {
  %1 = call i32 @printRank()
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

; <label>:3                                       ; preds = %0
  br label %7

; <label>:4                                       ; preds = %0
  %5 = load %struct._IO_FILE** @yamlFile, align 8
  %6 = call i32 @fclose(%struct._IO_FILE* %5)
  br label %7

; <label>:7                                       ; preds = %4, %3
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
