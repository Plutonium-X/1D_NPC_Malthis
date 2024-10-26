IF WEIGHT #0 ~Global("MalthisMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",2)~ THEN BEGIN 1 // from:
   ~Verzeiht, <CHARNAME>... Ich teile Eure Begleitung jetzt schon länger und ich glaube, dass es an der Zeit ist, mehr von mir und von der Suche nach meinem Sohn zu berichten.~ 
  IF ~~ THEN REPLY ~Ich habe kein Interesse daran, von Eurem Sohn zu erfahren, Malthis. Ich gebe von mir schließlich auch nur das Nötigste preis.~ GOTO 2
  IF ~~ THEN REPLY ~Berichtet mir von Eurem Sohn, Malthis. Ich würde sehr gern mehr von ihm hören.~ GOTO 3
  IF ~~ THEN REPLY ~Tut mir Leid, Malthis, aber jetzt ist nicht der richtige Zeitpunkt für Unterhaltungen.~ GOTO 86
END

IF ~~ THEN BEGIN 2 // von: 1.1 Ich habe kein Interesse daran, von Eurem Sohn zu erfahren, Malthis
  SAY ~Wie Ihr wünscht, <CHARNAME>. Es entmutigt mich ein wenig, dass Ihr wünscht, so geheimnisvoll und mysteriös zu bleiben; so eine Nichtbeachtung hate mein Sohn nicht verdient.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // von: 2.0 
  SAY ~Ihr seid sehr freundlich. Ich stamme aus einem kleinen Dorf. Mein Stiefvater hat mich in der Waffenkunst und anderen Dingen geschult. Leider gönnten uns viele Bewohner dieses Glück nicht und verachteten meine Familie. Obwohl Ihre Verachtung so sinnlos war, hörten sie nicht auf. Wir waren schon immer anders und mein Stiefvater kam von Weit her. Er passte nicht in das Bild eines Dorfbewohners.~
  IF ~~ THEN GOTO 3a
END

IF ~~ THEN BEGIN 3a // von: 3.0 
  SAY ~Eines Nachts kamen dann diese Ritter, angeführt von einem Mann in einer blutroten Kutte! Den Dorfbewohner kamen natürlich die Leute gerade recht. Die Unglückseligen erzählten wohl von unheimliche Riten und anderen gotteslästerlichen Dingen, die ich und meine Familie ausführen sollten! Die Ritter beschlossen aber wohl, dass man gleich das gesamte Dorf bestrafen sollte und brachten jeden um, außer meinem Sohn.~
  IF ~~ THEN GOTO 3b
END

IF ~~ THEN BEGIN 3b // 
  SAY ~Warum sie ausgerechnet meinen Abkömmling verschleppt haben, das wissen nur die Götter. Der einzige Überlebende des Dorfes, der mir sterbend diese Einzelheiten berichtet hat, konnte die Verschleppung noch beobachten. Ich fand einen verkohlten Brief, der das Wort ´Atkatla´ enthielt bei einem toten Soldaten, sodass ich nicht gezögert habe aufzubrechen.~
  IF ~~ THEN GOTO 3c
END

IF 
IF ~~ THEN BEGIN 3c // 
  SAY  ~Es... Es tut mir Leid, <CHARNAME>! Es kommt mir alles so hoffnungslos vor. Aber nun zu Euch: Ihr sagtet, dass Ihr Eure Schwester suchen würdet. Habt Ihr sonst noch jemanden auf dieser Welt?~
  IF ~~ THEN REPLY ~Seid nicht immer so niedergeschlagen! Das hält man ja im Kopf nicht aus!~  GOTO 90
  IF ~~ THEN REPLY ~Das hört sich ja schrecklich an. Auch mir ist nur Imoen geblieben. Ich kann also Euren Zorn sehr gut nachempfinden, Malthis. Ihr dürft diesem Gefühl nur nicht nachgeben.~ GOTO 87
  IF ~~ THEN REPLY ~Ich kann nur wenig Geduld für solche langweiligen Geschichten aufbringen, Malthis. Jeder hat schon mal in den Schlund der Niederhöllen geblickt.~ GOTO 92
END

IF ~~ THEN BEGIN 86 // from: 79.3
  SAY ~Ja, vielleicht habt Ihr Recht, <CHARNAME>. Es scheint, als müsse das Vertiefen unserer Bekanntschaft noch etwas warten.~ 
  IF ~~ THEN DO ~IncrementGlobal("AnomenIgnore","GLOBAL",1)~ EXIT
END

----------------------------------------------------------------------------------------------------------------


IF ~~ THEN BEGIN 87 // from: 85.1
  SAY #34926 /* ~Warum nicht, edle Dame. Ich mag mehr von mir preisgeben als andere Eurer Waffenbrüder; nichtsdestotrotz sind sie wahr.Ich mag mich mehr mit meinen Taten rühmen als einige andere meiner Waffenbrüder; nichtsdestotrotz sind sie wahr. Gibt es einen Grund dafür, dass Ihr mir nicht traut?~ */
  IF ~~ THEN REPLY #34928 /* ~Nein, wohl nicht.~ */ GOTO 94
  IF ~~ THEN REPLY #34929 /* ~Es mag ja etwas Wahres an Euren Geschichten sein, aber dies liegt wohl ausschließlich im Kern der Geschichte. Ich kann mir niemanden vorstellen, der solche Siege erringt, wie Ihr sie beschreibt.~ */ GOTO 97
  IF ~~ THEN REPLY #34931 /* ~Eure Geschichten vermitteln den Anschein, als würdet Ihr Euch selbst ein wenig zu wichtig nehmen, und noch dazu habt Ihr wohl eine etwas übertriebene Phantasie, Anomen.~ */ GOTO 98
END

IF ~~ THEN BEGIN 88 // from: 80.1
  SAY #34933 /* ~Ja, das hört sich nach der Wahrheit an. Ich hatte auch nicht geglaubt, dass Ihr tatsächlich alleine einen Krieg im Norden beendet habt, wie geschickt auch immer Ihr sein mögt. Gerede führt zu Übertreibungen, so sagt man.~ */
  IF ~~ THEN REPLY #34935 /* ~Dieser Teil entspricht tatsächlich der Wahrheit. Ich habe vor einigen Monaten einen Krieg mit Amn beendet.~ */ GOTO 89
  IF ~~ THEN REPLY #34936 /* ~Nun ja, ich habe vor einigen Monaten einen Krieg mit Amn beendet ... aber ich habe es selbstverständlich nicht allein getan.~ */ GOTO 99
  IF ~~ THEN REPLY #34937 /* ~Ihr sprecht die Wahrheit, wie immer.~ */ GOTO 101
END

IF ~~ THEN BEGIN 89 // from: 88.0 80.2
  SAY #34938 /* ~Hmph. Es fällt mir schwer zu glauben, dass eine Frau alleine diese Taten vollbracht haben soll. Vielleicht ist Euch der Umfang der Geschichten, die ich gehört habe, nicht bekannt.~ */
  IF ~~ THEN REPLY #34939 /* ~Es fällt Euch schwer zu glauben, dass ich diese Dinge getan habe ... oder ist das nur, weil ich eine Frau bin?~ */ GOTO 101
  IF ~~ THEN REPLY #34940 /* ~Ich habe das alles nicht alleine getan, Anomen, aber mein Leben besteht seit meinem Weggang aus Kerzenburg aus nichts als Gefahr und Abenteuer.~ */ GOTO 99
  IF ~~ THEN REPLY #34941 /* ~Vielleicht habt Ihr Recht ... die Geschichten sind mit der Zeit wahrscheinlich aufgebauscht worden.~ */ GOTO 103
  IF ~~ THEN REPLY #34942 /* ~Behaltet Eure beleidigenden Kommentare lieber für Euch, Priester, oder Ihr verliert Eure Zunge!~ */ GOTO 105
END

IF ~~ THEN BEGIN 90 // from: 96.0 95.0 85.0
  SAY ~Das liegt in meiner Natur und den Soundsets, die Octavian mir gegeben hat. Ich habe nun einmal eine melancholische Ader. Wenn Ihr euren Sohn verloren hättet, dann wäre Euch vielleicht auch nicht nach Wein und Gesang!Ich wünsche mir nichts Sehnlicher, als meinen Sohn wiederzufinden.~ 
  IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY ~Aber ich rede zu viel über meine Geschichte. Ich werde versuchen, die Welt in einem anderen Lichte zu sehen. Vielleicht gebt Ihr mir den Mut und den Halt diese Unwägbarkeiten zu meistern...~ 
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 92 // from: 85.2
  SAY #34949 /* ~Ihr verletzt mich, Lady. Ich habe große Strapazen auf mich genommen, um den Rittern zu beweisen, was ich wert bin, und habe größere Siege errungen als gewöhnlichere Männer. Ich übertreibe nicht.~ */
  IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 93 // from: 97.0 92.0
  SAY #34950 /* ~Warum behandelt Ihr mich so schroff? Vielleicht spreche ich zuviel über mich selbst. Eine Eitelkeit, die mein Verderben werden wird. Ich nehme es Euch nicht übel, wenn Ihr kein Interesse an meiner Vergangenheit habt.~ */
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 94 // from: 87.0
  SAY #34953 /* ~Dann würde ich Euch danken, wenn Ihr im Zweifel für den Angeklagten, für mich, entscheiden würdet. Ihr habt mir einst erzählt, dass Ihr für das Gute kämpft, und ich habe Euch stets geglaubt, ungeachtet meiner gelegentlichen Zweifel.~ */
  IF ~!IsValidForPartyDialog("Keldorn")~ THEN GOTO 95
  IF ~IsValidForPartyDialog("Keldorn")~ THEN GOTO 96
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #34954 /* ~Ich entschuldige mich dafür, wenn ich nicht so charmant bin wie einige andere. Aber ich musste um meinen Platz als Junker kämpfen, hatte weder einen Vater, der mir als Gönner und Förderer Vorteile verschaffte, noch einen, der mir das nötige Kleingeld zur Verfügung stellte.~ */
  IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 96 // from: 94.1
  SAY #34955 /* ~Ich muss mich dafür entschuldigen, wenn ich nicht so charmant bin wie Keldorn hier. Aber ich musste um meinen Platz als Junker kämpfen, hatte weder einen Vater, der mir als Gönner und Förderer Vorteile verschaffte, noch einen, der mir die zugehörigen Privilegien bot.~ */
  IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 97 // from: 87.1
  SAY #34958 /* ~Meine Heldentaten sind wahr, werte Dame. Um die Ritterschaft im Order zu erlangen, muss man großartige Siege erringen, und ich bin kein Lügner.~ */
  IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 98 // from: 87.2
  SAY #34960 /* ~Ich weiß nicht, warum Ihr mich so verletzt. Ich habe nichts Anderes getan, als Eurer Sache treu zu dienen. Wenn Ihr das wirklich denkt, dann würde ich es vorziehen, schweigend weiter zu reiten.~ */
  IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 89.1 88.1
  SAY #34967 /* ~Nun, selbstredend hattet Ihr Begleiter, die Euch damals zur Seite standen und es auch jetzt tun. Und gemeinschaftlich habt Ihr solch großartige Dinge vollbracht, wie ich sie jetzt in Eurem Dienste zu vollbringen hoffe.~ */
  IF ~~ THEN GOTO 100
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #34968 /* ~Wahrlich wundersam. Vielleicht mögt Ihr mir mehr erzählen, <CHARNAME>, während wir weiterziehen ... Ich würde gern mehr über diese ehemaligen Begleiter von Euch wie auch über Eure heldenhaften Geschichten an der Schwertküste erfahren.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 101 // from: 89.0 88.2 80.0
  SAY #34971 /* ~Höre ich da einen Anflug von Sarkasmus in Eurer Stimme, meine Dame? Ich will Eure Taten nicht vollständig in Frage stellen ... Ich habe Euch in Aktion gesehen und bin sehr beeindruckt, versteht mich nicht falsch.~ */
  IF ~~ THEN GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 105.0 101.0
  SAY #34972 /* ~Vielleicht ein anderes Mal, <CHARNAME>, wenn Ihr mir gegenüber weniger argwöhnisch seid, könntet Ihr Euch erweichen lassen und mir mehr über Eure ehemaligen Begleiter erzählen und ein oder zwei Geschichten aus Eurer Zeit im Norden.~ */
  IF ~~ THEN EXIT
END
