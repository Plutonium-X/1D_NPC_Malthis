BEGIN MKontakt

IF ~Global("MaMecker","GLOBAL",0)~ THEN BEGIN InZeit
  SAY ~Da seid Ihr ja, Malthis! Wie ich sehe, habt Ihr Begleitung mitgebracht?~ 
  IF ~~ EXTERN ~MaltJ~ MaReaktionKontakt
END

IF ~Global("MaMecker","GLOBAL",1)~ THEN BEGIN InZeit2
  SAY ~Da seid Ihr ja, Malthis! Ihr habt ganz sch�n lange gebraucht, um hier herzukommen! Aber egal, nun seid Ihr ja dann! Wie ich sehe, habt Ihr Begleitung mitgebracht?~ 
  IF ~~ EXTERN ~MaltJ~ MaReaktionKontakt
END


CHAIN MaltJ MaReaktionKontakt
   IF ~~ THEN 
    ~Nun ja, es hat zwar etwas gedauert, aber wir sind auch *aufgehalten* worden! Also, auch wenn alles Streben vergeblich ist, so teilt uns dennoch eure Informtaionen mit!~
  == MKontakt
    ~Immer langsam, Malthis! Die Information sind nicht umsonst! Wir befinden uns hier in der Stadt des Handels!~ 
  == MaltJ
    ~Ich habe Euch schon genug bezahlt. Eure Bem�hungen sind nicht von Erfolg gekr�nnt. Eigentlich ist es mir egal, aber trotzdem werde ich Euch nicht mehr bezahlen!~
  == MKontakt
    ~Ahem, ja...eure Augen gl�hen ja fast! In Ordnung, ich werde mich mit dem abfinden, was Ihr mir gegeben habt! Nun zu den Leuten, die Euch verfolgen! Sie reisen im Namen der Kirche, aber sie haben etwas B�sartiges an sich...!~
  == MaltJ
    ~Ja, das habe ich auch gesp�rt! Irgendetwas stimmt mit Ihnen nicht! Wei�t du etwas �ber Ihren Aufenthaltsort oder was sie sind?~
  == MKontakt
    ~Nein, leider nicht! Ich wei� nur, dass sie Euch suchen! Sie haben die halbe Stadt nach Euch durchk�mmt, aber Ihr m�sst wirklich Gl�ck haben...oder Ihr seid nur verr�ckt!~
  == MaltJ
    ~Vielleicht eine Mischung aus beidem! Ich danke Euch, auch wenn ich nicht wirklich schlauer bin als zuvor! Ah, wieder so ein hoffnungsloses Gespr�ch. Lebt wohl.~
  == MKontakt
    ~Mehr wei� ich leider nicht! Lebt wohl, Malthis! Und viel Gl�ck...!~
       DO ~FadeToColor([20.0],0)
ActionOverride("MKontakt",DestroySelf())
FadeFromColor([20.0],0)~
EXIT
	