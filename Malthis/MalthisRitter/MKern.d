BEGIN MDINDAL
BEGIN MKern

IF ~NumTimesTalkedTo(0) See("Malt")~ THEN BEGIN MaGefundenCut2
  SAY ~Dieses Mal werden wir Euch nicht entkommen lassen, Malthis! Ihr k�nnt Euch auf einen gro�en Kampf gefasst machen!~
  IF ~~ THEN EXTERN ~MaltJ~ MaBegegnungKern	
END


//IF ~~ THEN BEGIN Gefunden2
//  SAY ~Ich dachte mir schon, dass Ihr Euch versucht herauszureden! Nun gut, ich bin des Versteckspiel m�de! ZU DEN WAFFEN! ICH WILL EUER BLUT TRINKEN UND EUER HERZ VERSPEISEN....!~
//  IF ~~ THEN DO ~ActionOverride("MSold01",Enemy())
//ActionOverride("MSold02",Enemy())
//ActionOverride("MSold03",Enemy())
//Enemy()~ EXIT
//END

CHAIN3 MaltJ MaBegegnungKern 
  IF ~~ THEN 
    ~Sagt mir, wer Ihr seid und warum Ihr mein Dorf ausgel�scht habt! Ist es wirklich nur wegen dieser *Kraft* gewesen, die in mir steckt?~
  == MKERN
    ~Ich glaube, wir k�nnen etwas von dem Geheimnis l�ften, oder was meinst du, Dindal? Lassen wir den armen Malthis nicht im Ungewissen im Angesicht seines Todes!~
  == MDINDAL
    ~Ja, sagt es ihm ruhig. Er wird den n�chsten Tag sowieso nicht erleben....!~
  == MKERN
    ~Ihr habt tats�chlich noch keinen von uns get�tet? Ihr habt niemals die Transformation erlebt?!~
  == MaltJ
    ~Was soll dieses hoffnungslose Geplapper? Ich habe keine Ahnung, was Ihr meint. Eure Dummheit wird Euch unweigerlich in den Tod f�hren!~
  == MKERN  
    ~Ihr seid etwas ganz Besonderes, Malthis! Ihr seid eine Art Vampyr!~
  == MaltJ
    ~Ich kann doch kein Vampir sein, das...das ist doch nicht m�glich!~
  == MKERN
    ~Kein Vampir, Malthis...ein Vampyr! Das ist eine andere Form, als der Vampir. Vielleicht k�nnte man sogar sagen, dass aus *Menschen* wie uns die Vampire entstanden sind.~
  == MaltJ
    ~Aber ich f�hle mich im Sonnenlicht nicht beeintr�chtigt und ich bin auch nicht untot...!~
  == MKERN
    ~Dies sind auch nur Schw�chen der eigentlichen Vampire, nicht unsere. Jedoch sind wir einfach zu t�ten, als die Vampire. In unsere Form k�nnen wir uns nicht in eine Gaswolke, Fledermaus oder Wolf verwandeln. Das Sonnenlicht schadet uns ebenfalls nicht. Die eigentlichen Vampire k�nnen nichts mit uns anfangen und kennen uns auch nicht. Ihr habt ja sicher am eigenen Leib gesp�rt, wie sich Eure Wunden schlie�en. Dennoch f�hlen wir Schmerzen, wie jeder Mensch.~
  == MaltJ
    ~Was bedeuten diese Transformationen? Der erste Ritter, gegen den ich mit <CHARNAME> gek�mpft hatte, sprach davon!~
  == MKERN
    ~T�ten wir einen von uns, dann str�mt die Essenz des Get�teten in uns und wir werden st�rker. Ich sehe doch, dass auch Ihr schon st�rker geworden seid. Dies ist allerdings nicht ungef�hrlich, denn irgendwann kann die Transformation dazu f�hren, dass man sich in einen Vampir verwandelt, mit all seinen negativen Eigenschaften! Auch ist es m�glich, dass man von den Erinnerungen eines get�teten, alten Vampyrs �berschwemmt wird und man sein Innerstes verliert...seine Seele!~
  == MDINDAL
    ~Kern, es reicht jetzt! Bringen wir es endlich hinter uns!~
  == MaltJ
    ~Eine letzte Frage noch...wo steckt Euer Anf�hrer? Jemand muss doch noch hinter Euch stehen, oder?!~
  == MDINDAL
    ~Ihr werdet ihn nicht mehr kennenlernen! Er tritt nur mit uns in Verbindung, wenn er es f�r richtig h�lt! Wir selber wissen nicht, wo er steckt! Aber nun reicht es! ZU DEN WAFFEN...!~
     DO ~ActionOverride("MKERN",Enemy())
ActionOverride("MDINDAL",Enemy())
ActionOverride("MDRUIDE",Enemy())
ActionOverride("MSold02",Enemy())
ActionOverride("MSold03",Enemy())
Enemy()~EXIT

