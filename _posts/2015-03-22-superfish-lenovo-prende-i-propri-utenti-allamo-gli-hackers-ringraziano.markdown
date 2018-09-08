---
author: thesave
comments: true
date: 2015-03-22 14:50:43+00:00
layout: post
link: http://www.atomodelmale.it/2015/03/22/superfish-lenovo-prende-i-propri-utenti-allamo-gli-hackers-ringraziano/
slug: superfish-lenovo-prende-i-propri-utenti-allamo-gli-hackers-ringraziano
title: Superfish, Lenovo prende i propri utenti all'amo. Gli hackers ringraziano.
wordpress_id: 15536
image: uploads/2015/03/superfish000.jpg
categories:
- Informatica
- Sicurezza
tags:
- Malware
---

State pensando di comprare un nuovo portatile e tra le vostre opzioni c'è uno ThinkPad? O magari avete appena portato a casa un Lenovo nuovo di zecca. In entrambi i casi state attenti, il SuperPesce è in agguato!

## Superfish

![superfish000]({{ site.baseurl }}/uploads/2015/03/superfish000.jpg)

Se avete mai acquistato un portatile con Windows pre-installato, avrete anche notato che al primo avvio la vostra macchina è tutt'altro che intonsa. Software per acquisire e modificare foto, barre di ricerca preinstallate, programmi per scaricare altre applicazioni. La lista è sterminata e solitamente riguarda programmi "[crapware](http://en.wikipedia.org/wiki/Pre-installed_software#Craplets)", fusione delle parole crap -- letteralmente, cacca -- e software. Il nome ben descrive il tenore di questi programmi.

Lenovo, come tanti altri produttori di portatili, non è da meno. Il problema è che il produttore Cinese ha ben pensato di infilare nell'ultima generazione di macchine un crapware capace di spiare le transazioni "sicure".

Il software, chiamato Superfish -- nomen omen -- avrebbe il compito di iniettare pubblicità da parte di terzi all'interno delle pagine web visitate dall'utente. Per fare ciò Superfish prende il traffico dati dell'utente, lo manda alla "base" e aspetta di ricevere il contenuto da iniettare nelle pagine. Il software colpisce in particolare i browser che si basano sul gestore di certificati di Windows come Google Chrome e Internet Explorer (ma non Firefox che utilizza un proprio gestore).

Se siete già in modalità facepalm, pensando a quanto stupida questa mossa possa essere per Lenovo in termini di immagine, non avete ancora sentito la parte divertente.

Dato che a Lenovo fanno le cose per bene e sanno che là fuori è pieno di hackers che non vendono l'ora di prendere possesso delle macchine di ignari utenti, hanno pensato di usare un canale sicuro (SSL) per le comunicazioni col programma incriminato. Per confermare la sicurezza del canale, SSL si basa sul [meccanismo dei certificati](http://it.wikipedia.org/wiki/Certificato_digitale).

![superfish002]({{ site.baseurl }}/uploads/2015/03/superfish002.png)

In breve, quando il browser stabilisce una connessione sicura, oltre a criptare i dati, verifica che chi sta dall'altra parte del cavo sia veramente chi dice di essere. Per appurare ciò esistono degli enti, chiamati certificatori, di cui il browser si fida. Se il certificatore conferma l'identità del terzo allora il browser si fida e apre la connessione senza nemmeno notificare l'utente. In caso contrario, il browser notifica la non sicurezza della connessione all'utente, rimettendo a lui la scelta sul fidarsi o meno.

Per evitare il secondo scenario e suscitare inutili ansie negli ignari utenti, Lenovo ha inserito nei sistemi forniti con le proprie macchine il certificato di un ente certificatore fasullo, capace di confermare l'autenticità delle connessioni stabilite da Superfish.

![Superfish001]({{ site.baseurl }}/uploads/2015/03/Superfish001.png)

Ovviamente questo ha fatto rizzare peli e cappelli degli esperti di sicurezza di tutto il mondo. E per non solo uno ma due motivi. Il primo è che i computer con installato Superfish permettono a terzi di ricevere il contenuto di qualsiasi pagina web visitata, questo include conti correnti, siti sanitari e finanziari. Il secondo, ancor più grave, deriva dal fatto che Superfish usa lo stesso certificato per ogni macchina. Se un hacker riuscisse a trovarne la chiave (come ha fatto l'esperto di sicurezza [Rob Graham](http://blog.erratasec.com/2015/02/some-notes-on-superfish.html#.VOYiNsa-ywl)) può usare Superfish per ricevere e inserire qualsiasi contenuto nelle macchine delle ignare vittime.

A gennaio di quest'anno Lenovo ha fatto pubblica ammenda, scusandosi e affermando di aver cessato l'installazione di Superfish nei propri portatili e l'attività dei server con cui il software interagisce. Inoltre il produttore ha anche presentando la lista dei modelli su cui Superfish è stato installato e le [istruzioni](http://news.lenovo.com/article_display.cfm?article_id=1929) per rimuoverlo.

Coppini sulla nuca di Lenovo a parte, nel caso abbiate un portatile Lenovo (o in generale un portatile con Windows) e vogliate verificare che sia libero da Superfish, l'esperto di sicurezza Filippo Valsorda offre sul suo sito web un veloce [test](https://filippo.io/Badfish/).
