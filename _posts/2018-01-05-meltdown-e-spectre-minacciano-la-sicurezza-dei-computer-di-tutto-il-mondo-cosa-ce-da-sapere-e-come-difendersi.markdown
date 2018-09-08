---
author: thesave
comments: true
date: 2018-01-05 11:34:38+00:00
layout: post
link: http://www.atomodelmale.it/2018/01/05/meltdown-e-spectre-minacciano-la-sicurezza-dei-computer-di-tutto-il-mondo-cosa-ce-da-sapere-e-come-difendersi/
slug: meltdown-e-spectre-minacciano-la-sicurezza-dei-computer-di-tutto-il-mondo-cosa-ce-da-sapere-e-come-difendersi
title: Meltdown e Spectre minacciano la sicurezza dei computer di tutto il mondo.
  Cosa c'è da sapere e come difendersi
wordpress_id: 18877
image: uploads/2018/01/Screen-Shot-2018-01-05-at-12.11.18.png
categories:
- Sicurezza
tags:
- sicurezza informatica
---

Meltdown e Spectre. Anche se James Bond non c'entra, le due falle informatiche recentemente sorte agli onori della cronaca affliggono i principali processori in commercio e minacciano la sicurezza dei sistemi informatici di tutto il mondo.

## Meltdown e Spectre

La [minaccia](https://meltdownattack.com/) riguarda molti dei dispositivi elettronici con cui interagiamo tutti i giorni: dai computer, tablet e smartphone domestici, fino alle mastodontiche server-farm dei colossi del web. Ad essere minacciati in particolare sono i dati che vengono elaborati dal processore: sfruttando una delle due vulnerabilità dai nomi altisonanti, un programma malintenzionato (utilizzato da un altrettanto malintenzionato individuo) può rubare tutte le informazioni che passano dal processore, tra cui password, numeri di carta di credito, cronologia web, immagini e messaggi (email, Whatsapp, Facebook, etc.).

![]({{ site.baseurl }}/uploads/2018/01/meltdown.min_.png)

A rendere particolarmente perniciosi (e scioccanti) Spectre e Meltdown, sono due fattori: il primo è che i due difetti non sono di tipo software ma hardware, quindi innati nell'architettura fisica dei microprocessori Intel, AMD e ARM (e cuore della stragrande maggioranza dei dispositivi elettronici in commercio) e indipendenti dal sistema operativo utilizzato; il secondo è che, dato che le vulnerabilità recentemente esposte affliggono i processori prodotti negli ultimi 20 anni, nulla assicura che queste non fossero già usate nel campo dello spionaggio militare o industriale.

![]({{ site.baseurl }}/uploads/2018/01/spectre.min_.png)

Dal punto di vista tecnico (i diversamente nerd posso saltare il paragrafo :)) le due falle sono diverse, ma raggiungono uno stesso fine: estrarre informazioni da un processo in esecuzione sul processore. Tra i due attacchi, Meltdown (si agevola il [paper(o) scientifico](https://meltdownattack.com/meltdown.pdf) relativo) è quello più "semplice" da portare a termine e sfrutta una falla nella gestione della concorrenza tra l'assegnamento in memoria e il controllo di accesso dei processi. Un programma malintenzionato può quindi sfruttare questo difetto per "infilarsi" tra l'allocazione di memoria e il suo assegnamento al legittimo proprietario, leggendone il contenuto. Sulla scia di Meltdown, Spectre ([papero](https://spectreattack.com/spectre.pdf)) sfrutta l'[esecuzione speculativa](https://it.wikipedia.org/wiki/Esecuzione_speculativa) del processore per inferire informazioni "inutilizzate" dal processo, ma che potenzialmente possono contenere dati sensibili per l'utente.

![]({{ site.baseurl }}/uploads/2018/01/attack.jpg)

A riprova della serietà delle falle, gli esperti che le hanno recentemente esposte hanno confermato come anche i browser che usiamo tutti i giorni (Chrome, Firefox, Safari, etc.) sono soggetti a questa vulnerabilità, includendo nelle pubblicazioni la sintesi dell'esecuzione di un programma Javascript capace di leggere la memoria del browser --- in pratica un sito web malintenzionato potrebbe leggere i dati del vostro browser; per intenderci, immaginate le volte in cui avete tenuto aperti diversi tab insieme, e.g., di Facebook, Paypal, del vostro home banking, etc.

## La cura

Ok, abbiamo capito che le due falle di sicurezza sono "pesanti" ([alla Ritorno al Futuro](https://youtu.be/q78bgSk2vjE)) ma come le "curiamo"? Per fortuna esistono già patch e aggiornamenti vari, almeno per il più "semplice" dei due exploit, Meltdown (Spectre, al contrario, è più "complicato" sia da attuare ma anche da correggere). Dato che entrambi i problemi riguardano delle ottimizzazioni dei processori, gli aggiornamenti in questione hanno sollevato perplessità riguardo al presunto [calo di velocità nell'esecuzione dei programmi](https://www.theregister.co.uk/2018/01/02/intel_cpu_design_flaw/), che si stima possa ammontare addirittura ad un 30% (recentemente [smentito](https://gizmodo.com/spectre-and-meltdown-fixes-arent-actually-gonna-slow-ev-1821787555) dagli esperti di Amazon e Google).

Nella pratica, dal lato dei produttori di microprocessori, Intel ha già pubblicato [aggiornamenti](https://security-center.intel.com/advisory.aspx?intelid=INTEL-SA-00088&languageid=en-fr) per la maggior parte dei processori introdotti negli ultimi cinque anni, ARM ha fornito un elenco dei prodotti vulnerabili e le [patch per Linux](https://developer.arm.com/support/security-update) mentre AMD ha solo [confermato le vulnerabilità](https://www.amd.com/en/corporate/speculative-execution).

Lato sistema operativo, Apple ha corretto la falla in iOS 11.2, macOS 10.13.2. Per Linux è sufficiente aggiornare il kernel alla versione 4.14.11. Android va aggiornato alla patch 2018-01-05. Infine i prodotti Microsoft interessati, quali Edge, Internet Explorer 11, Windows 10, Windows 8.1 e Windows 7 SP1 sono corretti con l'aggiornamento [KB4056890](https://support.microsoft.com/en-us/help/4056890/windows-10-update-kb4056890).

La carrellata si chiude coi (restanti) principali browser, dove Google Chrome deve essere aggiornato alla versione 64 (in uscita stabile il 23 gennaio), Firefox alla versione 57.0.4, mentre Safari non ha ancora un aggiornamento ma dovrebbe essere rilasciato a breve.

Benché i principali dispositivi elettronici con cui interagiamo tutti i giorni dispongano già di aggiornamenti preliminari, restano molti dispositivi vulnerabili, partendo da quelli desueti (ma ancora utilizzati) come smartphone e tablet, fino a sensori, telecamere, smart TV, e le più recenti automobili, il cui aggiornamento diventa più complicato se non impossibile.
