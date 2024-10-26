BEGIN MKontakt

IF ~Global("MaMecker","GLOBAL",0)~ THEN BEGIN InZeit
  SAY ~Da seid Ihr ja, Malthis! Wie ich sehe, habt Ihr Begleitung mitgebracht?~ 
  IF ~~ EXTERN ~MaltJ~ MaReaktionKontakt
END

IF ~Global("MaMecker","GLOBAL",1)~ THEN BEGIN InZeit2
  SAY ~Da seid Ihr ja, Malthis! Ihr habt ganz schön lange gebraucht, um hier herzukommen! Aber egal, nun seid Ihr ja dann! Wie ich sehe, habt Ihr Begleitung mitgebracht?~ 
  IF ~~ EXTERN ~MaltJ~ MaReaktionKontakt
END


CHAIN MaltJ MaReaktionKontakt
   IF ~~ THEN 
    ~Nun ja, es hat zwar etwas gedauert, aber wir sind auch *aufgehalten* worden! Also, auch wenn alles Streben vergeblich ist, so teilt uns dennoch eure Informtaionen mit!~
  == MKontakt
    ~Immer langsam, Malthis! Die Information sind nicht umsonst! Wir befinden uns hier in der Stadt des Handels!~ 
  == MaltJ
    ~Ich habe Euch schon genug bezahlt. Eure Bemühungen sind nicht von Erfolg gekrönnt. Eigentlich ist es mir egal, aber trotzdem werde ich Euch nicht mehr bezahlen!~
  == MKontakt
    ~Ahem, ja...eure Augen glühen ja fast! In Ordnung, ich werde mich mit dem abfinden, was Ihr mir gegeben habt! Nun zu den Leuten, die Euch verfolgen! Sie reisen im Namen der Kirche, aber sie haben etwas Bösartiges an sich...!~
  == MaltJ
    ~Ja, das habe ich auch gespürt! Irgendetwas stimmt mit Ihnen nicht! Weißt du etwas über Ihren Aufenthaltsort oder was sie sind?~
  == MKontakt
    ~Nein, leider nicht! Ich weiß nur, dass sie Euch suchen! Sie haben die halbe Stadt nach Euch durchkämmt, aber Ihr müsst wirklich Glück haben...oder Ihr seid nur verrückt!~
  == MaltJ
    ~Vielleicht eine Mischung aus beidem! Ich danke Euch, auch wenn ich nicht wirklich schlauer bin als zuvor! Ah, wieder so ein hoffnungsloses Gespräch. Lebt wohl.~
  == MKontakt
    ~Mehr weiß ich leider nicht! Lebt wohl, Malthis! Und viel Glück...!~
       DO ~FadeToColor([20.0],0)
ActionOverride("MKontakt",DestroySelf())
FadeFromColor([20.0],0)~
EXIT
	