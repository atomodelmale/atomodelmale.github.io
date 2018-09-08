---
author: thesave
comments: true
date: 2017-10-30 21:00:48+00:00
layout: post
link: http://www.atomodelmale.it/2017/10/30/krack-a-rischio-le-reti-wi-fi-di-tutto-il-mondo-ecco-come-difendersi/
slug: krack-a-rischio-le-reti-wi-fi-di-tutto-il-mondo-ecco-come-difendersi
title: KRACK, a rischio le reti Wi-Fi di tutto il mondo, ecco come difendersi
wordpress_id: 18649
categories:
- Internet
- Sicurezza
tags:
- sicurezza informatica
- Wi-Fi
---

La news ha fatto capolino sulle pagine delle principali testate di settore, spuntando qua e là anche sui giornali e TG generali: un ricercatore dell'Università di KU Leuven, Belgio, [Mathy Vanhoef](https://www.eff.org/deeplinks/2017/10/krack-vulnerability-what-you-need-know), ha scoperto una vulnerabilità del protocollo di sicurezza Wi-Fi più usato al mondo, il WPA2. In soldoni, sfruttando tale vulnerabilità, un malintenzionato può rubare informazioni sensibili come i numeri di carta di credito, le password, i messaggi di chat, le email, le foto e così via, arrivando addirittura a iniettare e manipolare i dati in transito.

Se leggendo vi è venuto l'impulso di staccare il vostro router Wi-Fi e buttarlo nell'immondizia, aspettate.

Non è la [prima volta](http://www.atomodelmale.it/2010/11/28/codice-alice-wpa-aperto-il-codice-delle-reti-wireless-di-telecom-parte-i/) (e probabilmente non sarà neanche l'ultima) che gli standard di sicurezza (Wi-Fi, Web, etc.) si rivelano "bucati". Tanto che la continua caccia alla vulnerabilità e alla relativa "cura" sono alla base di un fervente mercato globale fatto di agenzie governative, gruppi di hacker e compagnie di sicurezza.



Soprannominata KRACK (acromino di Key Reinstallation Attacks), la vulnerabilità trovata dal ricercatore belga interessa diversi protocolli di sicurezza comuni per Wi-Fi, inclusi i recenti e diffusi WPA e soprattutto WPA2. La portata della notizia è mondiale, dato che potenzialmente colpisce miliardi di dispositivi, molti dei quali difficili da aggiornare tempestivamente e che, loro malgrado, rimarranno vulnerabili per molto tempo.

La vulnerabilità va però considerata coi dovuto (seppur minimi :)) tecnicismi, per capirne la portata. Infatti, benché KRACK permetta effettivamente ad un malintenzionato esperto (rimarco, molto esperto) di "pescare" e possibilmente modificare il traffico Wi-Fi, questo non inficia sulla sicurezza del traffico criptato, come lo è quello HTTPS; lo standard usato nella stragrande maggioranza di siti che gestiscono informazioni sensibili, da Facebook a Google, passando per banche, fascicoli sanitari e le poste.

![](http://www.atomodelmale.it/wp-content/uploads/2017/10/https.png)

Se da una parte la sicurezza "a cipolla" dei moderni servizi digitali pone un freno agli affetti di KRACK, dall'altra è necessario approntare contromisure e applicare i necessari aggiornamenti per evitare che malintenzionati possano introdursi e provocare danni in reti che gestiscono i dati di migliaia di utenti --- immaginate, oltre al caso aziendale, a ospedali, strutture di polizia o militari, etc.

Da quanto rivelato, la vulnerabilità utilizzata da KRACK è insita all'interno di WPA/WPA2, per cui lo standard dovrà essere aggiornato e tale aggiornamento, per funzionare, richiede che tutti i dispositivi collegati alla stessa rete (router, smartphone, tablet, computer, etc.) siano portati alla stessa, nuova versione.

Probabilmente tale aggiornamento, soprattutto per i dispositivi più vecchi, faticherà ad arrivare dai produttori e, anche se disponibile, difficilmente i miliardi di dispositivi presenti in piccole o medie aziende e a casa dei privati verranno aggiornati/rimpiazzati velocemente.

Aggiornamenti a parte, quello che si può fare al momento è prediligere sempre connessioni sicure (e.g., quelle che usano HTTPS), possibilmente utilizzando una VPN per crittografare tutto il traffico generato e limitare il più possibile la portata del segnale della propria Wi-Fi (ad esempio, al perimetro della propria casa) per evitare che malintenzionati esterni possano trovare facilmente luogo e tempo per "bucarne" la sicurezza.
