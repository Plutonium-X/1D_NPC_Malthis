BEGIN MaltJ

IF ~Global("Malthiserzählt","LOCALS",2) Global("MaltisinParty","LOCALS",1) Global("MaBio","LOCALS",1)~ THEN BEGIN MaVertrauen
 SAY @0
 =
@1
 =
@2 
IF ~~ THEN DO ~SetGlobal("Malthiserzählt","LOCALS",3)~ EXIT
END


IF ~Global("MaltisinParty","LOCALS",0) Dead("MFeind1")~ THEN BEGIN MaAufnahme
  SAY @3 
  IF ~~ THEN REPLY @4 DO ~SetGlobal("MaltisinParty","LOCALS",1)~ GOTO MaAufnahmeJa
  IF ~~ THEN REPLY @5 DO ~SetGlobal("MaltisinParty","LOCALS",2)~ GOTO MaAufnameNein
END

IF ~~ THEN BEGIN MaAufnahmeJa
  SAY @6 
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN MaAufnameNein
  SAY @7
  IF ~~ THEN DO ~SetLeavePartyDialogFile()~ EXIT
END

IF ~InParty(Myself)
Dead("MCapt01") // Ritter des Ordens
Global("MalthisReaktionRitter","LOCALS",0)~ THEN BEGIN MaNachKampfCut1
  SAY @10
  IF ~~ THEN DO ~SetGlobal("Malthiserzählt","LOCALS",1) StartCutSceneMode()
StartCutScene("MTrans01")~ EXIT
END

IF ~Global("MalthisReaktionRitter","LOCALS",1)~  THEN BEGIN MaTransformation1
  SAY @11
  IF ~~ THEN REPLY @12 DO ~SetGlobal("MalthisReaktionRitter","LOCALS",2)~ GOTO MaErklaerung
  IF ~~ THEN REPLY @13 DO ~SetGlobal("MalthisReaktionRitter","LOCALS",2)~ GOTO MaRechtfertigung
  IF ~Alignment(Player1,MASK_EVIL)~ THEN REPLY @14 DO ~SetGlobal("MalthisReaktionRitter","LOCALS",2)~ GOTO MalthisSoNicht
END

IF ~~ THEN BEGIN MaErklaerung
  SAY @15
  IF ~~ THEN REPLY @16 DO ~SetGlobal("MaBleibtdabei","LOCALS",1)~ GOTO MaJournal1
  IF ~~ THEN REPLY @17 DO ~ActionOverride("Malt",Enemy())~ EXIT
END

IF ~~ THEN BEGIN MaRechtfertigung
  SAY @18
  IF ~~ THEN REPLY @19 GOTO MaErklaerung
  IF ~~ THEN REPLY @20 DO ~ActionOverride("Malt",Enemy())~ EXIT
END

IF ~~ THEN BEGIN MaJournal1
  SAY @21 
  IF ~~ THEN DO ~SetGlobalTimer("MaKontakt","GLOBAL",100)~ JOURNAL @22 EXIT
END

IF ~~ THEN BEGIN MalthisSoNicht
  SAY @23
  IF ~~ THEN REPLY @24 GOTO MaJournal1
  IF ~~ THEN REPLY @25 DO ~ActionOverride("Malt",Enemy())~ EXIT
END

IF ~InParty(Myself)
Or(2)
	Dead("MKern") // Ritter des Ordens
	Dead("MDindal") // Ritter des Ordens
Global("MalthisReaktionRitter","LOCALS",2)~ THEN BEGIN MaNachKampfCut2
  SAY @10
  IF ~~ THEN DO ~SetGlobal("MalthisReaktionRitter","LOCALS",3) StartCutSceneMode()
StartCutScene("MTrans02")~ EXIT
END

IF ~Global("MalthisReaktionRitter","LOCALS",3) Global("MalthisTransformation","LOCALS",2)~  THEN BEGIN MaTransformation2
  SAY @26
  IF ~~ THEN REPLY @27 DO ~SetGlobal("MalthisReaktionRitter","LOCALS",4)~ GOTO MaErklaerung2Gut
  IF ~~ THEN REPLY @28 DO ~ActionOverride("Malt",Enemy())~ EXIT
  IF ~~ THEN REPLY @29 DO ~SetGlobal("MalthisReaktionRitter","LOCALS",4) SetGlobal("MaBoeserWeg","LOCALS",1)~ GOTO MaErklaerung2Boese
END

IF ~~ THEN BEGIN MaErklaerung2Gut
  SAY @30 
  IF ~~ THEN REPLY @31 GOTO MaJournal2
  IF ~~ THEN REPLY @17 DO ~ActionOverride("Malt",Enemy())~ EXIT
END

IF ~~ THEN BEGIN MaJournal2
  SAY @32 
  IF ~~ THEN DO ~SetGlobalTimer("MaFinalerKampf","GLOBAL",100)~ JOURNAL @33 EXIT
END

IF ~~ THEN BEGIN MaErklaerung2Boese
  SAY @34 
  IF ~~ THEN DO ~ChangeAlignment(Myself,CHAOTIC_EVIL) SetGlobalTimer("MaFinalerKampf","GLOBAL",100)~ JOURNAL @35 EXIT
END

IF ~InParty(Myself)
Dead("mfinal01") // Vampyr
Global("MaEndeFinale","LOCALS",1)
Global("MaBoeserWeg","LOCALS",0)~ THEN BEGIN MaNachKampfCut3
  SAY @36
  IF ~~ THEN DO ~SetGlobal("MaEndeFinale","LOCALS",2) StartCutSceneMode()
StartCutScene("MTrans0A")~ EXIT
END            

IF ~InParty(Myself)
Dead("mfinal01") // Vampyr
Global("MaEndeFinale","LOCALS",1)
!Global("MaBoeserWeg","LOCALS",0)~ THEN BEGIN MaNachKampfCut3
  SAY @36
  IF ~~ THEN DO ~SetGlobal("MaEndeFinale","LOCALS",2) StartCutSceneMode()
StartCutScene("MTrans0B")~ EXIT
END            

IF ~Global("MaBoeserWeg","LOCALS",0) Global("MaEndeFinale","LOCALS",3) Global("MalthisTransformation","LOCALS",3)~  THEN BEGIN MaTransformation3
  SAY @37
  IF ~~ THEN REPLY @38 GOTO MaJournal3
  IF ~~ THEN REPLY @39 GOTO MaJournal3
END

IF ~~ THEN BEGIN MaJournal3
  SAY @40 
  IF ~~ THEN DO ~SetGlobal("MaEndeFinale","LOCALS",4)~ JOURNAL @41 EXIT
END

IF ~Global("M_Schaden_schwer_reg","GLOBAL",1) 
Global("M_Schadensmeldung_Reg","LOCALS",0)~ THEN BEGIN MaSchadensmeldung_REG
  SAY @101
  IF ~~ THEN DO ~SetGlobal("M_Schadensmeldung_Reg","LOCALS",1)~ EXIT
END


BEGIN MaltP 


IF ~Global("MaltisinParty","LOCALS",1)~ THEN BEGIN MaKickOut
  SAY @43
  IF ~~ THEN REPLY @44 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @45 GOTO MaRausschmiss
END

IF ~~ THEN BEGIN MaRausschmiss
  SAY @46
   IF ~!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")
Global("MaBekommtVampir1","LOCALS",1)
~ THEN REPLY @47  DO ~ReallyForceSpellRES("MVampir1",Myself)
SetGlobal("MaltisinParty","LOCALS",2) 
EscapeAreaMove("AR0800",1523,2073,0)~ EXIT
  IF ~!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")
Global("MaBekommtVampir1","LOCALS",0)
~ THEN REPLY @47  DO ~SetGlobal("MaltisinParty","LOCALS",2) 
EscapeAreaMove("AR0800",1523,2073,0)~ EXIT
  IF ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")
!AreaCheck("AR1300")
!AreaCheck("AR1301")
!AreaCheck("AR1302")
!AreaCheck("AR1303")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")
Global("MaBekommtVampir1","LOCALS",1)
~ THEN REPLY @48 DO ~ReallyForceSpellRES("MVampir1",Myself)
SetGlobal("MaltisinParty","LOCALS",2)~ EXIT
 IF ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")
!AreaCheck("AR1300")
!AreaCheck("AR1301")
!AreaCheck("AR1302")
!AreaCheck("AR1303")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")
Global("MaBekommtVampir1","LOCALS",0)
~ THEN REPLY @48 DO ~SetGlobal("MaltisinParty","LOCALS",2)~ EXIT
END

IF ~Global("MaltisinParty","LOCALS",3)~ THEN BEGIN MaKickOut2
  SAY @49
  IF ~~ THEN REPLY @50 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @45 GOTO MaRausschmissEnd
END

IF ~~ THEN BEGIN MaRausschmissEnd
  SAY @51
  IF ~~ THEN DO ~SetGlobal("MaltisinParty","LOCALS",5) 
EscapeArea()~ EXIT
END

IF ~Global("MaltisinParty","LOCALS",2)~ THEN BEGIN MaAufnahme2
  SAY @8
  IF ~~ THEN REPLY @4 DO ~SetGlobal("MaltisinParty","LOCALS",3) JoinParty()~ EXIT
  IF ~~ THEN REPLY @5 DO ~SetGlobal("MaltisinParty","LOCALS",4)~ GOTO MaAufnameNein2
END

IF ~~ THEN BEGIN MaAufnameNein2
  SAY @9
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
