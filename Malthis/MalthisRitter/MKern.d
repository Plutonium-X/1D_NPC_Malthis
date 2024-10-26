BEGIN MDINDAL
BEGIN MKern

IF ~NumTimesTalkedTo(0) See("Malt")~ THEN BEGIN MaGefundenCut2
  SAY ~Dieses Mal werden wir Euch nicht entkommen lassen, Malthis! Ihr könnt Euch auf einen großen Kampf gefasst machen!~
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
    ~Sagt mir, wer Ihr seid und warum Ihr mein Dorf ausgelöscht habt! Ist es wirklich nur wegen dieser *Kraft* gewesen, die in mir steckt?~
  == MKERN
    ~Ich glaube, wir können etwas von dem Geheimnis lüften, oder was meinst du, Dindal? Lassen wir den armen Malthis nicht im Ungewissen im Angesicht seines Todes!~
  == MDINDAL
    ~Ja, sagt es ihm ruhig. Er wird den nächsten Tag sowieso nicht erleben....!~
  == MKERN
    ~Ihr habt tatsächlich noch keinen von uns getötet? Ihr habt niemals die Transformation erlebt?!~
  == MaltJ
    ~Was soll dieses hoffnungslose Geplapper? Ich habe keine Ahnung, was Ihr meint. Eure Dummheit wird Euch unweigerlich in den Tod führen!~
  == MKERN  
    ~Ihr seid etwas ganz Besonderes, Malthis! Ihr seid eine Art Vampyr!~
  == MaltJ
    ~Ich kann doch kein Vampir sein, das...das ist doch nicht möglich!~
  == MKERN
    ~Kein Vampir, Malthis...ein Vampyr! Das ist eine andere Form, als der Vampir. Vielleicht könnte man sogar sagen, dass aus *Menschen* wie uns die Vampire entstanden sind.~
  == MaltJ
    ~Aber ich fühle mich im Sonnenlicht nicht beeinträchtigt und ich bin auch nicht untot...!~
  == MKERN
    ~Dies sind auch nur Schwächen der eigentlichen Vampire, nicht unsere. Jedoch sind wir einfach zu töten, als die Vampire. In unsere Form können wir uns nicht in eine Gaswolke, Fledermaus oder Wolf verwandeln. Das Sonnenlicht schadet uns ebenfalls nicht. Die eigentlichen Vampire können nichts mit uns anfangen und kennen uns auch nicht. Ihr habt ja sicher am eigenen Leib gespürt, wie sich Eure Wunden schließen. Dennoch fühlen wir Schmerzen, wie jeder Mensch.~
  == MaltJ
    ~Was bedeuten diese Transformationen? Der erste Ritter, gegen den ich mit <CHARNAME> gekämpft hatte, sprach davon!~
  == MKERN
    ~Töten wir einen von uns, dann strömt die Essenz des Getöteten in uns und wir werden stärker. Ich sehe doch, dass auch Ihr schon stärker geworden seid. Dies ist allerdings nicht ungefährlich, denn irgendwann kann die Transformation dazu führen, dass man sich in einen Vampir verwandelt, mit all seinen negativen Eigenschaften! Auch ist es möglich, dass man von den Erinnerungen eines getöteten, alten Vampyrs überschwemmt wird und man sein Innerstes verliert...seine Seele!~
  == MDINDAL
    ~Kern, es reicht jetzt! Bringen wir es endlich hinter uns!~
  == MaltJ
    ~Eine letzte Frage noch...wo steckt Euer Anführer? Jemand muss doch noch hinter Euch stehen, oder?!~
  == MDINDAL
    ~Ihr werdet ihn nicht mehr kennenlernen! Er tritt nur mit uns in Verbindung, wenn er es für richtig hält! Wir selber wissen nicht, wo er steckt! Aber nun reicht es! ZU DEN WAFFEN...!~
     DO ~ActionOverride("MKERN",Enemy())
ActionOverride("MDINDAL",Enemy())
ActionOverride("MDRUIDE",Enemy())
ActionOverride("MSold02",Enemy())
ActionOverride("MSold03",Enemy())
Enemy()~EXIT

