BEGIN MCapt01

IF ~NumTimesTalkedTo(0) See("Malt")~ THEN BEGIN Gefunden
  SAY ~Haben wir Euch endlich gefunden, Malthis! Jetzt werden wir Euch und Euren Dämonenpaktierern endlich den den Prozess machen! Ihr werdet dem Teufel einen Besuch abstatten!~
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
    ~Lasst <CHARNAME> und seine Begleitung aus dem Spiel! Sie haben Euch nichts getan. Selbst ich weiß nicht, wer Ihr seid und was Ihr von mir wollt! Auch wenn die Erklärung noch so sinnlos ist!~
  == MCapt01
    ~Nun gut, hören wir mit dem Verwirrspiel auf! Ihr seid noch sehr jung, zumindest für einen von uns. Wie viele habt Ihr schon getötet?~
  == MaltJ
    ~Euer Tun gefällt mir ganz und gar nicht! Ich verstehe nichts von Eurem sinnentleerenden Geplapper. Was heißt denn *von uns getötet*?~
  == MCapt01
    ~Ihr habt tatsächlich noch keinen von uns getötet? Ihr habt niemals die Transformation erlebt?!~
  == MaltJ
    ~Ich habe nicht die blasseste Ahung, wovon Ihr überhaupt sprecht! Ich töte niemanden, nur aus Spass!~
  == MCapt01
    ~Wisst Ihr denn gar nichts über Euch selbst?~
  == MaltJ
    ~Genug, um zu wissen, dass ich nicht wie Ihr werden will!~
  == MCapt01
    ~Keine Angst, Malthis! Das werdet Ihr auch nicht! Ich werde Euch hier und jetzt töten!~
  == MaltJ
    ~Um danach ins nächste Dorf zu ziehen und Leute zu töten, nur weil sie anders sind. Ihr nehmt sie und raubt ihnen eine Kraft, richtig?! Und ich habe diese Kraft auch in mir! Musste deswegen mein ganzes Dorf sterben, weil Ihr mich gesucht habt?~
  == MCapt01
    ~Ich fürchte ja, Malthis! Ihr werdet mir Kraft geben und ich werde aus Eurem Tod Nutzen ziehen. Leider haben wir nur euren Sohn gefunden, aber auch er hat ein verdientes Ende gefunden..HaHaHa...!~
  == MaltJ
    ~Worin lag der Sinn in diesem Gemetzel? Euer Tun war so vergeblich, nichts hat Euch der Tod dieser Leute eingebracht!~
  == MCapt01
    ~Ich hätte doch auf Kern und Dindal hören sollen. Sie hatten mich vor Euch und Euerer Unzulänglichkeit gewarnt...!~
  == MaltJ
    ~Kern? Wie kann er noch am Leben sein? Ich habe doch gesehen, wie er zu Boden ging, als ich ihn getroffen habe!~
  == MCapt01
    ~So einfach sind wir nicht zu töten, Malthis! Das habe ich Euch doch gerade versucht zu sagen! Wir sind etwas Besonderes und Kern hat schon mehrere Transformationen hinter sich!~
  == MaltJ
    ~Mehre Transformationen...?~
  == MCapt01
    ~Was glaubt Ihr, wie man sonst ein Stück Unsterblichkeit bekommt...! Aber ich habe schon zuviel gesagt. ZU DEN WAFFEN! ICH WILL EUER BLUT TRINKEN UND EUER HERZ VERSPEISEN....!~
     DO ~ActionOverride("MSold01",Enemy())
ActionOverride("MSold02",Enemy())
ActionOverride("MSold03",Enemy())
Enemy()~EXIT

CHAIN MaltJ ReakaufersteBegeg2 
  IF ~NumInPartyLT(2)~ THEN 
     ~Lasst <CHARNAME> und seine Begleitung aus dem Spiel! Sie haben Euch nichts getan. Selbst ich weiß nicht, wer Ihr seid und was Ihr von mir wollt! Auch wenn die Erklärung noch so sinnlos ist!~
  == MCapt01
    ~Nun gut, hören wir mit dem Verwirrspiel auf! Ihr seid noch sehr jung, zumindest für einen von uns. Wie viele habt Ihr schon getötet?~
  == MaltJ
    ~Euer Tun gefällt mir ganz und gar nicht! Ich verstehe nichts von Eurem sinnentleerenden Geplapper. Was heißt denn *von uns getötet*?~
  == MCapt01
    ~Ihr habt tatsächlich noch keinen von uns getötet? Ihr habt niemals die Transformation erlebt?!~
  == MaltJ
    ~Ich habe nicht die blasseste Ahung, wovon Ihr überhaupt sprecht! Ich töte niemanden, nur aus Spass!~
  == MCapt01
    ~Wisst Ihr denn gar nichts über Euch selbst?~
  == MaltJ
    ~Genug, um zu wissen, dass ich nicht wie Ihr werden will!~
  == MCapt01
    ~Keine Angst, Malthis! Das werdet Ihr auch nicht! Ich werde Euch hier und jetzt töten!~
  == MaltJ
    ~Um danach ins nächste Dorf zu ziehen und Leute zu töten, nur weil sie anders sind. Ihr nehmt sie und raubt ihnen eine Kraft, richtig?! Und ich habe diese Kraft auch in mir! Musste deswegen mein ganzes Dorf sterben, weil Ihr mich gesucht habt?~
  == MCapt01
    ~Ich fürchte ja, Malthis! Ihr werdet mir Kraft geben und ich werde aus Eurem Tod Nutzen ziehen. Leider haben wir nur euren Sohn gefunden, aber auch er hat ein verdientes Ende gefunden..HaHaHa...!~
  == MaltJ
    ~Worin lag der Sinn in diesem Gemetzel? Euer Tun war so vergeblich, nichts hat Euch der Tod dieser Leute eingebracht!~
  == MCapt01
    ~Ich hätte doch auf Kern und Dindal hören sollen. Sie hatten mich vor Euch und Euerer Unzulänglichkeit gewarnt...!~
  == MaltJ
    ~Kern? Wie kann er noch am Leben sein? Ich habe doch gesehen, wie er zu Boden ging, als ich ihn getroffen habe!~
  == MCapt01
    ~So einfach sind wir nicht zu töten, Malthis! Das habe ich Euch doch gerade versucht zu sagen! Wir sind etwas Besonderes und Kern hat schon mehrere Transformationen hinter sich!~
  == MaltJ
    ~Mehre Transformationen...?~
  == MCapt01
    ~Was glaubt Ihr, wie man sonst ein Stück Unsterblichkeit bekommt...! Aber ich habe schon zuviel gesagt. ZU DEN WAFFEN! ICH WILL EUER BLUT TRINKEN UND EUER HERZ VERSPEISEN....!~
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


