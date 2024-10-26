
BEGIN ~MaOcti~

IF ~NumTimesTalkedTo(0) InParty("Malt")~ THEN BEGIN 0 
  SAY ~Ahh, ist die Stimme nicht wohklingend?! Für wahr, Acifer hat ganze Arbeit - ohne mein Dazutun - geleistet! Ich dachte, dass so etwas nicht möglich wäre! Ich war nie glücklicher, mich geirrt zu haben.~ 
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 
  SAY ~Erstaunlich, wirklich erstaunlich. Eine Arbeit, die man honorieren sollte! So, auf Wiedersehen. Ich kann dem Lob nichts mehr hinzufügen.~ */
  IF ~~ THEN REPLY ~Wartet! Wer seid Ihr?! Kennen wir Euch?~ GOTO 2
  IF ~~ THEN REPLY ~Ja, geht! Wer auch immer Ihr seid!~ GOTO 6
END

IF ~~ THEN BEGIN 2
  SAY ~Ja, Ihr könntet mich....Nein, ich habe mich geirrt. Wir kennen uns nicht! Vielleicht kreuzen sich unsere Wege nochmals, bis dahin alles Gute. Lebt wohl!~
  IF ~~ THEN REPLY ~So nicht! Ich werde mit Euch kämpfen!~ GOTO 4
  IF ~~ THEN REPLY ~So lebt denn wohl!~ GOTO 6
END

IF ~~ THEN BEGIN 4 
  SAY ~Na gut, lasst uns die Waffen zücken und zu den Zaubersprüchen greifen, damit wir so unsere Fehde beilegen.~ 
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 8.0 7.0 6.0 3.0
  SAY ~So lebt den wohl! Viel Glück auf Euren Reisen!~ 
  IF ~~ THEN DO ~ForceSpell(Myself,SWOOSH_GONE)~ EXIT
END

