BEGIN MDINDAL
BEGIN MKern

IF ~NumTimesTalkedTo(0) See("Malt")~ THEN BEGIN MaGefundenCut2
  SAY @0
  IF ~~ THEN EXTERN ~MaltJ~ MaBegegnungKern	
END


//IF ~~ THEN BEGIN Gefunden2
//  SAY ~Ich dachte mir schon, dass Ihr Euch versucht herauszureden! Nun gut, ich bin des Versteckspiel müde! ZU DEN WAFFEN! ICH WILL EUER BLUT TRINKEN UND EUER HERZ VERSPEISEN....!~
//  IF ~~ THEN DO ~ActionOverride("MSold01",Enemy())
//ActionOverride("MSold02",Enemy())
//ActionOverride("MSold03",Enemy())
//Enemy()~ EXIT
//END

CHAIN3 MaltJ MaBegegnungKern 
  IF ~~ THEN 
    @1
  == MKERN
    @2
  == MDINDAL
    @3
  == MKERN
    @4
  == MaltJ
    @5
  == MKERN  
    @6
  == MaltJ
    @7
  == MKERN
    @8
  == MaltJ
    @9
  == MKERN
    @10
  == MaltJ
    @11
  == MKERN
    @12
  == MDINDAL
    @13
  == MaltJ
    @14
  == MDINDAL
    @15
     DO ~ActionOverride("MKERN",Enemy())
ActionOverride("MDINDAL",Enemy())
ActionOverride("MDRUIDE",Enemy())
ActionOverride("MSold04",Enemy())
ActionOverride("MSold05",Enemy())
Enemy()~EXIT

