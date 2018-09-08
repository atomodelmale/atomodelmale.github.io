---
author: thesave
comments: true
date: 2013-11-25 18:00:49+00:00
layout: post
link: http://www.atomodelmale.it/2013/11/25/guida-come-recuperare-spazio-su-disco-cancellando-i-file-di-aggiornamento-windows-xp-vista-7-8-e-8-1/
slug: guida-come-recuperare-spazio-su-disco-cancellando-i-file-di-aggiornamento-windows-xp-vista-7-8-e-8-1
title: Guida come recuperare spazio su disco cancellando i file di aggiornamento.
  Windows XP, Vista, 7, 8 e 8.1
wordpress_id: 13999
categories:
- Informatica
tags:
- Windows
---

![update_icon](http://www.atomodelmale.it/wp-content/uploads/2013/11/update_icon-238x300.jpeg)Un sistema operativo non è mai "a prova di bug" e da quando hanno inventato l'InterWeb - ma anche [prima](http://en.wikipedia.org/wiki/List_of_software_bugs) - la corsa al rappezzamento di falle è diventata serratissima. Microsoft non è da meno e tra hotfix, patch, update ed upgrade più o meno opzionali cerca di mantenere i propri sistemi operativi (ad oggi 5 da XP -- supportato fino ad aprile 2014 -- fino al neonato Windows 8.1) aggiornati.

![windows_xp_updates](http://www.atomodelmale.it/wp-content/uploads/2013/11/windows_xp_updates-300x225.png)Tutto di guadagnato per l'utente considerando che, per le impostazioni automatiche, gli aggiornamenti vengono scaricati ed installati automaticamente. Inoltre per garantire la reversibilità degli aggiornamenti -- la possibilità di rimuoverli e ripristinare il sistema allo stato precedente -- il sistema si salva una copia dei file coinvolti in ogni aggiornamento. Se l'utente ne richiedere la disinstallazione, i file dell'aggiornamento verranno cancellati e quelli originali ripristinati. Ciò non è un problema se avete un disco da 500 e rotti GB, ma coi nuovi hard disk a stato solido e i sistemi più vecchi potrebbero gioire nel recuperare oltre un giga di spazio occupato dagli aggiornamenti.

Di seguito vediamo come recuperare lo spazio occupati dai backup degli aggiornamenti dei vari sistemi operativi Microsoft.

ATTENZIONE: se volete conservare la possibilità di disinstallare gli aggiornamenti non procedete perché le procedure descritte di seguito cancellano i file di disinstallazione degli aggiornamenti.



## Windows XP


![removexpupdate-updateremover](http://www.atomodelmale.it/wp-content/uploads/2013/11/removexpupdate-updateremover-300x192.png)Le opzioni per liberare lo spazio occupato su XP sono 2: [Windows XP Update Remover](http://www.tech-pro.net/windows-update-remover.html) e [CCleaner](https://www.piriform.com/ccleaner/download).

Il primo è uno strumento creato all'uopo per disinstallare gli update -- quindi per ripristinare il sistema allo stato precedente -- e per rimuovere i suddetti file di backup. Il secondo invece è un noto programma di pulizia dei sistemi operativi Microsoft che, tra le altre cose, permette la rimozione dei file di aggiornamento selezionando la voce hotfix uninstallers -- o disinstallatiori aggiornamenti di WinUpdate in italiano.


## Windows Vista


![windowsvista_removeupdates](http://www.atomodelmale.it/wp-content/uploads/2013/11/windowsvista_removeupdates-209x300.jpg)Il bistrattato -- a ragione? -- Vista non gode di uno strumento apposito per liberare lo spazio occupato dai backup, ma esiste comunque una procedura "sicura" per sbarazzarsi degli uninstaller degli aggiornamenti.

Avviate la Pulizia Disco (Start, Programmi, Accessori, Utilità di Sistema, Pulizia Disco), cliccate sul tab "Altre Opzioni" e nel riquadro "Ripristino configurazione di sistema e Copie Shadown" cliccate sul bottone "Esegui Pulizia". La procedura cancellerà tutti i backup degli aggiornamenti precedenti, creando un unico punto di ripristino.


## Windows 7


Con un recente aggiornamento -- ironia della sorte -- Microsoft ha aggiunto la voce "Windows Update Cleanup" alle opzioni della Pulizia Disco. Nel caso non l'abbiate ancora installato, potete recuperare l'aggiornamento [sul sito di Microsoft Update](http://support.microsoft.com/kb/2852386/it-it). Dopo l'installazione avviate la Pulizia Disco (stesso percorso indicato sopra per Vista), selezionate la voce "Windows Update Cleanup" ed avviate la procedura di pulizia.


## Windows 8 e 8.1


Windows 8 e 8.1 nascono già con l'opzione "Windows Update Cleanup" nella Pulizia Disco. Anche in questo caso dovete avviate la procedura di pulizia disco -- un modo veloce per farlo è premere i tasti _Win+R_ e scrivere _cleanmgr_ nella barra che apparirà, cliccando poi su esegui -- e selezionate la voce "Windows Update Cleanup".

Buona pulizia!
