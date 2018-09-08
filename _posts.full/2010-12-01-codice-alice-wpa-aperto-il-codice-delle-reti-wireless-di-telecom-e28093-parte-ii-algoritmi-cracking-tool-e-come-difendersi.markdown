---
author: thesave
comments: true
date: 2010-12-01 12:39:46+00:00
layout: post
link: http://www.atomodelmale.it/2010/12/01/codice-alice-wpa-aperto-il-codice-delle-reti-wireless-di-telecom-%e2%80%93-parte-ii-algoritmi-cracking-tool-e-come-difendersi/
slug: codice-alice-wpa-aperto-il-codice-delle-reti-wireless-di-telecom-%e2%80%93-parte-ii-algoritmi-cracking-tool-e-come-difendersi
title: Codice Alice WPA, aperto il codice delle reti wireless di Telecom – Parte II
  (algoritmi, cracking tool e come difendersi)
wordpress_id: 8383
categories:
- Informatica
- Informazione
- Internet
- Tech &amp; Hacks
tags:
- Alice
- Reti
- Telecom
- Wireless
- WPA
---

![](http://www.atomodelmale.it/wp-content/uploads/2010/11/wifi-1-300x273.jpg)Riprendiamo il discorso iniziato con l'articolo **[Codice Alice WPA, aperto il codice delle reti wireless di Telecom – Parte I](http://www.atomodelmale.it/2010/11/28/codice-alice-wpa-aperto-il-codice-delle-reti-wireless-di-telecom-parte-i/) **in cui si parlava della sicurezza delle reti wireless di Alice e di come i ragazzi del White Hat Crew siano riusciti ad "aprire" definitivamente il codice di creazione delle password.

Abbiamo visto che tramite il SSID (nome) della rete è possibile recuperare le informazioni necessarie alla creazione della password, queste sono il MAC Address e il Serial Number del router.

**Il MAC Address**

Tramite il r**everse engineering** del firmware dei router è stato possibile individuare come, **partendo dall’indirizzo della propria scheda di rete**, il router stesso generi il nome della relativa rete wireless (SSID).

Eseguendo i passi “al contrario”, si ottiene la parte iniziale dell'indirizzo MAC, che a sua volta può dar vita ad una serie di indirizzi – al massimo 3, quindi ad ogni modo pochi – relativi al router, permettendo così di scoprire **il primo dei due dati necessari** per la creazione della password.<!-- more -->

**Il Serial Number**

Se trovare il rapporto SSID-MAC non ha costituito troppi problemi, **scovare la relazione SSID-SerialNumber ha richiesto più tempo ed energie**.

Solo grazie alla ricerca statistica su una grande quantità di router -- forniti da altrettanti utenti coinvolti nel progetto -- è emersa l’esistenza dei “**numeri magici**” che legano tutti i seriali dello stesso tipo.

La relazione che esiste tra SSID e numeri seriali si rivela essere un’equazione modulare del tipo:


![](http://www.atomodelmale.it/wp-content/uploads/2010/11/Cattura.jpg)


Dove **k** e **Q** corrispondono proprio ai numeri magici di cui sopra.

Tramite il confronto tra i dati relativi ai router con seriali simili, è stato possibile **costituire un database di numeri magici relativi ai vari tipi di seriali**, che permettono d’individuare il “pezzo mancante” del puzzle.

**La password**

L’ultimo passo richiede l’inserimento di MAC e SerialNumber, oltre che di un altro “numero magico”, comune a tutte le reti, come input di un **algoritmo di hash SHA256**, il cui output – una sequenza alfanumerica di 64 caratteri – dovrà essere ritradotto – considerando i primi 48 byte -- in **24 caratteri**, **che costituiscono la password** tanto agognata.

**Esemplificando**

Considerando un generico – inventato dal sottoscritto -- SSID del tipo “Alice-45634212”, si ottiene:



	
  * l’indirizzo MAC “00:23:8E:A4:14:A4”

	
  * dalla prima si ottiene il tipo di seriale “45xxxxxx”, di cui sono ricercabili numeri magici sul database dei seriali:

	
    * k=13 e Q=44751486

	
    * il serial number cercato è “67902X0509509”.





Applicando i dati sull’hash sha256 si ottiene la sequenza:

	
  * “7a4500f500c993a917fa3f542606955fb6cd9e5ea84cfc53…”, di cui se ne prendono i primi 48byte

	
  * tradotti nella sequenza di caratteri “rvla97vv…” rivelano proprio la password della rete wireless.


Sorprendente!

**Cracking Tools**

![](http://www.atomodelmale.it/wp-content/uploads/2010/12/Wuppy2-200x300.png)Se vi siete persi qualche passaggio dell'esempio precedente è più che normale, eseguire un operazione del genere, per un uomo, anche allenato, richiederebbe una giornata, senza considerare errori e distrazioni, al contrario per un elaboratore, avendo i dati relativi all’SSID e la tabella di conversione SerialNumber-MagicNumber diventa un operazione di qualche secondo.

Se state pensando: “cosa trattiene i programmatori dal scrivere un software che fornisca le password delle reti wireless?”, vi informo che di programmi ce ne sono già tanti, tanto per citarne alcuni si annoverano il tool **WPA Security Inspector** o **Alice Wpa Calculator** **per PC** e le applicazioni **per iPhone **– jailbroken – **Wuppy **e **WPA_Finder**.

Ad ogni modo voglio sottolineare che è **ILLEGALE **utilizzare tali software per ottenere i codici delle reti e sfruttarne la connessione, tale pratica **è accesso abusivo ad un sistema informatico**, reato punibile con sanzioni ai sensi dell’articolo **615 **del **codice penale**.

Lo scopo di questo articolo, lo ribadisco, è quello d'informare e spronare i **possessori di reti wireless Alice a cambiare la password delle proprie reti**, utilizzando password di **almeno 24 caratteri**.

**Cambiare la password di Alice**

Questo può essere fatto facilmente, basta:



	
  1. accedere al proprio modem digitando nella barra degli indirizzi del proprio browser l’indirizzo “**192.168.1.1**”;

	
  2. cliccare sul pulsante "**Wi-Fi" **nel menù di sinistra;

	
  3. cliccare su “**Configura Rete Wi-Fi**” in basso al centro;

	
  4. **sostituire la chiave **di cifratura standard con una – non banale – ed inventata da voi.


_Utente avvisato..._
