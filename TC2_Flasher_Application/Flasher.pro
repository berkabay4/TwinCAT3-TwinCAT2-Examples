CoDeSys+$   �                   @        @   2.3.9.50    @/    @                             疝Z +    @       &�a                 3�Z        9   @   q   C:\TwinCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               ��              STR2               ��                 CONCAT                                         ��66  �   ����           CTD           M             ��           Variable for CD Edge Detection      CD            ��           Count Down on rising edge    LOAD            ��           Load Start Value    PV           ��           Start Value       Q            ��           Counter reached 0    CV           ��           Current Counter Value             ��66  �   ����           CTU           M             ��            Variable for CU Edge Detection       CU            ��       
    Count Up    RESET            ��           Reset Counter to 0    PV           ��           Counter Limit       Q            ��           Counter reached the Limit    CV           ��           Current Counter Value             ��66  �   ����           CTUD           MU             ��            Variable for CU Edge Detection    MD             ��            Variable for CD Edge Detection       CU            ��	       
    Count Up    CD            ��
           Count Down    RESET            ��           Reset Counter to Null    LOAD            ��           Load Start Value    PV           ��           Start Value / Counter Limit       QU            ��           Counter reached Limit    QD            ��           Counter reached Null    CV           ��           Current Counter Value             ��66  �   ����           DELETE               STR               ��              LEN           ��              POS           ��                 DELETE                                         ��66  �   ����           F_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             ��66  �   ����           FIND               STR1               ��              STR2               ��                 FIND                                     ��66  �   ����           INSERT               STR1               ��              STR2               ��              POS           ��                 INSERT                                         ��66  �   ����           LEFT               STR               ��              SIZE           ��                 LEFT                                         ��66  �   ����           LEN               STR               ��                 LEN                                     ��66  �   ����           MID               STR               ��              LEN           ��              POS           ��                 MID                                         ��66  �   ����           R_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             ��66  �   ����           REPLACE               STR1               ��              STR2               ��              L           ��              P           ��                 REPLACE                                         ��66  �   ����           RIGHT               STR               ��              SIZE           ��                 RIGHT                                         ��66  �   ����           RS               SET            ��              RESET1            ��                 Q1            ��
                       ��66  �   ����           SEMA           X             ��                 CLAIM            ��	              RELEASE            ��
                 BUSY            ��                       ��66  �   ����           SR               SET1            ��              RESET            ��                 Q1            ��	                       ��66  �   ����           TOF           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with falling edge, resets timer with rising edge    PT           ��           time to pass, before Q is set       Q            ��	       2    is FALSE, PT seconds after IN had a falling edge    ET           ��
           elapsed time             ��66  �   ����           TON           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with rising edge, resets timer with falling edge    PT           ��           time to pass, before Q is set       Q            ��	       0    is TRUE, PT seconds after IN had a rising edge    ET           ��
           elapsed time             ��66  �   ����           TP        	   StartTime            ��           internal variable       IN            ��       !    Trigger for Start of the Signal    PT           ��       '    The length of the High-Signal in 10ms       Q            ��	           The pulse    ET           ��
       &    The current phase of the High-Signal             ��66  �   ����    R    @                                                                                          FLASHER           nState            #               TON1                    TON    #               nCounter            #               TON2                    TON    #                  button1            #               button2            #                  Led1            #               Led2            #                        "�Z  @    ����           MAIN           flasher1                      flasher                                     ��Z  @    ����            
 �          #   ( $      K   2     K   @     K   N     K   c                 p         +     ��localhost   �+   ��@ H     +�   K�           �2	��,	             +�+�+    �+z �� Y!w       ��@   S                       S       �� � �!w    �!w        z X�Qz @� ��@ z        ��@ z     $�   $� �� �{� ��d����� ]&�     ,   ,                                                        K         @   !�ZE  /*BECKCONFI3*/
        !+| @   @   �   �     3               
   Standard            	ݖ�Z       d               VAR_GLOBAL
END_VAR
                                                                                  "                          Standard
         MAIN����           ���� Y�Z                 $����                                            Standard 3�Z	3�Z                                       	Y�Z                        VAR_CONFIG
END_VAR
                                                                                   '              , ` ` j           Global_Variables Y�Z	Y�Z     p��           %  VAR_GLOBAL

	i_binput1		AT%I*	:BOOL;
	i_binput2		AT%I*	:BOOL;
	i_binput3		AT%I*	:BOOL;
	i_binput4		AT%I*	:BOOL;
	i_binput5		AT%I*	:BOOL;
	i_binput6		AT%I*	:BOOL;
	i_binput7		AT%I*	:BOOL;
	i_binput8		AT%I*	:BOOL;

	i_ainput1		AT%I*	:INT;
	i_ainput2		AT%I*	:INT;

	q_boutput1	AT%Q*	:BOOL;
	q_boutput2	AT%Q*	:BOOL;
	q_boutput3	AT%Q*	:BOOL;
	q_boutput4	AT%Q*	:BOOL;
	q_boutput5	AT%Q*	:BOOL;
	q_boutput6	AT%Q*	:BOOL;
	q_boutput7	AT%Q*	:BOOL;
	q_boutput8	AT%Q*	:BOOL;

	q_aoutput1	AT%Q*	:INT;
	q_aoutput2	AT%Q*	:INT;


END_VAR
                                                                                               '           "     ��`�H���           TwinCAT_Configuration !�Z	Y�Z"                     n
  (* Generated automatically by TwinCAT - (read only) *)
VAR_CONFIG
	.i_binput1 AT %IX4.0 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1100)^Term 2 (EL1859)^Channel 1^Input} *)
	.i_binput2 AT %IX4.1 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1100)^Term 2 (EL1859)^Channel 2^Input} *)
	.i_binput3 AT %IX4.2 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1100)^Term 2 (EL1859)^Channel 3^Input} *)
	.i_binput4 AT %IX4.3 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1100)^Term 2 (EL1859)^Channel 4^Input} *)
	.i_binput5 AT %IX4.4 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1100)^Term 2 (EL1859)^Channel 5^Input} *)
	.i_binput6 AT %IX4.5 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1100)^Term 2 (EL1859)^Channel 6^Input} *)
	.i_binput7 AT %IX4.6 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1100)^Term 2 (EL1859)^Channel 7^Input} *)
	.i_binput8 AT %IX4.7 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1100)^Term 2 (EL1859)^Channel 8^Input} *)
	.i_ainput1 AT %IB0 : INT;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1100)^Term 3 (EL3062)^AI Standard Channel 1^Value} *)
	.i_ainput2 AT %IB2 : INT;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1100)^Term 3 (EL3062)^AI Standard Channel 2^Value} *)
	.q_boutput1 AT %QX4.0 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1100)^Term 2 (EL1859)^Channel 9^Output} *)
	.q_boutput2 AT %QX4.1 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1100)^Term 2 (EL1859)^Channel 10^Output} *)
	.q_boutput3 AT %QX4.2 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1100)^Term 2 (EL1859)^Channel 11^Output} *)
	.q_boutput4 AT %QX4.3 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1100)^Term 2 (EL1859)^Channel 12^Output} *)
	.q_boutput5 AT %QX4.4 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1100)^Term 2 (EL1859)^Channel 13^Output} *)
	.q_boutput6 AT %QX4.5 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1100)^Term 2 (EL1859)^Channel 14^Output} *)
	.q_boutput7 AT %QX4.6 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1100)^Term 2 (EL1859)^Channel 15^Output} *)
	.q_boutput8 AT %QX4.7 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1100)^Term 2 (EL1859)^Channel 16^Output} *)
	.q_aoutput1 AT %QB0 : INT;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1100)^Term 4 (EL4002)^AO Outputs Channel 1^Analog output} *)
	.q_aoutput2 AT %QB2 : INT;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1100)^Term 4 (EL4002)^AO Outputs Channel 2^Analog output} *)
END_VAR                                                                                               '           	                        Variable_Configuration !�Z	!�Z	     p��              VAR_CONFIG
END_VAR
                                                                                                 �   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                               4     �   ���  �3 ���   � ���     
    @��  ���     @      DEFAULT             System      �   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '     #   ,   �
           flasher 疝Z	"�Z      unr  P
        �   FUNCTION_BLOCK flasher
VAR_INPUT
	button1: BOOL;
	button2: BOOL;
END_VAR
VAR_OUTPUT
	Led1: BOOL;
	Led2: BOOL;
END_VAR
VAR
	nState: INT :=0;
	TON1: TON;
	nCounter: INT := 0;
	TON2: TON;
END_VAR�
  CASE nState OF				(* CASE Yap�s� i�in nState de�i�keni tan�t�l�r ve OF durumda ba�lat�l�r*)

0:							(* nState=0 durumu i�in*)
	IF button1	THEN		(*Button1 olarak tan�mlanan de�i�ken TRUE oldu�unda nState=10 olsun *)
	nState := 10;
	END_IF


10:							(*nState=10 durumu i�in*)

	Led1 := TRUE;			(*Led1 olarak tan�mlanan de�i�ken TRUE olsun *)

	TON1(IN:=TRUE , PT:=T#1s , Q=> , ET=> );	(*TON1 in ��k��� Q 1 sn sonra TRUE olsun*)

		IF TON1.Q	THEN					(*TON1 in ��k��� TRUE ise TON1 in enerjisi kesilsin 1 saniye sonra nState=20 olsun ve nCounter(SAYICI) 1 arts�n*)

		TON1(IN:=FALSE , PT:=T#1s , Q=> , ET=> );

		nState := 20;
		nCounter := nCounter + 1;				(*nState de�eri 10 olup bu d�ng�ye her girdi�inde nCounter de�eri 1 artar ve b�ylece ka� defa bu i�lem tekrarlanm�� g�rm�� oluruz*)

		END_IF

20:											(*nState=20 durumu*)

	Led1 := FALSE;							(*Led1 de�i�keni FALSE olsun *)


	TON2(IN:=TRUE , PT:=T#1s , Q=> , ET=> );	(*TON2 nin ��k��� Q 1 sn sonra TRUE olsun*)


		IF TON2.Q	THEN					(*TON2 nin ��k��� TRUE ise TON2 nin enerjisi kesilsin ve 1 saniye sonra  nState tekrar 10 a d�ns�n b�ylece nState  buton1 TRUE oldu�u s�rece 10 ve 20 de�erlerinde bulunan case i�lemleri aras�nda d�ner*)
		TON2(IN:=FALSE , PT:=T#1s , Q=> , ET=> );

		nState := 10;

		END_IF								(* IF D�ng�s�n� sonland�r�r*)


	END_CASE								(*CASE d�ng�s�n� sonland�r�r*)




		IF button1=FALSE THEN				(*button1 de�ikeni FALSE ise nState ve nCounter s�f�rlan�r Led1 de�i�keni FALSE olur TON1 ve TON2nin enerjisi kesilir*)

		nState := 0;							(*D�ng� devam ederken button1 FALSE durumuna �ekilirse b�t�n de�erler ilk duruma d�necektir*)

		Led1 := FALSE;

		TON1(IN:=FALSE , PT:=T#1s , Q=> , ET=> );
		TON2(IN:=FALSE , PT:=T#1s , Q=> , ET=> );

		nCounter := 0;

		END_IF


CASE nCounter OF

5:											(* nCounter=5 olma durumu *)(*Yani nState de�erinin 5 kere 10 ile 20 aras�ndaki i�lemleri yapmas�*)
	Led2 := TRUE;							(*nCounter=5 oldu�unda TON1 ve TON2 nin enerjilerini kes 1 saniye sonra nCounter � s�f�rla *)

	TON1(IN:=FALSE , PT:=T#1s , Q=> , ET=> );
	TON2(IN:=FALSE , PT:=T#1s , Q=> , ET=> );

	nCounter := 0;
	END_CASE								(*Led1 ve Led2 button1 a��kken 5 defa TRUE FALSE olduktan sonra Led2 TRUE olacakt�r*)

		IF button2 = TRUE THEN				(*Buton2 olarak atanan de�i�ken TRUE oldu�unda Led1 ve Led2 de�ikenleri FALSE olsun nCounter,nState de�erleri s�f�rlans�n TON1 ve TON2 nin enerjisi kesilsin*)

		Led1 := FALSE;						(*B�ylece Buton2 TRUE oldu�unda sistem s�f�rlan�r ve TRUE oldu�u s�re boyunca i�lem yapmaz *)
		Led2 := FALSE;
		nCounter := 0 ;
		nState := 0;
		TON1(IN:=FALSE , PT:=T#1s , Q=> , ET=> );
		TON2(IN:=FALSE , PT:=T#1s , Q=> , ET=> );

		END_IF




                   ,  ���           MAIN Y�Z	��Z                      /   PROGRAM MAIN
VAR
	flasher1: flasher;
END_VAR[   flasher1(button1:=i_binput1 , button2:=i_binput2 , Led1=> q_boutput1, Led2=>q_boutput2 );
                 ����, � � "�         "   STANDARD.LIB 5.6.98 12:03:02 @F�w5      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @                              �o            2                ����������������  
             ����  �L            ����                               POUs                 flasher  #                  MAIN      ����          
   Data types  ����             Visualizations  ����              Global Variables                Global_Variables                     TwinCAT_Configuration  "                   Variable_Configuration  	   ����                                                             3�Z                         	   localhost            P      	   localhost            P      	   localhost            P           Ǔ��