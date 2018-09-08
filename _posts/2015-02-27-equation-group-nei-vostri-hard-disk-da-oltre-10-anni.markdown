---
author: thesave
comments: true
date: 2015-02-27 09:35:28+00:00
layout: post
link: http://www.atomodelmale.it/2015/02/27/equation-group-nei-vostri-hard-disk-da-oltre-10-anni/
slug: equation-group-nei-vostri-hard-disk-da-oltre-10-anni
title: Equation Group, nei vostri hard disk da oltre 10 anni
wordpress_id: 15479
image: uploads/2015/02/Screen-Shot-2015-02-26-at-16.51.56.png
categories:
- Informatica
- Sicurezza
tags:
- Antivirus
- Virus
---

A volte la realtà supera la fantasia.

È stata la prima cosa che ho pensato quando ho scorso il [rapporto recentemente pubblicato da Kaspersky](https://securelist.com/files/2015/02/Equation_group_questions_and_answers.pdf) che apre con l'immagine a fianco.

![]({{ site.baseurl }}/uploads/2015/02/Screen-Shot-2015-02-26-at-16.51.56.png)

Chi è l'_equation group_? Un gruppo di hacker che, con la propria "famiglia" di malwares, ha silenziosamente infettato computer in tutto il mondo. _Da più di un decennio_!

Il dettagliatissimo rapporto di Kaspersky parla in particolare di due malware, chiamati EQUATIONDRUG e GRAYFISH, capaci di riscrivere il firmware dei dischi rigidi di IBM, Maxtor, Samsung, Seagate, Toshiba e Western Digital. Una fetta ridicolmente grande del mercato mondiale di dischi rigidi.

L'_infezione_ da parte dei malware consiste nella creazione di uno spazio nell'hard disk attaccato in cui viene criptato il codice malevolo -- e possibilmente altri dati intercettati. In questo modo il malware diventa praticamente irremovibile. Essendo criptato, il virus risulta irriconoscibile da parte degli antivirus, che al più leggono un'innocua serie di dati casuali.
In più, dato che il sistema operativo usa il firmware per gestire il disco, neanche il mitico "formattone riparatore" può liberare l'hard disk, una volta infettato.

I due sopraccitati malwares sono solo [la punta dell'iceberg](http://arstechnica.com/security/2015/02/how-omnipotent-hackers-tied-to-the-nsa-hid-for-14-years-and-were-found-at-last/1/) per l'Equation Group, al quale vengono attribuite capacità tecniche straordinarie oltre a risorse inusualmente generose per un "semplice" team di hackers. Benché Kaspersky non si sbilanci nel associare il gruppo allo spionaggio americano e l'NSA, gli indizi logistici, e in particolare quelli di natura tecnica, fanno pensare ad un gruppo supportato dall'agenzia americana.

![]({{ site.baseurl }}/uploads/2015/02/Screen-Shot-2015-02-27-at-10.16.00.png)

Come si confà ad una spy-story ben confezionata, l'uomo della strada -- o dell'InterWeb, se preferite -- non deve preoccuparsi. I colpi messi a segno dal gruppo sono sempre stati mirati verso obiettivi ben precisi, in particolare sistemi e macchine governative, militari, di società finanziarie, energetiche o nucleari o di sospetti attivisti islamici.

Quello che importa all'uomo comune, come nota [Paolo Attivissimo](http://attivissimo.blogspot.dk/2015/02/equation-group-infetta-i-dischi-rigidi.html), è il fatto che se esistono dei malware capaci di modificare il funzionamento dei dispositivi di memoria, le tecniche di rilevamento forense diventano meno attendibili, insinuando il dubbio che i files incriminati possano essere stati inseriti da un software malevolo piuttosto che dall'utente.
