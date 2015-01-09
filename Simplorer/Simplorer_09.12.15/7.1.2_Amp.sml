//*************************************************************************************************
//                                               SML-File                                         *
//              			 created by Simplorer Schematic 			  *
//                                      SIMPLORER SIMULATION CENTER 7.0                           *
//                                                                                                *
//*************************************************************************************************

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Natural Constants %%
#define MATH_PI		3.141592654		// PI
#define MATH_E		2.718281828		// Euler constant
#define PHYS_E0		8.85419E-12		// Permittivity of vacuum
#define PHYS_MU0	1.25664E-06		// Permeability of vacuum
#define PHYS_K		1.38066E-23		// Boltzmann constant	
#define PHYS_Q		1.60217733E-19		// Elementary charge	
#define PHYS_C		299792458		// Speed of Light
#define PHYS_G		9.80665			// Acceleration due to gravitiy
#define PHYS_H		6.6260755E-34		// Planck constant
#define PHYS_T0		-273.15			// Absolute zero
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%







INTERN  C   C1   N1:=N0013,  N2:=GND  ( C := 1.572u, V0 :=   ) ;
INTERN  R   R1   N1:=N0033,  N2:=GND  ( R := 0.01  ) ;
INTERN L   L1  N1:= N0033,  N2:=GND  ( L := 35.71n, I0 :=   ) ;
INTERN  C   C2   N1:=N0033,  N2:=GND  ( C := 0.245, V0 :=   ) ;
INTERN IV   IC2   N1:=GND,  N2:=N0033  ( QUANT := VM2.V, FACT := 1  ) ;
INTERN IV   IC3   N1:=N0013,  N2:=GND  ( QUANT := VM1.V, FACT := 1  ) ;
INTERN  VM  VM1  N1:=N0033,  N2:=GND  ( ) ;
INTERN  VM  VM2  N1:=N0013,  N2:=GND  ( ) ;
INTERN  EPULSE 	E1   N1:=GND,  N2:=N0013  ( FREQ := 1, TPERIO := 1, AMPL := 50, PHASE := 0, PERIO := 1, OFF := 0, TDELAY := 0.0002, SPC := 0, AC_PHASE := 0, AC_MAG := 1  );



SIMCTL SimCtl1
{

SIMCFG SECM SECM1 ( Solver := 1, LDF := 1, Iteratmax := 40, IEmax := 0.001, VEmax := 0.001 );
SIMCFG SIMPLORER_TR Simplorer1 ( Tend := 40m, Hmin := 10u, Hmax := 1m );
SIMCFG SIMPLORER_AC Simplorer2 ( Fstart := 100, Fend := 100k, Fstep := 100, ACSweepType := 1, EMaxAC := 1u );
SIMCFG SIMPLORER_DC Simplorer3 ( Iteratmax := 50, EMaxDC := 1m, Relaxmax := 10 );
SIMCFG SIMPLORER Simplorer4 ( Theta := 27, BDMold := 1);
}

OUTCTL OutCtl1
{

OUTCFG VIEWTOOL Out1 ( Xmin := 0, Xmax := Tend, Ymin := -400, Ymax := 400 );

RESULT SDB SDB_0(  C1.V );
RESULT SDB SDB_1(  C1.I );
RESULT SDB SDB_2(  R1.V );
RESULT SDB SDB_3(  R1.I );
RESULT SDB SDB_4(  L1.V );
RESULT SDB SDB_5(  L1.I );
RESULT SDB SDB_6(  C2.V );
RESULT SDB SDB_7(  C2.I );
RESULT SDB SDB_8(  IC2.V );
RESULT SDB SDB_9(  IC2.I );
RESULT SDB SDB_10(  VM1.V );
RESULT SDB SDB_11(  IC3.I );
RESULT SDB SDB_12(  IC3.V );
RESULT SDB SDB_13(  VM2.V );
RESULT VIEW VANALOG_14 (  N0033.V, Type:=ANALOG );
RESULT VIEW VANALOG_15 (  GND.V, Type:=ANALOG );
RESULT VIEW VANALOG_16 (  N0013.V, Type:=ANALOG );
RESULT SDB SDB_17(  E1.V );
RESULT SDB SDB_18(  E1.I );
RESULT VIEW VANALOG_19 (  N0013.dV, Type:=ANALOG );
RESULT VIEW VANALOG_20 (  C1.V, Type:=ANALOG );
RESULT VIEW VANALOG_21 (  C1.I, Type:=ANALOG );
RESULT VIEW VANALOG_22 (  R1.V, Type:=ANALOG );
RESULT VIEW VANALOG_23 (  R1.I, Type:=ANALOG );
RESULT VIEW VANALOG_24 (  L1.V, Type:=ANALOG );
RESULT VIEW VANALOG_25 (  L1.I, Type:=ANALOG );
RESULT VIEW VANALOG_26 (  C2.V, Type:=ANALOG );
RESULT VIEW VANALOG_27 (  C2.I, Type:=ANALOG );
RESULT VIEW VANALOG_28 (  IC2.V, Type:=ANALOG );
RESULT VIEW VANALOG_29 (  IC2.I, Type:=ANALOG );
RESULT VIEW VANALOG_30 (  VM1.V, Type:=ANALOG );
RESULT VIEW VANALOG_31 (  IC3.I, Type:=ANALOG );
RESULT VIEW VANALOG_32 (  IC3.V, Type:=ANALOG );
RESULT VIEW VANALOG_33 (  VM2.V, Type:=ANALOG );
RESULT SDB SDB_34(  N0033.V );
RESULT SDB SDB_35(  GND.V );
RESULT SDB SDB_36(  N0013.V );
RESULT VIEW VANALOG_37 (  E1.V, Type:=ANALOG );
RESULT VIEW VANALOG_38 (  E1.I, Type:=ANALOG );
RESULT SDB SDB_39(  N0013.dV );
RESULT VIEW VANALOG_40 (  GND.V, Type:=ANALOG );



OUTCFG SimplorerDB DB1 ( Xmin := 0, Xmax := Tend, Reduce := 0, StepNo := 2, StepWidth := 10u, RelChange := 0.0 );
}


RUN ( Model:=, Out := OutCtl1, Sim := SimCtl1 );


