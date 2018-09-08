---
author: thesave
comments: true
date: 2012-09-30 11:45:00+00:00
layout: post
link: http://www.atomodelmale.it/2012/09/30/i-principali-gestori-di-pacchetti-per-windows-aspettando-windows-store/
slug: i-principali-gestori-di-pacchetti-per-windows-aspettando-windows-store
title: I principali gestori di pacchetti per Windows - Ninite, Chocolately e Soft2Base
  - aspettando Windows Store
wordpress_id: 12100
image: uploads/2012/09/Windows-Store.jpeg
categories:
- Informatica
tags:
- Windows
---

App Store, un concetto che fino a poco tempo fa era impensabile, oggi è la quotidianità. Ci hanno pensato i dispositivi mobili a far apprezzare al grande pubblico la disponibilità di un marketplace sul quale acquistare -- gratuitamente o dietro compenso -- applicazioni per i propri sistemi.

E se iOS prima e Android poi hanno spianato la strada, ora tocca ai sistemi operativi desktop dotarsi di uno (o più) marketplace che renda semplice cercare, installare e mantenere aggiornate le proprie applicazioni.

**Da Synaptic al Mac App Store**

Nato negli ambienti Linux, il concetto di "**pacchettizzazione"** ha trovato la propria evoluzione in programmi come **Synaptic** -- per Debian e derivate --, che hanno reso molto più semplice la vita di chiunque avesse bisogno di un'applicazione funzionante in pochi minuti.

Stesso concetto vale, ad anni di distanza, per il relativamente recente **Mac App Store** che, sulla falsa riga dell'**App Store** per **iOS,** permette l'acquisto, il download e l'installazione di applicazioni sui Mac della Mela. Certo, il concetto che Apple ha di un "mercato delle applicazioni" è ben lontano dai concetti liberali di uno Smith qualunque, ma almeno il servizio fa esattamente ciò che promette.

**E Windows?**

![]({{ site.baseurl }}/uploads/2012/09/Windows-Store.jpeg)

Al solito **Microsoft** fa uscire una soluzione "half-baked" -- cotta a metà -- sperando di **cavalcare l'onda**, finendone, altrettanto solitamente, **travolta.**

Ci ha provato prima con **Windows Marketplace**, naufragato in appena un anno, poi ancora con il **Windows Marketplace for Mobile** per i **Windows Phone** diventato in seguito il **Windows Phone Marketplace**. Il tutto per dare una mano agli utenti ad orientarsi meglio... nevvero?!

In questo marasma di nomi e progetti che si aprono e chiudono nel tempo di un respiro, arriviamo al **Windows Store**, lanciato a fine 2011 e disponibile, integrato nei sistemi operativi Microsoft, con la nuova ed imminente versione di **Windows** (**8**).

E chi ha Windows 7?

Ciccia!

E invece no perché se la fame aguzza l'ingegno, la necessità sprona il programmatore e, anche per Windows, sono nati alcuni progetti interessanti per l'**installazione unattended** -- senza l'intervento dell'utente --, il **controllo** e **l'aggiornamento automatico** dei programmi per i sistemi Microsoft.

Non proprio un "App Store", ma chi si acconteta...

Vediamo i principali.

**Ninite**

![]({{ site.baseurl }}/uploads/2012/09/Ninite.png)

**Il più leggero e veloce**, ma anche il meno ricco e versatile tra gli installer.

Basta **andare sul sito** [http://ninite.com/](http://ninite.com) **selezionare  i programmi** disponibili da installare/aggiornare e scorrere la pagina fino in fondo dove, cliccando sul bottone "**Get Installer**", si viene rimandati alla schermata di download del nostro personale "ninite".

Una volta scaricato basta **lanciare l'installatore** e al resto penserà lui, controllando se i programmi sono già installati ed aggiornati e ultimando la procedura autonomamente.

Personalmente uso Ninite ogni volta che devo installare uno dei programmi della sua lista e, soprattutto, **quando devo configurare un nuovo computer**, risparmiando ore di prezioso tempo che al contrario perderei scaricando i singoli installer e cliccando per la 10.000esima volta sul tasto **"Next".**

Oltre che per la prima installazione, l'installer di Ninite può essere conservato e lanciato di quando in quando e funzionare come un **controllore di aggiornamenti** che, anche in questo caso, vengono installati in completa autonomia.

**Chocolately**

[![]({{ site.baseurl }}/uploads/2012/09/Chocolately.png)

Chocolately](http://chocolatey.org/) è ciò che più si allontana dal concetto di semplice "installer", proponendosi come un vero e proprio **package manager**, tanto caro agli amici Linuxari là fuori.

Quindi, per ora, **scordatevi interfacce grafiche** carine carucce e preparatevi ad immergergi nella "matrice". Chocolately è un **programma eseguibile a linea di comando** -- console, shell, terminale, vattelapesca -- che con due semplici istruzioni vi consentirà di installare tutto il software -- presente nel suo archivio -- che volete.

Ma andiamo con ordine, prima di tutto è necessario **installare Chocolately** sulla vostra macchina, operazione che, fin dal principio, viene fatta a linea di comando, quindi apritene una -- es. Win+R, "cmd" e Invio -- e copiate l'istruzione scritta sotto:

    
    <code>@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('http://bit.ly/psChocInstall'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin </code>

Alla fine dell'installazione Chocolately sarà installato nel sistema e potrete usarlo per installare/aggiornare tutto quello che vi serve con appena due istruzioni. Ad esempio, poniamo il caso che vogliate **installare** [VLC](http://www.videolan.org/vlc/); nulla di più semplice, aprite la console e scrivete:

    
    <code>cinst vlc</code>

il resto lo farà Chocolately e dopo pochi minuti vi troverete VLC installato nel sistema. Stessa cosa per Google Chrome:

    
    <code>cinst googlechrome</code>

Dalla sua Chocolately ha una quantità sporositata di programmi -- al momento oltre i 400, ma il numero sta salendo in fretta --, ma è senz'altro quello **meno "user-friendly"**, proprio perché pensato per essere utilizzato da professionisti -- o presunti tali -- per velocizzare i processi di setup delle macchine.

**Soft2Base**

![]({{ site.baseurl }}/uploads/2012/09/Soft2Base.png)

Un buon compromesso tra il veloce Ninite e il completo Chocolately è [Soft2Base](http://www.soft2base.com/).

Come per Ninite, basta **scaricare il programma** e lanciarlo -- non richiede un'installazione --, ci si presenterà una semplice e minimale interfaccia grafica con la quale è possibile **selezionare i pacchetti**, divisi per tipologia, da installare e controllare. In più è possibile specificare alcune opzioni interessanti -- di cui Ninite deficita -- come **abilitare/disabilitare l'installazione "silenziosa"**, definire la **lingua di installazione** delle applicazioni, etc.

Infine, grazie al salvataggio delle liste è possibile avviare -- perfino da linea di comando -- **Soft2Base** in modo che **periodicamente controlli e installi** -- sempre silenzionsamente -- **l'aggiornamento** dei nostri programmi preferiti.

E voi, che installer usate?
