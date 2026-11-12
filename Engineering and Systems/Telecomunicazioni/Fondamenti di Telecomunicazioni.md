---
title: "Fondamenti di Telecomunicazioni"
domain: "engineering/telecommunications"
source_course: "Fondamenti di Telecomunicazioni"
tags:
  - engineering/telecommunications
  - engineering/telecommunications/signals
  - engineering/telecommunications/modulation
---

# 0. Per iniziare

## 0.1 Storia delle telecomunicazioni

- La storia delle telecomunicazioni si sviluppa prevalentemente negli ultimi 2 secoli di storia
	- 0) Segnali di fumo/navali → è il primo modo di codificare informazioni a lunga distanza
	- 1) 1793: telegrafo ottico di Claude Chappe
		- Il mondo delle telecomunicazioni nasce ottico e analogico
		- Le pale di un telegrafo ottico rappresentano diverse lettere → si può trasmettere un messaggio ogni 5-10km
	- 2) 1837: telegrafo elettrico di Samuel Morse
		- Utilizza un impulso elettrico, che chiaramente si propaga a v ≈ c, tramite un cavo in rame
		- Serve però un codice universale di comunicazione → nasce il codice binario Morse, che codifica qualsiasi lettera o numero in "dots" e "dashes"
		- https://www.youtube.com/watch?v=Mvqlsd3prW8
	- 3) Seconda metà XIX secolo → grande diffusione della linea telegrafica
		- 1858 → primo tentativo di connettere America ed Europa con un cavo sottomarino telegrafico
			- Definito addirittura "harald of Peace", ma fu un fallimento → durò poche settimane
		- 1866 → ci fu un altro tentativo, che ebbe successo
	- 4) 1868: Meucci brevetta il telefono
		- Utilizza gli elettromagneti per trasformare le onde meccaniche del suono in onde elettromagnetiche, che viaggiano tramite cavi in rame
		- https://www.youtube.com/watch?v=zQc0jVgQnik
	- 5) 1876: Bell brevetta il suo telefono
		- Pensava fosse utile prevalentemente per scopo di intrattenimento
	- 6) Fine XIX secolo: grande diffusione della rete telefonica
	- 7) 1895: Marconi inventa la radio, il telegrafo "senza fili"
		- Utilizza le ricerche di Maxwell e Hertz sulle onde elettromagnetiche
		- La radio si diffonde a macchia d'olio nei primi due decenni del '900, diventando fondamentale nella prima guerra mondiale ed entrando sempre di più a far parte della vita quotidiana
	- 8) 1947: primo brevetto della rete cellulare nella storia di D. H. Ring
	- 9) 1962: primo satellite per le telecomunicazioni, TELESTAR1
		- Permetteva la tramissione di 600 conversazioni telefoniche o un canale TV
	- 10) 1966: Charles Kao dimostra la possibilità di fibra ottica (impulso e/m che viaggia nel vetro)
		- Prima fibra ottica solo nel 1970 dalla fabbrica Corning
	- 11) 1973: prima telefonata wireless della storia, fatta da Martin Cooper
	- 12) 1977: ci sono le prime sperimentazioni in fibra ottica
		- Si raggiunge come velocità massima 45 Mb/s
		- Oggi ci sono 4 miliardi di km di fibra ottica

![[Screenshot 2024-10-13 alle 09.47.43.png|203]]![[morse_telegraph_key.jpg|440]]

+ Storia di internet
	+ 1) 1960: nasce la prima rete, finanziata dal governo americano
	+ 2) 1961: Kleinrock utilizza la teoria delle code per dimostrare l'efficacia della commutazione di pacchetto
		+ Il primo test viene fatto dall'università di UCLA → Kleinrock invia il messaggio 'login' all'università di Stanford
			+ Il test fallisce, perché il messaggio ricevuto è solo 'lo', ma nonostante ciò questo test segna la storia
	+ 3) 1967: nasce ARPAnet (Advanced Research Projects Agency)
		+ È un nucleo di pochi nodi (primo nodo nel 1969, 15 nodi nel 1972)
	+ 4) 1972: nasce NCP (Network Control Protocol), primo protocollo di internet
		+ Nasce anche la posta elettronica
	+ 5) 1974: nasce l'internetworking (rete di reti), definite da Cerf e Kahn
	+ 6) 1976: nasce Ethernet
	+ 7) Anni '80: nascono i protocolli SMTP, IP, DNS, FTP...
	+ 8) Anni '90: nasce il WWW al Cern di Ginevra
	+ 9) Anni '00: nascono le applicazioni, i social network...
	+ 10) Anni '10-20: rivoluzione degli smartphones, internet of things
	+ https://www.youtube.com/watch?v=scWj1BMRHUA
	+ https://www.youtube.com/watch?v=Z__QFJJHbvg

# 1 - Panoramica generale sulla rete

- Com'è fatta la rete? → 3 elementi fondamentali:
	- 1) Componenti fisiche
	- 2) Architettura di rete
	- 3) Servizi e protocolli di comunicazione

## 1.1 - Componenti fisiche

- La rete è fatta da milioni di computer connessi tra di loro → vi sono 3 elementi fondamentali:
	- 1) *Host* o terminali → sono i computer che accedono o inviano le informazioni
		- Sono sia il portatile che guarda un video su Youtube che i server centrali di Google
	- 2) Nodi intermedi → sono di diverso tipo:
		- *Modem* → è un modulatore (MO) e un demodulatore (DEM) che quindi converte le informazioni in entrata o uscita dal doppino telefonico
			- È unicamente utilizzato in assenza di fibra ottica
		- *Router* → instrada le informazioni ai vari dispostivi collegati sulla rete
			- Ha la funzione di smistamento delle informazioni nei loro corretti percorsi e di gestione delle code
		- *Access point* → abilita la connessione wireless alla rete
		- *Switch* → permette di aumentare il numero di porte di rete (ethernet) del router
	- 3) Link 
		- Sono i collegamenti sono di tipo *fisico* (cablati) o *wireless* (tramite onde elettromagnetiche)
		- Variano nel loro materiale, nella velocità di trasmissione

## 1.2 - Architettura di rete

### 1.2.1 - Classificazione delle reti

- Come sono classificate le reti?
	- 1) Grado di integrazione → che cosa permette di trasferire una rete?
		- a) Reti dedicate → solo per telefonia, dati, video...
		- b) Reti integrate → hanno qualità più alta e sono eterogenee
			- es. Tecnologia ADSL, vedi dopo
	- 2) Topologia → forma del grafo di trasmissione
		- a) Reti a maglia → i nodi sono connessi vicendevolmente da multiple connessioni
			- Se ogni nodo connette a ogni altro nodo, si dice completa
		- b) Reti ad albero → si diramano collegamenti dal nodo padre verso i nodi figli
			- Esiste un solo collegamento tra qualsiasi coppia di nodi → è piuttosto scomodo navigare tra nodi arbitrariamente scelti
			- È molto comodo invece navigare tra nodi dal diverso valore gerarchico
		- c) Reti ad anello → ogni nodo ha due soli nodi adiacenti
		- d) Reti a stella → è tra le strutture più moderne
			- Al centro ha un router per smistare il traffico di pacchetti
		- e) Reti a maglia + stella → è la fusione di una rete a maglia e di una rete a stella
		- ![[Screenshot 2024-09-18 alle 21.51.38.png]]
	- 3) Estensione della rete → definisce la tipologia di rete
		- i) LAN (Local Area Network) → opera in un'area limitata, ridotta
			- es. Rete di case, edifici, laboratori o campus
		- ii) MAN (Metropolitan Area Network) → copre una città, di estensione fino a decine di km
			- Tra le più grandi c'è quella di città del Messico (> 100km)
			- Rete di backbone/dorsale → serve per connettere più città o anche due continenti
				- es. Come funziona un collegamento tra Youtube e un telefono a Milano?
					- Youtube (California) → fios (operatore di rete statunitense) → (backbone) → Vodafone (operatore di rete italiano) → Casa
		- iii) WAN (Wide Area Network) → ha un'estensione ancora più ampia (regioni, paesi o il globo)

## 1.3 - Servizi e protocolli di comunicazione

### 1.3.1 - Accesso alla rete internet

- Come si fa ad accedere ad una rete internet?
	- a) ISP (Internet Service Provider)
		- La prima strategia d'accesso si chiamava *dial-up* via modem (anni '90)
			- Si interrompeva la linea telefonica e si utilizzava la banda fonica del telefono per connettersi al modem
			- I pacchetti dall'internet devono arrivare a casa → dei convertitori trasformano dei dati digitali come se fossero una trasmissione telefonica, in modo tale da raggiungere casa
			- → Si blocca la linea telefonica per connettersi ad internet
		- Un'evoluzione è la *ADSL* (asymmetric digital subscriber line) (dagli anni 2000)
			- Grazie ad un cavo in rame ("doppino telefonico") si riesce a dividere le bande dei segnali vocali e dei dati internet
				- Nel doppino viaggiano sia la linea telefonica, sia la linea internet, ma su diverse frequenze
				- L'internet, viaggiando a frequenze più alte e con più banda, risulta molto più veloce rispetto alla tecnologia dial-up
					- Le bande sono: telefono → $0-3,7kHz$, internet *uplink* → $4kHz-50kHz$, internet *downlink* → $50 kHz-1GHz$
					- L'accesso viene detto *asimmetrico* (da cui la A in ADSL) perché le velocità di upload e download sono diverse
			- È comunque una rete lenta per gli standard odierni (20 Mbps download)
			  
			  ![[Screenshot 2024-10-28 alle 16.52.18.png|550]]
			  
		- La tecnologia più moderna è invece quella dell'internet via fibra
			- Si utilizzano tre tipologie possibili di cavi:
				- a) Cavo coassiale → è il cavo della televisione, utilizzato però molto raramente
					- Si usa in combinazione con la fibra nella tecnologia HFC
				- b) Doppino in rame → è lo stesso trattato in precedenza
				- c) Fibra ottica
			- Per la fibra ottica, ci sono varie alternative:
				- FTTN (fiber to the neighborhood) → la fibra arriva al quartiere
				- FTTC (fiber to the cabinet) → la fibra arriva all'armadio stradale più vicino
				- FTTB (fiber to the basement) → la fibra arriva alla base della casa
				- FTTH (fiber to the home) → la fibra arriva direttamente a casa
			- Un'altra rete wireless possibile è quella satellitare
				- I satelliti utilizzati per le trasmissioni radio possono essere geostazionari (GEO, geostationary earth orbit) o a bassa quota (LEO; low-earth orbit) 
					- I satelliti a bassa quota per via della loro velocità di propagazione molto ridotta vengono oggi utilizzati anche per internet (es. Starlink)
	- b) Rete cellulare
		- Il cellulare tramite onde radio cerca una stazione radio base
		- Evoluzione:
			- GPRS/EDGE → 200 kbps (kilobit per second)
			- HSPA → 14,5 (down), 5,7 (up) Mbps
			- LTE (4G) → 300 (down), 250 (up) Mbps
			- 5G → 3000 (down), 250 (up) Mbps
			- 6G → 

### 1.3.2 Protocolli di rete

+ In che lingua parlano i router?
	- I dispositivi che scaricano o caricano dati sulla rete sono molto diversi → differiscono nella:
		- Tecnologia
		- Tipologia di link tra dispositivi
		- È un puzzle di reti interconnesse tra di loro → come si può trovare un linguaggio comune?
	- → Si utilizzano dei protocolli di comunicazione 
		- È un'insieme di regole, di convenzioni, che creano un contatto tra computer
		- Definiscono:
			- 1) Sintassi → come si può comunicare
			- 2) Semantica → il contenuto che si può comunicare
		- Sono utilizzati da tutti gli operatori indipendenti (ISP) per creare una rete globale

- Due tipologie di protocollo sono:
	- Servizio a connessione (TCP) → bisogna aprire la linea, collegarsi e chiuderla dopo aver scambiato le informazioni
		- È quella utilizzata prevalentemente da internet, dalla mail...
	- Servizio senza connessione (UDP) → avviene in maniera autonoma, senza un preventivo accordo

### 1.3.3 Commutazione di circuiti e pacchetti

- Come si trasferiscono i dati in rete? → 2 metodologie:
	- 1) Commutazione di circuito (meno usata)
	- 2) Commutazione di pacchetto

- Commutazione di *circuito*
	- → È l'assegnazione di uno specifico cammino di trasmissione dati per ogni singola conversazione
		- È la creazione di un cammino da A a B che rimane fissa tutta la durata della comunicazione
		- Questo cammino da A a B rimane inaccessibile fino a quando la comunicazione non termina
	- Un tempo era fatto manualmente, da un centralinista
		- Poi tutta la vicenda è stata automatizzata
	- Come funziona?
		- 1) Si fissa la destinazione
		- 2) Si cerca un circuito
		- 3) Si crea il cammino in cui passeranno le informazioni
		- 4) Si avvisa il destinatario
		- 5) Si avvia la conversazione
			- È bidirezionale → lo stesso cammino invia e riceve dati
	- Complessivamente, le risorse di rete vengono divise in "pezzi"
		- La banda complessiva si divide in tanti sottomultipli
		- Ciascun "pezzo" viene allocato ad una sola conversazione → anche se quella conversazione è inattiva, si mantiene tutta la linea occupata
			- Ogni linea quindi NON può essere condivisa
		- Ci sono diverse tecniche con cui questo viene fatto (*multiplexing*):
			- FDM (frequency division multplexing) → si dividono le frequenze in cui viaggiano i segnali
				- Un esempio è la radio a modulazione FM
			- TDM (time division multplexing) → si divide il tempo in periodi (o *frame*) di durata fissa, ognuno diviso in vari slot temporali
				- Ogni collegamento sfrutta tutta la banda per uno degli slot per ogni frame, ma non può accedere al collegamento negli altri
	- Come è fatto un nodo intermedio? → è estremamente semplice
		- La capacità (b/s) dei canali in ingresso è pari a quella dei canali in uscita (affinché la conversazione sia fluida da entrambe le parti)
		- Non c'è elaborazione, né memorizzazione del segnale
	- Tutta l'infrastruttura non ha livelli intermedi, è basilare


+ Commutazione di *pacchetto*
	+ → È la condivisione della banda di rete per inviare l'informazione in maniera più efficiente
		+ È stata inventata da Kleinrock nei primi anni '60
	+ Il computer "rompe" un file in tanti pacchetti, che sono smistati tra diversi nodi, indipendentemente e simultaneamente
		+ I pacchetti sono anche detti *PDU* (Protocol Data Unit)
		+ es. Un testo di 10 pagine viene diviso in documenti da una pagina (pacchetti), poi questi vengono assemblati grazie al loro numero di pagina
		+ Grazie ad un segnale di numerazione e segnalazione il destinatario può ricostruire il file nella loro interezza
		+ Le performance aumentano esponenzialmente rispetto alla commutazione di circuito
			+ Infatti nelle risorse di rete circolano i pacchetti di tutti gli utenti collegati contemporaneamente (fino a raggiungere la capacità massima del canale)
			+ → È una gestione dinamica delle informazioni
	+ Un PDU è formato da:
		+ 1) Un header → indica:
			+ a) L'indirizzo di destinazione
				+ Se il pacchetto parte da un dispositivo C e vuole arrivare al dispositivo A, nell'header dei pacchetti è segnata come destinazione il dispositivo A
			+ b) SN (sequence number) → indica quale parte del messaggio complessivo è contenuta
		+ 2) Il payload → contiene l'informazione vera e propria
	+ Come mai è molto più efficiente della commutazione di circuito?
		+ Immaginiamo che tanti utenti debbano connettersi contemporaneamente ad una piattaforma per scaricare dati, alternando momenti di attività a momenti di inattività
		+ La probabilità che tutti questi utenti siano attivi contemporaneamente è estremamente bassa
			+ Infatti, siano $n$ utenti con la probabilità $p$ di essere attivi sulla piattaforma, la probabilità che il numero $a$ di utenti sia attivo allo stesso tempo è data dalla distribuzione binomiale:
			+ 
			  $$P(X=a) = \binom{n}{a}p^a(1-p)^{n-a}$$
			  - Ad esempio, se $p = \frac{1}{10}$, $n = 100$, $a = 10$, $P(X=10)=13.1\%$, ma se $a = 50$, $p(X=50) =5.2*10^{-22}\%$ (!!!)
	+ Come si comporta un pacchetto per ogni nodo? 
		- 1) Il pacchetto parte dalla linea verso il nodo
		- 2) Attesa → si attende l'arrivo del pacchetto (è il tempo di propagazione)
		- 3) Elaborazione → il nodo legge l'header e determina la strada del pacchetto in uscita
			- L'azione del nodo è molto più complessa rispetto ad una commutazione di circuito
				+ Il router deve memorizzare il pacchetto, leggere l'header e gestire la partenza in relazione agli altri pacchetti
			- In ogni caso, il tempo di elaborazione di solito viene considerato trascurabile nel tempo complessivo
		- 4) Attesa → il nodo si accoda per l'uscita 
			- Il tempo di attesa varia a seconda 
		- 5) Trasmissione → i pacchetti iniziano ad essere trasmessi sulla linea (tempo di trasmissione)
		  
		  ![[Screenshot 2024-09-25 alle 15.42.27.png|550]]
		  
	+ (Da ora in poi si parlerà generalmente sempre di questo tipo di commutazione)

### 1.3.4 - Gestione delle code 

+ 1) Con quale ordine partono i pacchetti in coda?
	+ *FIFO* (First In, First Out) → chi primo arriva primo parte
	+ *WFQ* (Weightened Fair Queuing) → ogni utente ha un livello pesato di priorità
	+ *Round Robin* → ogni utente ha la stessa priorità e ottiene una percentuale fissa del traffico

+ 2) Contesa per le risorse → ci sono due modalità di gestione dei vari pacchetti di uno stesso messaggio
	+ *Store and forward* → ogni nodo prima di inviare alcuni pacchetti al prossimo nodo deve aspettare l'arrivo dell'intero messaggio
		+ Questo spesso si usa in una comunicazione che debba essere affidabile, ovvero che debba necessitare assolutamente di tutti i pacchetti di un messaggio
		+ Vantaggi → alta efficienza e accuratezza nella trasmissione del segnale
		+ ![[Screenshot 2024-09-25 alle 15.12.26.png]]
	+ *Cut through* → appena arriva un pacchetto, viene immediatamente girato al nodo successivo
		+ Questo viene utilizzato spesso in caso di comunicazione che preferisce la bassa latenza alla completezza del messaggio → es. video streaming
		+ Vantaggi → latenza minore e maggiore rapidità del segnale
		+ Svantaggi → minore efficienza
			+ I pacchetti hanno dei bit di controllo per prevenire errori (checksum), solitamente posizionati alla fine del pacchetto
			+ Se invio il pacchetto prima di aver letto questi segnali, c'è la possibilità che si invii un pacchetto corrotto
		+ ![[Screenshot 2024-09-25 alle 15.14.12.png]]
	+ Non solo → si utilizza la *multiplazione statistica*
		+ In base a dati statistici (numero di utenti connessi in varie circostanze) si può predirre il traffico dati → gestione più efficiente delle risorse di rete
		+ → Internet estremamente più veloce

### 1.3.5 - Calcolo dei ritardi di comunicazione

- Quanto tempo ci mette l'informazione a viaggiare da mittente a destinatario?
	- Introduciamo una grandezza fisica fondamentale → *Rate* (o bitrate) di trasmissione (R)
		- È la velocità con cui l'informazione digitale viene trasmessa in un mezzo fisico
		- Si misura in numero di bit al secondo (bps), con i suoi multipli (kbps, Mbps, Gpbs)
			- Il byte, invece, si indica con una B maiuscola 
		- È determinata non solo dal mezzo trasmissivo, ma anche dall'interfaccia del computer
	- Esistono quindi 4 tipi di ritardi:
		- 1) Ritardo di *trasmissione* (T)
			- È il tempo necessario a inserire l'informazione nella linea di trasmissione
				- Si può immaginare come il tempo necessario a caricare dei pacchi su un rullo trasportatore
			- $$T = \frac{L}{R} \; \; \to  \;  \; [s]=\frac{[b]}{[bs^{-1}]}$$
				- dove:
					- L = lunghezza di bit della trasmissione (in b) 
					- R = bitrate (in b/s)
		- 2) Ritardo (o ritardo) di *propagazione* ($\tau$)
			- È il tempo necessario ai bit per fisicamente trasferirsi dal trasmettitore (TX) al ricevitore (RX)
				- Si può immaginare come il tempo necessario ai pacchi a raggiungere sul rullo la destinazione
			- $$\tau = \frac{D}{\nu} \; \; \to \; \; [s] = \frac{[m]}{[ms^{-1}]}$$
				- dove:
					- D è la distanza tra TX e RX (in m)
						-  È la lunghezza fisica del cavo o la distanza in linea d'aria tra antenna e ricevitore
					- $\nu$ è la velocità di propagazione dei segnali elettromagnetici (in m/s) → è la velocità della luce
						- Se la propagazione è libera (in aria o vuoto), $\nu ≈ c_{0} = 3*10^8 \frac{m}{s}$
						- Se la propagazione è guidata (nei cavi in rame, fibra ottica), $\nu ≈ 2*10^8 \frac{m}{s}$
						- In generale, $\nu = \frac{c_{0}}{n}$, dove n è l'indice di rifrazione nel mezzo
							- $n ≈ 1,5$ nella fibra ottica, $n ≈ 1,3-2,3$ nei cavi in rame
		- 3) Ritardo di accodamento ($T_{A}$)
			- È il tempo che un pacchetto deve attendere prima di essere elaborato dal nodo
			- Si calcola come la somma dei tempi di trasmissione e dei tempi di elaborazione degli $n$ pacchetti davanti al pacchetto in coda
		- 4) Ritardo di elaborazione ($T_{E}$)
			- È il tempo di cui il router ha bisogno per leggere l'header del pacchetto, verificare la validità dei dati (controllo checksum) e trovare il percorso per il pacchetto
			- È solitamente trascurabile nei router di nuova generazione $$T_{E} ≈ 0$$
	- → Tempo totale di attraversamento del canale ($T_{tot}$)
	  $$T_{tot} = T + \tau$$

- Esempi
	- 1) Situazione con solo due nodi:
	  
	  ![[Screenshot 2024-09-25 alle 14.50.57.png|525]]
			  
	-  2) Situazione con più di due nodi, 
	  
		  ![[Screenshot 2024-09-25 alle 15.03.17.png|500]]$$T_{tot} = \sum^n_{i = 1}Ti  +ti$$



- Cosa succede se si ricevono più pacchetti contemporaneamente?
	- Se l'uscita è occupata e la meta è la stessa, bisogna aspettare la coda (tempo di elaborazione + tempo di trasmissione) 
		  ![[Screenshot 2024-09-25 alle 15.43.51.png|625]]
		  
	- Se l'uscita è occupata e le mete sono diverse, bisogna aspettare unicamente il tempo di elaborazione, perché i due pacchetti sono trasmessi in cavi diversi 
		  
	  ![[Screenshot 2024-09-25 alle 15.49.59.png|625]]
		  
	- E se i pacchetti fossero troppi? → *overflow*
		- Le code (*buffer*) hanno dimensioni limitate → se i pacchetti eccedono questo limite sono scartati
			- I pacchetti persi sono:
				- Ritrasmessi → se la connessione deve essere *reliable*, i pacchetti non possono essere mancati
				- Ignorati → se la connessione non ha la necessità di mantenere tutti i pacchetti (es. streaming di video)
			- Di solito, il numero di pacchetti scartati è più alto nel caso in cui la velocità di trasmissione in ingresso è maggiore di quella in uscita
				  ![[Screenshot 2024-09-25 alle 16.03.36.png]]


- Teoria delle code
	- Determina l'intensità di traffico media, basandosi su:
		- $R$ → bitrate del link (b/s)
		- $L$ → lunghezza in bit del pacchetto (b)
		- $\lambda$ → frequenza di arrivo dei pacchetti (packs/s)
		-  $I$ → intensità di traffico (numero puro), definita da:
		  $$I = \frac{\lambda L}{R}, \; \; \; I \in [0, 1)$$
	- Il tempo di *accodamento* *medio* $T_{a}(I)$ segue una legge di tipo iperbolico:
	  $$T_{a}= \frac{L}{R-\lambda L}-\frac{L}{R}= \frac{L}{R} \frac{\frac{\lambda L}{R}}{1-\frac{\lambda L}{R}} \implies \; \;T_{a}(I)=\frac{L}{R} \frac{I}{1-I}$$
		- ($\frac{L}{R}$ si suppongono costanti)
		  
		  ![[Screenshot 2024-09-25 alle 16.09.38.png]]
		  
		- Quindi:
			- $\lim_{  I \to 0^+ } T_{a} = 0$
			- $\lim_{ I \to 1^- }T_{a} = +\infty$

---
### 1.3.S - Esercizi

- es. 1.4

Dati: $C_{1}= 256 * 10^3* \frac{bit}{s}, \tau_{1} = 1 *10^-3 s, C_{2}=512 *10^3* \frac{bit}{s}, \tau_{2}=2ms, C_{3}=64*10^3 \frac{bit}{s}, \tau_{3}=4ms$

![[Screenshot 2024-10-01 alle 08.42.11.png|400]]

Al tempo $t = 0$, la coda di uscita di R1 ha 4 pacchetti diretti verso A, A, B, B
$L = 512 bits \implies T_{1},T_{2},T_{3},T_{4}=?$

$$
\begin{align}
T_{1}=T_{2}&=\frac{L}{C_{2}} + \tau_{1} + \frac{L}{C_{2}} + \tau_{2} = \frac{512 bits}{256 * 10^3 \frac{bit}{s}} +1*10^{-3} s+ \frac{512bits}{512 * 10^3 \frac{bits}{s}} + 2*10^{-3} s \\ &= 6 * 10^{-3}s\\ \\

T_{3}=T_{4}&=\frac{L}{C_{1}}+\tau_{1}+\frac{L}{C_{3}} + \tau_{3}=\frac{512 bits}{256 * 10^3 \frac{bits}{s}}+1*10^{-3}s + \frac{512 bits}{64 * 10^3 \frac{bits}{s}} +4*10^-3 s \\ &=15 *10^{-3}s
\end{align}$$


- es. 1.6

Ci sono 8 pacchetti diretti verso A, A, B, A, C, C, D
$$
\begin{matrix}
C_{1} = 8*10^6 \frac{bit}{s}  & C_{2}=4 * 10^6 \frac{bit}{s}  & C_{3}=16*10^6 \frac{bit}{s}  & C_{4}= 2 *10^6 \frac{bit}{s}  & C_{5}=2*10^6 \frac{bit}{s} &  C_{6}=8*10^8 \frac{bit}{s}& C_{7}=8*10^6 \frac{bit}{s}  \\
\tau_{1}=1*10^{-3}s & \tau_{2}=0,5*10^{-3} s  & \tau_{3}=0,2 *10^{-3} s  & \tau_{4}= 2*10^{-3} s  & \tau_{5}=2 *10^{-3} s  & \tau_{6}=3 *10^{-3} s  & \tau_{7}=2 *10^{-3} s   
\end{matrix}
$$

Lunghezza pacchetti: $$\begin{align}
&L_{a} = 1000 byte = 8000 bit, \\
&L_{B} = 2000 byte = 16000 bit, \\ 
&L_{c} =500 byte = 4000 bit, \\ 
&L_{D} = 1000 byte = 8000 bit\end{align}$$
Rappresentiamo il grafico della rete:



Abbiamo quindi che 
$$T_{a_{1}} = \sum_{k=1}^3t_{a, i}+\tau_{a, i} = \frac{C_{1}}{L_{a}}+\tau_{1}+\frac{C_{2}}{L_{a}} + \tau_{2}+\frac{C_{3}}{L_{a}}+\tau_{3}=5,2 *10^{-3} s$$
Per i successivi, bisogna tenere presente i tempi di accodamento.
... (da finire)


---
# 2. Architettura a strati della rete

## 2.0 - Livelli della rete

- La rete non è formata da un'unico blocco, bensì la sua struttura è stratificata
	- La si può pensare allo stesso modo dei servizi necessari a viaggiare in aereo
		- L'utente medio si preoccupa unicamente di comprare il biglietto, ma in realtà la struttura è molto complessa
			- C'è chi gestisce le carte di imbarco, chi gestisce i bagagli, chi pilota l'aereo e chi gestisce gli aerei
		- È una gerarchia in cui l'oggetto da gestire è lo stesso (l'aereo), ma in tante maniere diverse, da quelle più superficiali a quelle più fondamentali
	- Allo stesso modo, la rete è strutturata su diversi livelli, in maniera modulare → si applica il "modello ISO/OSI"
		- È un modello che non vale solo per internet, ma è applicabile anche ad un azienda o alle poste
	- Questo ha diversi vantaggi:
		- 1) Facile identificazione dei servizi → le varie stratificazioni della rete sono tra loro separate e parlano linguaggi differenti
			- Inoltre, comunicano tramite interfacce standard che traducono i dati per l'uno o l'altro livello
		- 2) Facile gestione e aggiornamento 
			- Le varie parti possono essere gestire e modificate in maniera indipendente, in modo tale da non dover aggiornare sempre tutti gli strati della rete
				- es. Gli switch accedono solo ai due livelli più fondamentali della rete, mentre l'utente vede solo il livello più superficiale
			- In questo modo si velocizza lo sviluppo tecnologico

+ Come comunicano i vari livelli?
	+ Tramite i pacchetti, anche detti PDU (Protocol Data Unit) o trame del protocollo
		+ Contengono un header e un payload
		+ Mentre il payload rimane fisso, l'header varia in lunghezza nei vari strati
			+ Il livello più fondamentale (livello fisico) avrà tutti gli header dei livelli superiori, mentre salendo il numero di informazioni nell'header diminuisce
			+ Il livello 2 leggi le informazioni che lo riguardano nell'header, poi le rimuove, così il 3, 4, ...
			+ → Il livello applicativo (più superficiale) è quello con un header di dimensioni minori
	+ Chi mette in relazione i vari livelli? → un'interfaccia, detta Service Access Point (SAP)
		+ Permette ad ogni livello di richiedere servizi dagli altri livelli, in maniera sistematica e strutturata
		+ È la SAP che effettua l'operazione di incapsulamento → aggiunge o rimuove gli header mentre la PDU passa da un livello all'altro
			+ Se il PDU "sale", allora viene rimosso un header
			+ Se il PDU "scende", allora questi diventa il payload e si aggiunge ad esso un header

- Quali sono i livelli?
	- 1) Livello fisico → si occupa della trasmissione fisica dei dati in un mezzo trasmissivo
		- I "pacchetti" gestiti dal livello fisico sono semplici stringhe di bit
	- 2) Livello di linea → si occupa di aggregare i bit in frame, gestisce gli errori e la multiplazione
		- I "pacchetti" gestiti dal livello di linea sono detti *frame*
	- 3) Livello di rete → indirizza, commuta e instrada il segnale
		- I "pacchetti" gestiti dal livello di rete sono detti *datagrams*
	- 4) Livello di trasporto → gestisce l'invio ordinato dei dati e le eventuali perdite
		- I "pacchetti" gestiti dal livello di trasporto sono detti *segmenti*
	- 7) Livello applicativo → definisce come strutturare i dati ricevuti per l'interazione con l'utente
		- I "pacchetti" gestiti dal livello applicativo sono detti *messaggi*

## 2.1 - Livello Fisico

- Per trasmettere in un mezzo fisico, si seguono queste fasi:
	- 1) Campionamento → il segnale passa da continuo con valori continui a discreto con valori continui
	- 2) Quantizzazione → il segnale passa da analogico ad una serie di bit → assume valori discreti
	- 3) Modulazione → il segnale passa di nuovo ad analogico, per poter essere trasmesso in un mezzo fisico
		- È fondamentale passare da analogico a digitale affinché il computer processi i dati, poi riportarsi all'analogico per inviare il segnale via cavo
		- Se siamo in una radio, gli step 1) e 2) possono essere evitati, ma la modulazione no
			- Infatti AM e FM sono le diverse modulazioni del segnale


+ Banda del segnale ($B$)
	+ È l'intervallo di frequenze ($\Delta f$) che il segnale occupa lo spettro delle frequenze, nel tempo
		+ C'è una corrispondenza tra frequenze $f$ (in $Hz$) e tempo $t$ (in $s$) in qualsiasi segnale
	+ Come si calcola?
		+ La trasformata di Fourier (vedi Analisi III) consente di studiare qualsiasi segnale ondulatorio scomponendolo in un sinusoidi ($y = a\sin(k\theta)$)
			+ $$\hat{f}(\omega)=\int_{\mathbb{R}}x(t)e^{-i\omega t}dt$$
			+ Anche un segnale irregolare, ma periodico nel tempo si può scrivere tramite una somma infinita (integrale) di sinusoidi:$${ s({t})}={\frac{a_{0}}{2}}+\sum_{k=1}^{n}a_{k}\,\cos(k t)+b_{k}\,\sin(k t)$$
			+ Ogni sinusoide ha una data frequenza $f$ e un periodo $T = \frac{1}{f}$
				+ → Si può ricavare da OGNI segnale composito la sua funzione spettro $S(f)$ che lega ad ogni frequenza del segnale la sua ampiezza
			+ Le sinusoidi sono anche dette armoniche
				+ L'armonica 1 avrà $f=\frac{1}{T}$, l'armonica 2 avrà $f=\frac{2}{T}$
		+ → La banda è la differenza tra la frequenza massima e la frequenza minima nel segnale
	+ Alcune tipologie di onde:
		+ a) Onda quadra
			+ È la serie di Fourier delle armoniche dispari
				+ Si può quindi scrivere come:
				  $$
s(t) = \frac{4A}{\pi}\sum_{k=1}^{\infty} \frac{\sin(2\pi(2k+1)f_{0}t)}{2k+1}$$
			+ Può essere:
				+ A media nulla → se la media integrale su un periodo è nulla $$
\frac{\int_{0}^Ts(x)dx}{T} = 0$$
				- A media non-nulla → se la media integrale è diversa da 0
					- C'è la presenza di una componente a frequenza nulla, che rimane costante nel tempo
					- Tutto il grafico è quindi traslato in verticale di una certa ampiezza
		+ b) Onda a dente di sega
			+ È la somma infinita delle armoniche sia pari che dispari

### 2.1.1 - Campionamento

- Come converto un segnale continuo in discreto?
	- Ogni segnale analogico di banda B può essere ricostruito digitalmente in base al valore di $s(t)$ per alcuni determinati t → questi valori sono detti *campioni*
	- ($\star$) [Teorema di Nyquist](https://www.youtube.com/watch?v=FcXZ28BX-xE) (o Shannon-Nyquist):
		- È un teorema fondamentale nella teoria dell'informazione
		- Un segnale nel tempo è completamente determinato dai suoi campioni presi a distanza $T$ tale che $T\leq \frac{1}{2f_{max}}$, dove $f_{max}$ è la frequenza massima del segnale
			- $\implies$Se $T > \frac{1}{2f_{max}}$ il segnale non si può ricostruire completamente
		- La frequenza di campionamento $\frac{1}{T}$ è detta frequenza di Nyquist:$$f_{c} \geq 2f_{max}$$
			- Se la frequenza di campionamento è maggiore di $f_{c}$, allora non vi è alcuna perdita di informazione nel campionamento dell'onda
		- Come mai?
			- Se $f_{c}<2f_{MAX}$ si verifica il fenomeno di *aliasing*, ovvero ci sono più frequenze che possono passare per tutti i campioni → chi ricostruisce il segnale non può fare differenza tra questi casi
				- È un'ambiguità che porta ad una ricostruzione del tutto diversa da quella originale
				  
				  ![[Screenshot 2024-10-16 alle 22.11.23.png|425]]

		- Come si ricostruisce il segnale di partenza?
			- Si utilizza un filtro passa-basso (*low-pass*) che filtra tutte le frequenze sopra una certa frequenza, nel nostro caso la $f_{c}$ → in questo modo si rimuovono le ambiguità (aliases)
				- Il segnale è quindi ricostruito interamente 

### 2.1.2 - Quantizzazione

- Dopo aver campionato un segnale, devo convertirlo in bit
	- Il segnale è infatti discreto, perché campionato a intervalli discreti, ma i valori di tali campionamenti sono nel continuo
		- Infatti $S(t)$ può assumere tutti i valori in $(-\infty, +\infty)$
	- → Lo spettro delle ampiezze è "quantizzato", ovvero diviso in un numero finito di livelli discreti
		- Il numero di livelli $I= 2^b$, dove $b$ è il numero di bit necessari a descrivere l'ampiezza per ogni campionamento
		- Una volta stabilito $I$, ogni campionamento viene approssimato al livello più vicino e dunque rappresentato da $\log_{2} I$ bit
			- C'è sempre un errore di approssimazione, che diminuisce all'aumentare di $I$

	![[Screenshot 2024-10-07 alle 17.43.48.png|550]]


### 2.1.3 - Modulazione

- Dopo che il segnale è stato convertito in bit ed elaborato dal computer, deve essere trasmesso in un mezzo fisico
	- → È fondamentale la modulazione, per 2 motivi:
		- 1) Il segnale può essere trasmesso solo se analogico
			- Il segnale è stato elaborato dal computer, ma per poter passare per il mezzo trasmissivo deve essere modulato → si passa di nuovo da campioni digitali ad un segnale analogico continuo
			- Infatti sia la trasmissione cablata che quella wireless possono avvenire soltanto per mezzo di onde
		- 2) Il segnale deve rispettare certi limiti di banda
			- Infatti, mentre nel cablato il segnale può assumere tendenzialmente ogni frequenza, nel wireless esistono delle strettissime limitazioni statali sulle frequenze utilizzabili
			- → È spesso necessario traslare il segnale su una certa frequenza
			
			![[Screenshot 2024-10-16 alle 22.29.47.png|600]]


+ La modulazione può avvenire in modalità differenti
	+ 1) In base alla banda utilizzata:
		+ a) Banda base → i segnali hanno uno spettro contiguo all'origine
			+ È utilizzato unicamente per segnali cablati, in cui non ci sono limitazioni di banda
		+ b) Banda traslata (o passante) → i segnali sono traslati su una certa frequenza
			+ Si trasla l'impulso elettromagnetico attorno ad una sinusoidale detta *portante* (o *carrier*), che ha una determinata frequenza
				+ Spesso la banda passante è anche una regione nel dominio delle frequenze in cui si ha una migliore risposta in termini di attenuazione e dispersione
			+ NB → quando si trasla lo spettro, la banda B *raddoppia*
				+ Questo è legato a giustificazioni matematiche riguardanti la trasformata di Fourier
			+ 
			  ![[Screenshot 2024-10-16 alle 22.32.01.png|500]]
			  ![[1*2w-HR_LpeuFvhR31PvHnJA.png|500]]
			  
	+ 2) In base alla tecnica utilizzata:
		+ a) PAM (Pulse Amplitude Modulation)
			+ Ogni bit corrisponde ad un impulso di ampiezza positiva (1 → $A = +1$) o negativa (0 → $A = -1$)
			+ È quindi una modulazione binaria
		+ b) ASK (Amplitude Shift Keying) → si modula l'ampiezza della portante
			+ Determinata la $f$ portante, l'ampiezza di tale onda aumenta se c'è un 1, diminuisce se c'è uno 0
		+ c) FSK (Frequency Shift Keying) → si modula la frequenza della portante
			+ La frequenza della portante aumenta se c'è un 1, diminuisce se c'è uno 0
		+ d) PSK (Phase Shift Keying) → si modula la fase della portante
			+ Il segnale si inverte passando da uno 0 a un 1 o viceversa
		+ e) QAM (Quadrature Amplitude Modulation) → si modulano sia la fase che l'ampiezza
			+ È uno dei metodi di modulazione dati più utilizzati per il Wi-Fi e il 5G (in particolare 256-QAM)
	+ 3) In base al numero di bit per secondo trasmessi:
		+ a) Modulazione binaria → esistono solo due simboli per l'intensità del segnale (che si traduce in ampiezza, frequenza, fase)
			+ Se c'è 1 l'intensità è massima, se c'è 0 è minima
		+ b) Modulazione multilivello → esistono più livelli di quantizzazione, ovvero ogni "*simbolo*" assume più di un bit di valore
			+ In questo modo:
				+ i) Si ha un dettaglio maggiore nell'informazione
				+ ii) La comunicazione è più rapida → in un'unico campionamento si inseriscono più bit di informazione
			+ Alcuni esempi:
				+ N-ASK o N-PAM:
					+ La PAM (Pulse Amplitude Modulation) è la modulazione più semplice in assoluto → si crea un impulso di una determinata ampiezza in base al bit in uscita
					+ $N$ è proprio il numero di livelli
						+ Talvolta se $N = 4$ si sostituisce con la lettera $Q$
						+ Il numero di bit sarà chiaramente $\log_{2}N$
				+ N-PSK:
					+ I livelli di fase sono rappresentati sulla circonferenza goniometrica da [[Analisi 1|numeri complessi]], distribuiti uniformemente su di essa
						+ Questi sono determinati dalla seguente formula: $$
z=e^{i\frac{\pi}{N}+\frac{2k}{N}\pi}$$
						- La fase è data dall'angolo di tali punti
				- N-QAM:
					- I livelli di ampiezza e fase sono determinati da punti sul piano complesso, contenuti in un rettangolo centrato nell'origine
						- La parte reale è la fase ($\mathrm{Re}(z) = p$), la parte immaginaria l'ampiezza ($\mathrm{Im}(z)=A$)
						- es. Se $N = 16$, allora ci saranno 4 livelli per quadrante, ognuno sarà determinato da un valore di $\log_{2}16=4$ bit
				
				![[Screenshot 2024-10-20 alle 10.58.08.png|241]]![[Screenshot 2024-10-20 alle 10.55.53.png|247]]![[Screenshot 2024-10-20 alle 10.55.37.png|250]]


- Banda trasmissiva ($B_{TX}$)
	- È lo spettro di frequenze necessarie per il trasporto dell'informazione originale
	- Si calcola:
		- a) Se la modulazione è in banda base → $B_{TX, BB} ≈ b_{q}*f = \log_{2}N*f_{c}$
			- È quindi la frequenza di campionamento $f_{c}$ moltiplicata per il numero di bit per simbolo $b_{q}$ ($N = \text{numero di livelli}$)
		- b) Se la modulazione è in banda traslata → $B_{TX, BT} ≈ 2B_{TX, BB} ≈ 2\log_{2}N*f_{c}$
			- Si raddoppia la banda rispetto al caso precedente per motivi matematici legati alla trasformata di Fourier
	- A che cosa serve?
		- Serve a determinare se in un determinato canale l'informazione può passare nella sua interezza
		- Se la banda del canale $B_{C}$ (o banda passante) è maggiore o uguale alla banda trasmissiva $B_{TX}$, allora l'informazione viaggia senza perdite
			- Altrimenti, è come se venisse applicato un filtro al segnale → alcune frequenze sono perdute, quindi il segnale è alterato
		- In base alla banda del canale posso anche determinare la velocità (bitrate) dell'informazione
			- In generale, $$
R ≈ b_{q}*B_{C} = (\log_{2}N \; bit)*B_{C}$$
			- Infatti, se la banda passante è di $1000 Hz$, vuol dire che il canale può trasportare $1000\frac{simboli}{s}$, ovvero $1000\log_{2}N \frac{bit}{s}$ di informazione
			- Esiste un limite a questa velocità?
				- Sì → infatti, maggiore è il numero di livelli N, maggiore è la possibilità che il rumore nel canale distorca l'informazione
				- Bisogna quindi sempre trovare un equilibrio tra velocità e affidabilità del canale

### 2.1.4 - Attenuazione

- In un mezzo fisico bisogna sempre tenere presenti tre "pericoli" per il segnale:
	- 1) Rumore → è la presenza di elementi fisici (termodinamici) che alterano il valore degli impulsi nel tragitto
		- Il segnale non potrà mai arrivare perfettamente al destinatario
		- Se il rumore è tale da spostare l'intensità dell'onda di almeno un livello, l'informazione demodulata dal destinatario sarà diversa da quella in partenza
		- La probabilità $p$ di alterazione della sequenza di bit nel corso della trasmissione:
			- Aumenta all'aumentare della distanza da percorrere
			- Aumenta all'aumentare del numero di livelli
	- 2) Attenuazione → è la perdita esponenziale di potenza del segnale nel percorrere un mezzo trasmissivo
	- 3) Dispersione → ogni componente in frequenza del segnale viene sottoposto (per le leggi dell'ottica) a ritardi differenti
		- C'è il rischio che il segnale si scomponga

+ Attenuazione ($A$)
	- Se un segnale in ingresso ha una potenza $P_{IN}$ in ingresso e $P_{OUT}$ in uscita, si definisce attenuazione (o guadagno) del collegamento A$$
A = \frac{P_{OUT}}{P_{IN}}$$
	- Si può esprimere in:
		- a) Decibel ($dB$)
			- Si utilizza generalmente per indicare un valore relativo, in questo caso di potenza$$
A_{(dB)} =10\log_{10}\left( \frac{P_{1}}{P_{0}} \right)$$
				- Dove $P_{1}$ è la potenza in uscita, $P_{0}$ la potenza in ingresso
		- b) Decibel milliwatt ($dBm$) 
			- È un'unità di misura utile per scrivere le potenze $P$ in forma logaritmica, comparandole con un'unità presa ad $1mW$
			- Infatti $$
P_{(dBm)}=10\log_{10}\left( \frac{P}{1mW} \right)$$
			- Da questo si ricava, tramite proprietà dei logaritmi, che:
$$A_{(dBm)} = 10\log_{10}\left( \frac{P_{1}}{P_{0}} \right)=P_{1 \; (dBm)}-P_{0 \; (dBm)}$$
	- es. $$P_{0}=1000 W, \; P_{1} = 1W \implies A= 10\log_{10}\left( \frac{1}{1000} \right) = -30 dB$$

+ Attenuazione specifica ($\alpha$)
	+ Se vogliamo calcolare, invece, l'attenuazione su unità di lunghezza, si ha quest'equazione$$
P_{1}=P_{0}*e^{-\alpha L}$$
		+ Semplicemente, $\alpha$ si calcola come: $$\alpha = \frac{A}{L}
$$

- Power Budget
	- È la differenza tra la potenza media del trasmettitore ($P_{0}$) e la potenza del ricevitore necessaria per ottenere le prestazioni volute ($P_{1}$)
		- È quindi sostanzialmente la differenza minima tra $P_{0}$ e $P_{1}$ affinché il segnale possa essere letto dal ricevitore
	- Contrasta:
		- Le perdite di linea $\alpha L$
		- Altre perdite di linea (dovute a connettori, giunzioni) $A_{extra}$
		- Un margine di sistema $M$ per imprevisti

$$P_{0}-P_{1} \\_{(dbM)} =\alpha L+A_{extra}+M$$

- Classificazione dei mezzi trasmissivi
	- Mezzi elettrici → utilizzano cavi di rame, sfruttando le sue proprietà di conduttore
		- Hanno una determinata tensione $V$, una corrente $I$ e una resistenza $R$
		- Si utilizzano prevalentemente una serie di doppini in rame, ovvero una coppia di fili di rame intrecciati in maniera elicoidale e isolati
			- Questo minimizza il rumore e le interferenze, portando il segnale in due cavi contemporaneamente
			- I cavi non sono paralleli sennò formerebbero un'antenna
		- Tipologie:
			- Categoria 3 → 4 coppie di doppini contenute in una guaina di plastica
			- Categoria 5 → simile alla categoria 3 ma con un isolamento in teflon → migliore qualità del segnale
				- È utilizzato anche in combinazione con la fibra ottica nelle LAN
				- Ha un'attenuazione tipica di $\alpha = 0.2 \frac{dB}{m}$
			- Cavo coassiale → c'è un migliore isolamento rispetto al doppino, quindi una maggiore velocità di trasmissione
				- Viene utilizzato per esempio per la TV via cavo
		- Problema → minore possibilità di usare frequenze elevate
			- Infatti viste le lunghe distanze tra la centrale e le abitazioni, queste frequenze tendono a perdersi per via di effetti fisici legati al mezzo
			- → La capacità del cavo decresce al crescere della lunghezza
	- Mezzi ottici → si utilizza la fibra ottica, sfruttando la propagazione della luce in un mezzo materiale
		- Si sfrutta il fenomeno della rifrazione totale, ovvero quando l'angolazione della luce supera un valore massimo $\theta$ dato da:
$$\theta = \arcsin\left( \frac{n_{2}}{n_{1}} \right)$$
			- dove $n_{1}$ è l'indice di rifrazione del vetro della fibra ottica (*core* o nucleo), mentre $n_{2}$ è l'indice di rifrazione del *cladding* o mantello
		- Ne esistono due tipi:
			- Multimodale MMF → il core ha un diametro grande ($50 \mu m < d < 62 \mu m$)
				- La distanza di trasmissione è limitata, per via del fenomeno della dispersione modale
					- Considerando un rate $R = 10^9 \frac{simboli}{s}$, la distanza massima è 1 km
				- Si utilizza prevalentemente nelle reti locali e per i collegamenti nei datacenter
			- Monomodale SMF → diametro di core piccolo ($d < 10 \mu m$)
				- La banda passante è elevatissima ($≈ 10^{13} Hz$) e non risente della dispersione modale
				- → Si utilizza prevalentemente per reti a lunga distanza (centinaia di $km$) e ampia capacità
		- Attenuazione → è data dall'effetto Rayleigh scattering
			- La luce interagisce con le imperfezioni microscopiche del cavo o viene rifratta dalle fluttuazioni nella densità del vetro
			- In questo caso la luce si disperde → l'intensità diminuisce
			- L'attenuazione tipica è di $\alpha ≈ 0.002-0.0002 \; \frac{dB}{m}$ (molto bassa)
	- Onde radio → il segnale si propaga tramite un'onda elettromagnetica nello spazio e nel tempo
		- Viene prodotta da un'antenna, che oscilla alla stesa frequenza dell'onda in ingresso, e un'antenna ricevente converte nuovamente il segnale in digitale
			- Per quanto riguarda la trasmissione, il segnale modulato (in banda base o traslata) forma una corrente alternata (AC) che raggiunge l'antenna trasmittente
		- Essendo un'onda elettromagnetica, sfrutta chiaramente le proprietà delle onde elettromagnetiche:
			- a) Propagazione diretta (o line-of-sight) → le onde viaggiano lungo una linea dritta
			- b) Riflessione → le onde rimbalzano con un angolo di incidenza sugli ostacoli
			- c) Diffrazione e diffusione (scattering) → le onde sono tali da superare ostacoli o strettoie
		- Possono essere:
			- a) Onde di superficie ($f < 3MHz$) → le onde seguono le curvature della terra
			- b) Onde ionosferiche ($3 < f < 30MHz$) → le onde vengono riflesse dalla ionosfera
				- È uno strato dell'atmosfera compreso tra i 60 e i 1000 km
		- Attenuazione → ci sono due attenuazioni da considerare :
			- 1) Intrinseca (legata alla distanza) → si calcola con la legge di Friis: $$P_{1} = P_{0}G_{0}G_{1}\left( \frac{\lambda}{4\pi d} \right)^2$$
				- Dove:
					- $P_{0}$ è la potenza all'emissione dall'antenna
					- $G_{0}$ è il guadagno (gain) dell'antenna che trasmette
					- $P_{1}$ è la potenza alla ricezione dall'antenna
					- $G_{1}$ è il guadagno dell'antenna che riceve
					- $\lambda = \frac{c}{f}$ è la lunghezza d'onda 
					- $d$ è la distanza tra le due antenne
			- 2) Attenuazione legata all'atmosfera terrestre
				- Ossigeno e vapore acqueo assorbono parte dell'energia delle onde elettromagnetiche → c'è una perdita di potenza del segnale
				- Questo avviene prevalentemente per le frequenze elevate → per questo sono molto difficili da implementare (es. 5G, 6G)

---
### 2.1.S - Esercizi

- es. 2.1
$$
\begin{align}
f_{MAX} &= 120 Hz \\
I &= 256 = 2^8 \implies nbit = 8 \\
\end{align}
$$

Qual è la banda necessaria per 2-PAM? E per 8-PAM?

$$
\begin{align}
f_{C}&=2f_{MAX}= 240 hz \\
R &= 240 Hz * 8 bit = 1920 \frac{b}{s}
\end{align}
$$

R è il rate di informazioni con due bit, che possiamo anche indicare con $R_{2}$
Se abbiamo una modulazione in M-PAM, dove M è un numero reale, il numero di simboli per secondo, oppure $R_{M}$
$$R_{M} = \frac{R_{2}}{\log_{2}{M}} = \frac{1920 \frac{b}{s}}{\log_{2}{8} b}= 640 Hz$$

Quindi la banda $B$ passante deve essere $$
B \geq 640 Hz
$$

- es. 2.3
$$\begin{align}
B &= 4 * 10^3 Hz \text{    (banda traslata)}\\
I &=256 \\
B_{P} &= 50 * 10 ^3 Hz \\
\end{align}$$

Siamo in grado di mandare queste sequenza in 16QAM e QPSK?

$$\begin{align}
&b_{k}=8 bit \\
&R_{2}=10*10^3 * 8 \frac{b}{s} = 80 * 10^3 \frac{b}{s}\text{  (bitrate)} \\
&R_{M}= \frac{R_{2}}{\log_{2}M} \\
\implies &R_{16QAM} = \frac{R_{2}}{4} = 20 * 10^3 Hz \\
\implies &R_{QPSK} = \frac{80}{2} * 10 ^3 = 80*10^3 Hz \\
\end{align}$$

Per calcolare la banda dobbiamo ricordarci che la banda è traslata

$$\begin{align}
\implies &B_{n} = 2B \\
\implies &B_{16} = 2R_{16} = 40 * 10^3 Hz \\
\implies &B_{4} = 2R_{4} = 80*10^3 Hz
\end{align}$$


2.5) M-QAM, banda base, $R_{B} = 100 * 10^6 \frac{b}{s}$, $B = 25 * 10^6 Hz$. Qual è il numero M di livelli?

$$\begin{align}
\log_{2}M&=\frac{R_{B}}{R_{S}} \geq \frac{R_{B}}{B} = \frac{100*10^6 \frac{b}{s}}{25 * 10 ^6 Hz} = 4 bit \\ \\

\implies M &\geq 2^4 = 16
\end{align}$$

TDE 2) es. 3

8PAM, $R_{S} =80 * 10^6 \frac{simboli}{s}, M = 256$

1. $f_{c}?$
2. $B?$

$$\begin{align}
R_{S} &= \frac{R_{B}}{\log_{2}M} \implies R_{B}=\log_{2}(M)R_{S} = 3 bit* 80*10^6 \frac{simboli}{s} = 240 * 10^6 \frac{b}{s} \\
R_{B}&=f_{C}b_{Q} \implies  f_{c} = \frac{R_{B}}{b_{Q}} = \frac{240*10^6 \frac{b}{s}}{8 bit} =30 * 10^6 Hz \\
B &\leq \frac{f_{C}}{2} = 15 * 10^6 Hz
\end{align}$$

- es. 2.6
$$\begin{align}
L &= 20 km \\
\alpha &= 0,2 \frac{dB}{km} \\
P_{IN} &= 10 mW \\
P_{OUT} &= \; ?
\end{align}$$

$$P_{OUT} = P_{IN}*e^{-\alpha L} \implies P_{OUT, dBm} = P_{IN, dBm} - L(10\alpha \log_{2}(e))=10mW - L\left( 10\alpha \frac{\log_{10}(e)}{\log_{10}(2)} \right)=10mW - \dots$$
- es. boh

$$
\begin{align}
\alpha &= 0,2 \frac{dB}{km} \\
A &= 30 dB \\
P_{OUT} &= 17 dBm \\ 
\end{align}$$


NB 

$$dBm \to  \frac{1}{1mW}$$

- es.

CDROM con 15 brani
$$\begin{align}
t &= 3 min \text{  per brano} \\
B &= 22 kHz\\
L &= 256\\
B_{CH} &= ?\\
\end{align}$$

$$\begin{align}
f_{c} = 2B = 44 Khz \\

R_{B} = f_{c}*b_{Q}=44 kHz*8b = 352 \frac{kb}{s} \\

B_{CH} \geq \frac{RB}{\log_{2}M}  \\
\implies  B_{CH}\geq R_{B} = 352 \frac{kb}{s} \\
\implies  M = 2
\end{align}$$

$$
\begin{align}
M =?  \\  

\end{align}
$$

es. 2.2
$$
\begin{align}
B = 20 kHz \\
Lq = 1024 \\
bq = \log_{2}Lq = 10 \\
\implies fc \geq 40 K \frac{samples}{s} \\
Rb = 40 \frac{k(samples)}{s}
\end{align}
$$

---
## 2.2 - Livello di linea

- È il primo livello logico presente nel modello ISO/OSI
	- Dai puri bit, in forma digitale, il contenuto viene organizzato in *frame*
		- È l'unità basilare del livello di linea (PDU-2)
	- Ci sono alcune funzionalità fondamentali:
		- 1) Si identificano i gruppi di bit che arrivano dal livello fisico e si organizzano (*framing*)
		- 2) Segnalare e correggere gli errori di livello fisico 
		- 3) *Multiplazione* → informazioni provenienti da più terminali vengono messe insieme (multiplate) in un unico flusso di bit
		- 4) Acesso multiplo → si riesce a gestire arrivi asincroni
	- Viene implementato in generale nella scheda di rete (*NIC* - Network Interface Card)
		- È un hardware collegato alla scheda madre dei computer

+ Esistono diversi tipi di livello di linea
	+ a) Collegamento punto-punto (*P2P*)
	+ b) Collegamenti broadcast
		+ I dati vengono immessi in un circuito di rete senza una specifica destinazione
		+ L'idea è quella della TV via cavo, della radio o dello streaming

### 2.2.1 - Framing

- La prima cosa fondamentale del livello di linea è ricostruire i frame a partire dal livello fisico
	- Come capire quando il messaggio inizia / finisce?
		- L'inizio del frame viene segnalato da un flag, ovvero un segnale di inizio del messaggio
		- Quello più comune è l'HDLC (High-Level Data Link Control)
			- La flag qui è un ottetto di bit di cui 6 uno consecutivi (01111110)
			- Problema → e se succedesse che nel segnale ci sono 6 uno consecutivi?
				- Si utilizza il *"bit stuffing"* → se nel messaggio ci sono 5 bit consecutivi, si inserisce uno 0 dopo, per prevenire la presenza di duplicati del codice
					- Una volta costruito il frame vengono rimossi sia i bit di controllo, che i bit "stuffed"

![[Screenshot 2024-12-03 alle 09.02.26.png]]![[Screenshot 2024-12-03 alle 09.07.05.png]]


### 2.2.2 - Multiplazione

- I protocolli di linea possono essere multiplati su più canali fisici
	- Questa multiplazione avviene in maniera tale da far convivere più flussi di informazione nello stesso cavo
	- Ci sono varie tecniche fondamentali di multplazione, spesso combinate:
		- 1) *SDM* (Space Division Multiplexing)
			- Nel caso più concreto, i collegamenti in fibra ottica di solito contengono più cavi → ogni cavo potrebbe portare un'informazione differente
		- 2) *FDM* (Frequency Division Multiplexing)
			- Sullo stesso cavo, ogni informazione potrebbe essere traslata ad una determinata frequenza base
			- La banda viene divisa in sotto-bande, di minore ampiezza, ognuna assegnata ad un collegamento
				- Questo può portare però ad un'ampia inefficienza di trasmissione, con una banda molto ristretta
		- 3) *TDM* (Time Division Multiplexing)
			- I vari segnali viaggiano sulle stesse frequenze ma a tempi intervallati
				- Ogni frame temporale viene diviso in sub-frame, ognuno assegnato ad un collegamento
			- Alcune formule:
				- $V$ = velocità di uno dei flussi di bit (bits/s)
				- $W$ = velocità totale del multiplexer
				- $N$ = numero di collegamenti 
				- $k$ = numero di bit per ogni sub-frame (bits)
				- $T_{T}$ = durata di un frame
				- $T_{S}$ = durata dello slot
		- 4) *CDM* (Code Division Multiplexing)
		- 5) *WDM* (Wavelength Division Multiplexing)

![[Screenshot 2024-12-03 alle 09.39.27.png]]

### 2.2.3 - Broadcast

- Evoluzione delle rete broadcasting
	- All'inizio della storia dell'internet, ai tempi di ARPANET, le reti broadcast erano già estremamente sviluppate
		- Si raggiungevano velocità nell'ordine dei Mbps
		- → Il segreto era il canale broadcast senza funzione di rete (commutazione / switching)
			- Tutti ricevono i pacchetti, ma solo il destinatario preleva la trama e la inoltra ai livelli superiori
	- Oggi invece i canali broadcast devono gestire tante trasmissioni contemporanee, che potrebbero creare collisioni
		- Si utilizza quindi la tecnica dell'*accesso multiplo* (multiple access) che permette di regolare l'accesso in entrata al canale ed evitare collisioni
		- Le tecniche sono simili rispetto alla multiplazione:
			- 1) *FDMA* (Frequency Division Multiple Access) 
				- La banda è divisa in maniera intelligente, ad esempio assegnando una banda maggiore ai collegamenti che lo richiedono
			- 2) *TDMA* (Time Division Multiple Access)
				- Ogni frame viene diviso in slot temporali dedicati alle varie trasmissioni
				- In tutto ciò bisogna considerare i tempi di propagazione del segnale tra i vari utenti
					- Negligere ciò provocherebbe una collisione
					- → Si introducono dei tempi "vuoti", detti *tempi di guardia* per evitare questo problema
				
			  ![[Screenshot 2024-12-03 alle 09.59.12.png]]
			  
		-  A gestire l'istante in cui partono i vari pacchetti può essere:
			- a) Un entità centrale (reti coordinate)
			- b) Ogni singola stazione (reti ?) → sono la maggior parte
				- Il livello di linea si divide in due sotto-livelli → *MAC* (Medium Access Control) o *LLC* (Logical Link Control)
					- Il MAC si occupa dell'accesso multiplo
					- L'LLC si occupa delle altri funzioni di linea

### 2.2.4 - Reti Locali (LAN)

- La LAN viene definita e standardizzata dal progetto IEEE 802
	- L'IEEE (Institute for Electrical and Electronic Engineers) è l'organismo principale di standardizzazione delle tecnologie per internet


### 2.2.S - Esercizi

es. 6.1
- 
$$
\begin{align}
N = 10 \, (slot)\\
k = 128 \; (\text{bit per slot}) \\
V = 64 \frac{kb}{s} \\
W, T, T_{s}?
\end{align}
$$

---
## 2.3 - Livello di rete

### 2.3.1 - Stato di rete

- A cosa serve lo stato di rete?
	- Il livello di trasporto serve a mettere in relazione due applicativi
	- Lo stato di rete invece si occupa di trasferire i dati tra i terminali
		- A chi vengono inviati i dati? Per che strada passano?
	- NON può gestire i contenuti
		- Questi sono compiti del livello di trasporto
		- Invece, il livello di rete si occupa solo di un servizio a massimo effort che sia efficiente

+ Ci sono due funzioni tradizionali per ogni router:
	+ 1) Inoltro (*forwarding*) → il router trasferisce i pacchetti dall'ingresso all'uscita
		+ Lo fa in base alle tabelle di routing che sono decise da algoritmi molto sofisticati
	+ 2) Instradamento (*routing*) → viene determinato il percorso dei pacchetti fino alla destinazione
		+ Questo viene trovato da degli algoritmi, ma può avere alcune specificità
		+ → I router leggono tutti gli strati da quello fisico a quello di rete
			+ Ci sono degli indirizzi fisici che stanno alla base della mappatura del pacchetto
			+ Non si interessano quindi livello di trasporto e livello applicativo


- I pacchetti del livello di rete si chiamano *datagrams* (datagrammi)
	- Si aggiunge al segmento del livello di trasporto anche l'header IP

### 2.3.2 - Indirizzo IP

+ Cosa indica?
	+ Non identifica un terminale, ma una delle interfacce di rete di un terminale
		+ Per esempio, un computer ha un'interfaccia di rete Wi-Fi, una porta per la connessione cablata... → ci sono più IP legati ad ogni dispositivo
			+ Il telefono ha sia un IP per la connessione Wi-Fi, che uno per la rete 5G
		+ Esistono indirizzi IP privati (legati ad un utente in particolare) e IP pubblici 
	- Come si trova?
		- Ogni gestore di rete ha a disposizione un blocco di indirizzi IP, che distribuisce alla sue interfacce


+ Come è scritto? (IPv4)
	- È un numero binario composto da 32 bit
	- Viene però espresso solitamente in forma decimale, in questo modo:
		- I 32 bit si dividono negli ottetti di bit x, y, z, w
		- Il numero si scrive poi come x.y.z.w con i quattro numeri scritti in decimale
			- Un numero di 8 bit può andare da 0 a 255 in base 10
	- Ogni IP si divide in due parti:
		- 1) *NetID* (o prefix) → identificano la rete sui cui è collegato il terminale
			- La lunghezza del NetID dipende dal tipo di rete
				- Reti più grandi avranno NetID più corti, per permettere la connessione di più utenti
			- Per capire quanto è lunga si utilizza la *netmask*
				- È un numero binario di 32 bit associato ad una rete IP
				- In questo numero, i bit dell'IP che corrispondono al NetID sono segnati come 1, gli altri sono 0
					- Il numero di bit 1 nel netmask è indicato alla fine dell'IP (es. 130.86.0.0/16)
				- es. Se la netmask è 255.255.254.0, che in binario è 11111111111111111111111000000000 (23 uni e 9 zeri), vuol dire che la NetID è lunga 23 bit e la HostID 9 bit
		- 2) *HostID* → identificano un host specifico o un'interfaccia specifica
			- es. Se una rete, come la rete del politecnico ha IP = 193.17.31.0, alcuni dispositivi connessi a questa rete possono avere ad esempio IP = 193.17.31.45, IP = 193.17.31.55, IP = 193.17.31.254 ...
				- Le prime cifre sono uguali, le ultime identificano il dispositivo connesso su tale rete


+ Curiosità → gli indirizzi IP nel mondo sono già quasi finiti 
	+ Il numero totale di indirizzi unici è $2^{32} = 4 294 967 296 ≈$ 4,3 miliardi 
		+ Non tutti però sono pubblici → ci sono circa un miliardo di IP dedicati a reti private, oltre a IP riservati o dedicati a test e ricerca
			+ Quelli pubblici stimati sono circa 3,7 miliardi
		+ Pochi anni fa è stato annunciato l'esaurimento degli indirizzi IP
	+ → Soluzioni:
		+ 1) NAT (Network Address Translation)
		+ 2) Compravendita di IPv4 → questa già oggi è estremamente in uso
			+ Alcuni indirizzi IP non più in uso vengono venduti a quote elevate
		+ 3) Migrazione verso IPv6
			+ Utilizza 128 bit → gli IP totali possibili sono $2^{128}=340*10^{36}$ (!!!)
			+ Risolve il problema di esaurimento, ma la transizione è difficile e lenta

### 2.3.3 - Forwarding

- I pacchetti devono essere inoltrati nelle reti attraversate
	- I pacchetti sono incapsulate in segmenti di livello di trasporto
		- Per trovare il dispositivo di arrivo però si trovano gli indirizzi MAC (livello di linea)
	- Ci sono due tipologie fondamentali di forwarding:
		- 1) Inoltro diretto → avviene quando la destinazione è sulla stessa rete IP
			- La sorgente e la destinazione sono locali, su una stessa rete privata o pubblica
			- Processo:
				- a) B deve inviare dei datagrammi ad A
				- b) Nel momento in cui il terminale B legge l'indirizzo del terminale A, si accorge che si trova sulla stessa rete (hanno lo stesso NetID)
					- Questo processo avviene tramite due confronti bit a bit:
						- i) IP-A && (= AND) Netmask
						- ii) IP-B && Netmask
					- I due confronti trovano il NetID di A e il NetID di B
						- Se i due coincidono, allora i terminali sono sulla stessa rete
				- c) B consulta una tabella che associa indirizzi IP (di rete) e indirizzi MAC (di linea) e trova l'indirizzo MAC di A
				- d) B invia i datagrammi al livello di linea, effettuando l'incapsulamento, creando il collegamento verso A
			  ![[Screenshot 2024-11-26 alle 08.47.35.png]]![[Screenshot 2024-11-26 alle 08.54.53.png]]
			  
		- 2) Inoltro indiretto → avviene quando la destinazione non è sulla stessa rete IP
			- Avviene tutte le volte che navighiamo sul web e ci colleghiamo a dei server non locali
			- Processo:
				- a) B deve inviare dei datagrammi a D
				- b) Nel momento in cui B legge l'indirizzo IP di D, confronta il suo NetID con quello di D e i due non combaciano → D si trova su una rete diversa
					- Il confronto è fatto identicamente rispetto all'inoltro diretto, ma qui ha esito negativo
				- c) B allora deve inoltrare i datagrammi ad un router C, che si trova sulla sua stessa rete
					- Di solito su ogni rete è configurato solo un default router, che ha un indirizzo HostID fisso (in questo caso 254)
				- d) B utilizza la tabella che associa IP a MAC e trova l'indirizzo MAC di C
				- e) B invia i datagrammi al livello di linea, effettuando l'incapsulamento, creando il collegamento con il router C
			  
			  ![[Screenshot 2024-11-26 alle 09.00.55.png]]![[Screenshot 2024-11-26 alle 09.02.39.png]]

	- Anche i router effettuano un'azione di forwarding
		- 1) Inoltro diretto → se l'indirizzo di destinazione è sulla stessa rete del router
		- 2) Inoltro indiretto → si utilizzano delle tabelle di routing che presentano al router il percorso ideale per i datagrammi
			- Caratteristiche fondamentali:
				- a) *Destination based* → l'inoltro è basato solo sull'IP di destinazione, non quello di partenza o di provenienza
					- In particolare si utilizza il NetID dell'indirizzo di destinazione
				- b) *Next-hop routing* → ad ogni router viene solo indicato il prossimo nodo a cui inoltrare i datagrammi, non gli interessano quelli successivi
			- Come funzionano le tabelle di routing?
				- Il router deve eseguire il confronto dei suoi indirizzi IP con gli indirizzi IP di tutti i possibili destinatari presenti nella tabella
					- Il confronto è lo stesso confronto bit a bit che ha come scopo scoprire se la destinazione è sulla stessa rete
					- Si ricorda che i router collegano più reti, quindi dispongono di più indirzzi IP (disegno sotto)
				- Ci sono alcuni casi da analizzare:
					- i) Se ci fossero più indirizzi sulla stessa rete?
						- Si sceglie tramite il criterio del *longest prefix matching* → si sceglie la sotto-rete con la netmask più lunga
							- È la rotta più "specifica" e più veloce
					- ii) Se non ci fossero indirizzi sulla stessa rete?
						- In realtà non è possibile, perché esiste nella tabella un indirizzo di destinazione 0.0.0.0 con netmask 0.0.0.0 → ogni indirizzo di routing ha confronto bitwise positivo
						- Questo è il "caso limite" nel caso in cui nessuno degli altri indirizzi abbia collegamento diretto con il router
				- Una volta determinata la destinazione migliore, in base al first hop segnato sulla tabella, il router deve capire da quale delle sue interfacce deve far partire il messaggio
					- Anche in questo caso si fa un confronto delle NetID
		  ![[Screenshot 2024-11-26 alle 09.12.38.png]]![[Screenshot 2024-11-26 alle 09.14.10.png]]![[Screenshot 2024-11-26 alle 10.06.07.png]]

### 2.3.4 - Routing

- Come vengono scritte le tabelle di routing?
	- Tramite un algoritmo che viene eseguito dai router, i nodi di livello 3 OSI
		- Viene detto algoritmo di routing o politica di routing
			- Segue le stesse caratteristiche del forwarding → destination-based, next-hop routing
				- In generale, devono essere algoritmi semplici, robusti, stabili
			- → I pacchetti anche se arrivano da nodi diversi ma che hanno la stessa destinazione, seguiranno lo stesso percorso
		- L'algoritmo può essere:
			- a) Centralizzato → un nodo principale prende le decisioni e tutti i nodi lo seguono
			- b) Distribuiti → ogni nodo contribuisce alle decisioni 
				- È il modello di gran lunga principale per internet
			- c) Isolati → ogni nodo prende decisioni autonome
	- Consente ai diversi terminali di comunicare tra loro mediante i nodi intermedi
		- Da ogni nodo di partenza deve esserci almeno un percorso per arrivare al nodo di destinazione
	- Non sono mai fisse, ma cambiano continuamente → approccio dinamico
		- Alcuni svantaggi di un algoritmo fisso:
			+ a) Per cambiare le tabelle bisogna che tutta la rete si aggiorni
			+ b) È difficile reagire a sovraccarichi e traffici di corrente
				+ La congestione della rete è fondamentale determinare l'efficienza della comunicazione
			+ c) La rete varia molto velocemente
				+ Si creano spesso nuovi link, alcuni hanno guasti
		- Alcuni parametri che i router devono avere costantemente sono:
			- a) Numero di salti
			- b) Capacità dei link
			- c) Ritardo medio
			- d) Numero totale di pacchetti in coda+
		- L'algoritmo quindi stabilisce:
			- a) *Metriche* per valutare il "costo" / "peso" degli elementi di rete
				- Valutano i dati a disposizione per stabilire i percorsi migliori
				- Se abbiamo bisogno di un parametro più che di un altro, variamo la metrica
					- es. Abbiamo bisogno di efficienza e ritardo basso e non ci interessa l'affidabilità del segnale (UDP)
			+ b) La *modalità* di comunicazione tra i nodi intermedi

	![[Screenshot 2024-11-27 alle 14.56.23.png]]

### 2.3.S - Esercizi



---

## 2.4 - Livello di Trasporto

### 2.4.1 - Servizio di trasporto

- Alla base del livello di trasporto c'è il compito di installare un *collegamento logico*
	- È una connessione virtuale che consente a due applicazioni di host diversi (remoti) di comunicare in maniera strutturata, indipendentemente dal trasporto fisico utilizzato
		- Il livello di trasporto deve essere indipendente dal mezzo trasmissivo → è una connessione virtuale
	- Viene quindi detto rendere *trasparente* il trasporto fisico

- Il livello di trasporto permette ai vari dispositivi di far coesistere diverse applicazioni
	- Ogni collegamento tra applicativi funziona tramite il livello di trasporto
	- Su un host possono essere attivi i protocolli HTTP, FTP e SMTP allo stesso tempo → il servizio di trasporto svolge funzione di *multiplexing*/*demultiplexing*
		- Queste funzioni funzionano grazie alle [[Fondamenti di Telecomunicazioni#^porta|porte]], contenute nelle PDU del livello di trasporto

+ Dove viene gestito il livello di trasporto?
	+ Si utilizza (come il livello applicativo) solo nei nodi terminali
		+ I router non leggono questo livello
	+ Funziona infatti a livello di *kernel* (sistema operativo)
		+ È il sistema operativo ad assegnare le porte variabili
	+ Come fa il sistema operativo a gestire i file?
		+ Per ogni porta di un terminale (client o server) il sistema operativo crea due code, una di ingresso e una d'uscita, da cui vengono ricevuti/trasmessi i dati
		+ Esiste anche una funzionalità di *buffering* → i file vengono memorizzati temporaneamente

- Nell'internet capitano molti errori di trasmissione → come gestirli?
	- a) Trasporto affidabile → TCP (Transmission Control Portocol)
	- b) Trasporto non affidabile → UDP (User Datagram Protocol)


### 2.4.2 - UDP
 
- È la modalità più semplice tra i due in assoluto → perché:
	- a) Non aggiunge quasi nulla al protocollo IP, tranne:
		- a) Indirizzamento delle applicazioni (funzione di multiplexing)
		- b) Blando controllo d'errore sull'header (checksum)
	- b) Non richiede una connessione stabile tra mittente e destinatario
		- I "*datagram*" o datagrammi sono autonomi e non richiedono questo tipo di connessione
			- Sono i pacchetti del livello di linea, con aggiunto un breve header UDP
		- → Non viene garantita la consegna dei dati

- Struttura dell'header UDP:
	- In totale ci sono 8 B (byte) = 64 bit
	- 1) Source port (identificativo della porta d'origine) (2B)
		- Siccome la porta è data da 16 bit, il numero massimo di porta è $2^{16}-1=65535$
	- 2) Destination port (identificativo della porta di destinazione)
	- 3) Length → è la lunghezza del pacchetto (2B)
		- (!!!) La lunghezza comprende la lunghezza dell'header: $$L_{TOT} = L_{PAYLOAD} + 8B$$
		- Quindi la lunghezza massima del payload sarà $(2^{16}-1-64) B =65527 B ≈ 65kB$
	- 4) Checksum → campo che controlla l'integrità del pacchetto (2B)
		- È calcolato dal trasmettitore tramite un algoritmo
			- Poi il ricevitore utilizza l'algoritmo inverso per determinare se il pacchetto è valido
		- Si calcola a partire da:
			- a) Payload 
			- b) Header UDP
			- c) Pseudo-header IP
				- È un elemento strano perché "viola" la modularità della struttura dell'internet
		- L'algoritmo è dato dai seguenti passaggi:
			- 1) Il messaggio (payload+header+pseudo-header) è diviso in blocchi di 16 bit
			- 2) Il campo checksum è inizializzato a 16 zeri
			- 3) Si sommano tutti i blocchi di 16 bit (operazione binaria)
			- 4) Si fa il complemento (a 1) della somma 
				- Gli 0 diventano 1, gli 1 diventano 0
			- 5) Il risultato viene inserito nel checksum
			- → Quando l'algoritmo viene svolto nuovamente dal ricevitore:
				- Se il risultato sono 16 zeri, il pacchetto potrebbe essere sano
					- NB → il risultato NON è garantito → più errori possono annullarsi e dare risultato nullo
				- Se il risultato è diverso da 0, il pacchetto è stato corrotto

### 2.4.3 - TCP

- Il collegamento ricercato è quello ideale
	- TCP è un protocollo *connection-oriented*
		- Si basa sull'idea su una connessione stabile e duratura
	- Le caratteristiche richieste sono:
		- 1) Integrità del messaggio
		- 2) Ordine corretto dei pacchetti
		- 3) Mancanza di duplicati
	- → È possibile qualcosa del genere?
		- Lo utilizzano le applicazioni che hanno come priorità l'integrità dei file scambiati (es. posta elettronica)


+ Versioni di TCP
	+ Ci sono molte versioni del protocollo → quella presentata qui è TCP Tahoe
	+ La versione oggi più utilizzata è invece TCP Cubic
		+ Sia Apple, che Microsoft, che Linux lo utilizzano
	+ Altre versioni sono TCP BBR, TCP NewReno...

#### 2.4.3.1 - Protocolli di gestione dell'errore

- Da dove vengono generati gli errori di livello TCP?
	- Non parliamo di errori fisici, ma di errori nella gestione dei segmenti (datagrammi di rete)
		+ Infatti esiste anche un controllo degli errori a livello fisico, siccome è lì che avvengono la maggior parte degli errori → lo fa il livello di linea
	- Gli errori possono essere di diversa natura:
		- 1) Perdita di un pacchetto → viene causato dall'overflow delle code di un router, dovuto alla congestione eccessiva
		- 2) Ritardo nell'arrivo di un pacchetto → viene causato dall'eccessiva attesa nelle code dei router
	- Questo controllo degli errori viene svolto *end-to-end*


+ ll protocollo TCP utilizza una serie di messaggi segnaletici fondamentali:
	+ 1) Acknowledgement (ACK) → segnala la ricezione positiva di una trama
	+ 2) Not acknowledgement (NACK) → segnala la ricezione negativa di una trama (trama corrotta)
		+ Mancanza di ACK o  presenza di NACK → la trama non è stata ricevuta e deve essere nuovamente spedita
	+ → Tutte le trame continuano ad essere inviate finché non si ottengono i messaggi di ACK
		+ NB → anche i messaggi di controllo possono venire corrotti (!)


- Le modalità di gestione sono 3:
	- 1) *Stop-and-wait* → poco funzionale ed efficiente
	- 2) *Go-Back-N* → quella più utilizzata
	- 3) *Selective repeat*

+ 1) Stop-and-Wait
	- Come funziona?
		- Si utilizza solo ACK e un contatore di *time out*
			- Dal momento in cui il messaggio è inviato, parte il counter di time out 
				- Quindi sostanzialmente appena finita la trasmissione del messaggio e appena iniziata la propagazione
			- Se il messaggio è ricevuto correttamente, si invia un segnale di ACK → si ferma il timer
			- Se invece il counter scade, il pacchetto viene ritrasmesso
		- Il time out funziona se $$
	T_{T/O} > 2\tau +T_{ACK}$$
			- Dove:
				- $\tau$ → tempo di propagazione
				- $T_{ACK}$ → tempo di trasmissione dell'ACK
			- Altrimenti non avrebbe senso → il counter scatterebbe sempre prima del messaggio di ACK
		- Possibili problemi e soluzioni:
			- 1) Se il messaggio viene ricevuto ma si perde il messaggio di ACK?
				- Se il pacchetto viene rinviato, si ottiene una duplicazione del pacchetto
				- → Soluzione: introduciamo un sistema di numerazione di pacchetti (SN)
					- Ogni pacchetto si lega ad un identificativo e due pacchetti identici hanno lo stesso identificativo
					- Quindi se due pacchetti hanno lo stesso SN il ricevitore ne scarta uno
			- 2) Se l'ACK arriva in ritardo?
				- Ipotizziamo che l'host abbia un computer lento
					- Un pacchetto arriva all'host ma per problemi tecnici questi tarda ad inviare l'ACK
					- Nel frattempo, potrebbe scadere il time-out e prima che arrivi l'ACK del primo pacchetto il server ne potrebbe già far partire un altro
					- → Il server interpreta l'ACK del primo pacchetto come ACK del secondo, ma quando gli arriva l'ACK del secondo non sa cosa fare
				- → Soluzione: introduciamo una numerazione anche degli ACK (RN, numero di riconoscimento)
	+ Efficienza del protocollo stop-and-wait
		+ È data dalla frazione di tempo in cui il canale è utilizzato per inviare un messaggio utile in assenza di errori
		+ 
		  $$\eta = \frac{T}{T+T_{ACK}+2\tau}$$
			- Dove:
				- $T$ → tempo di propagazione del messaggio
				- $T_{ACK}$ → tempo di propagazione dell'ACK
				- $\tau$ → tempo di propagazione del messaggio
		- In generale, è un protocollo molto poco efficiente
			- 1) È poco efficiente se $T \ll \tau$
			- 2) Non è adatto con un elevato ritmo di trasmissione
			- 3) È utilizzato spesso in modalità *half-duplex*


+ 2) Go-Back-N
	- Invece di mandare un singolo pacchetto e aspettare, si invia una finestra di pacchetti
		- Si possono avere fino a N pacchetti prima di avere il riscontro
		- Sostanzialmente esiste una finestra di pacchetti che sono stati inviati ma di cui non si ha ancora avuto riscontro
			- Se un ACK arriva, questa finestra "shifta" di un pacchetto verso destra
			- Se invece un ACK non arriva, dopo un certo tempo scatta un timeout e quel pacchetto viene ritrasmesso
		- È anche importante che i pacchetti arrivino in ordine
			- Se i pacchetti vanno da 1 a 7, e ricevo i pacchetti 1, 3 e 4 ma non il pacchetto 2, è un problema → i pacchetti non sono in ordine
				- Quando il ricevitore si accorge che arriva il pacchetto 3 ma non il 2, anziché inviare l'ACK di 3, re-invia l'ACK di 1, così il trasmettitore è obbligato a rimandare l'1
			- → Quindi si deve ricominciare DA CAPO, dal pacchetto uno
		- L'ACK può essere cumulativo
			- Questo avviene perché nell'internet ricevitore e trasmettitore di solito sono compresenti negli host → ogni terminale invia e riceve dati
			- In questo modo è quindi molto più efficiente scambiarsi gli ACK
	
	+ Da cosa è dato il dimensionamento $W$ della finestra?
		+ Si ha che:
	$$W = \Bigl\lceil \frac{RTT}{T} \Bigr\rceil  = \Bigl \lceil \frac{T+T_{ACK}+2\tau}T{} \Bigr\rceil$$
		- In questo modo, se tutto prosegue correttamente, non dovrebbero esserci tempi di attesa tra un invio e un altro
			- Infatti, immaginando W = 6, non appena il sesto pacchetto arriva a destinatario, il primo ACK è ricevuto dal mittente
		- → In un caso IDEALE (senza perdite), $\eta$ è massima (= 1)
			- È estremamente più efficiente di Stop-and-Wait, per il fatto che le distanze tra i terminali di solito sono così elevate che $\tau \gg T$
			- Ovviamente, non siamo mai in un caso ideale
				- Infatti $\tau$ non è costante ma può variare nel tempo al variare del traffico della rete (vedi riduzione congestione)
			- Il TCP deve calcolare, in casi reali, un valore opportuno per il timeout e per la finestra stimando l'RTT (variabile nel tempo)
		- L'efficienza è ancora maggiore se si utilizzano i NACK
			- Anziché aspettare, il trasmettitore invia subito la mancanza di riscontro
	- Spesso il Go-Back-N si utilizza in modalità *full-duplex*
		- Lo stesso canale viene usato per ricevere e inviare da entrambi i lati → si invia un doppio flusso di dati e un doppio flusso di ACK
		- In questo caso spesso si usa la tecnica di *piggy-backing*
			- Anziché inviare separatamente ACK e segmenti, gli ACK vengono inseriti negli header dei segmenti, in modo tale che il numero di messaggi scambiati sia inferiore
				- Si aggiunge quindi nell'header il SN del pacchetto trasmesso e il RN del pacchetto atteso in direzione opposta
		- Un altro aspetto fondamentale è la capacità di concordarsi sul momento di inizio della trasmissione
			- Infatti se manca un t = 0 comune, i SN e i RN non saranno mai allineati
			- → Per questo in TCP è così importante l'orientamento alla connessione
		  
		  ![[scr 2024-12-18 alle 08.46.22.png|600]]


+ 3) Selective repeat
	- I pacchetti che arrivano nell'ordine sbagliato sono inviati in un buffer
		- Si utilizza della memoria per velocizzare la velocità di invio di pacchetti
	+ Controllo di flusso
		+ Il buffer ovviamente ha una capacità limitata → come poterla sfruttare al massimo per velocizzare il processo di trasmissione, evitando però che i pacchetti trovino il buffer pieno?
			+ In più il buffer impiega del tempo a caricare dati verso l'applicativo
		+ → Nasce un protocollo di gestione dinamica della finestra
			+ La sorgente non può inviare più di un certo numero W di trame, numero che però si evolve nel tempo in base a vari parametri
				+ Dipende prevalentemente dallo spazio libero nel buffer del ricevente
				+ Infatti se il buffer inizia a riempirsi, il destinatario avvisa il trasmittente dicendogli di diminuire il parametro W di dimensionamento della finestra
				+ Questo avviene grazie all'inserimento di W nell'header TCP, assieme ai numeri SN e RN
			+ I meccanismi di gestione dinamica della finestra sono approfonditi successivamente
	+ È questo il metodo utilizzato in prevalenza da TCP
		+ Infatti i contatti tra livello applicativo e di trasporto sono mediati da un buffer, nel quale l'applicativo invia i dati al TCP e viceversa
			+ Ogni un certo numero di bit, il TCP immagazzina i dati dell'applicativo in un segmento, con l'header TCP
			+ TCP cerca sempre di ottimizzare i dati raccolti affinché il numero di segmenti sia minore

#### 2.4.3.2 - Header TCP

- Struttura:
	- 1) Source Port (16 bit / 2B)
	- 2) Destination Port (16 bit / 2B)
	- 3) SN (32 bit / 4B)
	- 4) ACK (32 bit / 4B)
		- È valido solo se il flag ACK è valido
	- 5) HLEN (4 bit) → è la lunghezza dell'header
		- In totale l'header sarà lungo tra 20 byte e 60 byte (20 di base + 40 opzionali di O&P)
		- HLEN è espresso in gruppo di 4 byte = 32 bit
			- 
$$HLEN =L_{bit}*\frac{8}{32}=\frac{L_{bit}}{4} \in[20 B, 60 B]$$
	- 6) Reserved (6 bit) → sono vuoti
	- 7) Alcune flags (4 bit) → sono valori binari per funzioni di servizio
		- URG (1 bit) → se ci sono dati urgenti
		- ACK (1 bit) → se il pacchetto contiene un ACK valido
		- PSH (1 bit) → se il trasmettitore usa la funzione di push
		- RST (1 bit) → resetta la connessione
		- SYN (1 bit) → viene usato durante il setup per accordarsi sui SN iniziali
		- FIN (1 bit) → per terminare esplicitamente una connessione
	- 8) Window (16 bit / 2B) → è la lunghezza della finestra di ricezione
	- 9) Checksum (16 bit / 2B) → come l'UDP
	- 10) Urgent pointer (16 bit / 2B) 
	- 11) Options and padding o O&P (lunghezza variabile, fino a 40 B)
		- Sono campi di servizio, ad esempio contengono la lunghezza MSS
	- 12) Payload (fino a MSS)
		- Il *MSS* (maximum segment size) è un parametro universale di TCP che limita i dati contenuti nel payload
			- È basato sul *MTU* (maximum transmission unit) del livello di rete, che è la dimensione massima del datagram IP trasmissibile
				- Questo numero dipende dalla connessione internet scelta → avrà valori diversi in Ethernet e in Wi-Fi
			- Si ottiene sottraendo al MTU la somma degli header IP e TCP (normalmente 40 byte)
			- In generale, lo standard per la MSS è 536 B 

	![[Screenshot 2024-11-06 alle 15.01.28.png|825]]

+ In realtà il sistema di numerazione di SN e ACK è più complicato
	- TCP non numera i pacchetti, ma i singoli byte che invia
		- Ogni byte ha un suo numero di sequenza
		- Nell'header del TCP il SN è il numero di sequenza del primo byte trasmesso nel messaggio
		- Il numero ACK invece, similmente all'RN, corrisponde al primo byte nel messaggio che il mittente si aspetta di ricevere
			- Quindi mentre prima ragionavamo in termini di pacchetti, in realtà i numeri rispecchiano il primo byte inviato in ogni pacchetto
	- Vantaggi:
		- 1) È utile per il selective repeat (metodo più utilizzato nel TCP)
			- Infatti, anziché dover ritrasmettere tutto il segmento per intero, si può decidere di ritrasmettere solo i byte perduti
		- 2) È anche più preciso per la gestione della finestra e del flusso

#### 2.3.3.3 - Gestione della congestione

- Che cos'è la congestione?
	- Avviene quando un link ha un traffico di dati superiore alla sua capacità
		- Se $R_{i}$ è il rate di una trasmissione, quando la capacità C del router è tale che;
$$\sum_{i}R_{i} > C$$
	+ Il controllo della congestione viene delegato al TCP
		+ Infatti non esistono strategie di riduzione della congestione affidate unicamente al livello di rete
		+ Se il traffico è tale da portare a una congestione alta, il TCP deve ridurre i dati in ingresso nella rete
		+ → Il controllo di congestione è end-to-end
	+ La modalità più efficiente per la riduzione della congestione è modificare la finestra (window) di trasmissione
		+ Ci sono due finestre da tenere a mente:
			- 1) *CWND* = Congestion Window
				- Rappresenta la finestra massima ottimale che la rete può utilizzare per non creare eccessiva congestione
				- Si calcola dinamicamente in base ai dati osservati dai terminali
			- 2) *RCWND* = Receive Window 
				- È invece lo spazio libero nel buffer, citata in precedenza con il parametro di W
			- → La finestra W non può essere più del minimo di questi due parametri, altrimenti si genera congestione
			  $$W < min(CWND, RCWND)$$

- La riduzione della congestione è basata su due fasi fondamentali
	- Il valore della finestra CWND viene aggiornato da TCP tramite un algoritmo
		- Il modo in cui agisce quest'algoritmo dipende dalla fase in cui si trova la finestra
	- Come facciamo a capire se siamo in una fase o nell'altra?
		- Esiste un valore limite di threshold (SSTHRESH = "slow start threshold") che determina ciò:
			- a) Se CWND < SSTHRESH siamo in fase di Slow Start
			- b) Se CWND > SSTHRESH siamo i fase di Congestion Avoidance
	- 1) Slow start
		- All'inizio la CWND viene posta a 1 segmento (MSS) e la SSTHRESH a un valore iniziale molto elevato a piacere
		- Per ogni ACK ricevuto, la CWND viene incrementata di uno
			- Attenzione → questo rende la crescita della CWND esponenziale
			- Infatti, quando la CWND passa da 1 a 2, vengono inviati 2 ACK → la CWND passa a 4 
				- Ogni volta che aumenta, la CWND raddoppia
			- È comunque una crescita "cauta" (slow) perché si parte da 1, per poi aumentare fino ad un livello ottimale
		- In questa fase il rate di trasmissione si può stimare essere:
$$R ≈ \frac{CWND}{RTT} \; \; \; \left[ \frac{bits}{s} \right]$$
		- L'incremento continua finché:
			- a) Si riscontra il primo evento di congestione → allora:
				- 1) Il TCP assegna un nuovo valore alla SSTHRESH, dato da:
				  $$SSTHRESH = max\left( 2MSS, \frac{Flightsize}{2} \right)$$
					- MSS è sempre la maximum size of segment
					- *Flightsize* è il numero di byte "in volo" durante la congestione
						- È quindi il numero di byte persi per via della congestione
						- Corrisponde circa al valore di CWND al momento della perdita
				- 2) La CWND viene ora assegnata di nuovo a 1 MSS
				- → Si riparte dalla fase di slow start
					- Si ripete tutto il ciclo fino a quando CWND non raggiunge SSHTRESH o RCWND
			- b) CWND > SSTHRESH
				- Si entra direttamente nella fase di congestion avoidance
			- c) CWND > RCWND
				- Non ci occupiamo di questa casistica
		  
		  ![[Screenshot 2024-11-06 alle 15.48.23.png|675]]
	- 2) Congestion avoidance
		- La CWND aumenta di 1 (MSS) per ogni ACK ricevuto
			- La crescita non è più esponenziale, ma lineare!
			- Quindi continua ad aumentare, ma in maniera molto più cauta
		- Se si verifica una congestione, si esegue la stessa procedura descritta poco fa
	- → Iterando il ciclo Slow Start - Congestion Avoidance per un tempo indefinito, ci si avvicina ad un valore di SSHTRESH, che dovrebbe essere la finestra ottimale in quel momento per la connessione

![[Screenshot 2024-11-06 alle 15.59.58.png|700]]

### 2.4.E - Esercizi

- es. 4.1

$$
\begin{align}
R & = 1 \frac{MBit}{s} =1 *10^{6} \frac{bits}{s} \\
\tau  & = 250 ms =  0,250 s \\
W_{min}  & =  \; ? \; \; \text{che massimizzi efficienza Go-Back-N}  \\
L  & = 2000 bit \\
\eta & = \; ? \; \; \; \; (\text{efficienza Stop-N-Wait})
\end{align}
$$

$$
\begin{align}
  & T   = \frac{L}{R}\\
 & T_{ACK}   ≈ 0 \\
 &  \\  & \text{Parte 2}\\
& RTT = T + 2\tau +T_{ACK} = T + 2\tau \\
 & \eta = \frac{T}{RTT} = T * \frac{1}{T+2\tau} = 1+\frac{1}{\frac{L}{R}+2\tau} = 1+\frac{1}{\frac{2000}{10^6}s+0,5s}≈3,3*10^{-3} = 0,33 \% \\
  \\
 & \text{Parte 1} \\
 & \text{La finestra deve essere idealmente uguale all'RTT, in caso di assenza di perdite} \implies \eta = 1 \\
 & NT \geq RTT = T +T_{ACK} + 2\tau = T + 2\tau \; \; \text{(N = numero di segmenti)}\\
 & \implies N \geq \frac{T + 2\tau}{T} = 1+ \lfloor \frac{2\tau}{T} \rfloor = 251 \; \; \text{(la funzione di floor perché N è intero)}\\
\end{align}
$$


- es. 4.2

$$
\begin{align}
 \tau &  = 24 T \\
F  & = 1000 \; \text{(pacchetti)} \\
T_{timeout}  & = WT \\
W  & = 100  \; \; \text{(pacchetti)} \\
  \text{Go back N}  &  → \text{i pacchetti successivi a quello perso sono ignorati} \\
 \\
 & \text{Calcolare il numero dei pacchetti persi nei seguenti casi:} \\
1.  & \; \;  \text{Errore alla trasmissione} \\
 & \text{Se il primo pacchetto è perso, il timeout scade dopo altri 99 pacchetti} \\
 \to  \; \;  & \text{Si perdono 100 pacchetti} \\
 \\
2.  & \text{Errore di trasmisssione al primo e al 100esimo pacchetto} \\
 \to \; \; & \text{Idem 100 pacchetti persi} \\
 \\
3.  & \text{Si sbaglia l'ACK del pacchetto} \\
 & \text{In base al testo possiamo presupporre che l'ACK sia cumulativo} \\
\to  \; \; & \text{I pacchetti persi sono 0} \\
 \\
1.  & \text{Si sbaglia l'ACK del primo e del 100esimo pacchetto} \\
 & \text{Il ragionamento è lo stesso di prima, gli ACK sono inclusi rispettivamente negli} \\
  & \text{ACK del secondo pacchetto e del 101esimo pacchetto rispettivamente} \\
 \to \; \; & \text{I pachetti persi sono 0} \\
\end{align}
$$

- es 4.7

$$
 \begin{align}
C  & = 10 *10^{9}  \frac{bit}{s} \\ 
d  & = 16m \\
L_{ACK}  & = 80 bit \\ 
L_{F}  &\; \;  \text{dipende dalla dimensione dei dati complessivi} \\
L_{PAYLOAD}  & = 400 bit \\
L_{HEADER}  & = 80 bit \; \; \text{(detto OVERHEAD)} \\ \\

F  & = 375 B = 3000 bit \\
L_{F}  & = L_{FMAX}  \; \; \text{eccetto l'ultima}  \\
\end{align}
$$
$$
\begin{align}
 & \text{Il numero di UI (pacchetti) a dimensione massima sarà} \\ \\

N  & = \left\lfloor  \frac{F}{L_{PAYLOAD} + L_{HEADER}}   \right\rfloor = 7 \\ \\

 & \text{+ un UI con dimensione} \\
 \\
L_{LAST}  & = F-N*(L_{PAYLOAD}+L_{HEADER}) \\
 \\
 & \text{I tempi di trasmissione saranno} \\
T_{F}  & = \frac{L_{PAYLOAD}+L_{HEADER}}{C} = 48 ms \\
T_{ACK}  & = \frac{L_{ACK}}{C} = 8 ms \\  
T_{LAST}  & = \frac{L_{LAST} + L_{HEADER}}{C} = 28 ms \\
\end{align}
$$

- es 4.8

$$\begin{align}
W_{S}  & = 4 \; \text{UI} \\
W_{R}  & = 1 \; UI \\  
\tau = 
\end{align}

$$

...


- es 4.21

$$
\begin{align}
 & \text{Full duplex TCP}\\
MSS  & = 1000 bit \; \; \text{(massima lunghezza del pacchetto)}\\ 
C  & = 1*10^6 \frac{bit}{s} \\
\tau  & = 3,1 ms = 3,1*10^{-3} s \\
L_{HEADER}  & ≈ 0 \\
L_{ACK}  & = L_{OPEN} = 0; \\
SSHTHRESH  & = 5 MSS \\
N  & = 100 \; \; \text{(pacchetti)}
\end{align}
$$

	- 1) Calcolo il tempo di trasmissione

$$
T = \frac{L}{C} = \frac{MSS}{C} = \frac{1000 bit}{1*10^6 \frac{bit}{s}} = 1 *10^{-3} s$$

	- 2) Calcolo RTT

$$RTT = T + 2\tau+T_{ACK} = T + 2\tau=(1+6,2)*10^{-3} s = 7,2 *10^{-3} s$$
		- $RTT$ corrisponde alla lunghezza temporale minima ideale di una finestra

	- 3) Calcolo la finestra ideale

$$
WT \geq RTT \implies W = \left\lceil  \frac{RTT}{T}  \right\rceil = 8 \; \; (pacchetti)
$$

	- 4) Come varia la congestion window?

È TCP:

$$
\begin{align}
W_{0}  & =  1 \\
W_{1}  & = 2 \\
W_{4}  & = 4 \\
W_{5}  & = 5 
\end{align}
$$
Nell'ultimo caso, perché la CWND non può superare la soglia di SSHTRESH, quindi W5 è già nella fase di congestion avoidance

$$
\begin{align}
W_{6}  & = 6\\
W_{7}  & = 7\\
W_{8}  & = 8\implies \text{raggiunto il massimo teorico} \implies \eta = 1\\
\end{align}
$$
In questo periodo di trasmissione non ottimale abbiamo inviato in totale

$$
N_{1}=\sum_{i=1}^7 W_{i}=25 \; \text{(pacchetti)}$$

- Calcola il tempo per raggiungere $W_{8}$

Il tempo per aprire la trasmissione è:
$$
\begin{align}
T_{OPEN} = T_{ACK}+2\tau = 2 \tau = 6,2 *10^{-3} s \\
\end{align}
$$
In regime di trasmissione continua, si ha che, dal momento di efficienza massima in poi, si ha che il tempo speso è semplicemente la somma del tempo di trasmissione dei pacchetti + $2\tau$

$$
\implies T_{TOT} = T_{OPEN}+6RTT+(N-N_{1})T+2\tau
$$

- es. 4.22

$$
\begin{align}
C_{1} & = 25 *10^{3} \frac{bit}{s}\\
C_{2}  & = 50 *10^{3} \frac{bit}{s} \\
C_{3}  & = 100 *10^{3} \frac{bit}{s} \\
\tau_{1}  & = 15 *10^{-3}s \\
\tau_{2} & =15 *10^{-3} s \\
\tau_{3}  & = 15 *10^{-3} s  \\
MSS  & = 200 B = 1600 bit \\
L_{ACK}  & = L_{TCP} = 20 B = 160 bit \\
SSHTHRESH  & = 400 B = 3200 bit \\
\end{align}
$$

	- 1) Calcolo i tempi di trasmissione

$$
\begin{align}
T_{1}  & = \frac{MSS}{C_{1}}= 64 *10^{-3} s\\
T_{2}  & = \frac{MSS}{C_{2}} = 32 *10^{-3} s\\
T_{3}  & = \frac{MSS}{C_{3}}=16*10^{-3} s \\
T_{ACK, 1}  & = T_{TCP, 1} = \frac{L_{ACK}}{C_{1}} = 6,4 *10^{-3} s \\
T_{ACK, 2}  & = T_{TCP, 2} = \frac{L_{ACK}}{C_{2}} = 3,2 *10^{-3} s \\
T_{ACK, 3}  & = T_{TCP, 3} = \frac{L_{ACK}}{C_{3}}=1,6 *10^{-3} s
\end{align}
$$

$$
RTT = T_{1}+T_{2}+T_{3}+T_{ACK, 1}+T_{ACK, 2}+T_{ACK, 3}+2(\tau_{1}+\tau_{2}+\tau_{3}) =213,1 *10^{-3} s 
$$

$$
T_{OPEN} = 2(T_{TCP, 1}+T_{TCP, 2}+T_{TCP, 3}+\tau_{1}+\tau_{2}+\tau_{3}) = 112,4*10^{-3}s
$$

	- 2) Condizioni di trasmissione continua

		+ Si sceglie come tempo di trasmissione quello del collegamento più lento, quindi $T_{1}$
$$
WT \geq RTT \implies W = \left\lceil  \frac{RTT}{T_{1}}  \right\rceil =4
$$
$$
SSHTRESH = 1600 bit = 2MSS
$$

		- La crescita di $W$ è:

$$
\begin{align}
W_{1} = 1 \\
W_{2} = 2 \\
\text{End of Slow start} \\
W_{3} = 3 \\
W_{4}=4 \\
\text{End of congestion avoidance, optimal window reached}
\end{align}
$$

$$
\implies N_{cg} = \sum_{i=1}^4 Wi = 1+2+3+4=10
$$
	- 3) Calcolo del tempo complessivo

Per l'ultima finestra si utilizza lo stesso metodo di prima, utilizzando però il tempo di trasmissione del link più lento, quindi $T_{1}$

$$
T_{TOT} = T_{TCP}+3RTT+3T_{1}+RTT
$$

- 4.27
$$
\begin{align}
T_{ACK} =T_{TCP}= 0 \\
RCWND = 9 MSS \\
SSHTHRESH = 8 MSS \\
MSS = 1 *10^{3} s \\
T_{OUT} = 2 RTT \\
C = 8 *10^{6}s \\
\tau = 5*10^{-3}s \\  
\end{align}
$$

	- 1) La trasmissione può raggiungere $\eta = 1$?

$$
RTT = T + 2 \tau = 1 *10^{-3} s +10*10^{-3} s = 11 *10^{-3} s
$$

$$
T = \frac{MSS}{C}=1*10^{-3} s \implies  W = \left\lceil  \frac{RTT}{T}  \right\rceil = 11 \; \; \text{(pacchetti)} 
$$

		- Allora, la trasmissione non può essere continua in quanto $RCWND = 9 < 11 = W$

$$
\begin{align}
W_{1}=1 \\
W_{2}=2 \\ \\
W_{3}=4
W_{3}=8 \\
\text{End of SS}\\
\text{End of CA}\\  
W_{4} = W_{5} = W_{6} = W_{7} = 9\\
\end{align}
$$

	- 2) Tempo totale con $F=60 kB = 400 *10^{3} bit = 60 MSS$

$$\begin{align}
T_{OPEN}  & = T_{TCP}+2\tau = 10 *10^{-3} s \\
N_{0}  & = \sum_{i=1}^7 Wi = 1+2+4+8+9*4 = 51 \\
\implies T_{TOT}  & = T_{OPEN}+\left(8\right)*RTT+(60-N_{0})*T+RTT = 117 *10^{-3}s  \\
\end{align}
$$

- es 4.28
$$
\begin{align}
L_{HEADER} = L_{ACK} = L_{TCP} = 0 \\
MSS = 1250 B = 10*10^{5} bit \\
SSHTHRESH = 10*10^{3} B = 80 *10^{3} bit \\
C_{1} = 20 *10^{6} \frac{bit}{s}  \\
C_{2} = 10 *10^{6} \frac{bit}{s} \\
C_{3} = 2 *10^{6} \frac{bit}{s} \\
\tau_{1}=6 *10^{-3} s \\
\tau_{2} = 4 *10^{-3} s \\
\tau_{3} = 10 *10^{-3} s
\end{align}
$$

	- a) Calcolare $W_{c}$ ottimale


$$
\begin{align}
WT_{3}  & \geq RTT  \\
RTT  & = T_{1}+T_{2} +T_{3}+2(\tau_{1}+\tau_{2}+\tau_{3}) = 46,5 *10^{-3} s \\
\implies  W  & = \left\lceil  \frac{RTT}{T_{3}}  \right\rceil = 10 \; (MSS)
\end{align}
$$

	- b) Calcolo $T_{TOT}$ con $L = 50 kB = 4 *10^{5} bit = 40 MSS$

$$
\begin{align}
T_{OPEN} & = 2(\tau_{1}+\tau_{2}+\tau_{3}) = 40 *10^{-3} s \\
W_{1} & =1, W_{2}=2, W_{3}=4, W_{4}=8, W_{5}=9, W_{6}=10 \\ 
N_{0} & =1+2+4+8+9=24 \implies N-N_{0}=16 \\
\implies  T_{TOT}  & = T_{OPEN}+5RTT+15T_{3}+RTT = 395*10^{-3} s
\end{align}
$$

	- c) Segmenti della $W_{4}$ persi e $T_{out}=100*10^{-3}s$
		- I pacchetti da 8 a 15 vengono persi → vanno ritrasmessi
		- Il timer per la ritrasmissione parte all'inizio della $W_{4}$ → si perdono 100 ms e si ricomincia dalla $W_{4}$
		- Nel frattempo, per il meccanismo di congestion avoidance:
			- 1) Si ricomincia da $W_{5}=1$
			- 2) La $SSHTHRESH$ diventa il numero di pacchetti persi diviso 2 $\implies SSHTHRESH = \frac{8}{2} \; (MSS) = 4 \; (MSS)$

$$
\begin{align}
W_{5}=1, W_{6}=2, W_{7}=4, W_{8}=5, W_{9}=6, W_{10}=7, W_{11}=8 \\
\implies T_{TOT}=T_{OPEN}+3RTT+T_{out}+6RTT+7T_{3}+RTT = 640*10^{-3} s
\end{align}
$$

---

## 2.5 - Livello Applicativo

### 2.5.1 - Applicazioni e architetture

- Che cos'è un'applicazione?
	- È un *software* (o *processo*) implementato sui terminali 
		- Ogni dispositivo terminale esegue tante applicazioni contemporaneamente
	- Un'applicazione può comunicare tramite la rete
		- es. Un browser è un software che comunica tramite la rete 
		- Il livello applicativo è quello più di superficie → gli header delle applicazioni sono letti solo dai terminali, non dai nodi intermedi
			- L'app NON cambia la rete sottostante, ma sussiste su uno *stack* di servizi già esistenti
		- Infatti, è molto facile sviluppare un'applicazione oggi

+ Come funziona un'applicazione?
	+ Gli elementi fondamentali sono due:
		+ a) Un modo per identificare destinatario e mittente in maniera univoca → socket
		+ b) Un protocollo di comunicazione → HTTP, FTP, SMTP
	- Le informazioni dai livelli precedenti devono raggiungere e lasciare il *socket* 
		- È la via di ingresso e di uscita dell'informazione (dall'app e per l'app)
		- È la combinazione di due elementi di identificazione:
			- 1) Indirizzo IP → identifica l'interfaccia di rete del dispositivo (host)
				- Verrà approfondito di più in seguito
			- 2) Numero di porta → identifica il processo specifico a cui inviare le informazioni ^porta
				- Serve al SAP per inviare la risorse al processo corretto
				- È un numero tra 0 e 65535
					- Più precisamente, ci sono 3 sotto-intervalli considerabili:
						- a) Porte ben note (well-known) → da 0 a 1023
							- Sono impostati lato server, quindi sono universali
							- es. 80 → HTTP, 443 → HTTPS, 25 → SMTP
						- b) Porte registrate (per applicazioni o servizi meno comuni) → da 1024 a 49151
						- c) Porte dinamiche o private → da 49152 a 65535
							- Sono assegnate dinamicamente ai processi applicativi dai client
				- es. "131.175.12.34/80" → 131.175.12.34 = indirizzo IP, 80 = n. porta
		- Il socket è sempre unico nella rete, non ci sono due dispositivi con lo stesso socket

- Ci sono alcune caratteristiche delle applicazioni:
	- 1) Perdita dei dati
		- Alcune app (es. streaming) possono avere delle perdite parziali di pacchetti, altre (es. posta) invece devono avere comunicazione affidabile
	- 2) Ritardo
		- Alcune app (es. videogames) richiedono un basso ritardo, altre (es. email) possono essere aggiornate meno rapidamente
	- 3) Banda
		- Alcune app (es. online games) richiedono una banda minima di trasferimento dati, altre sono definite elastiche

### 2.5.2 - Architettura client-server o P2P

- Ci sono due architetture fondamentali
	- a) Client-server
	- b) P2P o peer-to-peer

+ Architettura client-server 
	- È una gerarchia verticale formata da due elementi:
		- Il *client* → può solo eseguire richieste
			- Può essere discontinuo nella connessione o inattivo
			- NON comunica con altri client, solo con il server
				- Non può neanche eccedere un certo numero di richieste con il server
		- Il *server* → può solo rispondere alle richieste ricevute dai client
			- Deve essere SEMPRE attivo
			- È spesso formato da più computer raggruppati (in *cluster*)
				- In questo modo aumenta la potenza di calcolo, la memoria...
				- Più sono i client e le richieste, più è necessaria una macchina performante
			- Ha un indirizzo IP permanente
			- NON ha memoria → non conserva le singole richieste degli utenti


+ Architettura peer-to-peer (*P2P*) (→ gerarchia orizzontale)
	- Non ci sono server, né client → tutti i terminali sono entrambi
	- Come funziona?
		- Esiste un software P2P sul computer di tutti gli utenti (che sostituisce il browser)
		- Gli utenti si connettono a intermittenza ad internet, non c'è nessun server permanente
			- Se un utente cerca un file, trova un certo numero di utenti che posseggono il file sul loro computer
	- Ci sono due possibili architetture del sistema:
		- 1) A directory centralizzata (es. Napster)
			- C'è un server permanente, ma non si ricade nell'architettura client-server → il server è unicamente utile a dire quali utenti hanno un certo file
				- Gli utenti quando si connettono comunicano al server:
					- a) Il loro indirizzo IP
					- b) Quali file condividono
			- Vantaggi → presenza di una garanzia centrale nella trasmissione
			- Svantaggi → il trasferimento di file può avvenire solamente se il server è online
				- Ci sono anche più problemi legali → c'è un'organizzazione che può venire accusata della trasmissione di file potenzialmente protetti da copyright
		- 2) Completamente distribuito → non esiste alcun server centrale
			- Quando si ricerca un file, si diffonde un messaggio sulla rete per stabilire se ci sono utenti vicini che lo possiedono
				- L'utente crea una lista di utenti vicini e invia messaggi agli utenti vicini finché qualcuno gli risponde
				- Una volta ricevuta la risposta, l'utente entra in una rete di utenti che inviano l'uno l'altro questi messaggi
	- Può basarsi su vari protocolli:
		- HTTP (meno usato)
		- BitTorrent → i file sono divisi in *chunk* di 256 kB
			- Un gruppo di *peer* (terminali) che si scambiano chunk di un file si chiama *torrent*
			- Un *tracker* tiene traccia dei peer che partecipano alla condivisione del torrent
				- I nuovi utenti ricevono una lista di tali peer e i peer gli comunicano i chunk disponibili → l'utente sceglie quindi quale chunk scaricare e da quale peer
			- I chunk seguono il principio del "rarest first"
				- Il chunk più raro viene scaricato per primo da tutti gli utenti, per essere poi ricondiviso

### 2.5.3 - Web browsing

- Le pagine web sono fatte da file
	- I file sono HTML, php, JPEG, Java, file audio, video, link ad altre pagine web...
		- Il file HTML o php principale (*index.html* o *index.php*) interagisce e chiama gli altri file e oggetti
	- Ogni file nel web è identificato da un URL (Uniform Resource Locator)
		- es. https://www.polimi.it:80/index.html
			- https → è il protocollo applicativo
			- www\.polimi.it → è l'indirizzo di rete del server
			- 80 → è il numero di porta (è opzionale)
			- index.html → è la pagina HTML che si visita


+ Come funziona il protocollo HTTP?
	+ *HTTP* (Hypertext transmission protocol) è il protocollo su cui si fonda tutto il web
	+ Si basa su una struttura client-server, nella quale:
		- 1) L'utente accede ad alcune pagine web o file
		- 2) Il client HTTP inizia una conversazione TCP con il server HTTP
			- *TCP* (Transmission Control Protocol) è un protocollo che permette di rendere affidabile la comunicazione tra client e server → vedi livello trasporto
		- 3) Il server HTTP accetta la connessione TCP e rispedisce il messaggio al client
			- In questi due spostamenti di bit (client → server e server → client) bisogna sempre tenere in conto il tempo di propagazione
			- In particolare si definisce *RTT* (round trip time) il tempo per trasferire un messaggio "piccolo" dal client al server, andata e ritorno
		- 4) Il client e il server si scambiano informazioni
		- 5) Arrivate le informazioni, il client mostra le informazioni all'utente
		- 6) Eventualmente, si chiude la connessione tra client e server
			- Il server non tiene generalmente traccia delle richieste passate dell'utente (protocollo *stateless*)
	- Talvolta tra client e server possono esistere degli intermediari, i *proxy*
		- Sono degli application gateway ("instradatori" di messaggi applicativi)
		- Sono utili per:
			- a) Garantire l'anonimato agli occhi del server → sistema TOR
			- b) Creare una "barriera di difesa" (*firewall*) per filtrare connessioni entranti e uscenti


+ La connessione si classifica:
	+ In base all'apertura o meno della connessione:
		- a) *Non persistente* → per ogni file richiesto, la connessione si apre, client e server si scambiano le informazioni e si chiude
			- È meno efficiente e ci sono molti più ritardi → è una tecnologia ormai obsoleta
				- Si utilizzava agli albori di internet, con sistemi meno complessi
			- Tempo di connessione totale ($T_{np}$):
				- a) Primo RTT per iniziare la connessione TCP
				- b) Secondo RTT per inviare la richiesta HTTP e ricevere i primi byte di risposta
				- c) Tempo di trasmissione $Ti$ del/dei file
				- 
	$$\implies T_{np} = \sum_{i=1}^n(2RTT + Ti)$$
		- b) *Persistente* → la connessione si apre e si chiude una sola volta
			- In una sola sessione possono essere mandati tanti file o informazioni (anche da diverse pagine web)
			- Tempo di connessione totale ($T_{p}$):
				- a) Primo RTT per iniziare la connessione TCP (solo una volta)
				- b) Secondo RTT per inviare la richiesta HTTP e ricevere i primi byte di risposta (questo per ogni file)
				- c) Tempo di trasmissione $Ti$ del/dei file
			- 
$$\implies T_{p} = RTT + \sum_{i=1}^n(RTT + Ti)$$
	- In base alla modalità di condivisione di file:
		- i) *Without pipelining* / *in serie* → i file vengono inviati consequenzialmente 
		- ii) *With pipelining* / *in parallelo* → i file vengono inviati in parallelo


- Come funzionano i *cookies*?
	- Servono per mantenere informazioni sulle connessioni passate di un IP ad un certo sito internet
		- È una sorta di "memoria" della tua attività con un server
	- Sono:
		- 1) Posti nell'header dei messaggi scambiati con il server HTTP
		- 2) Conservati in locale dai client nel browser
		- 3) Conservati dal server in un database
	- Come sono generati?
		- Quando un utente accede per la prima volta ad un sito, si genera:
			- a) Un ID unico dell'utente
			- b) Una entry nel database in tale ID → è il cookie
		- Se un utente rientra in un sito web dopo tale generazione, l'header contenente i cookie farà riconoscere al sito web tale utente
		  
		  ![[Screenshot 2024-10-27 alle 20.13.30.png|500]]

- Un esempio → funzionamento di YouTube 
	- Si utilizzano diversi elementi fondamentali:
		- a) HTTP per la distribuzione di contenuti video
		- b) DASH (Dynamic Adaptive Streaming over HTTP) → protocollo che serve per riprodurre video in maniera dinamica, a diversa qualità, sulla rete
			- Il player di YouTube monitora la tua commissione internet e ne fornisce una qualità adatta (da 240p a 4K)
		- c) Buffering → si scaricano alcuni segmenti del video in anticipo per migliorare la fluidità del video
			- Si "porta avanti" nei momenti di maggiore capacità della rete, per rendere l'esperienza di visione migliore
		- d) CDN (Content Delivery Network) → sono una rete di server in tutto il mondo, geograficamente distribuiti, per rendere i video accessibili facilmente in tutti gli stati

### 2.5.4 - Email

- È basata su una struttura client-server:
	- 1) Client (o User Agent) → GMail, Outlook, Thunderbird
	- 2) Mail server → trasmettono i messaggi tramite due protocolli:
		- In uplink (con i client) → *SMTP* (Simple Mail Transfer Protocol)
			- È un protocollo applicativo usato per trasferire email dal client d'utente fino al server del destinatario
				- Il client invia comandi, il server esegue i comandi
			- Viene utilizzato il protocollo TCP per scambiare messaggi
		- In downlink (con gli utenti) → *POP3* (Post Office Protocol v.3), *IMAP* e altri protocolli
			- Servono all'utente a scaricare i dati dal client e leggere le mail
			- POP3 → serve a scaricare i messaggi
			  
			  ![[Screenshot 2024-11-03 alle 17.48.20.png|550]]

+ Come viene inviata una mail?
	+ Il server ha sempre due code per ogni client controllato:
		+ Una coda di mail in ingresso (mailbox)
		+ Una coda di email in uscita
	+ ...

- Formato di un'email (standard RFC 822)
	- 1) Header → contiene informazioni sul mittente, il destinatario/i e l'oggetto
	- 2) Body → è il payload, contiene il messaggio da inviare

### 2.5.5 - Risoluzione di nomi simbolici

- Tutti i siti web e i dispositivi sono riconosciuti dal loro indirizzo IP, ma c'è un modo per scrivere questi nomi più facilmente?
	- È fondamentale il DNS (Domain Name System) → è il server responsabile a mappare il nome dei siti web sostituendo il loro indirizzo IP
		- Ogni nome è associato ad un dominio (.com, .it etc.)
	- La gerarchia con cui si sviluppa questo sistema è:
		- 1) Root Name Servers → server base dei domini, sono pochi al mondo
		- 2) TLD (Top Level Domain) servers → ne esistono diversi per ogni dominio (.com, .it, .edu etc.)
		- 3) Local Name Servers → ogni ISP (Internet Service Provider) ha un Name Server locale
			- Ogni volta che un host deve risolvere un nome simbolico viene contattato un server Locale
			- Qualora non trovasse niente, si continua ad andare in alto con la gerarchia fino al Root Main Server
	- Non serve però sempre chiedere il nome al Name Server
		- Il computer salva in cache gli indirizzi IP dei siti web noti e forma un mappaggio in locale
		- Ogni salvataggio nella cache è legato ad un certo TTL (Time to live), un'emivita dell'informazione che stabilisce quando essa smette di essere attiva
	- Come fare a registrare un nuovo dominio?
		- 1) Controllare che sia disponibile
		- 2) Acquistare e registrare il dominio presso un *registrar* (un'azienda come GoDaddy o Aruba)
		- 3) Specificare i server DNS che gestiscono il dominio
		- 4) Il registrar comunica al TLD il nuovo record
		- 5) Dopo un po' di tempo (da minuti a 48h), le modifiche si propagano sulla rete globale
		  
		  ![[Screenshot 2024-10-16 alle 14.42.00.png|650]]

### 2.5.E - Esercizi

3.1 
Client HTTP → Server HTTP

$$
\begin{align}
&L_{f} = 200 kb = 200*10^3 b \; \; (\text{lunghezza di ogni file})\\
&L_{h} = 200 kb = 200*10^3 b \; \; (\text{lughezza del file html}) \\
&C = 100 \frac{kb}{s} = 100 * 10^3 \frac{b}{s} \; \; (\text{capacità del canale})\\ 
&L_{0} = 100 b \; \; (\text{lunghezza del file di richiesta TCP})\\
&\tau = 0 s \; \; (\text{tempo di propagazione, negligeable})
\end{align}
$$

Calcolare $T_{TOT}$ in 3 casi distinti:
- 1) In parallelo npers → si utilizza il canale simultaneamente per i 10 oggetti TCP
- 2) In serie pers
- 3) In serie npers → i file si inviano sequenzialmente

1) 
$$
\begin{align}
&T_{OPEN} = 2*T_{TCP}+ 2\tau = 2*T_{TCP} = \frac{2L_{0}}{R} = 2 * 10^{-3}s \\
&T_{GET} = \frac{T_{OPEN}}{2} = 1 ms \\
&T_{HTML}=t_{HTML}+\tau=\frac{L_{f}}{R}=2 s \\
&T_{FILES} =t_{FILES}+\tau=\frac{L_{f}}{\frac{C}{10}}=10 \frac{L_{f}}{C} = 20 s \\
&\implies T_{TOT} = T_{OPEN}+T_{GET}+T_{HTML}+T_{OPEN}+T_{GET}+T_{FILES}=22.033s
\end{align}
$$
2)
$$
\begin{align}
&T_{i}= \frac{L_{f}}{C}=2s \\
&\implies T_{TOT} = T_{OPEN}+T_{GET}+T_{HTML}+10*(T_{GET}+T_{i})=22.013 s
\end{align}
$$

3) 
$$
\implies T_{TOT} =T_{OPEN}+T_{GET}+T_{HTML}+10*(T_{OPEN}+T_{GET}+T_{i}) =22.033 s
$$

Oss: il tempo $T_{TOT, 3}$ è uguale al tempo $T_{TOT, 1}$ solo perché $\tau = 0$


es. 3.2
$$
\begin{align} \\
&N = 11 \\
 & L_{i}=L_{HTML}=50kB = 400*10^3 b \\
 & C = 1 \frac{MB}{s} = 1*10^6 \frac{b}{s} \\
 & L_{TCP} = L_{GET} = 0 b \\
 & RTT = 150 ms \\
 & R=\frac{C}{N}
\end{align}
$$
$T_{TOT}=?$ nei seguenti casi
- 1) Pers, serie
- 2) Npers, parallela

$$
RTT = 2\tau \implies  \tau=\frac{RTT}{2}=75*10^{-3} s
$$
$$
\begin{align}
 & T_{OPEN}=2(t_{TCP}+\tau)=2\tau=150*10^{-3}s \\
 & T_{GET}=t_{GET}+\tau=75*10^{-3} s \\
\end{align}
$$
