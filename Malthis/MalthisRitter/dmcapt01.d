BEGIN MCapt01

IF ~NumTimesTalkedTo(0) See("Malt")~ THEN BEGIN Gefunden
  SAY @0
  IF ~NumInPartyGT(1)~ THEN EXTERN ~MaltJ~ ReakaufersteBegeg1	
  IF ~NumInPartyLT(2)~ THEN EXTERN ~MaltJ~ ReakaufersteBegeg1
END


//IF ~~ THEN BEGIN Gefunden2
//  SAY ~Ich dachte mir schon, dass Ihr Euch versucht herauszureden! Nun gut, ich bin des Versteckspiel müde! ZU DEN WAFFEN! ICH WILL EUER BLUT TRINKEN UND EUER HERZ VERSPEISEN....!~
//  IF ~~ THEN DO ~ActionOverride("MSold01",Enemy())
//ActionOverride("MSold02",Enemy())
//ActionOverride("MSold03",Enemy())
//Enemy()~ EXIT
//END

CHAIN MaltJ ReakaufersteBegeg1 
  IF ~NumInPartyGT(1)~ THEN 
    @1
  == MCapt01
    @2
  == MaltJ
    @3
  == MCapt01
    @4
  == MaltJ
    @5
  == MCapt01
    @6
  == MaltJ
    @7
  == MCapt01
    @8
  == MaltJ
    @9
  == MCapt01
    @10
  == MaltJ
    @11
  == MCapt01
    @12
  == MaltJ
    @13
  == MCapt01
    @14
  == MaltJ
    @15
  == MCapt01
    @16
     DO ~ActionOverride("MSold01",Enemy())
ActionOverride("MSold02",Enemy())
ActionOverride("MSold03",Enemy())
Enemy()~EXIT

CHAIN MaltJ ReakaufersteBegeg2 
  IF ~NumInPartyLT(2)~ THEN 
     @1
  == MCapt01
    @2
  == MaltJ
    @3
  == MCapt01
    @4
  == MaltJ
    @5
  == MCapt01
    @6
  == MaltJ
    @7
  == MCapt01
    @8
  == MaltJ
    @9
  == MCapt01
    @10
  == MaltJ
    @11
  == MCapt01
    @12
  == MaltJ
    @13
  == MCapt01
    @14
  == MaltJ
    @15
  == MCapt01
    @16
     DO ~ActionOverride("MSold01",Enemy())
ActionOverride("MSold02",Enemy())
ActionOverride("MSold03",Enemy())
Enemy()~EXIT



//IF ~~ THEN BEGIN ReakaufersteBegeg1
//  SAY ~Lasst <CHARNAME> und seine Begleitung aus dem Spiel! Sie haben Euch nichts getan. Selbst ich weiß nicht, wer Ihr seid und was Ihr von mir wollt.!~
//  IF ~~ THEN EXTERN ~MCapt01~ Gefunden2
//END

//IF ~~ THEN BEGIN ReakaufersteBegeg2
//  SAY ~Lasst <CHARNAME> aus dem Spiel! Er hat Euch nichts getan. Selbst ich weiß nicht, wer Ihr seid und was Ihr von mir wollt.!~
//  IF ~~ THEN EXTERN ~MCapt01~ Gefunden2
//END


