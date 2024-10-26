EXTEND_TOP FATESP 6
  IF ~Global("MalthisErscheinung","GLOBAL",0)
      !InParty("Malt") !Dead("Malt")~THEN REPLY @0      
   DO ~SetGlobal("MalthisErscheinung","GLOBAL",1)~ GOTO 8
END
