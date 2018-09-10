---
author: thesave
comments: true
date: 2016-03-07 08:16:45+00:00
layout: post
link: http://www.atomodelmale.it/2016/03/07/estorsioni-informatiche-primo-ransomware-che-blocca-i-dati-degli-utenti-mac/
slug: estorsioni-informatiche-primo-ransomware-che-blocca-i-dati-degli-utenti-mac
title: 'Estorsioni informatiche: primo ransomware che blocca i dati degli utenti Mac'
wordpress_id: 16588
image: uploads/2016/03/cryptolocker-notice.png
categories:
- Informatica
- Sicurezza
tags:
- Apple
- ransomware
- Virus
---

La notizia ha scosso i pilastri dell'Internet: anche i Mac sono soggetti ai [ransomware](/2015/12/28/estorsioni-informatiche-in-aumento-per-avere-indietro-i-propri-dati-ecco-come-evitare-i-ransomware.html), i programmacci che quatti quatti vi bloccano i file e richiedono un riscatto di centinaia di euro per riaverli indietro.

[L'annuncio](http://researchcenter.paloaltonetworks.com/2016/03/new-os-x-ransomware-keranger-infected-transmission-bittorrent-client-installer/) arriva da Palo Alto Networks, sorprendendo gli utenti di Apple che finora si ritenevano in un isola felice rispetto ai possessori di sistemi Windows: i più bersagliati da questo tipo di attacchi.

Ma gli utenti Mac non corrano ai ripari e ai vari fasciamenti di testa pre-caduta. Sebbene sia il primo report di un ransomware per Mac, vanno fatte alcune importanti distinzioni.

Nel caso specifico, il ransomware di cui parliamo si installa di nascosto insieme al client open-source per BitTorrent Transmission, reperibile nella giornata di Venerdì 5 (oggi già rimossa) sul sito del progetto. Questo vuol dire che l'applicazione non si installa da quella gabbia dorata che è l'App Store, ma che è l'utente ad andare a cercare l'installer, a scaricarlo e farlo girare sul proprio Mac.

![]({{ site.baseurl }}/uploads/2016/03/transmission_001.png)

Di positivo quindi c'è che il programma non arriva per mail e non viene eseguito all'insaputa dell'utente, cosa che invece accade su Windows, costituendone il principale vettore e motivo di diffusione.

![]({{ site.baseurl }}/uploads/2016/03/transmission_002.png)

Dato che l'installer incriminato era liberamente accessibile da tutti, la Palo Alto Networks ha impiegato poche ore per individuarlo e riportarne la pericolosità sia agli utenti che agli sviluppatori, che hanno confermato l'hacking del proprio sito e la pubblicazione di una versione fraudolenta del proprio software.

L'allarme va quindi ridimensionato ma non perde di importanza: che usiate Windows, Mac o Linux, se avete dei dati importanti, procuratevi un hard-disk esterno (si trovano hard-disk da 1TB sotto i 100€) e fate una copia dei vostri dati 1 volta a settimana. Una volta eseguita la copia staccate fisicamente l'hard-disk dal computer. Se vi accorgete della presenza di un ransomware (e.g., vedete la schermata di richiesta del riscatto) non riattaccate l'hard-disk di backup perché il ransomware può criptare anche quei dati. Ripristinate il computer (o portatelo in assistenza) e solo allora riattaccate il disco per ritrovare i vostri dati.
