BEGIN MCapt01

IF ~NumTimesTalkedTo(0) See("Malt")~ THEN BEGIN Gefunden
  SAY ~Haben wir Euch endlich gefunden, Malthis! Jetzt werden wir Euch und Euren D�monenpaktierern endlich den den Prozess machen! Ihr werdet dem Teufel einen Besuch abstatten!~
  IF ~NumInPartyGT(1)~ THEN EXTERN ~MaltJ~ ReakaufersteBegeg1	
  IF ~NumInPartyLT(2)~ THEN EXTERN ~MaltJ~ ReakaufersteBegeg1
END


//IF ~~ THEN BEGIN Gefunden2
//  SAY ~Ich dachte mir schon, dass Ihr Euch versucht herauszureden! Nun gut, ich bin des Versteckspiel m�de! ZU DEN WAFFEN! ICH WILL EUER BLUT TRINKEN UND EUER HERZ VERSPEISEN....!~
//  IF ~~ THEN DO ~ActionOverride("MSold01",Enemy())
//ActionOverride("MSold02",Enemy())
//ActionOverride("MSold03",Enemy())
//Enemy()~ EXIT
//END

CHAIN MaltJ ReakaufersteBegeg1 
  IF ~NumInPartyGT(1)~ THEN 
    ~Lasst <CHARNAME> und seine Begleitung aus dem Spiel! Sie haben Euch nichts getan. Selbst ich wei� nicht, wer Ihr seid und was Ihr von mir wollt! Auch wenn die Erkl�rung noch so sinnlos ist!~
  == MCapt01
    ~Nun gut, h�ren wir mit dem Verwirrspiel auf! Ihr seid noch sehr jung, zumindest f�r einen von uns. Wie viele habt Ihr schon get�tet?~
  == MaltJ
    ~Euer Tun gef�llt mir ganz und gar nicht! Ich verstehe nichts von Eurem sinnentleerenden Geplapper. Was hei�t denn *von uns get�tet*?~
  == MCapt01
    ~Ihr habt tats�chlich noch keinen von uns get�tet? Ihr habt niemals die Transformation erlebt?!~
  == MaltJ
    ~Ich habe nicht die blasseste Ahung, wovon Ihr �berhaupt sprecht! Ich t�te niemanden, nur aus Spass!~
  == MCapt01
    ~Wisst Ihr denn gar nichts �ber Euch selbst?~
  == MaltJ
    ~Genug, um zu wissen, dass ich nicht wie Ihr werden will!~
  == MCapt01
    ~Keine Angst, Malthis! Das werdet Ihr auch nicht! Ich werde Euch hier und jetzt t�ten!~
  == MaltJ
    ~Um danach ins n�chste Dorf zu ziehen und Leute zu t�ten, nur weil sie anders sind. Ihr nehmt sie und raubt ihnen eine Kraft, richtig?! Und ich habe diese Kraft auch in mir! Musste deswegen mein ganzes Dorf sterben, weil Ihr mich gesucht habt?~
  == MCapt01
    ~Ich f�rchte ja, Malthis! Ihr werdet mir Kraft geben und ich werde aus Eurem Tod Nutzen ziehen. Leider haben wir nur euren Sohn gefunden, aber auch er hat ein verdientes Ende gefunden..HaHaHa...!~
  == MaltJ
    ~Worin lag der Sinn in diesem Gemetzel? Euer Tun war so vergeblich, nichts hat Euch der Tod dieser Leute eingebracht!~
  == MCapt01
    ~Ich h�tte doch auf Kern und Dindal h�ren sollen. Sie hatten mich vor Euch und Euerer Unzul�nglichkeit gewarnt...!~
  == MaltJ
    ~Kern? Wie kann er noch am Leben sein? Ich habe doch gesehen, wie er zu Boden ging, als ich ihn getroffen habe!~
  == MCapt01
    ~So einfach sind wir nicht zu t�ten, Malthis! Das habe ich Euch doch gerade versucht zu sagen! Wir sind etwas Besonderes und Kern hat schon mehrere Transformationen hinter sich!~
  == MaltJ
    ~Mehre Transformationen...?~
  == MCapt01
    ~Was glaubt Ihr, wie man sonst ein St�ck Unsterblichkeit bekommt...! Aber ich habe schon zuviel gesagt. ZU DEN WAFFEN! ICH WILL EUER BLUT TRINKEN UND EUER HERZ VERSPEISEN....!~
     DO ~ActionOverride("MSold01",Enemy())
ActionOverride("MSold02",Enemy())
ActionOverride("MSold03",Enemy())
Enemy()~EXIT

CHAIN MaltJ ReakaufersteBegeg2 
  IF ~NumInPartyLT(2)~ THEN 
     ~Lasst <CHARNAME> und seine Begleitung aus dem Spiel! Sie haben Euch nichts getan. Selbst ich wei� nicht, wer Ihr seid und was Ihr von mir wollt! Auch wenn die Erkl�rung noch so sinnlos ist!~
  == MCapt01
    ~Nun gut, h�ren wir mit dem Verwirrspiel auf! Ihr seid noch sehr jung, zumindest f�r einen von uns. Wie viele habt Ihr schon get�tet?~
  == MaltJ
    ~Euer Tun gef�llt mir ganz und gar nicht! Ich verstehe nichts von Eurem sinnentleerenden Geplapper. Was hei�t denn *von uns get�tet*?~
  == MCapt01
    ~Ihr habt tats�chlich noch keinen von uns get�tet? Ihr habt niemals die Transformation erlebt?!~
  == MaltJ
    ~Ich habe nicht die blasseste Ahung, wovon Ihr �berhaupt sprecht! Ich t�te niemanden, nur aus Spass!~
  == MCapt01
    ~Wisst Ihr denn gar nichts �ber Euch selbst?~
  == MaltJ
    ~Genug, um zu wissen, dass ich nicht wie Ihr werden will!~
  == MCapt01
    ~Keine Angst, Malthis! Das werdet Ihr auch nicht! Ich werde Euch hier und jetzt t�ten!~
  == MaltJ
    ~Um danach ins n�chste Dorf zu ziehen und Leute zu t�ten, nur weil sie anders sind. Ihr nehmt sie und raubt ihnen eine Kraft, richtig?! Und ich habe diese Kraft auch in mir! Musste deswegen mein ganzes Dorf sterben, weil Ihr mich gesucht habt?~
  == MCapt01
    ~Ich f�rchte ja, Malthis! Ihr werdet mir Kraft geben und ich werde aus Eurem Tod Nutzen ziehen. Leider haben wir nur euren Sohn gefunden, aber auch er hat ein verdientes Ende gefunden..HaHaHa...!~
  == MaltJ
    ~Worin lag der Sinn in diesem Gemetzel? Euer Tun war so vergeblich, nichts hat Euch der Tod dieser Leute eingebracht!~
  == MCapt01
    ~Ich h�tte doch auf Kern und Dindal h�ren sollen. Sie hatten mich vor Euch und Euerer Unzul�nglichkeit gewarnt...!~
  == MaltJ
    ~Kern? Wie kann er noch am Leben sein? Ich habe doch gesehen, wie er zu Boden ging, als ich ihn getroffen habe!~
  == MCapt01
    ~So einfach sind wir nicht zu t�ten, Malthis! Das habe ich Euch doch gerade versucht zu sagen! Wir sind etwas Besonderes und Kern hat schon mehrere Transformationen hinter sich!~
  == MaltJ
    ~Mehre Transformationen...?~
  == MCapt01
    ~Was glaubt Ihr, wie man sonst ein St�ck Unsterblichkeit bekommt...! Aber ich habe schon zuviel gesagt. ZU DEN WAFFEN! ICH WILL EUER BLUT TRINKEN UND EUER HERZ VERSPEISEN....!~
     DO ~ActionOverride("MSold01",Enemy())
ActionOverride("MSold02",Enemy())
ActionOverride("MSold03",Enemy())
Enemy()~EXIT



//IF ~~ THEN BEGIN ReakaufersteBegeg1
//  SAY ~Lasst <CHARNAME> und seine Begleitung aus dem Spiel! Sie haben Euch nichts getan. Selbst ich wei� nicht, wer Ihr seid und was Ihr von mir wollt.!~
//  IF ~~ THEN EXTERN ~MCapt01~ Gefunden2
//END

//IF ~~ THEN BEGIN ReakaufersteBegeg2
//  SAY ~Lasst <CHARNAME> aus dem Spiel! Er hat Euch nichts getan. Selbst ich wei� nicht, wer Ihr seid und was Ihr von mir wollt.!~
//  IF ~~ THEN EXTERN ~MCapt01~ Gefunden2
//END


