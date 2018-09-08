---
author: thesave
comments: true
date: 2010-11-28 12:20:36+00:00
layout: post
link: http://www.atomodelmale.it/2010/11/28/codice-alice-wpa-aperto-il-codice-delle-reti-wireless-di-telecom-parte-i/
slug: codice-alice-wpa-aperto-il-codice-delle-reti-wireless-di-telecom-parte-i
title: Codice Alice WPA, aperto il codice delle reti wireless di Telecom - Parte I
  (le reti, Alice e il codice)
wordpress_id: 8377
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

Grande fermento nella rete riguardo alla recente – ma neanche troppo – **apertura del codice** di creazione delle password **WPA delle reti Alice**, che cedono il passo, come già fatto dalle loro cugine di **Fastweb**, ma andiamo con ordine.

**Wi-Fi Casalinga**

![](http://www.atomodelmale.it/wp-content/uploads/2010/11/wifi-1-300x273.jpg)Che le connessioni wireless siano diventate il motore della** grande mobilità tecnologica** di quest’ultimo decennio è un fatto assodato, ma se da una parte la smaterializzazione di cavi e spinotti ha favorito connettività, immediatezza e facilità d’uso, dall’altra si pongono seri dubbi – e continui allarmismi – sulla** sicurezza delle reti **e dei dati che transitano su di esse.

Per entrare all’interno di una rete “fisica” – cablata – è necessario avere un accesso “fisico” a quella rete, cioè sfruttare un “cavo” che trasporta i dati che transitano sulla rete stessa. Il discorso si complica quando **il cavo diventa un’onda** – elettromagnetica – ricevibile da tutti i dispositivi: i problemi che emergono riguardano, in particolare, **la sicurezza dei dati, l’identificazione degli utenti e la delimitazione dell’area della rete**.

Lungi dal voler scrivere lungamente su argomenti come sicurezza delle reti, algoritmi di (de)criptazione e compagnia bella, ho deciso di scrivere quest’articolo per due motivi, il primo di carattere puramente **tecnico**, il secondo, derivato dal primo, per **informare gli utenti **delle reti ad una più conscia gestione delle proprie connessioni wireless.<!-- more -->

**Il Codice Alice**

![](http://www.atomodelmale.it/wp-content/uploads/2010/11/alice_adsl-242x300.jpg)Ricordo che qualche anno fa, quando passai da Fastweb ad Alice, notai che il modem/router consegnatomi in comodato d’uso, l’**Alice Gate VoIP 2 Plus Wi-Fi**, non permetteva di cambiare la password della rete wireless generata autonomamente; fatto strano, che portò il sottoscritto ed alcuni suoi colleghi universitari a varie e **prolifiche discussioni** riguardo alla sicurezza di questa pratica, riassumibili in una frase del tipo:

“Ok, la password WPA di Alice è una AES a 256 bit di 24 caratteri alfanumerici, quindi difficilmente apribile tramite i metodi convenzionali, ma** se venisse trovata una relazione che lega** i router, **i nomi (SSID)** delle reti wireless **e le password **generate, basterebbe un semplice algoritmo per aprire tutte le reti wireless di Alice!”

Ovviamente le nostre rimasero solo semplici elucubrazioni di studenti, soprattutto concordando unanimemente sul fatto che sarebbero state necessarie ore e ore di studio su grandi quantità di dati come SSID, password, etc., relative ai router.

La cosa era fattibile, disponendo di tempo, dati e delle persone giuste e sarebbe stato possibile **inferire una relazione** tra di essi ed aprire il “Codice Alice”, dando libero accesso a qualsiasi persona alle reti casalinghe di Telecom, che, di fatto, costituiscono il **70% di tutte le connessioni wireless ADSL d’Italia**.

Devastante, non trovate?

**White Hats Crew**

![](http://www.atomodelmale.it/wp-content/uploads/2010/11/ty-300x219.png)Ovviamente il sottoscritto non è certo un genio dell’informatica, e se l’idea era venuta a me, sicuramente doveva aver **solleticato l’intelletto inquisitorio **di personaggi con tempo, capacità e voglia per affrontare il problema.

È qui che entrano in gioco i ragazzi della **White Hats Crew** – white hat, cappello bianco, in informatica identifica gli hacker etici, cioè coloro che hanno le conoscenze per trovare falle e problemi nella sicurezza dei sistemi informatici, ma scelgono di esporre tali informazioni per correggere tali errori, invece di sfruttarli per fini illeciti.

Tramite** osservazioni statistiche su indirizzi MAC, SSID, numeri seriali e password**, riescono a individuare una relazione tra di essi.

**Breaking the Code**

Tutto quello che è necessario per trovare il codice della rete **è contenuto nel suo nome di rete**, che è sempre del tipo “**Alice-XXXXXXXX**”, cioè comporto dal prefisso “Alice-“, che indentifica tutte le reti Telecom, e un numero di otto cifre.

Tale numero è divisibile in due parti, del tipo: XX-XXXXXX, **le prime due cifre (XX) corrispondono alla prima parte del codice seriale del router**, mentre il codice completo permette di individuare sia il MAC address della scheda di rete del router, sia il resto del codice seriale.

Continua con **[Codice Alice WPA, aperto il codice delle reti wireless di Telecom - Parte II](http://www.atomodelmale.it/2010/12/01/codice-alice-wpa-aperto-il-codice-delle-reti-wireless-di-telecom-%E2%80%93-parte-ii-algoritmi-cracking-tool-e-come-difendersi/)**
