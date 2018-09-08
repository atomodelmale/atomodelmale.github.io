---
author: thesave
comments: true
date: 2014-11-30 16:52:16+00:00
layout: post
link: http://www.atomodelmale.it/2014/11/30/volete-acquisire-una-buona-abitudine-ma-non-riuscite-forse-e-il-momento-di-debuggare-il-vostro-cervello/
slug: volete-acquisire-una-buona-abitudine-ma-non-riuscite-forse-e-il-momento-di-debuggare-il-vostro-cervello
title: Volete acquisire una buona abitudine ma non riuscite? Forse è il momento di
  debuggare il vostro cervello
wordpress_id: 15207
image: uploads/2014/11/debug.png
categories:
- Tech &amp; Hacks
tags:
- Cervello
---

Semplificando molto quel complicatissimo intrico di sinapsi che è il nostro cervello, potremmo paragonarlo ad un Sistema Operativo per computer. Può accedere a periferiche di input e output e ha funzioni per gestire flussi di dati e processi. Bello vero? Mica tanto, perché il cervello è bacato (ha dei bugs, errori di programmazione), una dimostrazione? Provate a "lanciare" il processo "Dieta" o "Palestra". Vi siete per caso ritrovati a mangiare 1/2 kilo di gelato mentre leggete Razzate su Facebook. Non proprio il comportamento che ci si aspettava quando abbiamo lanciato "Palestra", vero?

Essendo il Sistema Operativo, il cervello ospita una miriade di programmi che girano in contemporanea e seguono un certo ordine per l'accesso alle risorse.

Ed ecco dove sta il nostro bug. Era nascosto nella procedura di ordinamento dei processi per l'accesso alle risorse. A quanto pare, gli sviluppatori hanno programmato la procedura di ordinamento dando priorità ai processi che richiedono la minor quantità di sforzo necessario. Così tra i programmi "Dieta", "Palestra", "Facebook" e "Gelato", "Facebook" e "Gelato" (che spesso vengono eseguiti in parallelo) si impossessano delle nostre risorse (mentali), mentre gli altri due processi se ne stanno sullo sfondo, in stand-by, aspettando che il Sistema Operativo dia loro un po' di risorse su cui lavorare.

## Ordine e Priorità: No!, Giusto Ora

Come facciamo per eliminare questo insidioso bug del nostro Sistema Operativo? Consideriamo questo: ogni volta che c'è un passaggio di stato, detta anche _transizione_, il cervello guarda quali sono i processi disponibili al momento ed assegna a quelli con maggiore priorità le risorse disponibili.

Ad esempio, dopo la transizione casa-lavoro, i processi disponibili sono "Lavorare", "Caffè" e "Facebook". Quali sono i processi che richiedono minor sforzo? "Caffè" e "Facebook". Si possono fare insieme? Si. Ottimo! E Zak. Non ce ne siamo neanche accorti ma il cervello ha fatto partire i due programmi in parallelo, facendoci beccare dal capo alle 10:30 davanti alla macchinetta del caffè ridendo come imbecilli davanti ai video pubblicati dai nostri amici delle elementari.

Per risolvere sfruttiamo lo "stacco" tra una transizione e l'altra per hackerare la procedura fallata di ordinamento e prendere il comando della situazione con una funzione ad altissima priorità chiamata:

**NO!**

"NO!" salta in testa a tutti gli altri programmi perché non ha bisogno di nessuna risorsa, li blocca e ci da il tempo di riordinarli a piacimento.

Arriva una notifica di Facebook sul cellulare? NO! Riordinate, mettete la notifica in coda agli altri processi e andate avanti col vostro lavoro. Un collega vi chiede se avete 5 minuti? NO! Tutto si ferma, riordinate e gli dite di tornare quando avrete finito ciò che stavate facendo.

Ora che avete inserito "NO!" e potete hackerare il programma di ordinamento, quello che vi servono sono altre due funzioni. Una di riordinamento, chiamata "Giusto" e l'altra di esecuzione, chiamata "Ora".

### Giusto

![computer-brain]({{ site.baseurl }}/uploads/2014/11/computer-brain.jpg)"Giusto" è il programma che soppianta la versione bacata dell'ordinamento del nostro cervello, guardando tutti i processi e scegliendo il migliore sulla base della sua appropriatezza. Descritto così sembra difficile, ma ben sappiamo qual'è il giusto processo da eseguire. È quello che da tanto vorremmo fare ma che siamo sempre troppo "indaffarati" per mette in atto.

Solitamente "Giusto" richiede un po' di allenamento per funzionare con la massima efficacia ed efficienza. Per dargli una mano chiedetevi se un processo è _importante_ o _urgente_. È facile dare precedenza ai processi urgenti, come mangiare schifezze per la fretta di sfamarsi o dedicare quei 5 minuti (che poi diventano ore) al collega. Al contrario sono i programmi _importanti_ a dare le soddisfazioni maggiori, come studiare, finire il proprio lavoro, preparare e mangiare cibi sani, fare esercizio, etc.

### Ora

Una volta che "Giusto" ha selezionato il programma, "Ora" lo lancia subito in esecuzione dandogli il massimo delle risorse disponibili. Dovete andare in palestra. Andate in palestra! Non dite "controllo le email e poi vado in palestra". "Giusto" ha fatto il suo dovere e ha scelto il programma più adatto. Quindi riducete le discussioni a zero e mettetelo subito in esecuzione.

Il cervello risente molto dell'inerzia e ha difficoltà a far partire un nuovo processo. Uguale è per i processi in esecuzione che, una volta iniziati, sono più difficili da fermare, se non tramite una transizione. Perché "Ora" funzioni a dovere, dovete ridurre al minimo il tempo di lancio del programma.

![debug]({{ site.baseurl }}/uploads/2014/11/debug.png)

Ripetendo, la nostra patch da implementare è:

**Transizione -> NO! -> Giusto -> Ora**

Tre istruzioni per debuggare il nostro cervello che codificano una major patch chiamata "Buone Abitudini".

Happy bug fixing!

How to Debug Your Brain and Build Better Habits | Via [lifehacker](http://lifehacker.com/how-to-debug-your-brain-and-build-better-habits-1654118579)
