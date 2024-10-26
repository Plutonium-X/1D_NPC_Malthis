BEGIN ~Malt25A~

IF ~Global("MalthisErscheinung","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @0 
  IF ~~ THEN REPLY @1 DO ~SetGlobal("MalthisErscheinung","GLOBAL",2)~ GOTO 1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("MalthisErscheinung","GLOBAL",2)~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3 
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4 
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @5 
  IF ~~ THEN REPLY @6 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.1 0.2
  SAY @9 
  IF ~~ THEN REPLY @10 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1 3.2
  SAY @11 
  IF ~~ THEN DO ~MoveToPointNoInterrupt([1720.1530])
Face(0)~ EXIT
END

IF ~Global("MalthisErscheinung","GLOBAL",2)~ THEN BEGIN 6 // from:
  SAY @12 
  IF ~~ THEN REPLY @13 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @14 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @15 
  IF ~~ THEN EXIT
END
