BEGIN mfinal01

IF ~NumTimesTalkedTo(0) See("Malt")~ THEN BEGIN MaGefundenCut3
  SAY ~Endlich sehen wir uns von Angesicht zu Angesicht, Malthis! Ich werde Eure Kraft nun endgültig in mich aufnehmen...!~
  IF ~~ THEN EXTERN ~MaltJ~ MaBegegnungFinale	
END

CHAIN3 MaltJ MaBegegnungFinale 
  IF ~~ THEN 
    ~Euer Streben ist hoffnungslos! Wenn ich Euch nicht töte, dann tut es jemand anderes! Niemand, auch Ihr nicht, ist unbesiegbar!~
  == mfinal01
    ~WIr werden ja sehen, Malthis...wir werden ja sehen!~
  == MaltJ
    ~Eure Dummheit wird Euch unweigerlich in den Tod führen. Nun gut, sei es wie es sei. Sagt mir doch bevor hier Blut fließt noch, wer oder was wir sind!~ [MALTH35]
  == mfinal01
    ~Kern und Dindal scheinen Euch nicht viel erzählt zu haben. Nun ja, machen wir es kurz: Wir sind die Vorform der heutigen Vampire! Je nachdem, ob wir einen *bösen* oder *guten* Weg einschlagen, entwickeln wir uns! Wir brauchen kein Blut, aber es macht uns stärker, wenn wir es von unserer Art trinken! Den Rest müsst Ihr schon selbst rausfinden! Und nun, in den Kampf!~
     DO ~ActionOverride("mfinal01",Enemy())
ActionOverride("mfinal02",Enemy())
ActionOverride("mfinal03",Enemy())
Enemy()~EXIT

