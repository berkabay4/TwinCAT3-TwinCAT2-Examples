CoDeSys+&   �                   @        @   2.3.9.50   Kerim @/    @                             ���[ +    @        ��                 }a�[        �   @   q   C:\TwinCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               ��              STR2               ��                 CONCAT                                         ��66  �   ����           CTD           M             ��           Variable for CD Edge Detection      CD            ��           Count Down on rising edge    LOAD            ��           Load Start Value    PV           ��           Start Value       Q            ��           Counter reached 0    CV           ��           Current Counter Value             ��66  �   ����           CTU           M             ��            Variable for CU Edge Detection       CU            ��       
    Count Up    RESET            ��           Reset Counter to 0    PV           ��           Counter Limit       Q            ��           Counter reached the Limit    CV           ��           Current Counter Value             ��66  �   ����           CTUD           MU             ��            Variable for CU Edge Detection    MD             ��            Variable for CD Edge Detection       CU            ��	       
    Count Up    CD            ��
           Count Down    RESET            ��           Reset Counter to Null    LOAD            ��           Load Start Value    PV           ��           Start Value / Counter Limit       QU            ��           Counter reached Limit    QD            ��           Counter reached Null    CV           ��           Current Counter Value             ��66  �   ����           DELETE               STR               ��              LEN           ��              POS           ��                 DELETE                                         ��66  �   ����           F_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             ��66  �   ����           FIND               STR1               ��              STR2               ��                 FIND                                     ��66  �   ����           INSERT               STR1               ��              STR2               ��              POS           ��                 INSERT                                         ��66  �   ����           LEFT               STR               ��              SIZE           ��                 LEFT                                         ��66  �   ����           LEN               STR               ��                 LEN                                     ��66  �   ����           MID               STR               ��              LEN           ��              POS           ��                 MID                                         ��66  �   ����           R_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             ��66  �   ����           REPLACE               STR1               ��              STR2               ��              L           ��              P           ��                 REPLACE                                         ��66  �   ����           RIGHT               STR               ��              SIZE           ��                 RIGHT                                         ��66  �   ����           RS               SET            ��              RESET1            ��                 Q1            ��
                       ��66  �   ����           SEMA           X             ��                 CLAIM            ��	              RELEASE            ��
                 BUSY            ��                       ��66  �   ����           SR               SET1            ��              RESET            ��                 Q1            ��	                       ��66  �   ����           TOF           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with falling edge, resets timer with rising edge    PT           ��           time to pass, before Q is set       Q            ��	       2    is FALSE, PT seconds after IN had a falling edge    ET           ��
           elapsed time             ��66  �   ����           TON           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with rising edge, resets timer with falling edge    PT           ��           time to pass, before Q is set       Q            ��	       0    is TRUE, PT seconds after IN had a rising edge    ET           ��
           elapsed time             ��66  �   ����           TP        	   StartTime            ��           internal variable       IN            ��       !    Trigger for Start of the Signal    PT           ��       '    The length of the High-Signal in 10ms       Q            ��	           The pulse    ET           ��
       &    The current phase of the High-Signal             ��66  �   ����    R    @                                                                                          FB_KARASIMSEK           nState            #               TON1                    TON    #               TON2                    TON    #               TON3                    TON    #               nTut            #                  bEnable            #               tTime           #                  bOutLed1            #               bOutLed2            #               bOutLed3            # 	                       ��[  @    ����           MAIN           T1                    TON                    ET                            FB_KARASIMSEK1        
                FB_KARASIMSEK                                     ���[  @    ����           PRG_KARASIMSEK           fbKarasimsek        
                FB_KARASIMSEK    %               tTime    �      %                                @��[  @    ����            
 �          #   %   !   ( �      K   �     K   �     K   �     K   �                           +     ��localhost �ژ�u   l�     h��W��X����x[��� �� x� �� ��uw��� �����+yw�*ywl�           l�       �� �{� ��   ���`�  )yw���F  x� x� �m� ����    �E���             �� l�          l�       �� �{� �� x� �{� ��d������ ]&�     ,   ,                                                        K         @   @��[�  /*BECKCONFI3*/
        !+y� @   @   �   �     3               
   Standard            	���[                        VAR_GLOBAL
END_VAR
                                                                                  "                          Standard
         MAIN����           ���� ���[                 $����                                         Standard }a�[	}a�[      c   ��`�                         	���[     ��                VAR_CONFIG
END_VAR
                                                                                   '              ,   �H           Global_Variables @��[	@��[     TI ELE_P           VAR_GLOBAL
END_VAR
                                                                                               '           !   , 2 2 �a           GVL_IO ���[	���[!     p��           2  VAR_GLOBAL
	bInput1	AT%I*	:BOOL;
	bInput2	AT%I*	:BOOL;

	bOutput1	AT%Q*	: BOOL;
	bOutput2	AT%Q*	: BOOL;
	bOutput3	AT%Q*	: BOOL;

	nInput1	AT%I*	: INT;
	nInput2	AT%I*	: INT;

	nOutput1	AT%Q*	: INT;
	nOutput2	AT%Q*	: INT;
(*Global I/O lar fiziksel de�i�ken olarak sisteme tan�t�l�r.*)
END_VAR
                                                                                               '           "                       TwinCAT_Configuration @��[	���["     p��           +  (* Generated automatically by TwinCAT - (read only) *)
VAR_CONFIG
	.bInput1 AT %IX4.0 : BOOL;
	.bInput2 AT %IX4.1 : BOOL;
	.bOutput1 AT %QX4.0 : BOOL;
	.bOutput2 AT %QX4.1 : BOOL;
	.nInput1 AT %IB0 : INT;
	.nInput2 AT %IB2 : INT;
	.nOutput1 AT %QB0 : INT;
	.nOutput2 AT %QB2 : INT;
END_VAR                                                                                               '           	     �H @ �           Variable_Configuration @��[	@��[	     2,omnsio           VAR_CONFIG
END_VAR
                                                                                                 �   |0|0 @z    @X   Courier New @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                               2     �   ���  �3 ���   � ���     
    @��  ���     @      DEFAULT             System      �   |0|0 @z    @X   Courier New @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '     #   , K K �|           FB_KARASIMSEK ���[	��[      ib*.b@cr        �   FUNCTION_BLOCK FB_KARASIMSEK
VAR_INPUT
	bEnable: BOOL;
	tTime: TIME;
END_VAR
VAR_OUTPUT
	bOutLed1: BOOL;
	bOutLed2: BOOL;
	bOutLed3: BOOL;
END_VAR
VAR
	nState		: INT;
	TON1: TON;
	TON2: TON;
	TON3: TON;
	nTut: INT;
END_VAR�  CASE nState OF                                           (* CASE Yap�s� i�in nState de�i�keni OFF durumd ba�lat�l�r.*)

0:                                                                         (* nState=0 oldu�u durum i�in a�a��da bulunan fonksiyon �al���r.*)
	IF bEnable=TRUE THEN                 (*VAR_INPUT olarak tan�t�lan bEnable de�ikeni TRUE ise a�a��da bulunan if d�ng�s� ger�ekle�ir. *)
		nState	:= 10;                              (*nState de�i�keni 10 de�erine �ekilir *)
	END_IF

10:                                                                      (*nState =10 oldu�u durum i�in a�a��da bulunan fonksiyon �al���r.*)
	bOutLed1	:= TRUE;                    (*VAR_OUTPUT olarak tan�t�lan bOutLed1 de�i�keni TRUE durumuna ge�er.*)
	bOutLed3	:= FALSE;                  (*Fonksiyonun ilk d�ng�s�nden sonra VAR_OUTPUT olan bOutLed3 de�i�keni TRUE olarak kalaca�� i�in burada false de�erine �ekilir ve s�f�lanm�� olur*)
	TON1(IN:= TRUE  , PT:=tTime , Q=> , ET=> );       (*TON1 in ��k��� olan TON1.Q de�i�keni tTime de�i�keni kadar s�re sonra TRUE olsun (NOT: tTime de�i�keni VAR_INPUT TIME olarak tan�t�ld�.) *)
	IF TON1.Q= TRUE THEN                                           (*E�er TON1 in ��k��� TON1.Q TRUE olduysa(tTime kadar s�re ge�tiyse) *)
		nState	:= 20;
		TON1(IN:= FALSE);                                              (*Fonksiyonun 11. Sat�r�nda TRUE olarak girilen TON1 de�eri FALSE ye �ekilerek ilk haline geri getirilir. B�ylece fonksiyon her ba�lad���nda tTime kadar s�re beklemi� olur.*)
	END_IF                                                                              (*IF Komutu bitirilir.*)

20:                                                                                                (*nState = 20 oldu�u durum i�in a�a��da bulunan fonksiyon �al���r.*)
	bOutLed1	:= FALSE;                                            (*Bundan �nceki komutlarda bOutLed1 TRUE oldu�undan burada FALSE de�erine �ekilir ve bOutLed2 de�eri TRUE olur b�ylece Outputlar s�ras�yla TRUE de�eri verirken bir TRUE veren de�erden bir �nceki de�er FALSE ye �ekilerek ilk durumuna getirilir.*)
	bOutLed2	:= TRUE;
	TON2(IN:= TRUE , PT:= tTime , Q=> , ET=> );   (*  TON2  in ��k��� olan TON2.Q de�i�keni tTime de�i�keni kadar s�re sonra TRUE olsun (NOT: tTime de�i�keni VAR_INPUT TIME olarak tan�t�ld�. *)
	IF TON2.Q=TRUE THEN                                         (*E�er TON1 in ��k��� TON1.Q TRUE olduysa(tTime kadar s�re ge�tiyse) *)
		nState	:= 30;

		TON2(IN:= FALSE);                                    (*Fonksiyonun 20. Sat�r�nda TRUE olarak girilen TON2 de�eri FALSE ye �ekilerek ilk haline geri getirilir. B�ylece fonksiyon her ba�lad���nda tTime kadar s�re beklemi� olur.*)
	END_IF

30:
	bOutLed2	:= FALSE;
	bOutLed3	:= TRUE;
	TON3(IN:= TRUE , PT:=tTime , Q=> , ET=> );
	IF TON3.Q THEN
		nState	:= 10;                      (*nState 10 de�erine ge�er ve 10 de�eri i�in case yap�s� �al���r *)

		TON3(IN:= FALSE);
	END_IF


END_CASE

IF bEnable=FALSE THEN               (*bEnable de�eri FALSE ise b�t�n de�erler FALSE �ekilir ve nState 0 a d�nerek bEnable nin tekrar TRUE olmas�n� bekler.*)
	nState		:=0;
	bOutLed1	:=FALSE;
	bOutLed2	:=FALSE;
	bOutLed3	:=FALSE;
	TON1(IN:= FALSE);
	TON2(IN:= FALSE);
	TON3(IN:= FALSE);
END_IF

                   ,     �/           MAIN y��[	���[                      R   PROGRAM MAIN
VAR
	T1: TON;
	ET: TIME;
	FB_KARASIMSEK1: FB_KARASIMSEK;
END_VAR�  

FB_KARASIMSEK1(
	bEnable:= ,
	tTime:= ,
	bOutLed1=> ,
	bOutLed2=> ,
	bOutLed3=> );

(*MAIN e fb_karasimsek fonksiyonu �a��r�l�r. Burada fb_karasimsek alt�nda VAR_INPUT ve VAR_OUTPUT olarak tan�tt���m�z de�i�kenler (tTime,bOutLed1,bEnable...) fiziksel de�i�kenlere ya da
verilmek istenen de�erlere atan�r b�ylece MAIN fonksiyonunda verdi�imiz de�i�kenlere g�re FB_KARASIMSEK fonksiyonu �al��maya ba�lar*)               %   , } } �           PRG_KARASIMSEK @��[	@��[      
0:	btL        X   PROGRAM PRG_KARASIMSEK
VAR
	fbKarasimsek: FB_KARASIMSEK;
	tTime: TIME:=T#2s;
END_VAR      fbKarasimsekbInput1AtTimeFB_KARASIMSEK  bOutput2 bOutput3      bOutput1d                    ����    ��             "   STANDARD.LIB 5.6.98 12:03:02 @F�w5      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @                          9                  2                ����������������  
             ����                 ����                                POUs                 FB_KARASIMSEK  #                  MAIN                      PRG_KARASIMSEK  %   ����          
   Data types  ����             Visualizations  ����              Global Variables                 Global_Variables                    GVL_IO  !                   TwinCAT_Configuration  "                   Variable_Configuration  	   ����                                                              }a�[                         	   localhost            P      	   localhost            P      	   localhost            P          T�N�