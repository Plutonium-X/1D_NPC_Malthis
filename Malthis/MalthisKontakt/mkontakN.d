BEGIN MKontakt

IF ~Global("MaMecker","GLOBAL",0)~ THEN BEGIN InZeit
  SAY @0 
  IF ~~ EXTERN ~MaltJ~ MaReaktionKontakt
END

IF ~Global("MaMecker","GLOBAL",1)~ THEN BEGIN InZeit2
  SAY @1 
  IF ~~ EXTERN ~MaltJ~ MaReaktionKontakt
END


CHAIN MaltJ MaReaktionKontakt
   IF ~~ THEN 
    @2
  == MKontakt
    @3 
  == MaltJ
    @4
  == MKontakt
    @5
  == MaltJ
    @6
  == MKontakt
    @7
  == MaltJ
    @8
  == MKontakt
    @9
       DO ~FadeToColor([20.0],0)
ActionOverride("MKontakt",DestroySelf())
FadeFromColor([20.0],0)~
EXIT
	