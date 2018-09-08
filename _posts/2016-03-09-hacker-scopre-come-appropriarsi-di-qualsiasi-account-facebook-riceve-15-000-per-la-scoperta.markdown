---
author: thesave
comments: true
date: 2016-03-09 21:30:39+00:00
layout: post
link: http://www.atomodelmale.it/2016/03/09/hacker-scopre-come-appropriarsi-di-qualsiasi-account-facebook-riceve-15-000-per-la-scoperta/
slug: hacker-scopre-come-appropriarsi-di-qualsiasi-account-facebook-riceve-15-000-per-la-scoperta
title: Hacker scopre come appropriarsi di qualsiasi account Facebook, riceve 15.000$
  per la scoperta
wordpress_id: 16594
image: uploads/2016/03/lock_facebook.jpg
categories:
- Facebook
- Sicurezza
- Social Network
tags:
- Facebook
- hacker
---

Un bug di Facebook permette ad un hacker di entrare in qualsiasi account. Facebook tappa la falla in 72 ore e paga 15.000$ l'hacker per la segnalazione.

## Facebuc(ato)

L'hacker in questione, Anand Prakash, ha [recentemente riportato](http://www.anandpraka.sh/2016/03/how-i-could-have-hacked-your-facebook.html) sul proprio sito come, sfruttando la funzione di "Password Dimenticata?" di Facebook, sia possibile entrare nell'account di qualsiasi utente del Social Network.

Se non l'avete mai sperimentata, la funzione di ritrovamento della password funziona così: si clicca su "Password Dimentica?" e si conferma di voler ricevere un codice di 6 cifre sul proprio cellulare o via mail che, alla ricezione, verrà inserito e permetterà di cambiare la propria password ed entrare nel proprio account.

La funzione, implementata allo stesso modo in molti altri siti, è _sicura_ perché il codice in questione ha una validità limitata e viene spedito ai soli diretti interessati (salvo intercettazioni di SMS o mail).

![]({{ site.baseurl }}/uploads/2016/03/facebook_recover.png)

Un eventuale attacco di "forza bruta" potrebbe provare ad indovinare il codice inviato --- tentando tutte le possibili sequenze numeriche --- ma Facebook limita i tentativi disponibili all'utente prima di invalidare il codice.

Quel che Prakash ha scoperto è che la versione beta di Facebook ([beta.facebook.com](http://beta.facebook.com)) non implementa(va) il suddetto limitatore, permettendo perciò di provare un numero illimitato di tentativi finché l'hacker non è riuscito ad entrare "impunemente" nel proprio account.

Dopo aver accumulato [le prove](https://youtu.be/U3Of-jF1nWo) per confermare la propria scoperta, Prakash ha riportato il tutto a Facebook, che ha prontamente tappato la falla e gli ha assegnato 15.000$ come parte del proprio programma di [Bug Bounty Hunting](https://www.facebook.com/whitehat).

A conti fatti, il bug trovato da Prakash è uno dei più eclatanti mai trovati sul Social Network, tanto da poterne compromettere la reputazione a livello globale e 15.000$, a ben pensarci, diventano ben poca cifra in confronto. Per fortuna esistono hacker "buoni" (i cosiddetti [white hats](https://it.wikipedia.org/wiki/White_hat)) che decidono di collaborare con compagnie ed istituzioni per sistemare bug che ne minano la sicurezza. D'altra parte se le "taglie" per il ritrovamento dei bug resteranno così esigue è probabile che altri hacker come Prakash valutino se valga la pena vendere le loro scoperte al miglior offerente (leggi, mercato nero) piuttosto che fare la cosa giusta.
