BEGIN mfinal01

IF ~NumTimesTalkedTo(0) See("Malt")~ THEN BEGIN MaGefundenCut3
  SAY @0
  IF ~~ THEN EXTERN ~MaltJ~ MaBegegnungFinale	
END

CHAIN3 MaltJ MaBegegnungFinale 
  IF ~~ THEN 
    @1
  == mfinal01
    @2
  == MaltJ
    @3 
  == mfinal01
    @4
     DO ~ActionOverride("mfinal01",Enemy())
ActionOverride("mfinal02",Enemy())
ActionOverride("mfinal03",Enemy())
Enemy()~EXIT

