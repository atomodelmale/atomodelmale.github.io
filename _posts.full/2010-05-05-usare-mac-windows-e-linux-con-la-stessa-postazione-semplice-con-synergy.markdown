---
author: thesave
comments: true
date: 2010-05-05 17:01:00+00:00
layout: post
link: http://www.atomodelmale.it/2010/05/05/usare-mac-windows-e-linux-con-la-stessa-postazione-semplice-con-synergy/
slug: usare-mac-windows-e-linux-con-la-stessa-postazione-semplice-con-synergy
title: Usare Mac, Windows e Linux con la stessa postazione? Semplice, con Synergy!
wordpress_id: 7345
categories:
- Informatica
- Tech &amp; Hacks
tags:
- Condivisione
- Linux
- MacOS
- Windows
---

Siete a casa -- o sul posto di lavoro -- e vi dividete, come un sapiente orchestraio, tra **1000 mouse,** **tastiere  e schermi per comandare altrettanti terminali**?

Siete peggio di [**Rudess**](http://www.youtube.com/watch?v=xgZhiYff7nM)** **affetto da **delirium tremens?**

** **Allora **Synergy **potrebbe essere il software che stavate cercando.

**SI-NER-GIAAAAAA!**

![](http://www.atomodelmale.it/wp-content/uploads/2010/05/logo.jpg)

Il bel softwarino -- open-source e **disponibile **per **Linux**, **Windows **e **MacOsX **-- permette infatti di **condividere lo stesso mouse e tastiera** tra più PC dotati di relativi schermi -- quindi è utile soprattutto se dovete passare di sovente da portatile a fisso e viceversa --, unico requisito: una **connessione ethernet/WiFi tra i due computer**.

Inoltre è stata implementato un **semplice font-end **per gestire la connessione tra i PC oltre alle regole di **"passaggio" del mouse** -- e del focus della tastiera -- tramite il semplice **scorrimento del mouse da una parte all'altra degli schermi** -- vi assicuro che vedere il mouse andare da una parte all'altra è veramente fantastico ;).<!-- more -->

![](http://www.atomodelmale.it/wp-content/uploads/2010/05/synergy-plus-frontpage1-300x162.jpg)Vista la mia labilissima memoria -- uhm... non ricordo cosa volevo dire ... -- scrivo una guida alla configurazione che probabilmente servirà più al sottoscritto che a voi, ma che potrebbe aiutare anche qualcuno là fuori bloccato su qualche passaggio.

**Semplice guida alla configurazione di Synergy attraverso il front-end qSynergy**

Io riporto la mia esperienza -- estremamente positiva -- di interazione** tra Windows 7 e Ubuntu Lucid**, ma immagino che, se non per qualche piccola differenza, funzioni allo stesso modo anche per MacOsX -- i mecchiani non me ne vogliano, anzi, se mi regalano un iMac o un MacBook sarei felice di riceverlo e provare il tutto.

Dunque, innanzitutto il software: dobbiamo scaricare le versioni di **qSynergy **sia per Ubuntu che per Windows, reperibili entrambi nella sezione download della [pagina del progetto](http://www.volker-lanz.de/en/software/qsynergy/).

Scaricate il tutto ed **installate **(ATTENZIONE, mentre con Ubuntu è bastato installare qSynergy per essere operativi, la versione per Windows del front-end richiede anche **l'eseguibile originale di synergy**, reperibile sul relativo [sito](http://synergy2.sourceforge.net/), una volta scaricato anche quello basta installarlo e si è pronti a partire).

A questo punto bisogna **configurare **server e client -- presenti nella stessa interfaccia -- per far comunicare le due macchine, nel mio caso ho scelto di far fare da controllore a Windows, mentre il controllato è Ubuntu.

Procediamo come indicato in figura:

**Windows (Controllore)**


**![](http://www.atomodelmale.it/wp-content/uploads/2010/05/Synergy-e1273071216857.jpg)
**


**Come indicato in figura selezionate**



	
  1. **Use this computer to control others (be a server)**

	
  2. **Interactively configure synergy**

	
  3. **Configure server...** -  a questo punto vi si aprirà l'interfaccia a sinistra, da quella cliccate -- tenendo premito -- sullo schermo in alto a destra e trascinate l'icona a fianco dello schermo centrale

	
    * Prima di passare al prossimo punto selezionate il tab **Advanced server settings** e marcate l'opzione  **Check clients every **lasciando invariato il parametro 5000




	
  4. Ora **d****oppio click** su **uno dei due schermi** -- per comodità ho affiancato le due finestre, ma la configurazione viene fatta una per volta, non fate caso ai nomi, l'importante è segnalare quali sono i Dead Corners dello schermo, cioè dove il mouse si dovrà fermare.


![](http://www.atomodelmale.it/wp-content/uploads/2010/05/Synergy2.jpg)


	
  5. A questo punto cliccate pure su OK nella schermata di Server Configuration e** fate partire il server cliccando su "Start"**. Il controllore è pronto, ora non resta che connettere il controllato ed il gioco è fatto.


**Ubuntu (Controllato)**



	
  1. Il più è fatto, ora non vi resta che configurare il controllato, **fate partire** anche in questo caso **qSynergy **e **mettete l'indirizzo IP del server **(nell'esempio è 192.168.1.100) -- non ho provato col nome assegnato da noi, scusate, ma non ne avevo voglia :P -- nella barra **Name of the server**, cliccando su **Start**




![](http://www.atomodelmale.it/wp-content/uploads/2010/05/Schermata.png)


Se tutto è andato a dovere dovreste già poter controllare mouse e tastiera dal vostro controllore.

**Semplice no?**
