---
author: thesave
comments: true
date: 2007-01-24 09:23:00+00:00
layout: post
link: http://www.atomodelmale.it/2007/01/24/ritorno-al-futuro/
slug: ritorno-al-futuro
title: Ritorno al futuro
wordpress_id: 715
categories:
- Blog
tags:
- Bug
- Crononauta
- DeLorean
- Futuro
- IBM
- John Titor
- Macchina
- Millennium
- Overflow
- POSIX
- Ritorno
- Tempo
- Viaggi
---

Vi ricordate della bellissima trilogia firmata da Robert Zemekis e prodotta da Steven Spielberg in cui il protagonista, Marty McFly, andava avanti e indietro nel tempo a combinarne di tutti i colori insieme allo scienziato Emmet Brown sull'ormai famosissima DeLorean?

A quanto pare la storia di Ritorno al Futuro non è tanto surreale, visto che un certo John Titor già alla fine del 2000 affermava di essere niente meno che un Crononauta.

Si, avete capito bene, dal novembre 2000 su alcuni forum statunitensi un misterioso utente chiamato "TimeTravel_0" (e ribattezzatosi John Titor in seguito) ha cominciato ad asserire di essere un viaggiatore del tempo, proveniente, udite udite, niente meno che dal 2036.

<!-- more -->


Titor afferma di essere un soldato inviato  dal governo statunitense nel 1975 per recuperare dal nonno, ingegnere dell'IBM a Rochester, un computer "portatile" dell'epoca, l'IBM 5100, che conterrebbe funzioni non documentate che gli permetteranno di svolgere un'operazione vitale per il mondo del 2036: effettuare conversioni fra i vecchi sistemi IBM e UNIX.

Per quanto possa sembrare strana, la vicenda ha un fondo di verità, i sistemi UNIX e tutti i sistemi UNIX-Like (tra cui troviamo anche i nostri cari Windows e Linux) basati su sistema POSIX hanno un "leggerissimo" problemino di overflow riguardo a una data ben precisa.

Vi ricordate del **Millennium Bug?** L'errore in quel caso riguardava l'interazione tra i programmi che, recependo uno "00" non avrebbero considerato l'anno giusto (il 2000) ma il 1900. Le conseguenze di questo bug sono state sotto gli occhi di tutti e credo che ben poca gente sia stata vittima di questo bug informatico, benché fosse stato paventato dalla stampa come una delle cause della fine del mondo.

Il così detto "2038 bug", al contrario del Millennium Bug, non riguarda l'interpretazione della data, ma la registrazione della stessa nella memoria del computer. La data, nei sistemi POSIX, viene salvata in un intero (integer) di 32bit che contiene il contatore di tutti i secondi passati dal 1 Gennaio 1970.

E' doverosa una breve spiegazione di informatica spicciola per poter capire il problema di questo bug: un intero a 32bit (con segno) rappresenta una cosa come 2.147.483.647 numeri positivi (e altri 2.147.483.648 numeri negativi, ma finché non inventeranno la data negativa non servono a molto..) dunque, calcolatrice alla mano sono 2.147.483.647 secondi che corrispondono a 35.791.394 minuti, cioè 596.523 ore, 24.855  giorni e quindi 68 anni, giorno più, giorno meno.
Ora basta fare 1970 + 68 per trovare la data fatidica: 2038, più precisamente il 19 Gennaio 2038 alle ore 3, 14 minuti e 8 secondi.
Raggiungendo quella data, il contatore va in overflow, cioè non registra la data giusta, ma segna i secondi negativi, in pratica arrivati al 2.147.483.647  si passerà al -2.147.483.647esimo secondo, continuando poi a segnare secondi negativi che vengono sottratti a una sorta di countdown fittizio..

Tutto ciò con buona pace dei processi che necessitano delle funzioni di data ed ora per l'elaborazione dei dati. Ciò provoca, di conseguenza, un errore a catena in tutti i calcoli ed in tutte le decisioni logiche gestite dalle funzioni presenti nei programmi con conseguenze tutt'altro che prevedibili.

Tutt'ora si sta studiando un modo per ovviare al problema, soprattutto per quello che riguarda l'integrazione tra la soluzione e sistemi di vecchia data che sono ancora in suo.

Dunque il caro Titor ha trovato una scusa non facilmente screditabile, soprattutto perché le implementazioni che IBM ha elaborato per ovviare al problema sono più che sigillate in tutti i propri dispositivi e, sempre secondo Titor,  l'IBM 5100 sarebbe la chiave di volta per la risoluzione del problema.

Nei suoi post sui forum risponde alle domande dei partecipanti e fornisce dettagli tecnici della sua "macchina del tempo", quando è arrivato nel 1975 veniva trasportata in una Chevrolet Corvette cabriolet del 1966 mentre nel 2000 ha usato un furgone a quattro ruote motrici del 1987.
Il modello della "macchina del tempo" si chiama C204, fabbricato dalla General Electrics nel 2034, pesa circa 250 chili e oltre che qualche foto della macchina del tempo, il soldatino del futuro pubblica anche le immagini del manuale corredato alla macchina.

Le immagini però sono sempre molto sfuocate e nessuno degli esperti ha mai potuto capire bene di cosa parlano le pagine del manuale o da che componenti è formata la fantomatica "macchina del tempo", benché lo stesso Titor abbia dimostrato una notevole padronanza della terminologia in campi come la fisica avanzata e l'informatica.

Il 24 marzo 2001, John Titor annuncia il proprio ritorno a casa, al 2036. Da allora non si è più fatto sentire.

Prima della propria partenza il crononauta ha scritto alcune previsioni sul futuro, avvisando che esistono molti mondi paralleli al nostro e che in ciascuno di questi mondi gli eventi sono leggermente differenti.
Lui proverrebbe in realtà da uno di questi mondi e avrebbe raccontato la cronologia di quel mondo, che può essere divergente rispetto alla nostra (e qui si tocca il limite della fantascienza alla Asimov...).

Titor asserisce che nel 2004 sarebbe nata una guerra civile in USA, che si sarebbe protratta fino al 2015 e che l'edizione finale delle Olimpiadi sarebbe stata nel 2004.

Le previsioni di Titor sono piuttosto catastrofiche, inizia la Terza Guerra Mondiale che fa 3 miliardi di morti nel 2015, la Russia bombarda le città americane, europee e cinesi, e la Microsoft non esiste più (a ripensarci bene il futuro non sembra proprio così nero :P)
