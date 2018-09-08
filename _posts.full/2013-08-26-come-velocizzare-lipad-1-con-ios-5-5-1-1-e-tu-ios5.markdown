---
author: thesave
comments: true
date: 2013-08-26 19:10:05+00:00
layout: post
link: http://www.atomodelmale.it/2013/08/26/come-velocizzare-lipad-1-con-ios-5-5-1-1-e-tu-ios5/
slug: come-velocizzare-lipad-1-con-ios-5-5-1-1-e-tu-ios5
title: Come velocizzare l'iPad 1 con iOS 5 (5.1.1) e TU-iOS5
wordpress_id: 13733
categories:
- Informatica
---

## Non è un iOS per vecchi


![old iPad](http://www.atomodelmale.it/wp-content/uploads/2013/08/old-iPad-279x300.jpg)Capostipite della fortunata progenie dei tablet Apple, anche il primo, glorioso, iPad è destinato ad una veloce quantomeno inesorabile obsolescenza. Il supporto per il dispositivo si è fermato all'ultima release di iOS 5 (5.1.1) -- quindi niente app che richiedono iOS successivi -- e a peggiorare le cose ci si è messa Apple che non si è sprecata ad ottimizzare il sistema operativo per il dispositivo. Risultato: gli iPad 1 che montano iOS 5 risentono di forti rallentamenti e continui crash che ne compromettono l'utilizzo. Qualche lingua maligna direbbe che lo si sia fatto per spingere gli utenti a comprare l'ultimo iPad in commercio, ma noi non siamo maliziosi e preferiamo rimboccarci le maniche per riportare il nostro tablet preferito ai fast(i) di un tempo.


## Velocizzare l'iPad 1 con jailbreak e TU-iOS5




### Tabula Rasa


![iTunes](http://www.atomodelmale.it/wp-content/uploads/2013/08/iTunes-200x300.jpg)

Anche se avete già aggiornato all'ultima versione supportata (la 5.1.1) il vostro iPad 1, il consiglio generale è sempre quello di partire da una versione pulita del sistema operativo. In questo modo si evita il rischio che le impostazioni delle precedenti installazioni possano generare rallentamenti. Stessa storia per il ripristino dei backup che potrebbero portare a risultati analoghi. Se potete permettervi di spendere qualche minuto in più per reimpostare il sistema operativo ex-novo e reinstallare le applicazioni, una bella tabula rasa è quello che fa per voi (e il vostro tablet).

Se non lo avete mai fatto, potete seguire la guida di Apple per il [ripristino del dispositivo](http://support.apple.com/kb/HT1414?viewlocale=it_IT). Una volta reinstallato l'iOS 5 all'ultima versione, seguite la procedura guidata di impostazione come nuovo iPad fino all'usuale schermata home.


### Jailbreak


![cydia-logo](http://www.atomodelmale.it/wp-content/uploads/2013/08/cydia-logo-300x300.jpg)Ora che abbiamo il nostro iPad pulito, abbiamo bisogno di jailbreakarlo per installarci Cydia, che a sua volta ci permetterà di installare MobileTerminal e TU-iOS5, le due applicazioni che serviranno per "ringiovanire" il nostro iPad. Il web pullula di guide al jailbreak, io vi rimando all'esaustiva [guida di iSpazio](http://www.ipadevice.com/ecco-come-eseguire-il-jailbreak-untethered-di-tutti-i-dispositivi-ios-5-1-1-tramite-redsn0w-0-9-12b1-139266). Prima di passare allo step successivo, assicuratevi che, alla fine del processo di jailbreak, ci sia l'icona di Cydia nella schermata home dell'iPad.


### Installare MobileTerminal e TU-iOS5


![MobileTerminal](http://www.atomodelmale.it/wp-content/uploads/2013/08/MobileTerminal-300x225.jpg)Se non avete mai usato Cydia, date un'occhiata ad [una guida](http://www.iphoneitalia.com/cosa-e-cydia-come-si-utilizza-344446.html) su come installare un'applicazione presente tra i repository. Cercate ed installate MobileTerminal. L'app è un emulatore di terminale -- quello che i più chiamano erroneamente "DOS" -- che servirà per eseguire TU-iOS5, uno script di ottimizzazione (tweaking) testuale. Una volta installato MobileTerminal passiamo all'installazione del suddetto script.

Per farlo dobbiamo aggiungere ai repository di Cydia quello di Insanelyi. Per aggiungere il "repo", andate su Cydia, cliccate su "Gestione", "Sorgenti", cliccate sul pulsante "Modifica" e su "Aggiungi". Quando apparirà il campo di inserimento dell'indirizzo mettete `http://repo.insanelyi.com` e cliccate su "Ok". Cydia vi avviserà del possibile contenuto "pericoloso" del repository. Non preoccupatevi e cliccate su "Aggiungi lo stesso". Cydia scaricherà la lista dei pacchetti disponibili. Al termine della procedura cliccate sul pulsante di conclusione e tornate nella sezione di "Ricerca", cercate "TU-iOS5" e installatelo.


### Eseguire TU-iOS5


Al termine dell'installazione di TU-iOS5, potete uscire da Cydia e avviare MobileTerminal per seguire la procedura di ottimizzazione del vostro iPad. Una volta nella schermata testuale di MobileTerminal, scrivete il comando `su` e premete invio per ottenere i permessi da amministratore. MobileTerminal vi chiederà la password di autenticazione, scrivete `alpine`.

Finalmente possiamo lanciare TU-iOS5. Inserite il comando `tu -o` e date invio. Lo script consiste in una lista di componenti che possiamo decidere se:



	
  * Disabilitare, inserendo `d`, seguito da Invio;

	
  * Cancellare, inserendo `e`, seguito da Invio;

	
  * Lasciare inalterato, inserendo `n`, seguito da Invio.


In alternativa, ci può essere richiesto di confermare (y per Yes) o negare (n per No) l'esecuzione di una determinata procedura.

Di seguito vediamo la lista ordinata di tweak (alla versione 1.0) proposti da TU-iOS5 con la relativa spiegazione e le "risposte" consigliate per velocizzare il nostro iPad. E ricordate che nel caso riscontriate problemi o vogliate ripristinare le impostazioni originali potete farlo col comando `tur` sempre tramite MobileTerminal.


### I tweak di TU-iOS5



    
    
    1. Report Crash, Dump, Logging
    1.1 Functions
    - Applications Logging (Log crashes into files)
    - System Logging (Log crashes into files)
    Do you want to Disable or Delete or nothing?
    
    Azione consigliata: rimuove i log di sistema e app. Delete (r)
    
    1.2 Remove Logs files
    Any Logs files on your iDevice
    Do you want to delete them? yes or no?
    
    Azione consigliata: Yes (y)
    
    2. Audio-in
    Do you want to read that here? yes or no?
    WARNING : iPhone Users should not remove this
    Do you want to Disable or Delete or nothing?
    
    Azione consigliata: funzioni Audio-in. Nothing (n)
    
    3. Software Update (OTA)
    If this disabled, You cannot do any Updates with only your iDevices (not via iTunes)
    Do you want to Disable or Delete or nothing?
    
    Azione consigliata: Delete (r)
    
    4. iCloud - PhotoStream - Mail - Account
    Disable iCloud (and syncing), PhotoStream, Mail + push
    Recommended not to remove these if you use one of them or more than one
    This also remove Mail.app from your iDevice
    Do you want to Disable or Delete or nothing?
    
    Azione consigliata: Delete (r) se non usate i servizi citati, Nothing (n) altrimenti
    
    5. Assistive Touch
    The Virtual Home-Button (Assistant) or the White circle on your screen
    Recommended not to remove if your Home Button is dead
    Do you want to remove Disable or Delete or nothing?
    
    Azione consigliata: Delete (r) se non avete necessità del pulsante Home virtuale
    
    6. Developer
    Removing many Developer-related files
    Don't remove this if you are a Developer
    Do you want to Disable or Delete or nothing?
    
    Azione consigliata: se non siete sviluppatori Delete (r)
    
    7. External Accessory
    Such as Dock connector, external-keyboard, USB dock, iPad Camera Connection Kit, etc.
    Not to delete for Developer because there is one of this relate to Developing
    Do you want to Disable or Delete or nothing?
    
    Azione consigliata: se non usate Dock o accessori esterni Delete (r)
    
    8. iTunes Cloud & Home Sharing
    If you don't use these features, feel free to remove them
    Do you want to Disable or Delete or nothing?
    
    Azione consigliata: se non usate i servizi di iTunes Cloud e Home Sharing Delete (r)
    
    9. Internet Sharing/Tethering
    iDevices+3G/4G : Can remove if you don't want to use it
    iDevices without 3G/4G : Can remove because you cannot use it
    Do you want to delete this? yes or no?
    
    Azione consigliata: sui dispositivi dotati di SIM, se non usate la connessione 3G/4G e sugli altri dispositivi Yes (y)
    
    10. Reset Function
    You can see it in Settings.app>General>Reset
    It lets you to reset your settings or reset your iDevice, can be removed if you don't want
    After removed you cannot do any reset to your iDevice
    Do you want to Disable or Delete or nothing?
    
    Azione consigliata: se non prevedete di usare la funzione reset Delete (r)
    
    11. Print Function
    If you never use your iDevice for printing, remove it
    Do you want to Disable or Delete or nothing?
    
    Azione consigliata: se non usate la funzione di stampa Delete (r)
    
    12. VPN - Virtual Private Network
    If you don't use it, you can remove it
    Do you want to Disable or Delete or nothing?
    
    Azione consigliata: se non usate la VPN Delete (r)
    
    13. Spotlight/App Indexer
    If you don't use Spotlight, remove it
    Remove this will give you a lot of performance improve
    Do you want to Disable or Delete or nothing?
    
    Azione consigliata: questo costituisce un sensibile aumento nelle performance e cancella lo spotlight. Se ne potete fare a meno assolutamente Delete (d)
    
    14. Voice-Control & Nike
    Voice Assistant in iOS, remove if you don't use any of them
    Do you want to Disable or Delete or nothing?
    
    Azione consigliata: se non usate il controllo vocale o gli accessori Nike che lo utilizzano Delete (r)
    
    15. Built-in Twitter
    Tweet from Photo.app, Contact.app integration, Account in Settings.app etc.
    Remove this has no effect with Twitter.app, you can use that app normally
    Do you want to Disable or Delete or nothing?
    
    Azione consigliata: disabilita la funzione integrata di Twitter, Delete (r) anche se usate l'App di Twitter ufficile
    
    16. MIDI
    Remove this feature has no effect with music and iDevice sound
    Do you want to Disable or Delete or nothing?
    
    Azione consigliata: Delete (r), non ha effetto su riproduzione o altro
    
    17. FTP Proxy
    If you don't use your iDevice for that, delete it
    Do you want to delete this? yes or no?
    
    Azione consigliata: se non usate un Proxy FTP Delete (r)
    
    18. AirTraffic or iTunes Wi-Fi Sync
    If you enjoy using your Sync cable, you can delete its filesystems
    Do you want to delete this? yes or no?
    
    Azione consigliata: Yes (y) se non usate AirTraffic e la sincronizzazione con iTunes tramite WiFi
    
    19. Accessibility
    If you don't use any of them, delete it
    Do you want to Disable or Delete or nothing?
    
    Azione consigliata: se non usate le tecnologie assistive Delete (r)
    
    20. DemoApp or Screen-saver on iOS
    Just like on Computers, delete it if you don't want to use it
    Do you want to delete it? yes or no?
    
    Azione consigliata: Delete (r) se non usate lo ScreenSaver di iOS
    
    21. Dictionary files
    Locate at /Library/Dictionaries, this will remove all dictionaries except Apple Dictionary
    List all files.
    Do you want to delete these? yes or no?
    
    Azione consigliata: controllate se utilizzate i dizionari elencati e inserite Yes (y) o No (n) di conseguenza.
    
    22. iAd
    Not all of them will be deleted, but better
    Do you want to delete this? yes or no?
    
    Azione consigliata: cancellabilissimi iAd Delete (r)
    
    23. Cydia Auto-Startup
    This will let you to install DEB files located in /var/root/Media/Cydia/AutoInstall after finished booting your iDevice
    You can delete it if you always install DEB files via iFile
    Do you want to delete this? yes or no?
    
    Azione consigliata: se non installate i pacchetti DEB l'autoinstaller di Cydia Yes (y)
    
    24. Data Migrator Daemon
    com.apple.datamigrator.plist located in LaunchDaemons
    Use for transfer data from SIM
    iPod touch and iPad can delete this
    Do you want to delete this? yes or no?
    
    Azione consigliata: se non usate il servizio di trasferimento dei dati SIM-iPhone o avete un dispositivo senza SIM Yes (y)
    
    25. AddressBook Daemon
    com.apple.AddressBook.plist located in LaunchDaemons
    Removed this cause Contacts.app loading slightly slower
    Do you want to delete this? yes or no?
    
    Azione consigliata: Yes (y) se non accedete di continuo alla rubrica (può subire rallentamenti)
    
    26. Compass
    You should delete this only if you are on iPod touch
    Do you want to delete it? yes or no?
    
    Azione consigliata: se non usate la funzione Bussola potete cancellarla, ma in generale è sconsigliato No (n)
    
    27. EDGE/3G
    iPod touch users should delete it, has no effect on your iDevice
    Do you want to delete it? yes or no?
    
    Azione consigliata: se non usate EDGE/3G cancellatelo Yes (y)
    
    28. Multitasking Gestures
    As it won't work on iOS 5 on 3.5-inches-jailbroken-iDevices, you should delete it
    Don't remove if you are on iPad
    Do you want to delete this? yes or no?
    
    Azione consigliata: se non usate le gesture del multitasking Yes (y)
    
    29. Picture Frame
    Picture Slide show only on iPad, iPhone and iPod users can delete it
    Do you want to delete it? yes or no?
    
    Azione consigliata: se non usate la funzione di scorrimento delle foto Yes (y)
    
    30. Photo Booth
    Just remove its filesystems
    iPad users shouldn't delete this
    Do you want to delete it? yes or no?
    
    Azione consigliata: se non usate Photo Booth Yes (y). Per i possessori di iPad No (n)
    
    31. SMS/Phone/VoiceMail
    Only iPod touch users can delete it, iPad may not delete if you use PhoneitiPad, iPhone Users skip this
    Do you want to delete this? yes or no?
    
    Azione consigliata: i dispositivi che non usano SIM Yes(y), gli altri No (n)
    
    32. Vibration
    Only iPhone users should keep this, iPad&iPod users can delete it
    Do you want to delete this? yes or no?
    
    Azione consigliata: disabilita la vibrazione. No (n) per i possessori di iPhone, Yes (y) gli altri
    
    33. LaunchBuddy files /Setup.app
    Delete all filesystems of LaunchBuddy, the setup after restoring your iDevice
    Do you want to delete it? yes or no?
    
    Azione consigliata: Yes (y) se non prevedere di utilizzare la funzionalità di ripristino guidata
    
    34. CommCenter
    Is about Internet connection, 3G/4G, Wi-Fi etc.
    Depend on your iDevices
    Do you want to delete it? yes or no?
    
    Azione consigliata: rimuove il CommCenter. No (n)
    
    35. SpringBoard Optimization
    SpringBoard on iOS has shadow effects, These will use a quiet lots performance of CPU & GPU, by remove these effects, it will increase SpringBoard FPS, RAM and GPU performance
    Do you want to tweak this? yes or no?
    
    Azione consigliata: disabilità gli effetti grafici incrementando le prestazioni generali. Yes (y)
    
    36. Camera-Modifying for iPod 4G
    HDR & Framerate Hack
    36.1 HDR
    Just like on iPhone 4
    Do you want to Enable HDR? yes or no?
    
    Azione consigliata: Yes (y) se volete abilitare l'HDR
    
    36.2 FrameRate Hack
    Your Camera limited framerate to 15-30 fps by default, this hack will change to 30 fps
    value more than 30 fps cause camera not working properly
    Do you want to hack this? yes or no?
    
    Azione consigliata: Yes (y) se volete registrare i video ad un framerate maggiore di 30fps
    
