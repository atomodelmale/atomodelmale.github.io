---
author: thesave
comments: true
date: 2012-08-30 09:35:50+00:00
layout: post
link: http://www.atomodelmale.it/2012/08/30/da-hdd-a-ssd-guida-alla-migrazione-del-sistema-operativo-da-hard-disk-a-solid-state-disk-parte-ii/
slug: da-hdd-a-ssd-guida-alla-migrazione-del-sistema-operativo-da-hard-disk-a-solid-state-disk-parte-ii
title: Da HDD a SSD, guida alla migrazione del sistema operativo da Hard Disk a Solid
  State Disk - Parte II
wordpress_id: 11962
image: uploads/2012/08/HDD-to-SSD.jpg
categories:
- Informatica
tags:
- Linux
- MacOS
- Windows
---

Parte conclusiva dell'articolo [Da HDD a SSD, guida alla migrazione del sistema operativo da Hard Disk a Solid State Disk - Parte I](http://wp.me/pl33w-36U).

Pronti, ai posti, migrate!

**Migrazione che fai, Software che trovi**

Ad oggi esistono una buona quantità di programmi per facilitare la migrazione dal vecchio HDD al SSD e nelle mie prove ho avuto modo di testarne sia di commerciali che free.

Tra le soluzioni commerciali più usate si annoverano:

	
  * EaseUS Partition Master;

	
  * Acronis Disk Director;

	
  * Acronis Migrate Easy;

	
  * **Paragon Hard Disk Manager**.

![]({{ site.baseurl }}/uploads/2012/08/gparted.png)

Mentre tra quelle free una su tutte è **[GParted](http://gparted.sourceforge.net/livecd.php) ** che da il nome ad un [LiveCD](http://it.wikipedia.org/wiki/Live_CD) dedicato.

Personalmente mi sono trovato molto bene con 2 software, il primo è sicuramente **GParted** che, oltre ad essere **free**, permette di copiare e modificare qualsiasi tipo di filesystem -- dall'FAT/NTFS di Windows all'HFS di MacOS fino agli Ext di Linux -- mentre come soluzione commerciale ho trovato quella offerta da Paragon -- con il già citato **Paragon Hard Disk Manager** (PHDM) -- la più completa, duttile ed efficace, in quanto capace persino di creare una migrazione "Ad-Hoc" del sistema operativo con tanto di driver, pronta per essere accolta in un nuovo computer -- quindi non solo nuovo disco, ma anche e soprattutto processore, scheda madre e video.

![]({{ site.baseurl }}/uploads/2012/08/Paragon-Hard-Disk-Manager.jpg)

Il mio consiglio è**partire con la soluzione di facile reperimento e free proposta da GParted**, che nella maggior parte dei casi sarà sufficiente, mentre se si presenta la necessità di qualcosa di più complesso e completo -- tipo il succitato passaggio di macchine, oltre che di disco -- ritengo che PHDM possa fare al caso vostro.

Una volta ottenuto il disco live di vostro gradimento è finalmente arrivato il tempo di effettuare la nostra sacrosanta migrazione.

**Migra tu che migro anch'io**

Indipendentemente dal software scelto per effettuare la migrazione, la procedura di migrazione si può ridurre in tre fasi:

	
  * **Creazione della partizione di destinazione sul nuovo disco.**

	
  * **Riduzione dello spazio della partizione di origine per addattarsi al nuovo supporto.**

	
  * **Copia blocco-a-blocco dei dati dalla partizione di origine a quella di destinazione.**

La totalità dei software sopra citati realizza -- con procedure diverse, ma simili -- queste tre fasi tramite **un'unica e semplice operazione guidata**, che prende per mano l'utente chiedendogli semplicemente origine e destinazione dei dati, accollandosi l'onere di partizionare, ridurre e copiare il tutto. Comodo no?

![]({{ site.baseurl }}/uploads/2012/08/HDD-to-SSD.jpg)

L'operazione richiederà un certo tempo, che è direttamente proporzionale alla quantità di dati da copiare. **Lasciate che il programma faccia il suo sporco lavoro e fatevi una salutare passeggiata all'aperto**. Alla fine verrete informati della riuscita -- o meno, _tangeums_ -- dell'operazione.

Se tutto è andato bene dovreste avere il vostro sistema operativo copiato sul vostro SSD pronto per ripartire, quel che vi resta da fare e **impostare il vecchio HDD come disco secondario** -- non di boot -- e **riavviare la macchina** -- se volete potete cancellare la partizione del sistema operativo ed estendere la partizione contente i dati a tutto l'HDD con gli stessi software citati in precedenza.

**Ciliegine sulla torta, a manciate**

![]({{ site.baseurl }}/uploads/2012/08/gpartedalignment.jpg)

Benchè possiate ritenervi soddisfatti del lavoro testè ultimato, ci sono una serie di accorgimenti, comuni ai vari sistemi operativi, che aiutano ad **ottenere il massimo dal proprio SSD**, due delle principali sono il riallineamento della partizione e l'abilitazione del comando TRIM.

	
  * **Riallineare la partizione**: cambiando la tecnologia di immagazzinamento cambia anche il tipo di **allineamento dei blocchi** delle partizioni che, dal disco alla memoria a stato solido, richiede un piccolo "tweak" per ottimizzarne le performance. In questo caso torna utile il succitato **GParted**. Quel che è necessario fare, per riallineare la partizione sul SSD, è ridurre la partizione del sistema operativo, **lasciando uno spazio inutilizzato di 2MB (2048Kbyte) prima della partizione** -- "Free space preceding (MiB)" -- selezionando l'opzione "**Round to MiB**".

	
  * **Abilitare la funzione di TRIM**: l'abilitazione del **comando TRIM **è presente in tutti i sistemi operativi più recenti da Linux a MacOS fino a Windows 7. Lo scopo di TRIM è garantire una velocità costante dell'SSD durante il proprio ciclo di vita grazie alla "collaborazione" -- passatemi il termine -- tra sistema operativo e controller del SSD. Mentre installando il sistema operativo "ex novo" l'opzione TRIM viene abilitata autonomamente, con la migrazione è l'utente che deve procedere ad abilitarlo.

	
    * In **Windows**: aprite una console (Tasti "Win+R"->scrivete "cmd" -> Tasto Invio) e scrivete:

    
    fsutil behavior query DisableDeleteNotify

se la risposta al comando sarà diversa da:

    
    DisableDeleteNotify=0

inserite il comando:

    
    fsutil behavior set disablenotify 0

che provvederà ad abilitare la funzione di TRIM.

	
    * In **MacOs**: come al solito gli utenti Mac hanno la "pappa pronta" ed un programmino caruccio-carino da scaricare con un semplice interruttore stile iOS per abilitare la funzione di TRIM. Il nome del programma? [Trim Enabler](http://www.groths.org/?page_id=322), elementare.

	
    * In **Linux**: non basterebbe un articolo a parte per descrivere i vari modi per abilitare la funzione di TRIM sulle centinaia di distro di linux. Soluzione? Googolare "Nome della vostra distro + Enable TRIM". Del resto un vero linuxaro è ben abituato a ricerche del genere :)

Ora che avete ultimato la procedura di migrazione ed avete ottimizzato le impostazioni del sistema operativo per il nuovo disco, godetevi le prestazioni del vostro Super Speed Disk.

Vrooooom!
