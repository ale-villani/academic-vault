---
title: "Fondamenti di Elettronica"
domain: "engineering/electronics"
source_course: "Fondamenti di Elettronica"
tags:
  - engineering/electronics
  - engineering/electronics/semiconductors
  - engineering/electronics/circuits
---

## 0. Introduzione

+ Programma
	+ a) Dispositivi elettronici elementari
		+ Fisica dei semiconduttori
		+ Diodi a giunzione
		+ Transistor bipolare (cenni)
		+ Condensatore e Transistore MOS
	+ b) Circuiti logici CMOS
		+ Porte logiche
		+ Interruttori elettronici MOS
		+ Circuiti digitali elementari combinatori e sequenziali
		+ Memorie ad alta intensità (cenni)
	+ c) Circuiti retroazionati
		+ Amplificatori operazionali

- Sensori e trasduttori → rappresentati da equivalenti Norton e Thevenin
	- Il trasduttore è il duale del sensore → se ho un termometro, che legge la temperatura, il suo duale è qualcosa che si scalda

+ Definizione di elettronica
	+ Viene introdotto come termina nel 1941 come parte della scienza elettrica dedicata allo studio dei fenomeni associati al moto di fasci di elettroni nel vuoto e nei gas
	+ È la scienza e la tecnologia del controllo degli elettroni
		+ Non può prescindere dalla teoria, ma neanche dall'hardware e dalla realizzazione
	+ È fondamentale la semplificazione e la modellazione → ogni dispositivo ha le sue non idealità
		+ Ogni modellazione ha ovviamente il suo ambito di appartenenza
	+ "Driftiamo insieme agli elettroni"

+ Com'è fatta una fotocamera digitale?
	+ Si parte da un sensore composto da una matrice monolitica di sensori
		+ Monolitica → tutti i sensori sono integrati sullo stesso substrato di silicio
		+ La dimensione di una celletta è $5-10 \mu m$
		+ Un singolo sensore è sensibile alla luce (giunzione PN) → è in grado di convertire l'energia dei fotoni in carica elettrica
			+ Un fotone produce (sostanzialmente) un portatore
			+ Per luce non visibile (X, XUV) la carica dipende dalla lunghezza d'onda del fotone
			+ La carica si deposita su un condensatore → si può leggere ai suoi capi una tensione
		+ Per ricavare i dati delle cariche, si utilizza per ogni diodo un amplificatore e un'interruttore → le correnti vengono lette sequenzialmente tramite degli interruttori (transistor)
	+ In questo modo è possibile realizzare solo una foto in bianco e nero → come ottengo i colori?
		+ Ogni sensore (pixel) ha una microlente, e sotto c'è una piccola matrice di 4 sensori con un filtro
		+ Due sono coperti da un filtro per il verde, uno per il rosso e uno per il blu
			+ Lo squilibrio è dipeso da come il nostro occhio percepisce i colori, è molto più sensibile al verde
## 1 Fisica dei semiconduttori e proprietà del Silicio
### 1.1 Struttura cristallina e reticolo del Silicio

- Come mai proprio il Silicio ($Si$)? → storicamente è quello che compone la grande maggioranza dell'elettronica per due motivi:
	- 1) Proviene dalla sabbia → tramite una tecnica è possibile ricavarlo facilmente
	- 2) Se messo in forno, produce un ossido, $SiO_{2}$, che è un ottimo isolante
		- Si può facilmente rimuovere tramite acidi specifici senza intaccare il $Si$

+ $Si$ e $Ge$ sono elementi nel gruppo del $C$ (4 elettroni di valenza)
	- Altri elementi da considerare sono:
		- Gruppo $III$ (del $B$) → $Ga$ e $In$ 
		- Gruppo $V$ (del $N$) → $As$ e $Sb$
		- Gruppo $VI$ (dell'$O$) → $Se$ e $Te$
	- Da questi materiali, nascono alcuni composti alternativi a $Si$ e $Ga$ come semiconduttori, in elettronica:
		- a) Composti di 2 elementi dei gruppi $III$ e $V$ → $GaAs$, $InP$, $GaN$
		- b) Composti di 3 o 4 elementi di tali gruppi → $GaAlAs$, $GaInAsP$
		- c) Composti $II-VI$ → $CdTe$
		- d) Composti di 2 elementi del gruppo $IV$ → $SiC$, $SiGe$, ...

+ Configurazione elettronica → $1s^2 2s^2 2p^6 3s^2 3p^2$ 
	- Ai fini dei legami, si può rappresentare il loro set di orbitali ibridati $sp^3$ (come il $C$) → 4 possibili legami singoli
		- Geometricamente, la geometria è tetraedrica con angoli di $109.5^o$ → è la geometria del reticolo cristallino
			- Sono una combinazione lineare delle autofunzioni (orbitali) dell'atomo imperturbato, tutti alla medesima energia
			- (Supporremo sempre i reticoli cristallini infiniti, evitando le condizioni al contorno)
		- Si definisce il passo reticolare del $Si$ $\frac{a}{2}$, dove $a≈5.43 \times 10^{-10}m$
		- È possibile rappresentare il reticolo del $Si$ con un grafico del genere 
			  ![[scr 2026-09-15 alle 15.05.00.png]]
			- È un reticolo cubico a facce centrate (FCC) → come il diamante
			- La densità di atomi di $Si$ (trovato considerando la dimensione della cella reticolare) è $≈ 5 \times 10^{22} \frac{\text{atomi}}{\text{cm}^3}$
### 1.2 Teoria delle bande e formazione del bandgap

- Cosa succede se avvicino due atomi di silicio? 
	- (Grafico sul PPT) A distanze grandi, i livelli energetici degli orbitali atomici dei diversi atomi sono i medesimi 
		- Infatti se $||\mathbf{R}_{A}-\mathbf{R}_{B}||\to +\infty$ posso scrivere l'Hamiltoniana del sistema come $$\hat{H}=\hat{H}_{A}+\hat{H}_{B}$$tale che sia soddisfatto per le due funzioni d'onda degli stati fondamentali dei due atomi $\ket{\varphi_{A}}$ e $\ket{\varphi_{B}}$: $$\begin{cases}  \hat{H}_{A}\ket{\varphi_{A}} =E_{0}\ket{\varphi_{A}}  \\  \hat{H}_{B}\ket{\varphi_{B}}=E_{0}\ket{\varphi_{B}}    \end{cases}$$
			- → Ho un autostato 2 volte degenere per $E_{0}$ 
			- Suppongo in questo caso sia valida l'approssimazione di Born-Oppenheimer (vedi Materiali) → i nuclei sono fissi e classiciposti in $\mathbf{R_{A}}=+\frac{R}{2}\hat{u_{z}}$ e $\mathbf{R}_{B}=-\frac{R}{2}\hat{u_{z}}$
	- Quando gli atomi si avvicinano, gli atomi incominciano a risentire dell'interazione → per via dell'interazione Coulombiana i livelli energetici si vanno a differenziare in energia
		- Infatti l'Hamiltoniana diventa ora $$\hat{H}=\hat{H}_{A}+\hat{H}_{B}+V_{AB}$$per cui $\ket{\varphi_{A}}$ e $\ket{\varphi_{B}}$ non sono più autostati
			- → Posso applicare la teoria delle perturbazioni degeneri
		- Definisco l'operatore di simmetria rispetto al baricentro dei due nuclei $$\hat{P}\ket{\psi(x,y,z)} =\ket{\psi(x,y,-z)} $$che ha come autovalori $p_{12}=\pm 1$ 
			- Posso mostrare che commuta con $\hat{H}$ (il sistema è simmetrico rispetto alla congiungente dei nuclei) $$[\hat{P}, \hat{H}]=0$$
			- → Dalla teoria delle perturbazioni i suoi autostati sono buoni stati
			- Inoltre vale ovviamente la proprietà $$\hat{P}\ket{\varphi_{A}} =\ket{\varphi_{B}}  \quad  \quad \hat{P}\ket{\varphi_{B}}=\ket{\varphi_{A}}   $$
		- Se considero la funzione d'onda complessiva combinazione degli autostati $$\ket{\psi}=c_{A}\ket{\varphi_{A}}+c_{B}\ket{\varphi_{B}}   $$e pongo sia autostato di $\hat{P}$: $$\begin{align}  \hat{P}\ket{\psi}&=\pm \ket{\psi}  \\ \implies \hat{P}(c_{A}\ket{\varphi_{A}}+c_{B}\ket{\varphi_{B}}  )&=\pm(c_{A}\ket{\varphi_{A}}+c_{B}\ket{\varphi_{B}}  ) \\   \implies (c_{A}\ket{\varphi_{B}}+c_{B}\ket{\varphi_{A}}  )&=\pm(c_{A}\ket{\varphi_{A}}+c_{B}\ket{\varphi_{B}}  )  \\  \implies c_{A}&=\pm c_{B} \end{align}$$
		- Si ottengono pertanto al primo ordine di approssimazione due autostati dell'energia *simmetrico* e *antisimmetrico* $$\begin{align}  \ket{\psi^{(0)}_{+}}&\propto \ket{\varphi_{A}}+\ket{\varphi_{B}} \\  \ket{\psi^{(0)}_{-}}&\propto \ket{\varphi_{A}}-\ket{\varphi_{B}} \end{align}$$che rompono la degenerazione dell'energia
	- E se avessi un cristallo simmetrico?
		- Si può fare tutta la trattazione fatta in precedenza sostituendo a $\hat{P}$ l'operatore traslazione lungo il reticolo del cristallo $\hat{T}$
			- (Vedi teorema di Bloch di Struttura della Materia)
		- All'approssimazione del continuo, i livelli energetici diventano bande continue di energie, separate da un *gap* energetico
	- Se l'atomo è imperturbato (a $0K$ e senza flussi di energia) la banda inferiore è piena, detta *banda di valenza*, mentre quella superiore è detta *banda di conduzione* ![[scr 2026-09-15 alle 14.59.29.png]]
		- L'energia in banda di conduzione è indicata con $E_{c}$, l'energia in banda di valenza è indicata con $E_{v}$, il gap è $E_{c}-E_{v}$
		- → L'approssimazione di singoli atomi non ha più senso, gli elettroni sono caratterizzati dalla funzione d'onda globale, sono delocalizzati su tutto il solido
		- In condizioni ordinarie (a $300K$) l'energia di agitazione termica degli $e^-$ è circa $25meV$
			- La tensione termica è approssimativamente $25mV$
		- Si dimostra (in Struttura della Materia) che la conduzione di corrente può avvenire solo se gli elettroni hanno a disposizione un livello energetico vicino libero
		- → La differenza tra conduttori e semiconduttori è dipesa dal bandgap e da quanto le bande sono occupate
			- a) Conduttori → presenza di portatori liberi e banda di valenza sovrapposta alla banda di conduzione
				- Quindi c'è abbondanza di slot per i portatori liberi quindi per la conduzione elettrica
			- b) Isolanti → banda di valenza completamente piena, banda di conduzione vuota a temperatura ordinaria e gap energetico elevato ($E_{g}>2eV$)
			- c) Semiconduttori → a $0K$ banda di valenza piena e banda di conduzione vuota; presenza di un gap energetico piccolo $(0.2eV<E_{g}<2eV)$ tale che a $T=300K$ per agitazione termica alcuni $e^-$ vengono promossi in conduzione lasciando lacune in valenza 
				- Semplicemente grazie all'energia fornita per agitazione termica gli $e^-$ possono essere promossi in banda di conduzione
				- Bandgap per materiali *intrinseci* (puri):
					- $Si$ → $1.12eV$
					- $Ge$ → $0.67eV$
						- È un altro aspetto negativo del Germanio → mi basta "troppo poca" energia per promuovere $e^-$ in banda di conduzione
					- $GaAs$ → $1.43eV$
				- Con opportune tecniche si può in maniera relativamente semplice alterare il bangap (e quindi la resistività) di questi materiali in maniera selettiva
					- Si può portare il silcio da $\rho≈10^{-6} \frac{\Omega}{m} \to 10 \frac{\Omega}{m}$ tramite tecniche di drogaggio
	- Cosa succede quando un $e^-$ per agitazione termica rompe il suo legame? ![[scr 2026-10-06 alle 16.53.04.png]]
		- L'elettrone passa ad un nuovo livello energetico in banda di conduzione e può finalmente condurre
		- Al suo posto però lascia uno stato energetico libero, chiamato *lacuna* (hole)
			- Sotto l'effetto del campo elettrico, essendosi liberato un posto in banda di valenza, gli elettroni del reticolo tenderanno a muoversi nel verso opposto al campo, riempiendo la lacuna 
				- Se $\mathbf{E}=E \hat{u_{x}}$, gli elettroni saranno soggetti a una forza $\mathbf{F}=-eE \hat{u_{x}}$ e per questo la lacuna tenderà a spostarsi lungo l'asse positivo delle x
			- → Posso modellizzare il moto degli $n-1$ elettroni che occupano quello spazio tramite il moto di una singola particella carica di segno $+e$ positivo, che si muove concordemente a $\mathbf{E}$, in banda di valenza
		- Abbiamo quindi due *portatori* (di corrente) di segno opposto, che agiscono contemporaneamente e indipendentemente
			- $-$) I portatori negativi (gli elettroni) sono effettivamente particelle che possono condurre in banda di conduzione 
			- $+$) I portatori positivi (le lacune) sono una schematizzazione del moto degli elettroni in banda di valenza 
		- In realtà, gli $e^-$ sono in banda di conduzione NON sono particelle libere, sono soggetti ai potenziali di interazione reticolare
			- Per semplificare i conti, viene identificata una massa, detta *massa efficace*, per elettroni e lacune, che fa ricadere nelle leggi della dinamica classica il moto dei portatori, e soddisfa i dati sperimentali 
				- Sostanzialmente si camuffa tramite la massa efficace il potenziale reticolare, ricadendo nel banale caso della legge di Newton
			- Le masse sono diverse per l'elettrone ($m_{e}^*$) e per la lacuna ($m_{p}^*$) ma dello stesso ordine di grandezza $$\begin{align}  m_{e}^*&≈1.08m_{e} \\  m_{p}^* &≈0.56m_{e} \end{align}$$
### 1.3 Drogaggio estrinseco del Silicio

Per modificare le proprietà elettroniche del $Si$ si può *drogare* → si inseriscono quantità minime di impurità nel materiale 

- Ci sono due tipologie di materiali droganti:
	- a) *Accettori* (di *tipo p*) → sono gli atomi del $III$ gruppo ($B$, $Al$, $Ga$)
		- Manca un $e^-$ per ogni sostituzione rispetto al $Si$ → lacuna conduttrice
		- L'elettrone per "riempire" la lacuna ha un gap energetico di soli $45meV$ (rispetto agli $1.12eV$ del gap)
			- Questa lacuna è "attivata" banalmente per agitazione termica se la temperatura non è particolarmente bassa
	- b) *Donori* (di *tipo n*) → sono gli atomi del $V$ gruppo ($P$, $As$, $Sb$)
		- Permane una carica fissa in aggiunta per ogni sostituzione → elettrone conduttore
		- Si crea un livello energetico poco sotto la banda di conduzione (nel $P$ solo $44meV$)
		- Al suo posto non si crea alcuna lacuna 
			- Infatti l'elettrone in più del donore non era coinvolto in nessun legame covalente, ma era legato al nucleo per sola debole interazione coulombiana
### 1.4 Distribuzione di energia per i portatori

- Come si distribuiscono in energia i portatori liberi?
	- Dal principio di esclusione di Pauli, gli $N$ elettroni liberi non possono tutti essere alla stessa energia di conduzione $E_{C}$ → occupano una certa distribuzione di energia $$f(E):=\mathbb{P}\left\{ E_{e^-}=E \right\}$$
		- Non mi basta avere la distribuzione di energia, devo avere una certa distribuzione di stati che possono essere allocati $g_{C}(E)$
		- → Posso calcolare la concentrazione di elettroni per unità di volume con energia $E$ come: $$n(E)=f(E)g_{C}(E)$$
		- Per calcolare invece la concentrazione di lacune posso scrivere banalmente, in banda di valenza: $$p(E)=[1-f(E)]g_{V}(E)$$dove $g_{V}$ è la distribuzione di stati in banda di valenza
		- Pertanto per calcolare la concentrazione complessiva (per unità di volume) di portatori è $$\begin{align}n=\int_{E_{C}}^{+\infty}f(E)g_{C}(E)dE \quad  \quad  p=\int_{-\infty}^{E_{V}}[1-f(E)]g_{V}(E)\end{align}$$
	- → Come sono fatte $f$ e $g_{C}$/$g_{V}$?
		- Serve la meccanica quantistica (struttura della materia)
		- In meccanica statistica, nell'ensemble canonico la distribuzione è data dalla statistica di Maxwell-Boltmann $$f(E)=\frac{1}{Z}e^{ - \frac{E}{k_{B}T} }$$
			- Si noti che, fissata la temperatura $T\to0$, l'unico livello energetico occupato è quello più basso, da tutti i portatori → contraddice il principio di Pauli 
				- Infatti sia $E_{0}$ il livello fondamentale, vale che per $T\to0$ $$\frac{f(E)}{f(E_{0})}= e^{ - \frac{E-E_{0}}{k_{B}T} } \xrightarrow{T\to0} \begin{cases}  0  & E>E_{0} \\  1 & E=E_{0}  \end{cases}$$
			- → Bisogna scartare questo modello
		- Soluzione quantistica → *statistica di Fermi-Dirac*: $$f(E)=\frac{1}{1+e^{ \frac{E-E_{F}}{k_{B}T} }}$$![[scr 2026-09-25 alle 10.26.54.png]]
			- È la statistica dei fermioni
			- $E_{F}$ è detto *livello di Fermi* → è un livello energetico convenzionalmente preso come riferimento
				- È l'energia a cui corrisponde la probabilità $f(E_{F})=\frac{1}{2}$ di trovare un $e^-$
			- Al limite per $T\to0$ la funzione diventa un gradino
				- Tutti gli stati con energia inferiore a $E_{F}$ sono occupati, mentre c'è probabilità $0$ di trovare un $e^-$ a energia superiore a $E_{F}$
			- Si noti che per $E-E_{F}\gg k_{B}T$ la distribuzione si approssima a quella di Maxwell-Boltzmann $$f(E)≈e^{ -\frac{E-E_{F}}{k_{B}T} }$$per cui la funzione partizione $Z$ di Maxwell-Boltzmann è data da $$\frac{1}{Z}=e^{ \frac{E_{F}}{k_{B}T} }\implies Z=e^{ - \frac{E_{F}}{k_{B}T} }$$
				- Allo stesso modo, anche la coda per energie $E_{F}-E\gg k_{B}T$ si comporta allo stesso modo $$1-f(E)≈e^{ - \frac{E_{F}-E}{k_{B}T} }$$
		- $g(E)$ → si ricava da calcoli di MQ: $$\begin{cases}g_{C}(E)=\gamma_{C}\sqrt{ E-E_{C} }  & E\geq E_{C}\\  g_{V}(E)=\gamma_{V}\sqrt{ E_{V}-E } & E\leq E_{V}\end{cases}$$ ![[scr 2026-10-07 alle 11.16.46 1.png|309]]
			- Le costanti sono date da $$\begin{align}  \gamma_{C}= \frac{1}{2\pi^2}\left( \frac{2m_{e}^*}{\hbar^2} \right)^{\frac{3}{2}} \\  \gamma_{V}= \frac{1}{2\pi^2}\left( \frac{2m_{p}^*}{\hbar^2} \right)^{\frac{3}{2}}  \end{align}$$
	- Studiamo ora diversi casi: 
		  ![[scr 2026-10-07 alle 12.09.36.png|355]]
		- 1) $E_{F}$ a metà del gap → le due distribuzioni $n(E)$ e $p(E)$ sono pressochè uguali
			- Infatti supponendo di essere a $\varepsilon$ rispettivamente dalla banda di conduzione e dalla banda di valenza, vale che $$\begin{cases}  f(E_{C}+\varepsilon)=\frac{1}{1+e^{ \frac{E_{C}-E_{F}+\varepsilon}{k_{B}T} }} =\frac{1}{1+e^{ \varepsilon + E_{g}/2 }}  \\  1-f(E_{V}-\varepsilon)=1-\frac{1}{1+e^{ \frac{E_{V}-E_{F}-\varepsilon}{k_{B}T} }}= \frac{1}{1+e^{ \varepsilon+E_{g}/2 }}\end{cases}$$
			- Da cui $n(E)$ e $p(E)$ differiscono solo per le costanti $\gamma_{1}$ e $\gamma_{2}$, che sono comunque sullo stesso ordine di grandezza → $n(E)≈p(E)$
		- 2) $E_{F}$ avvicinato ad $E_{C}$ → la concentrazione degli elettroni $n(E)$ è molto maggiore di quella delle lacune $p(E)$ → semiconduttore di tipo n
		- 3) $E_{F}$ avvicinato ad $E_{V}$ → la concentrazione delle lacune $p(E)$ è molto maggiore di quella degli elettroni $n(E)$ → semiconduttore di tipo p
	- Oss: quando ha senso approssimare Fermi-Dirac con Boltzmann?
		- es. Calcolare energia, in termini di $k_{B}T$ ed $E_{F}$, per cui la differenza tra approssimazione di Boltzmann e Fermi-Dirac è il $5\%$ della funzione di Fermi $$\begin{align}  f_{B}(E)-f_{F}(E)&=    e^{ - \frac{E-E_{F}}{k_{B}T} }- \frac{1}{1+e^{ \frac{E-E_{F}}{k_{B}T} }}   =\frac{\beta}{1+e^{ \frac{E-E_{F}}{k_{B}T} }} \\  \implies  \frac{1+\beta}{1+e^{ \frac{E-E_{F}}{k_{B}T} }} &= e^{ - \frac{E-E_{F}}{k_{B}T} } \\  \implies 1+\beta&=  e^{ - \frac{E-E_{F}}{k_{B}T} }+1 \\  \implies  \frac{E-E_{F}}{k_{B}T}&=-\log \beta \implies E-E_{F}=-k_{B}T\log \beta = k_{B}T\log(1/\beta) \end{align}$$
			- Per cui se voglio $\beta\leq5\%$ vale che $$\begin{align}  E-E_{F}\geq-k_{B}T\log\left( \frac{1}{20} \right) =k_{B}T\log(20)≈3k_{B}T\end{align}$$![[fascia_approssimazione_boltzmann.png|601]]
	- Da ciò possiamo dedurre la concentrazione di portatori liberi 
		- Per i portatori di tipo $n$, usando l'approssimazione di Boltzmann: $$\begin{align}  n&=\int_{E_{C}}^{+\infty}n(E)dE \\  &=\int_{E_{C}}^{+\infty}f(E)g_{C}(E)dE \\  &≈\gamma_{1}\int_{E_{C}}^{+\infty}e^{ - \frac{E-E_{F}}{k_{B}T}  }\sqrt{ E-E_{C} }dE \\  &=\gamma_{1}\int_{0}^{+\infty}e^{ - \frac{E-E_{C}}{k_{B}T}}e^{ - \frac{E_{C}-E_{F}}{k_{B}T} } \sqrt{ E-E_{C} }d(E-E_{C}) \\  &=\gamma_{1}e^{ - \frac{E_{C}-E_{F}}{k_{B}T} }(k_{B}T)^{3/2}\int_{0}^{+\infty}e^{ - \frac{E-E_{C}}{k_{B}T} }\sqrt{ \frac{E-E_{C}}{k_{B}T} }d\left( \frac{E-E_{C}}{k_{B}T} \right) \\  &:=\gamma_{1}e^{ - \frac{E_{C}-E_{F}}{k_{B}T} } (k_{B}T)^{3/2}\alpha_{1}\end{align}$$dove $\alpha_{1}:=\int_{0}^{+\infty}e^{ -x }\sqrt{ x }dx$
		- Per cui posso definire $N_{C}:=\gamma_{1}(k_{B}T)^{3/2}\alpha_{1}$ *densità di stati efficace in banda di conduzione* tale che $$n=N_{C}e^{ - \frac{E_{C}-E_F}{k_{B}T} }$$
			- A $T=300K$ vale che $N_{C}≈2.8\times 10^{19}\text{cm}^{-3}$ 
		- Analogamente, per le lacune $p$ in banda di valenza: $$p=N_{V}e^{ - \frac{E_{F}-E_{V}}{k_{B}T} }$$
			- A $T=300K$ vale che $N_{V}≈1.04\times 10^{19}\text{cm}^{-3}$ *densità di stati efficace in bande di valenza*
	- In generale, 
	- Due casi particolari:
		- 1) Semiconduttore intrinseco
			- Se siamo in equilibrio termodinamico, elettroni e lacune sono generati contemporaneamente, quindi posso definire *densità di portatori intrinseca* $$n=p=:n_{I}$$
			- Questo valore è sempre dipendente dalla temperatura del materiale → a $T=300K$ vale che $n_{I}≈1.45 \times 10^{10} \text{cm}^{-3}$
			- Da ciò, posso dedurre il livello di fermi $E_{I}$: $$\begin{align}   &n=p=n_{I}  \\  \implies &N_{C}e^{ - \frac{E_{C}-E_{F}}{k_{B}T} }=N_{V}e^{ - \frac{E_{F}-E_{V}}{k_{B}T} } \\  \implies &\frac{N_{C}}{N_{V}}=e^{ \frac{E_{C}-2E_{F}+E_{V}}{k_{B}T} } \\  \implies   &E_{F}= \frac{E_{C}+E_{V}}{2} -\frac{k_{B}T}{2}\log\left( \frac{N_{C}}{N_{V}} \right) \\&=\frac{E_{C}+E_{V}}{2}-\frac{k_{B}T}{2}\log\left( \frac{\gamma_{C}}{\gamma_{V}} \right) \\ &=\frac{E_{C}+E_{V}}{2}-\frac{3}{4}k_{B}T\log\left( \frac{m_{e}^*}{m_{p}^*} \right) \\   &≈ \frac{E_{C}+E_{V}}{2}:=E_{I} \end{align}$$
			- → Il livello di fermi è circa nel punto medio del bandgap
				- Infatti a $T=300K$, il secondo addendo è trascurabile ($\sim -0.013eV$ rispetto a $E_{g}≈1.12eV$)
			- È comodo sapere la posizione del livello di Fermi dal punto di vista numerico/computazionale, piuttosto che le distribuzioni $n(E)$, $p(E)$
				- Giocano infatti su ordini di grandezza molto diversi
		- 2) Semiconduttore drogato
			- i) Per un generale semiconduttore, posso mettere in relazione $n$ e $p$ con le rispettive concentrazioni del semiconduttore intrinseco $$\begin{align}  n_{I}&=N_{C}e^{ - \frac{E_{C}-E_{I}}{k_{B}T} }=N_{V}e^{ - \frac{E_{I}-E_{V}}{k_{B}T} } \\  \implies n&=N_{C}e^{ - \frac{E_{C}-E_{F}}{k_{B}T} }  =N_{C}e^{ - \frac{E_{C}-E_{I}}{k_{B}T} } e^{ \frac{E_{F}-E_{I}}{k_{B}T} }=n_{I}e^{ \frac{E_{F}-E_{I}}{k_{B}T} }\end{align}$$per cui $$\begin{cases}  n=n_{I}e^{ \frac{E_{F}-E_{I}}{k_{B}T} }  \\  p=n_{I}e^{ \frac{E_{I}-E_{F}}{k_{B}T} } \end{cases}$$
				- (Sempre nel caso non degenere (approx. Boltzmann) e sotto l'ipotesi di equilibrio termodinamico)
				- In questo modo posso ricordarmi solo una costante ($n_{I}$) piuttosto che due $N_{C}$ e $N_{V}$
				- Da ciò si ricava la *legge di azione di massa*  $$np=n_{I}e^{ \frac{E_{F}-E_{I}}{k_{B}T} }n_{I}e^{ \frac{E_{I}-E_{F}}{k_{B}T} }=n_{I}^2$$dove $n_{I}(T)=\sqrt{ N_{C}N_{V} }e^{ - \frac{E_{g}}{2k_{B}T} }$
			- ii) Deve valere la conservazione della densità di carica elettrica: $$\begin{cases}  \rho_{n}+\rho_{p}=0 \\  \rho_{n}=-(n+N_{A}) \\  \rho_{p}=p+N_{D}  \end{cases}\implies n-p=N_{D}-N_{A}$$dove $N_{A}$ è la concentrazione di accettori, $N_{D}$ di donori
			- → Mettendo a sistema le due condizioni si ottiene che $$\begin{cases}  p= \frac{N_{A}-N_{D}}{2}+\sqrt{ \left( \frac{N_{A}-N_{D}}{2} \right)^2+n_{I}^2 } \\   n= \frac{N_{D}-N_{A}}{2}+\sqrt{ \left( \frac{N_{D}-N_{A}}{2} \right)^2+n_{I}^2 }  \end{cases}$$
			- Si noti che se il drogaggio è sostanzioso (come lo è solitamente nell'industria):
				- a) Semiconduttore $p$ → $N_{A}\gg N_{D}, \,n_{I}^2\implies p≈N_{A},  \,\, n≈\frac{n_{I}^2}{N_{A}}$ 
				- b) Semiconduttore $n$ → $N_{D}\gg N_{A}, \,n_{I}^2\implies n≈N_{D},  \,\, p≈\frac{n_{I}^2}{N_{D}}$
	- Oss: il livello di Fermi è pertanto un dato indicativo per comprendere il drogaggio del semiconduttore $$E_{F}-E_{I}=k_{B}T\log\left( \frac{n}{n_{I}} \right)=-k_{B}T\log\left( \frac{p}{n_{I}} \right)$$
		- Tipo $n$ → $E_{F}>E_{I}$
		- Tipo $p$ → $E_{F}<E_{I}$
### 1.5 Generazione e Ricombinazione

- Si consideri un semiconduttore in equilibrio termodinamico (equilibrio termico, meccanico, ...)
	- Il *tasso di generazione* ($G$) (= numero di coppie elettrone-lacuna generate per rottura dei legami per unità di volume e di tempo) dipende solo da $T$
		- I legami nel cristallo covalente del $Si$ sono rotti dall'agitazione termica o da un fotone
	- Anche il *tasso di ricombinazione* ($R$) (= numero di elettroni che formano un legame prendendo il posto di una lacuna, per unità di volume e di tempo) dipende solo da $T$, in particolare sarà per qualche $r(T)$: $$R(T)=npr(T)$$
	- Siccome all'equilibrio termico $G(T)=R(T)$: $$np=\frac{r(T)}{G(T)R(T)}$$dipende solo da $T$
	- Questo valore $np$ è dato dalla legge di azione di massa $np(T)=n_{I}^2(T)$
		- → $n_{I}$ è la densità volumica di portatori generati termicamente
		- Oss: stiamo sempre tacitamente applicando l'approssimazione di Boltzmann (semiconduttore non degenere)

+ Cosa succede fuori equilibrio termodinamico?
	+ Ci sono due possibilità: 
		- a) Se $np>n_{I}^2$ → ci sono più portatori liberi della condizione all'equilibrio
			- La ricombinazione è favorita rispetto alla generazione $R>G$
		- b) Se $np<n_{I}^2$ → ci sono meno portatori liberi della condizione all'equilibrio
			- La generazione è favorita rispetto alla ricombinazione $R<G$
	- Fisicamente, devono sempre essere conservate l'energia e il momento
		- Viene esaminata nella Teoria di Shockley, Read e Hall (SRH), per cui queste conservazioni sono soddisfatte se il tasso di generazione-ricombinazione netto $U$ è dato da: $$U:=R-G= \frac{pn-n_{I}^2}{(p+n+2n_{I})\tau}$$
### 1.6 Conduzione nei semiconduttori

- Conduzione nei semiconduttori 
	- Esistono due tipologie di correnti che concorrono alla conduzione nei semiconduttori → modello di Drude-Lorentz
		- Si basa su due postulati:
		- 1) Elettroni indipendenti e liberi 
			- Non interagiscono tra loro e tra un urto e l'altro si muovono soggetti solo a forze esterne al reticolo
		- 2) Scattering istantaneo e locale
			- Il tempo dell'urto è trascurabile rispetto al tempo tra gli urti
		- 3) Tempo di rilassamento
			- La probabilità che un elettrone subisca un urto in un periodo di tempo $dt$ è dato da $$dP=\frac{dt}{\tau}$$dove $\tau$ è il tempo medio tra gli urti
		- 4) Termalizzazione post-urto
			- Dopo un urto la velocità della particella ritorna quella all'equilibrio, dovuta all'agitazione termica e all'effetto di forze esterne
	- 1) Corrente di conduzione 
		- Definiamo la probabilità $S(t_{0})$ che in un intervallo $[0, t_{0}]$ la particella non subisca urti
			- Se $T$ è l'istante del primo urto subito dalla particella sarà (supponendo $t>0$): $$S(t_{0}):=\mathbb{P}\left\{ T \geq t  \right\} $$
			- Vale chiaramente che $S(0)=1$
			- Se voglio calcolare, nota $S(t)$, la funzione $S(t+dt)$ devo moltiplicarla per la probabilità che non compia urti in $dt$, cioè $(1-dP)$: $$S(t+dt)=S(t)(1-dP)=S(t)\left( 1-\frac{t}{\tau} \right)\implies S(t)=e^{ -t/\tau }$$
		- Il complementare di $S(t)$ può essere considerata una funzione di densità cumulata $$1-S(t)=\mathbb{P}\left\{  T \leq t  \right\} $$
			- La sua distribuzione di probabilità sarà $$p(t)=\frac{d}{dt}(1-S(t))=\frac{1}{\tau}e^{ -t/\tau }$$tale che $p(t)dt$ è la probabilità che il primo urto della particella avvenga in $[t, t+dt]$
			- Il tempo libero medio del materiale vale dunque $$\braket{ T  }  = \int_{0}^{+\infty}p(t)tdt=\int_{0}^{+\infty} \frac{t}{\tau} e^{ -t/\tau }dt=\tau \int_{0}^{+\infty} \mu e^{ -\mu }d\mu=\tau ([-\mu e^{ -\mu }]_{0}^{+\infty}-[e^{ -\mu }]_{0}^{+\infty})=\tau$$
				- Per cui $\tau$ è effettivamente il tempo medio tra gli urti
		- Suppongo ora che ci sia un campo elettrico esterno $\mathbf{E}$ che imprime a un portatore un'accelerazione $$\mathbf{a}=\frac{\mathbf{F}}{m^*}=\frac{e}{m^*}\mathbf{E}$$
		- Considero la quantità di moto media (sull'ensemble) di un portatore subito dopo un urto, avvenuto all'istante $t$ $$\braket{ \mathbf{p}  } (t)=m^*\braket{ \mathbf{v}  } $$
			- Dal postulato 4, dopo un urto la particella si muove di solo velocità termica, in maniera isotropa, per cui $\braket{ \mathbf{p}  }(t)=0$
			- All'istante $t+dt$:
				- a) Con probabilità $\left( 1-\frac{dt}{\tau} \right)$ non c'è nessun altro urto, quindi la particella accumula quantità di moto $$\braket{ \mathbf{p}  } (t+dt)=\braket{ \mathbf{p}  } (t)+\braket{ \Delta\mathbf{p}  } =m^*\braket{ \mathbf{v}  } +\mathbf{F}dt=m^*\braket{ \mathbf{v}  } +e\mathbf{E}dt$$
				- b) Con probabilità $\frac{dt}{\tau}$ c'è un urto e si ottiene $$\mathbf{p}(t+dt)=\mathbf{0}$$
				- → Il valor medio di tale variabile è perciò per $dt\to0$ $$\begin{align}  \braket{ \mathbf{p}  }(t+dt) &=\left( 1-\frac{dt}{\tau} \right)(m^*\braket{ \mathbf{v}  } +e\mathbf{E}dt) \\  &= m^*\braket{ \mathbf{v}  }-\frac{m^*}{\tau}\braket{ \mathbf{v} }dt +e\mathbf{E}dt +o(dt^2) \end{align}$$da cui per $dt\to0$: $$\braket{ \mathbf{F}  } =\frac{d\braket{ \mathbf{p}  }}{dt} (t)=e\mathbf{E}-\frac{m^*}{\tau}\braket{ \mathbf{v} } $$
		- A regime stazionario la velocità è detta *velocità di deriva* $$\braket{ \mathbf{F}  }=0\implies \braket{ \mathbf{v} } =\frac{e\tau}{m^*}\mathbf{E}:=\mu \mathbf{E} $$dove $\mu$ è detto *coefficiente di mobilità* dei portatori
			- Siccome $\tau$ è solitamente molto piccolo, posso utilizzare la legge dei grandi numeri e assumere $\mathbf{v}≈\braket{  \mathbf{v}  }$
			- Oss: siccome $\mathbf{F}=e\mathbf{E} \propto \mathbf{v}$ la forza si può intendere come una sorta di attrito viscoso dovuto agli urti degli elettroni
			- Si noti che mediamente per semiconduttori intrinseci
				- a) Elettroni ($n$) → $\mu_{n}≈1300 \frac{\text{cm}^2}{Vs}$ e $\mathbf{v}=-\mu_{n}\mathbf{E}$ (velocità opposta al campo)
				- b) Lacune ($p$) → $\mu_{p}≈400 \frac{\text{cm}^2}{Vs}$ e $\mathbf{v}=\mu_{p}\mathbf{E}$ (velocità concorde al campo)
				- Oss: questi valori cambiano al variare del drogaggio e della temperatura
			- Quando vale questa relazione? → non sempre, è solo un'approssimazione ![[scr 2026-09-27 alle 11.32.37.png|343]]
				- Esiste un valore di campo, detto *campo critico*, per cui questa relazione di proporzionalità diretta è rispettata
				- Per il $Si$ è circa $E_{critico}≈10^4 \frac{V}{cm}$
		- E la densità di corrente $\mathbf{J}$?
			- Vale dalla definizione di corrente che $\mathbf{J}=ne\mathbf{v}$ ($n$ = densità di particelle),  per cui nei vari casi:
			- a) Elettroni → $\mathbf{J}_{n}=-en(-\mu_{n}\mathbf{E})=en\mu_{n}\mathbf{E}$
			- b) Lacune → $\mathbf{J}_{p}=ep\mu_{p}\mathbf{E}$
			- → Quindi: $$\mathbf{J}_{tot}=e(\mu_{n}n+\mu_{p}p)\mathbf{E}$$
			- Per ciò la conducibilità elettrica del materiale è proprio $$\sigma=e(\mu_{n}n+\mu_{p}p)\implies \rho=\frac{1}{e(\mu_{p}p+\mu_{n}n)}$$
				- In particolare vale che: (grafico logaritmico)![[scr 2026-09-27 alle 12.06.29.png|323]]
					- a) Semiconduttori $p$ → $p\gg n$ e $p≈N_{A}$: $$\rho≈\frac{1}{e\mu_{p}N_{A}}$$
					- b) Semiconduttori $n$ → $n\gg p$ e $n≈N_{D}$: $$\rho≈\frac{1}{e\mu_{n}N_{D}}$$
					- Oss: la mobilità, al crescere della concentrazione di impurezze, per via della degenerazione del semiconduttore raggiunge un plateau
	- 2) Corrente di *diffusione*
		- Suppongo ora $\mathbf{E}=\mathbf{0}$, ma che ci sia un gradiente di concentrazione $n(x)$ in funzione dell'ascissa del materiale
		- Calcolo se gli elettroni si muovono di velocità termica $\mathbf{v}_{th}$ vale che definendo l'angolo $\theta$ in modo usuale: $$v_{x}=\mathbf{v}_{th} \cdot  \hat{u}_{x}=v_{th}\cos \theta$$
		- Se poniamo $x(0)=0$ e consideriamo un evento un tempo $t_{0}$ fa, vale che $$x(-t_{0})=-v_{x}t=-v_{th}t\cos\theta$$
		- Ora mi chiedo: qual è la densità $d\rho$ di particelle che, dopo aver urtato nel punto ($t$, $x(-t)$) arrivano a $x=0$ in un angolo solido $d\Omega=\sin\theta d\theta d\varphi$ al tempo $0$ senza fare ulteriori urti?
			- a) Densità di particelle → in $x(-t)$ la densità di particelle è banalmente data da $$n(x(-t))$$
			- b) Angolo → siccome dal postulato 4 la velocità è isotropa dopo gli urti, la percentuale di particelle in quel angolo solido è banalmente data dall'uniforme $$\frac{d\Omega}{4\pi}$$
			- c) Probabilità di non fare urti → come visto in precedenza, è data da $$p(t)dt=\frac{1}{\tau}e^{ -t/\tau }dt$$
			- → Per cui $$d\rho=\frac{n(x(-t))e^{ -t/\tau }}{4\pi \tau}d\Omega dt$$
			- Moltiplicando la densità di particelle per la loro velocità ottengo il flusso di particelle in $x=0$ che soddisfano le condizioni citate $$d\Phi_{x}=v_{x}d\rho= \frac{1}{4\pi \tau}n(x(-t))v_{th}\cos\theta e^{ -t/\tau }d\Omega dt$$
				- Integrando sugli angoli $d\Omega \in [0,\pi] \times[0,2\pi]$ e sui tempi $t\in[0, +\infty]$ ottengo $$\Phi_{x}=\frac{1}{4\pi \tau}\int_{0}^{2\pi}\int_{0}^\pi \int_{0}^{+\infty}n(-v_{th}t\cos\theta)v_{th}\cos \theta e^{ -t/\tau }\sin\theta d\varphi d\theta dt$$
				- Approssimando la densità $n(x)$ in serie di Taylor al primo ordine: $$n(-v_{th}t\cos\theta) \approx n(0) - v_{th}t\cos\theta \frac{dn}{dx}(0)$$
				- Per cui: 
					- a) Termine di ordine zero (isotropo) $$\Phi_x^{(0)} \propto \int_0^\pi \cos\theta \sin\theta \, d\theta = \left[ \frac{\sin^2\theta}{2} \right]_0^\pi = 0$$
					- b) Termine di ordine $1$: $$\begin{align}  \Phi_x^{(1)} &= - \frac{dn}{dx}(0) \frac{v_{th}^2}{4\pi\tau} \underbrace{\left(\int_0^{2\pi} d\phi\right)}_{2\pi} \underbrace{\left(\int_0^\pi \cos^2\theta \sin\theta\,d\theta\right)}_{2/3} \underbrace{\left(\int_0^\infty t e^{-t/\tau} dt\right)}_{\tau^2} \\  &= -\frac{dn}{dx}(0) \cdot \frac{v_{th}^2}{4\pi\tau} \cdot (2\pi) \cdot \left(\frac{2}{3}\right) \cdot \tau^2  \\  &= -\left( \frac{1}{3} v_{th}^2 \tau \right) \frac{dn}{dx}(0)\end{align}$$
					- → Definendo $D_{n}:=\frac{1}{3} v_{th}^2 \tau$ *coefficiente di diffusione* si ottiene la Legge di Fick: $$\Phi_n = -D_n \frac{dn}{dx}(x)$$
		- Pertanto la corrente di diffusione sarà per gli elettroni (carica $-e$) data da $$J_{n,\text{diff}}(x)=-e\Phi_n(x)=eD_{n}\frac{dn}{dx}(x)$$
			- Vale che $D_{n}≈32 \frac{\text{cm}^2}{s}$ e $D_{p}≈12 \frac{\text{cm}^2}{s}$
		- Generalizzando in 3D: $$\begin{cases}  \mathbf{J}_{n,\text{diff}}(\mathbf{x})=eD_{n}\nabla n(\mathbf{x}) & \text{(tipo n)} \\  \mathbf{J}_{p,\text{diff}}(\mathbf{x})=-eD_{p}\nabla p(\mathbf{x}) & \text{(tipo p)}  \end{cases}$$
	- → In generale, la conduzione in un semiconduttore è data da $$\begin{cases}  \mathbf{J_{p}}=\mathbf{J}_{\text{p, drift}}+\mathbf{J}_{\text{p, diff}}=-eD_{p}\nabla p +e\mu_{p}p\mathbf{E}  &\text{(tipo p)} \\  \mathbf{J}_{n}=\mathbf{J}_{\text{n, drift}}+\mathbf{J}_{\text{n, diff}}=eD_{n}\nabla n +e\mu_{n}n\mathbf{E} &\text{(tipo n)} \end{cases}$$
	- I coefficienti di diffusione e mobilità non sono indipendenti 
		- Infatti essendo la velocità termica ordini di grandezza maggiore della velocità di drift ($v_{th}\gg v_{d}$) possiamo assumere che $$v^2=v_{d}^2+v_{th}^2≈v_{th}^2$$
		- Dal teorema di equipartizione si ottiene che $$\frac{1}{2}m^*v_{th}^2=\frac{3}{2}k_{B}T\implies v_{th}^2=\frac{3k_{B}T}{m^*}$$
		- Per cui: $$D_{n}=\frac{1}{3}v_{th}^2\tau=\frac{k_{B}T\tau}{m^*}$$e siccome $\mu_{n}=\frac{e\tau}{m^*}$ si ottiene la relazione di Einstein: $$\frac{D_{n}}{\mu_{n}}=\frac{D_{p}}{\mu_{p}}=\frac{k_{B}T}{e}=:V_{th}$$dove $V_{th}=\frac{k_{B}T}{e}≈25.9mV$ a $300K$ è detta *tensione termica*.
### 1.7 Resistore integrato

+ Resistore integrato 
	+ Supponiamo di avere un substrato di silicio drogato $p$, dove è presente una certa regione drogata di tipo $n$, con $n>p_{sub}$
		+ Oss: La distribuzione di $n$ lungo l'asse verticale è tutto tranne che uniforme (di solito gaussiana / erf)
		+ → Considereremo per ora una densità media sul materiale
	+ Ai lati della regione drogata $n$ collego due terminali, deponendo un ossido come isolante per evitare che il metallo contatti il substrato
		+ Il substrato ha un suo contatto per fissare il potenziale, ma ora non ce ne occupiamo perchè riguarda altri meccanismi che scopriremo
	+ Consideriamo una sezione della regione $n$, di altezza $t$ e spessore $w$
		+ Siccome dalla seconda legge di Ohm: $$R=\frac{\rho L}{S}=\frac{L}{wt} \frac{1}{e(\mu_{n}n+\mu_{p}p)}≈ \frac{L}{wt} \frac{1}{e\mu_{n}N_{D}}$$sapendo che $n\gg p$ e $n≈N_{D}$
		+ Posso definire *dose* del drogaggio $D:=tN_{D}$ (densità superficiale di drogante) per cui $R=\frac{L}{w} \frac{1}{e\mu_{n}D}$
		+ Se $L=w$ (la regione drogata $n$ è quadrata), la resistenza è detta *per quadro*, ed è lo standard industriale $$R_{\,\blacksquare}=\frac{1}{e\mu_{n}D}$$
			+ ex. Se $D≈10^{13} \frac{\text{atomi}}{\text{cm}^2}$ allora $R_{\,\blacksquare}≈446 \Omega$ per quadro → se volessi avere $R≈6k\Omega$ dovrei disporre tanti quadrati a serpentina

## 2 Giunzione $pn$
### 2.1 Analisi in equilibrio termodinamico

- Immaginiamo due blocchi di semiconduttore, uno tipo $p$, l'altro tipo $n$ ![[scr 2026-10-14 alle 17.02.31.png|418]]
	- Introduco la notazione → $a_{b0}$ 
		- $a\in \left\{ p, n \right\}$ rappresenta il portatore
		- $b \in \left\{ p,n \right\}$ rappresenta la zona della giunzione (sinistra $p$, destra $n$)
		- $0$ significa ad equilibrio termodinamico
	- Si dice *giunzione metallurgica* la superficie che separa i due drogaggi differenti
	- Essendo all'equilibrio termodinamico, posso applicare la legge di azione di massa  $$\begin{matrix}  p_{p0}=N_{A} &  n_{p_{0}}=\frac{n_{I}^2}{N_{A}} \\ n_{n0}=N_{D} & p_{n0}=\frac{n_{I}^2}{N_{D}}  \end{matrix}$$ 

- Scorre corrente? 
	- All'equilibrio la corrente totale deve essere nulla → ho due fenomeni concorrenti
	- a) $\mathbf{J}_{\text{diff}}$ → le cariche si spostano per appiattire i gradienti di concentrazione del drogante
		- I portatori $p$ (lacune) si spostano verso la zona $n$ ($\mathbf{J}(x)=J\mathbf{u_{x}}$) e i portatori $n$ (elettroni) si spostano verso la zona $p$ ($\mathbf{J}(x)=-J\mathbf{u_{x}}$)
		- Appena attraversano il confine, le cariche maggioritarie si ricombinano (gli elettroni occupano le lacune) 
	- b) $\mathbf{J}_{\text{drift}}$ → campo elettrico causato dagli ioni $N_{A}^-$ e $N_{D}^+$ causati dal movimento dei portatori maggioritari
		- Quando un elettrone $n$ lascia un atomo donore per corrente di diffusione, il nucleo diventa uno ione positivo $N_{D}^+$
			- Similmente si formano ioni $N_{A}^-$
		- → Nasce un forte campo elettrico $\mathbf{E}=-E\mathbf{u_{x}}$ di drift in una regione di spazio ben definita $(-x_{p}<x<x_{n})$, detta *zona di carica spaziale*
			- Le cariche non continuano ad attraversare il confine tra le due zone perchè sono respinte (sia le cariche $p$ a sinistra che le cariche $n$ a destra) da tale campo elettrico
			- → Le coordinate $x_{p}$ e $x_{n}$ rappresentano proprio il punto in cui i portatori liberi sono in equilibrio tra la forza elettrica repulsiva e la forza diffusiva 
	- Oss: in realtà, la zona di transizione tra $n$ e $p$ non è infinitesima, ed è detta *lunghezza di Debye*
		- Si può però ignorare in questi calcoli siccome nell'ordine di pochi $nm$

+ Come calcolo il campo elettrico di drift? ![[scr 2026-10-15 alle 09.20.00.png]]
	- Suppongo che $N_{A}<N_{D}$ (la parte $n$ sia "più drogata" della parte $p$) (anche detta giunzione $n^{+}p$)
	- Siccome vale che $\rho_{p}=-eN_{A}$ (zona p) e $\rho_{n}=eN_{D}$ (zona n) e, dal bilancio di carica totale $$ \int_{\Omega}\rho_{p}\,d\mathbf{x}+\int_{\Omega}\rho_{n}\,d\mathbf{x}=0$$si ottiene che, a parità di area di sezione rettangolare $$eN_{A}x_{p}=eN_{D}x_{n}\implies  N_{A}x_{p}=N_{D}x_{n}$$
		- La carica elettrica nella zona $(-x_{p}, x_{n})$ è data SOLO dai nuclei carichi, siccome le cariche libere si sono annichilite a vicenda → pertanto è uniforme, siccome il reticolo cristallino in cui sono presenti tali ioni lo è
	- Dalle leggi di Maxwell, per $\mathbf{E}(\mathbf{x})=E(x)\hat{u}_{x}$: $$\begin{align}  \frac{ \partial E }{ \partial x } (x)=\frac{\rho}{\varepsilon_{Si}}(x)  \quad    \quad E(x)S=S\int_{-\infty}^{x} \frac{\rho(x)}{\varepsilon_{Si}} \, dx  \end{align}$$essendoci uniformità sulle sezioni di area $S$
	- Per cui$$E(x)=\int_{-\infty}^{x} \frac{\rho(x)}{\varepsilon_{Si}}dx=\begin{cases}  0 & x< -x_{p} \\  \int_{-x_{p}}^{x}-\frac{eN_{A}}{\varepsilon_{Si}}dx=-\frac{eN_{A}}{\varepsilon_{Si}}(x+x_{p}) & -x_{p}<x<0 \\  -\frac{eN_{A}}{\varepsilon_{Si}}x_{p}+\int_{0}^x \frac{eN_{D}}{\varepsilon_{Si}} dx=\frac{eN_{D}}{\varepsilon_{Si}}(x-x_{n}) & 0<x<x_{n} \\  0 & x>x_{n}  \end{cases}$$
	- Di conseguenza: $$V(x)-V(-x_{p})=-\int_{-x_{p}}^{x}E(x)dx$$
	- Oppure, scrivendo l'equazione di Poisson: $$\frac{d^2V}{dx^2}(x)=-\frac{\rho(x)}{\varepsilon_{Si}}= - \frac{e[p(x)+N_{D}(x)-n(x)-N_{A}(x)]}{\varepsilon_{Si}}=\begin{cases}  0  & x< -x_{p}  \\  \frac{eN_{A}}{\varepsilon_{Si}} & -x_{p}<x<0 \\  -\frac{eN_{D}}{\varepsilon_{Si}} & 0<x<x_{n}  \\  0 & x>x_{n}  \end{cases}$$
		- Il potenziale è nullo a sinistra e destra della zona senza portatori, parabolico al centro
	- Integrando, il potenziale è della forma $$V(x)-V(-x_{p})= \begin{cases}  \frac{eN_{A}}{2\varepsilon_{Si}}(x+x_{p})^2 & -x_{p}<x<0 \\  \frac{eN_{A}}{2\varepsilon_{Si}}x_{p}^2+ \frac{eN_{D}}{\varepsilon _{Si}}\left( xx_{n}-\frac{x^2}{2} \right) & 0<x<x_{n}  \end{cases}$$
		- La barriera di potenziale complessiva nella giunzione, detta *tensione di built-in*, è pertanto: $$\Phi_{bi}:=V(x_{n})-V(-x_{p})=\frac{eN_{A}}{2\varepsilon_{Si}}x_{p}^2+\frac{eN_{D}}{2\varepsilon_{Si}}x_{n}^2$$
			- La barriera di energia potenziale è pertanto $e\Phi_{bi}$

+ Livelli energetici![[scr 2026-10-14 alle 18.25.21.png|402]]
	- Conseguenza dell'equilibrio termico: $$E_{F}(x)=\text{costante}$$
		- Dimostrazione analitica: 
			- Esplicitando le correnti: $$\begin{align}  \mathbf{J}=\mathbf{J}_{\text{drift}}+\mathbf{J}_{\text{diff}}&=0 \\  \implies e\left[ (\mu_{n}n(x)+\mu_{p}p(x))E(x)+D_{n}\frac{ \partial n }{ \partial x } (x) -D_{p}\frac{ \partial p }{ \partial x } (x)\right]&= 0 \\  \implies  (\mu_{n}n(x)+\mu_{p}p(x))E(x)+D_{n}\frac{ \partial n }{ \partial x } (x) -D_{p}\frac{ \partial p }{ \partial x } (x)&=0 \\   \end{align}$$
			- Utilizzando l'approssimazione di Maxwell-Boltzmann posso calcolare, per semiconduttori non degeneri $$n(x)=n_{I}e^{ \frac{E_{F}(x)-E_{I}(x)}{k_{B}T} }\implies \frac{ \partial n }{ \partial x } (x)=\frac{n(x)}{k_{B}T}\left( \frac{ \partial E_{F} }{ \partial x }(x)-\frac{ \partial E_{I} }{ \partial x } (x)  \right)$$
			- Pertanto: $$\mu_{n}n(x)E(x)+\mu_{p}p(x)E(x)+\left( D_{n} \left( \frac{ \partial E_{F} }{ \partial x }(x)-\frac{ \partial E_{I} }{ \partial x } (x)  \right) n(x)-D_{p} \left( \frac{ \partial E_{I} }{ \partial x }(x)-\frac{ \partial E_{F} }{ \partial x } (x)  \right) p(x)  \right) \frac{1}{k_{B}T}=0$$
			- Si mostra con calcoli quantomeccanici che: $$\frac{ \partial E_{I} }{ \partial x } (x)=eE(x)$$
			- → Usando la relazione di Einstein ottengo all'equilibrio termico $$\begin{align} & \underbrace{(\mu_{n}n(x)+\mu_{p}p(x)-\mu_{n}n(x)-\mu_{p}p(x))E(x)}_{=0}+\frac{1}{k_{B}T}\left( D_{n}n(x)+D_{p}p(x)  \right)\frac{ \partial E_{F} }{ \partial x } (x) =0 \\ & \iff \frac{ \partial E_{F} }{ \partial x }(x) =0  \end{align}$$siccome $n(x)$ e $p(x)$ seguono andamenti diversi
		- Ne si può anche dare una giustificazione termodinamica:
			- Siccome siamo all'equilibrio termodinamico, la probabilità di un portatore di transire dallo stato 2 ($x=x_{2}$) allo stato 1 ($x=x_{1}$) devono essere uguali $$P_{2\to1}=P_{1\to2} \implies  f(E, E_{F, 1})[1-f(E,E_{F_{2}})]=f(E, E_{F, 2})[1-f(E, E_{F_{1}})]$$dove $f(E)$ è la distribuzione di Fermi-Dirac
			- Pertanto $f(E, E_{F, 1})=f(E, E_{F, 2}), \,\,\forall E \in \mathbb{R} \rightarrow E_{F, 1}=E_{F,2}$
	- Considerando i livelli energetici prima del contatto: ![[scr 2026-10-15 alle 09.19.31.png]]
		- Nella zona $p$ per la distribuzione di Fermi-Dirac, i pochi elettroni liberi sono a $E>E_{C}$
			- Invece, nella zona $n$ è la maggioranza degli elettroni ad essere liberi ad $E>E_{C}$
			- → Gli $e^-$  diffondono dalla zona $n$ alla zona $p$ e il potenziale si deforma
		- → Si crea una barriera di potenziale, per cui tutti gli $e^-$ nella zona $n$ con energia minore del salto non possono passare nella zona $p$
			- La barriera è tale che i due flussi di $e^-$ si equivalgano da entrambe le parti
	- Come trovo il grafico dei livelli energetici al variare di $x$, numericamente?
		- a) Trovo il livello di Fermi $E_{F}$
		- b) Se conosco il drogaggio, conosco $N_{A}$, $N_{D}$ per cui conosco la distanza tra $E_{F}$ e $E_{V}$ e $E_{C}$ nei due tratti costanti agli estremi $$\begin{cases}  p=n_{i}e^{ \frac{E_{I,p}-E_{F}}{k_{B}T} }≈N_{A} \\  n=n_{i}e^{ \frac{E_{F}-E_{I,n}}{k_{B}T} }≈N_{D}  \end{cases}\implies \begin{cases}  E_{I,p}-E_{F}=k_{B}T\log\left( \frac{N_{A}}{n_{i}} \right) \\  E_{F}-E_{I,n}=k_{B}T\log\left( \frac{N_{D}}{n_{i}} \right)   \end{cases}$$
		- c) Raccordo i due tratti costanti con un andamento di tipo quadratico
			- La barriera energetica è proprio $e\Phi_{bi}$ $$e\Phi_{bi}=(E_{I,p}-E_{F})+(E_{F}-E_{I,n})=k_{B}T\log\left( \frac{N_{A}N_{D}}{n_{I}^2} \right)$$quindi $$\Phi_{bi}=\frac{k_{B}T}{e}\log\left( \frac{N_{A}N_{D}}{n_{I}^2} \right)$$
			- Posso anche definire $$\begin{align}  \begin{cases}  \Phi_{fn}:= \frac{E_{F}-E_{I,n}}{e}=\frac{k_{B}T}{e}\log \frac{N_{D}}{n_{i}} \\  \Phi_{fp}:=\frac{E_{I,p}-E_{F}}{e}=\frac{k_{B}T}{e}\log \frac{N_{A}}{n_{i}}  \end{cases} \implies  \Phi_{bi}&=\Phi_{fn}+\Phi_{fp}  \end{align}$$
			- A partire da questa equazione e $N_{A}x_{p}=N_{D}x_{n}$ si ricava che $$x_p = \sqrt{\frac{2\varepsilon_{si}\Phi_{bi}}{eN_A\left(1 + \frac{N_A}{N_D}\right)}} \quad \text{} \quad x_n = \sqrt{\frac{2\varepsilon_{si}\Phi_{bi}}{eN_D\left(1 + \frac{N_D}{N_A}\right)}}$$da cui la lunghezza della buca è $$x=x_{p}+x_{n}=\sqrt{\frac{2\varepsilon_{si}\Phi_{bi}}{e}\left( \frac{1}{N_{A}}+\frac{1}{N_{D}} \right)}$$
- Se volessi far passare corrente nella giunzione, dovrei utilizzare dei *contatti ohmici*
	- Sono microfili metallici che formano delle giunzioni metallo-semiconduttore che non presentano alcun impedimento al flusso di corrente
### 2.2 Analisi fuori equilibrio termodinamico

Immaginiamo ora di avere una tensione esterna → come reagisce il materiale?
#### 2.2.1 - Equazione di continuità ed evoluzione temporale

- a) Equazione di continuità per semiconduttori
	- Poniamo ora di avere un volume infinitesimo (di sezione $A$, lunghezza $dx$) di un generico semiconduttore → come varia il numero di portatori in tali volumi?
	- Supponiamo di amvere:
		- a) Un flusso di portatori entranti $\frac{\mathbf{J}_{p}(x)}{e}$
		- b) Un flusso di portatori uscenti $\frac{\mathbf{J}_{p}(x+dx)}{e}$ (supponendo il caso monodimensionale)
		- c) Una densità di rigenerazione $R_{p}$ 
		- d) Un tasso di generazione $G$ 
	- Vale l'*equazione di continuità*: $$\begin{align}  \frac{ \partial \rho }{ \partial t } Adx&=\left[ \frac{J_{p}(x)A}{e}-\frac{J_{p}(x+dx)A}{e} \right]+(G_{p}+R_{p})Adx \\ &= -\frac{Adx}{e}\frac{ \partial J_{p} }{ \partial x }(x)+(G_{p}-R_{p})Adx    \end{align}$$
	- Pertanto specificando per elettroni e lacune: $$\begin{cases}  \frac{ \partial p }{ \partial t } &=-\frac{1}{e}\frac{ \partial J_{p} }{ \partial x }(x)+G_{p}-R_{p} \\  \frac{ \partial n }{ \partial t } &=\frac{1}{e}\frac{ \partial J_{n} }{ \partial x }(x)+G_{n}-R_{n}  \end{cases}$$
	- Sostituendo la corrente ($J_{p}=-eD_{p}\frac{ \partial p }{ \partial x }+e\mu_{p}pE$ e $J_{n}=eD_{n}\frac{ \partial n }{ \partial x }+e\mu_{n}nE$): $$\begin{cases}  \frac{ \partial p }{ \partial t } =D_{p}\frac{ \partial^2 p }{ \partial x^2 }-\mu_{p}\left( E\frac{ \partial p }{ \partial x } +p\frac{ \partial E }{ \partial x }  \right)+(G_{p}-R_{p})  \\ \frac{ \partial n }{ \partial t } =D_{n}\frac{ \partial^2 n }{ \partial x^2 }+\mu_{n}\left( E\frac{ \partial n }{ \partial x } +n\frac{ \partial E }{ \partial x }  \right)+(G_{n}-R_{n})     \end{cases}$$
		- Oss: in condizioni stazionarie $$\frac{ \partial p }{ \partial t } =\frac{ \partial n }{ \partial t } =0$$
- b) Andamento temporale delle concentrazioni in un semiconduttore drogato $n$ fuori equilibrio
	- Dalla legge di azione di massa $$n:=n_{0}≈N_{D}  \quad  \quad p:=p_{0}=\frac{n_{I}^2}{n_{0}}≈\frac{{n_{I}^2}}{N_{D}}$$
	- Illuminiamo il materiale in maniera uniforme per creare $n^{\prime}=10^{12} \text{cm}^{-3}$ coppie elettrone-lacuna → si va fuori equilibrio $$\begin{align}  n= n_{0}+n^{\prime} =N_{D}+n^{\prime} ≈N_{D}=10^{16} \text{cm}^{-3} \\  p=p_{0}+p^{\prime} =\frac{n_{I}^2}{n_{0}}+n^{\prime} ≈n^{\prime} =10^{12}\text{cm}^{-3}  \end{align}$$
	- Sebbene il numero di entrambi i portatori aggiunti è uguale, rispetto agli ordini di grandezza, i portatori maggioritari sono sostanzialmente invariati, mentre i minoritari aumentano di diversi ordini di grandezza
		- → Si chiama *bassa iniezione* di portatori minoritari
		- Di conseguenza, $np\gg n_{I}$ → l'effetto della ricombinazione è maggioritario
	- Si può adattare ora l'equazione di continuità a questo caso $$\frac{ \partial p }{ \partial t } =D_{p}\frac{ \partial^2 p }{ \partial x^2 }-\mu_{p}\left( E\frac{ \partial p }{ \partial x } +p\frac{ \partial E }{ \partial x }  \right)+(G_{p}-R_{p})$$
		- a) Illuminazione uniforme → $\frac{ \partial p }{ \partial x }=0$
		- b) Assenza di campo esterno → $E=0$
		- c) Usando la teoria SRH si ottiene: $$\begin{align}  R_{p}-G_{p}&= \frac{pn-n_{I}^2}{(p+n+2n_{I})\tau} \\  &= \frac{(p_{0}+p^{\prime} )(n_{0}+n^{\prime} )-p_{0}n_{0}}{(p_{0}+p^{\prime} +n_{0}+n^{\prime} +2n_{I})\tau}  \\  &≈ \frac{p^{\prime} n_{0}+n^{\prime} p_{0}+p^{\prime} n^{\prime} }{n_{0}\tau}  \\  &≈ \frac{p^{\prime}n_{0}}{n_{0}\tau}=\frac{p^{\prime}}{\tau} \end{align}$$siccome $n_{0}\gg p^{\prime}\gg p_{0}$
		- → L'equazione di continuità si integra facilmente $$\frac{ \partial p^{\prime}  }{ \partial t }=-\frac{p^{\prime}}{\tau}\implies p^{\prime} (x,t)=p^{\prime} (x,0)e^{ -t/\tau } $$
			- E di conseguenza la densità di elettroni è $$\frac{ \partial n^{\prime}  }{ \partial t } =-\frac{p^{\prime}}{\tau} \implies n^{\prime} (x,t)=p^{\prime}(x,0) e^{ -t/\tau }$$(anche se è sostanzialmente impercettibile siccome $n^{\prime}\ll n_{0}$)
#### 2.2.2 - Giunzione $pn$ in polarizzazione diretta

- Imponiamo una tensione stazionaria $V_{D}$ tra la zona $p$ ($+$) e la zona $n$ ($-$) (*forward bias*)
	- Viene ridotta quindi la tensione complessiva tra le due zone, che diventa $$\Phi_{bi}-V_{D}$$
		- Trascuriamo qui le cadute di tensione nella zona neutra (laterale), quindi immaginata ai fini di questo modello a conducibilità infinita
	- → Il salto energetico si riduce

- Dall'approssimazione di Maxwell-Boltzmann di Fermi-Dirac posso calcolare, all'equilibrio, la concentrazione di elettroni nella banda di conduzione $$\begin{align}  n_{cond}&=\int_{E_{C}}^{+\infty}n(E)dE \\  &= \gamma_{1}(k_{B}T)^{\frac{3}{2}}\alpha_{1}e^{ \frac{E_{C}-E_{F}}{k_{B}T} }≈N_{D} \end{align}$$dove $\alpha_{1}$ e $\gamma_{1}$ sono le costanti definite in precedenza
	- Siccome è variato il livello di Fermi, soltanto gli elettroni con energia $E>E_{C}+e\Phi_{bi}$ riusciranno a condurre, in concentrazione pari a $$\begin{align}  n_{\text{salto}}&=\int_{E_{C}+e\Phi_{bi}}^{+\infty}n(E)dE \\  &= \gamma_{1}(k_{B}T)^{\frac{3}{2}}\alpha_{1}e^{ \frac{E_{C}+e\Phi_{bi}-E_{F}}{k_{B}T} } \\ &= n_{cond}e^{ - \frac{e\Phi_{bi}}{k_{B}T} } = n_{cond}e^{ - \frac{\Phi_{bi}}{V_{th}} } \\  &=n_{cond} \frac{n_{I}^2}{N_{A}N_{D}}≈ \frac{n_{I}^2}{N_{A}} \end{align}$$essendo $\Phi_{bi}=V_{th}\log\left( \frac{N_{A}N_{D}}{n_{I}^2} \right)$
	- Considerando ora la tensione applicata $V_{D}$:
		- Il numero di elettroni capace di oltrepassare la barriera (dalla zona $n$ alla zona $p$) è maggiore $$n^{\prime} _{\text{salto}}≈N_{D}e^{ - \frac{\Phi_{bi}-V_{D}}{V_{th}} }=\frac{n_{I}^2}{N_{A}}e^{ \frac{V_{D}}{V_{th}} }$$e allo stesso modo per le lacune $$p^{\prime} _{\text{salto}}≈\frac{n_{I}^2}{N_{D}}e^{ \frac{V_{D}}{V_{th}} }$$
		- → Dipende esponenzialmente dalla tensione applicata!
	- Pertanto per effetto della corrente si avrà all'equilibrio che i portatori minoritari sono ai bordi della zona di carica spaziale: $$\begin{align}  n(-x_{p})=\frac{n_{I}^2}{N_{A}}e^{ \frac{V_{D}}{V_{th}} } \\  p(x_{n})=\frac{n_{I}^2}{N_{D}}e^{ \frac{V_{D}}{V_{th}} }  \end{align}$$
		- Il drift dei minoritari per via del campo elettrico permette di soddisfare il flusso di maggioritari che vince la barriera di potenziale → caso stazionario

+ Quanto vale la corrente all'interno della zona di carica spaziale? → studiamolo con diverse approssimazioni:
	- a) Giunzione *a base corta*
		- → Assumiamo nulla la generazione / ricombinazione su tutta la giunzione $$R-G≈0$$
		- Quanto vale la concentrazione dei minoritari nelle basi? ![[scr 2026-10-15 alle 12.45.57.png]]
			- Essendo la ricombinazione nulla in tutto il materiale, dall'equazione di continuità (ad es. per gli $e^-$) nel caso stazionario: $$\frac{ \partial n }{ \partial t } =0=\frac{1}{e} \frac{ \partial J_{n} }{ \partial x } + \underbrace{G_{n}-R_{n}}_{=0}=\frac{1}{e}\frac{ \partial J_{n} }{ \partial x } \implies J_{n}(x)=\text{cost.}$$
			- Siccome nelle basi il campo elettrico è nullo $E(x)=0, \,x \not\in[-x_{p}, x_{n}]$, la corrente dei minoritari sarà solo di diffusione $$J_{n}(x)=eD_{n}\frac{ \partial n }{ \partial x } (x)=\text{cost.}\implies n(x)\text{ è lineare}$$
				- Invece per i maggioritari la variazione è trascurabile → il numero dei minoritari provenienti dall'altra base è $\ll$ del numero di maggioritari già presenti dal drogaggio
			- Le rette di $n(x)$ (minoritari in $p$) e $p(x)$ (minoritari in $n$) sono fissate dalle condizioni al contorno: $$\begin{align}  &\begin{cases}  n(-x_{p})=\frac{n_{I}^2}{N_{A}}e^{ \frac{V_{D}}{V_{th}} }   \\  n(-W_{p})=\frac{n_{I}^2}{N_{A}} \end{cases} \\ \\ &\begin{cases}  p(x_{n})=\frac{n_{I}^2}{N_{D}}e^{ \frac{V_{D}}{V_{th}} } \\  p(W_{n})=\frac{n_{I}^2}{N_{D}}  \end{cases} \end{align}$$
		- Da ciò possiamo calcolare la corrente (costante lungo tutto il dispositivo): $$\begin{cases}  J_{n} = e D_{n} \frac{dn}{dx} = e \frac{D_{n}}{W_{p} - x_{p}} \frac{n_{I}^2}{N_{A}} \left( e^{\frac{V_{D}}{V_{th}}} - 1 \right) \approx e \frac{D_{n}}{W_{p}} \frac{n_{I}^2}{N_{A}} \left( e^{\frac{V_{D}}{V_{th}}} - 1 \right) \\ J_{p} = -e D_{p} \frac{dp}{dx} = e \frac{D_{p}}{W_{n} - x_{n}} \frac{n_{I}^2}{N_{D}} \left( e^{\frac{V_{D}}{V_{th}}} - 1 \right) \approx e \frac{D_{p}}{W_{n}} \frac{n_{I}^2}{N_{D}} \left( e^{\frac{V_{D}}{V_{th}}} - 1 \right) \end{cases}$$dove ho considerato $W_{n}\gg x_{n}$ e $W_{p}\gg x_{p}$
			- Da ciò: $$J_{TOT} = J_{n} + J_{p} ≈ e n_{I}^2 \left( \frac{D_{n}}{N_{A} W_{p}} + \frac{D_{p}}{N_{D} W_{n}} \right) \left( e^{\frac{V_{D}}{V_{th}}} - 1 \right) = J_{s} \left( e^{\frac{V_{D}}{V_{th}}} - 1 \right) $$dove $J_{s}$ è detta *corrente inversa di saturazione* $$J_{s}:=e n_{I}^2 \left( \frac{D_{n}}{N_{A} W_{p}} + \frac{D_{p}}{N_{D} W_{n}} \right)$$
			- → $J_{TOT}$ dipende esponenzialmente da $V_{D}$!
		- Da cosa è giustificata l'approssimazione di base corta?
			- I minoritari attraversano la base in diffusione molto velocemente, in un tempo molto minore di quello medio in cui avviene la ricombinazione
			- Si può stimare il tempo di transito:
				- La carica che si è accumulata in eccesso rispetto all'equilibrio termodinamico è data dall'integrale della concentrazione dei minoritari sulla base: $$Q_{\text{n, exc}}=-e \frac{\frac{n_{I}^2}{N_{A}}\left(e^{ \frac{V_{D}}{V_{th}} }-1\right)}{2}S(W_{p}-x_{p})$$(ad esempio per gli elettroni nella base $p$)
				- Il flusso di carica è dato dal prodotto concentrazione per velocità: $$\varphi(x)=n(x)v(x)=- \frac{J_{n}}{e}$$da cui ottengo la velocità media degli elettroni $$v(x)=- \frac{J_n}{en(x)}$$
				- Dalla definizione di velocità, integrando: $$dt=\frac{1}{v(x)}dx=-\frac{en(x)}{J_{n}}dx\implies t_{tr}=\frac{1}{J_{n}}\int_{-W_{p}}^{-x_{p}}-en'(x)dx=\frac{Q_{exc}}{J_{n}}$$che è il *tempo di transito* dei minoritari
				- Sostituendo le equazioni di $Q_{exc}$ e $J_{n}$ si ottiene$$t_{tr}=\frac{e \frac{n_{I}^2}{N_{A}} \left( e^{\frac{V_{D}}{V_{th}}} - 1 \right) \frac{(W_{p}-x_{p})}{2}}{e \frac{D_{n}}{W_{p} - x_{p}} \frac{n_{I}^2}{N_{A}} \left( e^{\frac{V_{D}}{V_{th}}} - 1 \right) }=\frac{(W_{p}-x_{p})^2}{2D_{n}}$$
			- → L'approssimazione è sensata se $$t_{tr}\ll \tau_{n}$$tempo medio di vita dei minoritari (e quindi di ricombinazione)
		- Le basi in realtà non sono neutre! → sono dette infatti *basi quasi-neutre*
			+ Esistono delle differenze di potenziale  $V_{D_{2}}$ nella base $p$ e $V_{D_{4}}$ nella base $n$ 
			+ Si può dare una stima approssimata di questi potenziali 
				+ Usando la legge di Ohm e nota la resistività del silicio drogato si ottiene $$\begin{align}  V_{D_{2}} &≈AJ_{p}(x_{n})R_{p} \\  &= A \left( en_{I}^2 \frac{D_{p}}{N_{D}L_{p}} \left( e^{ \frac{V_{D}}{V_{th}} }-1 \right)\right)\left( \frac{1}{e\mu_{p}N_{A}} \frac{W_{p}}{A} \right)  \\  &=V_{th} \frac{W_{p}}{W_{n}} \frac{n_{I}^2}{N_{A}N_{D}}\left( e^{ \frac{V_{D}}{V_{th}} }-1 \right) \end{align}$$avendo usato la relazione di Einstein
				+ Similmente ottengo $$V_{D_{1}}≈V_{th} \frac{W_{n}}{W_{p}} \frac{n_{I}^2}{N_{A}N_{D}}\left( e^{ \frac{V_{D}}{V_{th}} } -1\right)$$
			+ Oss: da questo possiamo dedurre due condizioni
				+ a) Di *bassa iniezione* → le concezioni dei minoritari sono trascurabili rispetto ai maggioritari $$\frac{n_{I}^2}{N_{D}}e^{ \frac{V_{D}}{V_{th}} }\ll N_{D} \quad \text{e} \quad \frac{n_{I}^2}{N_{A}}e^{ \frac{V_{D}}{V_{th}} }\ll N_{A}$$
					+ Da ciò si ottiene che $$n_{I}^2e^{ \frac{V_{D}}{V_{th}} }\ll N_{A}N_{D}\implies \begin{cases}  V_{D_{2}}\ll V_{th} \frac{W_{p}}{W_{n}}   \\  V_{D_{4}}\ll V_{th} \frac{W_{n}}{W_{p}} \end{cases}$$quindi sono trascurabili
				+ b) Di *alta iniezione* → le cadute di tensione nelle basi non sono più trascurabili
					+ In questo caso le correnti diventano molto più complesse da calcolare
	+ b) Caso generale
		+ Quanto vale in generale la distribuzione dei minoritari?
		- Considero in questo caso l'equazione di continuità per i minoritari $p$ nella base $n$, considerando il caso stazionario e $E=0$: $$0=D_{p}\frac{ \partial ^2p }{ \partial x ^2}(x)+(G_{p}-R_{p}) $$
		- Siccome siamo nel caso di un eccesso di lacune $p^{\prime}(x)=p(x)-p_{0}=p(x)-\frac{n_{I}^2}{N_{D}}$ si ha che per quanto visto prima da SRH: $$G_{p}-R_{p}≈-\frac{p^{\prime} (x)}{\tau_{p}}$$per cui per linearità della derivata (ed essendo $p_{0}$ costante): $$\frac{ \partial^2 p^{\prime}  }{ \partial x^2 } - \frac{p^{\prime}}{\tau_{p}D_{p}}=0$$
		- La soluzione, ponendo $L_{p}:=\sqrt{ \tau_{p}D_{p} }$ detta *lunghezza di diffusione* è: $$p^{\prime} (x)=Ae^{ - \frac{x}{L_{p}} }+Be^{ \frac{x}{L_{p}} }$$
			- Le costanti $A$ e $B$ sono determinate delle condizioni al contorno, identiche al caso a base corta $$\begin{cases}  p^{\prime} (x_{n})=\frac{n_{I}^2}{N_{D}}\left( e^{ \frac{V_{D}}{V_{th}} }-1 \right)  \\  p^{\prime} (W_{n})=0 \end{cases}$$
		- Similmente si ottiene per la regione $p$: $$n^{\prime} (x)=Ce^{ - \frac{x}{L_{n}} }+De^{ \frac{x}{L_{n}} }$$con le condizioni al contorno note $$\begin{cases}  n^{\prime} (-x_{p})=\frac{n_{I}^2}{N_{A}}\left( e^{ \frac{V_{D}}{V_{th}} }-1 \right)  \\  n^{\prime} (-W_{p})=0 \end{cases}$$
		- Si mostra che la soluzione è del tipo $\sinh$: $$\begin{align}  n^{\prime} (x)&=\frac{n_{I}^2}{N_{A}}\left( e^{ \frac{V_{D}}{V_{th}} }-1 \right) \frac{\sinh \left( \frac{W_{p}+x}{L_{n}} \right)}{\sinh\left( \frac{W_{p}-x_{p}}{L_{n}} \right)} \\   \\  p^{\prime} (x)&=\frac{n_{I}^2}{N_{D}}\left( e^{ \frac{V_{D}}{V_{th}} }-1 \right) \frac{\sinh\left( \frac{W_{n}-x}{L_{p}} \right)}{\sinh\left( \frac{W_{n} - x_{n}}{L_{p}} \right)}  \end{align}$$ ![[scr 2026-10-15 alle 17.10.18 1.png]]
		- → Posso applicare due approssimazioni comode: 
			- i) Approssimazione a *base lunga*  $$W_{p}-x_{p}\gg L_{n}, \, W_{n}-x_{n}\gg L_{p}$$ → ottengo: $$\begin{align} n^{\prime} (x)&≈\frac{n_{I}^2}{N_{A}} \left( e^{ \frac{V_{D}}{V_{th}} }-1 \right)e^{ \frac{x+x_{p}}{L_{n}} } \\   \\ p^{\prime} (x)&≈ \frac{n_{I}^2}{N_{D}}\left( e^{ \frac{V_{D}}{V_{th}} }-1 \right)e^{ - \frac{x-x_{n}}{L_{p}} }  \end{align}$$![[scr 2026-10-15 alle 19.43.52.png]]
				- Dimostrazione:
					- Esplicitando il $\sinh$: $$\sinh(u)=\frac{e^u-e^{ -u }}{2}$$da cui $$n^{\prime} (x)=n^{\prime} (-x_{p}) \frac{e^{ \frac{W_{p}+x}{L_{n}} }-e^{ - \frac{W_{p}+x}{L_{n}} }}{e^{ \frac{W_{p}-x_{p}}{L_{n}} }-e^{ - \frac{W_{p}-x_{p}}{L_{n}} }}$$
					- Essendo $\frac{W_{p}-x_{p}}{L_{n}}\to +\infty$: $$n^{\prime} (x) \sim n^{\prime} (-x_{p}) \frac{e^{ \frac{W_{p}+x}{L_{n}} }}{e^{ \frac{W_{p}-x_{p}}{L_{n}} }}=n^{\prime} (-x_{p})e^{ \frac{x+x_{p}}{L_{n}} }$$
			- ii) Approssimazione a *base corta* $$W_{p}-x_{p}\ll L_{n}, \, W_{n}-x_{n}\ll L_{p}$$ → ottengo il risultato noto! $$\begin{align}  n^{\prime} (x)&≈ \frac{n_{I}^2}{N_{A}}\left( e^{ \frac{V_{D}}{V_{th}} }-1 \right) \frac{W_{p}+x}{W_{p}-x_{p}} \\   \\  p^{\prime} (x)&≈ \frac{n_{I}^2}{N_{D}}\left( e^{ \frac{V_{D}}{V_{th}} }-1 \right) \frac{W_{n}-x}{W_{n}-x_{n}} \end{align}$$
				- Dimostrazione:
					- Lo sviluppo di Taylor del $\sinh$ per $u\to0$ è: $$\sinh(u)=u+\frac{u^3}{6}+o(u^5)$$
					- Pertanto ponendo $\frac{W_{p}-x_{p}}{L_{n}} \to 0$ vale che $$n^{\prime} (x) \sim n^{\prime} (-x_{p}) \frac{\frac{W_{p}+x}{L_{n}}}{\frac{W_{p}-x_{p}}{L_{n}}}=n^{\prime} (-x_{p}) \frac{W_{p}+x}{W_{p}-x_{p}}$$
	- c) Giunzione a base lunga 
		- Posso in tal caso calcolare la corrente nelle basi:  ![[scr 2026-10-15 alle 19.37.40.png]]$$\begin{align} J_{p}(x_{n}) &= -e D_{p} \left( \frac{dp^{\prime}}{dx} \right)(x) = e \frac{D_{p}}{L_{p}} \frac{n_{I}^2}{N_{D}} \left( e^{\frac{V_{D}}{V_{th}}} - 1 \right)e^{ -\frac{x-x_{n}}{L_{p}} } \\ J_{n}(-x_{p}) &= e D_{n} \left( \frac{dn^{\prime}}{dx} \right)(-x_{p}) = e \frac{D_{n}}{L_{n}} \frac{n_{I}^2}{N_{A}} \left( e^{\frac{V_{D}}{V_{th}}} - 1 \right)e^{  \frac{x+x_{p}}{L_{n}} } \end{align}$$
		- La carica spaziale ha invece la stessa espressione della base corta, a meno del segno $$x_p = \sqrt{\frac{2\varepsilon_{si}(\Phi_{bi}-V_{D})}{eN_A\left(1 + \frac{N_A}{N_D}\right)}} \quad \text{} \quad x_n = \sqrt{\frac{2\varepsilon_{si}(\Phi_{bi}-V_{D})}{eN_D\left(1 + \frac{N_D}{N_A}\right)}}$$inoltre $$x=x_{p}+x_{n}=\sqrt{\frac{2\varepsilon_{si}(\Phi_{bi}-V_{D})}{e}\left( \frac{1}{N_{A}}+\frac{1}{N_{D}} \right)}$$
			- In tutta la giunzione, inoltre, la somma delle correnti deve essere costante rispetto a $x$ ![[scr 2026-10-15 alle 19.43.01 1.png]]$$\begin{align}  J_{tot}(x)&=J_{p}(x_{n})+J_{n}(-x_{p}) \\  &=en_{I}^2\left( \frac{D_{p}}{N_{D}L_{p}}+\frac{D_{n}}{N_{A}L_{n}} \right)\left( e^{ \frac{V_{D}}{V_{th}} }-1 \right) \\  &=J_{s}\left( e^{ \frac{V_{D}}{V_{th}} }-1 \right)  \end{align}$$
				- È uguale a quello della giunzione a base corta!
#### 2.2.3 - Giunzione $pn$ a polarizzazione inversa

- Nel caso di polarizzazione interna (*reverse bias*), la barriera di potenziale tra le due aree aumenterà ($V_{D}<0$) $$\Phi_{bi}-V_{D}>\Phi_{bi}$$
	- Esito → impediamo il passaggio di corrente

- Quanto vale la diminuzione di corrente che scorre nella giunzione?
	- Si mostra, come per il caso forward bias: $$n^{\prime} _{\text{salto, rev}}=\frac{n_{I}^2}{N_{A}}e^{ \frac{V_{D}}{V_{th}} } \quad  \quad  p^{\prime} _{\text{salto, rev}}=\frac{n_{I}^2}{N_{D}}e^{ \frac{V_{D}}{V_{th}} }$$
	- La concentrazione dei portatori minoritari al bordo della regione quasi neutra (condizione al contorno) è pari a $$\frac{n_{I}^2}{N_{A}}e^{ \frac{V_{D}}{V_{th}} }  \quad  \quad \frac{n_{I}^2}{N_{D}}e^{ \frac{V_{D}}{V_{th}} }$$
	- L'equazione della corrente pertanto rimane $$\begin{align}  J_{tot}&=J_{p}(x_{n})+J_{n}(-x_{p}) \\  &=en_{I}^2\left( \frac{D_{p}}{N_{D}L_{p}}+\frac{D_{n}}{N_{A}L_{n}} \right)\left( e^{ \frac{V_{D}}{V_{th}} } - 1 \right) \\  &=J_{s}\left( e^{ \frac{V_{D}}{V_{th}} }-1 \right) \end{align}$$poichè $e^{ \frac{V_{D}}{V_{th}} }\ll0.05$ per $V_{D}< -3V_{th}$, vale che $J_{tot}≈-J_{s}$
		- È quindi in prima approssimazione alla corrente di saturazione inversa, costante rispetto al valore di $V_{D}$
		- → Nonostante tutto, la corrente *parassita* nelle giunzioni PN a polarizzazione inversa non è eliminabile $$I=I_{s}\left( e^{ \frac{V_{a}}{V_{th}} }-1 \right)$$
#### 2.2.4 - Corrente di ricombinazione in zona di carica spaziale

- Che cosa accade nella zona di carica spaziale?
	- Finora abbiamo considerato ciò che accade nelle due ragioni "quasi" neutre → cosa accade invece nella regione di carica spaziale?
	- a) Polarizzazione diretta
		- Considero ad esempio il caso di diodo a base corta → la zona di carica spaziale si riduce rispetto alla condizione di equilibrio
		- Nei bordi delle zone quasi-neutre il prodotto $np$ vale $$\begin{cases}  np=N_{D} \frac{n_{I}^2}{N_{D}}e^{ \frac{V_{D}}{V_{th}} }=n_{I}^2 e^{ \frac{V_{D}}{V_{th}} } & \text{(bordo zona n)} \\  np=N_{A} \frac{n_{I}^2}{N_{A}}e^{ \frac{V_{D}}{V_{th}} }=n_{I}^2 e^{ \frac{V_{D}}{V_{th}} } & \text{(bordo zona p)}   \end{cases}$$
			- Si noti che per valori di $V_{D}$ ragionevoli questi prodotti sono $\gg n_{I}^2$
		- Dalla teoria SRH si ottiene che $$\begin{align}  R-G&= \frac{n_{I}^2 e^{ \frac{V_{D}}{V_{th}} }-n_{I}^2}{(p(x)+n(x)+2n_{I})\tau} \end{align}$$che è massimo quando il denominatore è minimo, cioè quando $p=n=n_{I} e^{ \frac{V_{D}}{2V_{th}} }$, per cui si ha $$max\left\{ (R-G)(x) \right\}≈ \frac{n_{I}^2\left( e^{ \frac{V_{D}}{V_{th}} }-1 \right)}{2n_{I}e^{ \frac{V_{D}}{2V_{th}}}\tau}≈ \frac{n_{I}}{2\tau}e^{ \frac{V_{D}}{2V_{th}} }$$
		- → La corrente di ricombinazione è quindi $$J_{ric}≈ex_{d} \frac{n_{I}}{2\tau}e^{  \frac{V_{D}}{2V_{th}} }$$e di conseguenza la corrente totale vale $$J_{tot}=J_{s}\left( e^{ \frac{V_{D}}{V_{th}} }-1 \right)+J_{ric}≈J_{s}\left( e^{ \frac{V_{D}}{V_{th}} }-1 \right)+ex_{d} \frac{n_{I}}{2\tau} e^{ \frac{V_{D}}{2V_{th}} }$$
			- → Per bassa tensione $V_{D}$, domina la corrente di ricombinazione (con pendenza $1/(2V_{th})$, idealità $\eta=2$), per tensioni maggiori domina la corrente di diffusione (con idealità $\eta=1$)
				- Inoltre più $\tau$ è grande, più $J_{ric}$ è trascurabile
			- In realtà, per diodi reali la curva della corrente è diversa 
				- Per basse tensioni (bassa iniezione) e alte tensioni (alta iniezione/resistenze parassite) la corrente reale differisce dall'idealità
	- b) Polarizzazione inversa
		- In questo caso $V_{D}<0 \implies np\ll n_{I}^2$ → i processi di generazione saranno in netta maggioranza
		- Si possono calcolare con la teoria SRH: $$R-G=\frac{n_{I}^2 e^{ \frac{V_{D}}{V_{th}} }-n_{I}^2}{(p(x)+n(x)+2n_{I})\tau}≈- \frac{n_{I}^2}{2n_{I}\tau}=-\frac{n_{I}}{2\tau}$$
		- Analogamente a prima, $$J_{gen}=-ex_{d} \frac{n_{I}}{2\tau}$$
			- Oss: siccome $x_{d} \propto \sqrt{ \Phi_{bi} - V_{D} }$ anche la corrente di generazione in SCR avrà tale dipendenza
#### 2.2.5 - Breakdown della giunzione $pn$

- Esiste un limite alla massima tensione inversa
	- È un fenomeno che provoca un passaggio di corrente apprezzabile anche in polarizzazione inversa
		- Se tale corrente non è limitata dal circuito esterno, tende a divergere e per effetto Joule la giunzione potrebbe essere permanentemente danneggiata
		- Esistono dei dispositivi che sono progettati per operare sempre in zona di breakdown
	- La tensione inversa limite che non può essere superata viene detta *tensione di breakdown*

- Ci sono due cause possibili:
	- a) Per effetto Zener
		- È di natura quantistica → è un effetto tunnel banda-banda
		- Quando il drogaggio della giunzione è molto alto, in polarizzazione inversa l'estensione della zona di carica spaziale è molto bassa 
			- → Ho una barriera di potenziale molto alta e molto stretta
		- Pertanto, le code esponenziali della funzione d'onda caratteristica della barriera di potenziale finita si abbattono meno rispetto al caso normale
	- b) Per effetto valanga
		- Al variare della tensione applicata, varia il campo elettrico massimo all'interno della zona di carica spaziale $$\begin{align}  \frac{E_{MAX}x_{d}}{2}&=\Phi_{bi}-V_{D}  \\  \implies E_{MAX}&=\sqrt{ \frac{2e}{\varepsilon_{Si}} \frac{N_{A}+N_{D}}{N_{A}N_{D}}(\Phi_{bi}-V_{D}) }  \end{align}$$essendo $V(-x_{p})-V(x_{n})=\int_{-x_{p}}^{x_{n}}E(x)dx$ ed essendo $E(x)$ triangolare
		- Consideriamo ad esempio un elettrone minoritario nella base $p$
		- Se raggiunge il bordo della zona di carica spaziale, viene accelerato dal campo elettrico e la sua velocità aumenta
		- Negli urti casuali dell'elettrone con gli atomi del reticolo, se l'urto è particolarmente energetico, può trasferire energia sufficiente ad un altro elettrone per saltare da banda di conduzione a banda di valenza → nascita di una copia elettrone-lacuna
		- Ciò aumenta la corrente e la possibilità della nascita di coppie elettrone-lacuna
		- → Si crea un effetto valanga che genera una corrente apprezzabile
	- Come li distinguo?
		- Se il breakdown avviene per tensioni particolarmente elevate, la valanga è più probabile per effetto Valanga
		- Se il breakdown avviene per drogaggio particolarmente elevato, l'effetto Zener è più probabile
		- L'effetto valanga cresce al diminuire della temperatura 
			- A temperature più basse, il libero cammino medio è maggiore, per cui l'elettrone ha più probabilità di venire accelerato ininterrottamente e quindi per generare la coppia elettrone-lacuna
	- Oss: la condizione più pericolosa per le connessioni tra la giunzione e il circuito esterno è proprio il breakdown
		- Infatti la potenza generata, ponendo ad esempio $V_{breakdown}≈50V$ e $I≈10mA$ è $\dot{W}≈500mW$!!
#### 2.2.6 - Capacità della giunzione $pn$

- Capacità della giunzione PN
	- Visto in maniera approssimata, la giunzione ha la forma di un condensatore → quanto vale la sua capacità?
	- Applico una tensione inversa $V_D<0$, e la vario di un $dV$ infinitesimo 
		- La carica su un aumento infinitesimo dell'estensione delle "armature" della giunzione è data da $$dQ=eN_{D}dx_{n}A=eN_{A}dx_{p}A$$per cui$$C=\frac{dQ}{dV_{D}}=eN_{D}A \frac{dx}{dV_{D}}$$
		- Essendo $$x_{n}=x_{d} \frac{N_{A}}{N_{D}+N_{A}}=\frac{N_{A}}{N_{D}+N_{A}}\sqrt{ \frac{2\varepsilon_{Si}(\Phi_{bi}-V_{D})}{e}\left( \frac{1}{N_{A}}+\frac{1}{N_{D}} \right) }$$segue che $$\frac{dx_{n}}{dV_{D}}=\frac{N_{A}}{N_{D}+N_{A}} \frac{\varepsilon_{Si}}{e}\left( \frac{1}{N_{A}}+\frac{1}{N_{D}} \right) \frac{1}{x_{d}}= \frac{1}{N_{D}} \frac{\varepsilon_{Si}}{e} \frac{1}{x_{d}}$$
	- → La capacità è quindi $$C=\varepsilon_{Si} \frac{A}{x_{d}}$$
		- Pertanto essendo $x_{D} \propto \sqrt{ V_{D} } \implies C \propto \frac{1}{\sqrt{ V_{D} }}$
		- Oss: siccome $x_{d}$ dipende anche dal drogaggio, misurando $C$ e $V_{D}$ in laboratorio, posso ricavare il profilo di drogaggio del materiale
			- (Provare a scrivere $\frac{1}{C^2}$ in funzione della tensione e del drogaggio)
	- È apprezzabile solo in polarizzazione inversa
		- In polarizzazione diretta la corrente 
#### 2.2.7 - Assorbimento ottico in un semiconduttore

- Supponiamo di considerare uno strato di spessore infinitesimo $dx$ del semiconduttore che viene inciso da un fascio di luce monocromatico alla frequenza $\nu$, di flusso $$\Phi_{\nu}(x)$$
	- → Il numero di fotoni che sarà assorbito dal materiale è dato da $$\Phi_{\nu}(x)\alpha dx$$dove $\alpha$ è il *coefficiente di assorbimento lineare*
		- Tale coefficiente $\alpha$ dipende sia dal materiale, che dall'energia
			- In particolare per il $Si$, al crescere di $\lambda$, $\alpha$ diminuisce rapidamente
			- Oss: l'energia di un fotone a qualsiasi frequenza dello spettro visibile è maggiore del gap energetico del silicio $1.12 eV$ 
				- Quando raggiungiamo il gap energetico, $\alpha$ ha un asintoto verticale → l'energia del fotone non è sufficiente a far avvenire il salto energetico
				- → Questo ci permette di misurare il gap energetico dei materiali, studiando la curva di $\alpha(\nu)$
		- Si può definire anche la *lunghezza di assorbimento* $\Lambda=\frac{1}{\alpha}$
	- Per cui si ha che $$\Phi_{\nu}(x+dx)-\Phi_{\nu}(x)=\frac{d\Phi_{\nu}}{dx}(x)dx=-\alpha \Phi_{\nu}(x)dx$$e risolvendo ottengo la *Legge di Lambert-Beer* $$\Phi_{\nu}(x)=\Phi_{\nu,0}e^{ -\alpha x }=\Phi_{\nu,0}e^{ - \frac{x}{\Lambda} }$$

### 2.3 Applicazioni della giunzione PN
#### 2.3.1 - Diodo a giunzione

- Si considera il caso *a giunzione* e ideale  
	- Esistono anche diodi Schottky, realizzati con giunzioni metallo-semiconduttore

+ Il simbolo del diodo è 
	  ![[scr 2026-10-15 alle 20.37.58.png|409]]
	- Convenzione: freccia da up a down, up la zona $p$ (anodo), down la zona $n$ (catodo), la corrente diretta da anodo a catodo, la tensione $V_{D}$ tra anodo e catodo

+ La relazione caratteristica tra tensione e corrente è $$I=I_{s}\left( e^{ \frac{V}{V_{th}} }-1 \right)$$
	- a) Per $V<0$ → $I(V)≈-I_{S}, \, \forall V$
	- b) Per $V>0$ → $I \sim I_s e^{ \frac{V}{V_{th}} }$
		- Oss: aumentare la tensione porta un aumento di corrente esponenziale, che potrebbe danneggiare il circuito → bisogna tenere in conto la massima potenza dissipabile

+ Quali approssimazioni sono state fatte?
	- a) Bassa iniezione
		- → Zone quasi-neutre a conducibilità ideale (cadute ohmiche trascurabili)
	- b) Ricombinazione in SCR trascurabile ad alta corrente
	- c) Semplificazione geometrica 1D unidimensionale
		- Nella realtà, la giunzione è realizzata sopra un substrato di silicio, con lunghezze caratteristiche nell'ordine dei $\mu m$

+ Esistono dei diodi fatti per operare in zona di breakdown → sono detti *diodi Zener* 
	  ![[Zener_diode_symbol.svg.webp|413]]
	- Sono detti Zener anche se il breakdown potrebbe avvenire anche per effetto valanga

- Come trattare i diodi nei circuiti?
	- Il diodo è un elemento *non lineare* → non posso usare la legge di sovrapposizione delle cause e degli effetti
	- Valgono però le leggi di Kirchhoff → se ho ad esempio un generatore e una resistenza: $$\begin{cases}  V_{S}=V_{D}+V_R \\  I=I_{s}\left(e^{ \frac{V_{D}}{V_{th}} }-1\right)  \end{cases}$$ ![[scr 2026-10-19 alle 08.58.14.png]]→ è un sistema trascendente!
		- Si può risolvere pertanto solo graficamente o numericamente
	- Idea → usiamo un'*approssimazione* a tratti (modello a soglia)
		- La caratteristica semplificata diventa questa $$\begin{cases}  I(V)=0 & V<V_\gamma \approx 0.7V \\  V(I)=V_\gamma \approx 0.7V &  I>0  \end{cases}$$
			- Quindi è un circuito aperto ($c.a.$) in polarizzazione inversa, un generatore di tensione fissa $V_\gamma$ in polarizzazione diretta
		- E se il diodo è in breakdown? → lo modellizzo come un generatore di tensione opposto, pari alla tensione di breakdown $V_{bd}<0$
	- Pertanto possiamo trattare nei due casi il circuito come lineare a tratti:
		- Nel caso in cui il diodo sia in conduzione diretta ($ON$), il diodo equivale a una batteria di valore $V_{D}=0.7V$
		- Nel caso in cui la tensione ai suoi capi sia inferiore a $0.7V$, il diodo si comporta come circuito aperto ($OFF$)

- Alcuni esempi
	- es. Consideriamo ad esempio il circuito *raddrizzatore a singola semoionda*, costituito da un generatore di tensione $V_{IN}=A\sin(\omega t)$ ($A>0.7V$), un diodo $D$, una resistenza $R$![[raddrizzatore_semionda 1.png]]
		- So che $D$ è on se $V_{D}\geq0.7V$, per cui la tensione sulla resistenza $V_{0}=V_{S}-V_{D}=A\sin(\omega t)-0.7V$
		- Se $V_{D}<0.7V$, siccome il generatore è connesso alla resistenza in serie, $V_{0}=0V$
		- → Il grafico di $V_{0}(t)$ è una sinusoide non nulla solo nei valori $V_{D}\geq0.7$ e traslata in basso di $0.7V$
		- Quando questo circuito va in bd? → diventa un generatore di tensione $V_{BD}$ tale che $V_{0}=V_{BD}+V_{IN}(t)$ 
			- Quindi trasla il circuito verso l'alto
	- es. *Peak detector* → rileva il picco di una tensione![[peak_detector.png]]
		- Finchè $V_{S}\leq0.7$, $V_{0}=0$
		- Nel momento in cui $V_{S}(t)>0.7V$, non essendoci alcuna resistenza vale banalmente che $$V_{0}(t)=V_{S}(t)-V_{D}$$
		- Quando $V_{S}(t)=V_{P}$ raggiunge un punto di massimo, il condensatore dovrebbe scaricarsi, però il diodo blocca la corrente inversa, quindi si mantiene un segnale costante $$V_{0}(t)=V_{P}$$
		- Il segnale rimane tale fino a quando $V_{S}\leq V_{P}$ 
		- Se $V_{S}(t)=V_{P}$ nuovamente, con derivata positiva, allora il segnale continuerà a crescere fino al nuovo picco
		- Oss: posso fare anche un rilevatore di minimi, ponendo il diodo all'inverso
#### 2.3.2 - Fotodiodo a giunzione

(Cambio di convenzione → per questo dispositivo ci è comodo imporre $x=0$ all'estremo della zona $p$, lunga $x_{p}$, l'inizio della zona $n$ è $x_{n}$)

- Illumino una giunzione $pn$ a partire dalla zona drogata $p$ con un flusso di fotoni $\Phi(0)$ in $x=0$  → cosa accade nel cammino verso la zona $n$?
	- a) Estremi delle zone quasi-neutre $p$ e $n$ → si generano coppie elettrone lacuna grazie all'energia dei fotoni
		- Sotto l'approssimazione di bassa iniezione, il campo elettrico è trascurabile → le coppie elettrone-lacuna si estinguono subito
		- Ho quindi zero contributi alla corrente
	- b) Zona di carica spaziale → il campo elettrico separa le coppie elettrone-lacuna appena si formano → si genera una *fotocorrente*
	- c) Zone quasi-neutre ma vicine alla zona di carico spaziale (a meno di una lunghezza di diffusione $L_{P}$) → sebbene il campo elettrico sia trascurabile, i portatori possono diffondere
		- La fotocorrente qui è proporzionale al numero di fotoni assorbiti
		- Se semplifichiamo il modello, si può trascurare, sottostimando la corrente totale
- Quantitativamente:
	- Il flusso al variare di $x$ è dato dalla legge di Beer-Lambert $$\Phi_{\nu}(x)=\Phi_{\nu}(0)e^{ - \frac{x}{\Lambda} }$$
	- In zona di carica spaziale il numero di fotoni assorbiti al secondo è dato da $$A(\Phi_{\nu}(x_{p})-\Phi_{\nu}(x_{n}))=A\Phi_{\nu}(0)\left( e^{ - \frac{x_{p}}{\Lambda} }-e^{ - \frac{x_{n}}{\Lambda} } \right)$$
	- La corrente fotogenerata ottenuta alla frequenza $\nu$ è pertanto $$I_{ph}=eA\Phi_{\nu} (0)\left( e^{ - \frac{x_{p}}{\Lambda} } -e^{ - \frac{x_{n}}{\Lambda} }\right)=\frac{e\dot{W}}{h\nu}\left( e^{ - \frac{x_{p}}{\Lambda} }-e^{ - \frac{x_{n}}{\Lambda} } \right)$$dove $\dot{W}$ è la potenza della radiazione incidente
		- → Ho convertito un flusso di fotoni in una corrente nel materiale

- Esistono anche dei fotodiodi che lavorano per misurare pochissimi elettroni
	- Questi funzionano in modo da avere tutti i prerequisiti per generare un breakdown a valanga, a meno della presenza di portatori
	- Appena la luce genera una singola coppia elettrone-lacuna, si verifica la valanga

- Un fotodiodo è efficiente quando:
	- $i$) Zona di carica spaziale più estesa → corrente fotogenerata maggiore
		- → Uso la polarizzazione inversa
		- In ogni caso, la corrente non deve essere troppo elevata per generare breakdown
	- $ii$) Campo elettrico più elevato in zona di carica spaziale → minor tempo di transito dei portatori → fotodiodo con tempo di risposta più veloce
	- Come posso realizzarlo?
		- a) Avere il materiale molto poco drogato → MA questo comporta che le zone quasi-neutre abbiano una resistenza $R$ non trascurabile (alta iniezione)
			- → Si crea un circuito $RC$ con una costante di tempo elevata, che fa da bottleneck
		- b) Uso un drogaggio *non uniforme* → *fotodiodo PIN* ($p$ → $i$ (intrinseco) → $n$) ![[scr 2026-10-19 alle 09.21.06.png]]
			- La zona $p$ è drogata $p$, la zona di carica spaziale è intrinseca, la zona $n$ è drogata $n$
				- In questo modo risolvo i problemi precedenti MA costa di più → il wafer di $Si$ deve essere più puro
			- In prima approssimazione il campo nella zona di carica spaziale è costante e vale $$||\mathbf{E}||=\frac{V_{R}}{W_{i}}$$dove $W_{i}$ è la lunghezza della zona intrinseca
				- Infatti non essendoci ioni ella zona intrinseca, il campo non ha più un andamento triangolare ma a gradino (in realtà a trapezio)
			- Come faccio a capire se la zona è completamente svuotata?
				- Uso la capacità della giunzione → eseguo una misura $CV$
				- Un'altra possibilità, più scomoda, è di illuminare con più lunghezze d'onda diverse (diversi $LASER$)
#### 2.3.3 - Cella fotovoltaica

Genera una differenza di potenziale quando illuminata

+ Consideriamo una giunzione $pn$ illuminata da una radiazione luminosa e non connessa ad alcuna differenza di potenziale
	+ → Si rompe l'equilibrio termodinamico, il livello di Fermi non è più costante
	- Il flusso di fotoni genera una *fotocorrente* di drift $I_{ph}$, che contrasta la corrente di diffusione
		- Questa diminuisce la tensione di built-in tra le basi, per cui $$V_{D}=\Phi_{bi}-V_{ph}$$
	- Se connetto le due zone quasi-neutre con una resistenza $R$, la giunzione si polarizza direttamente → la corrente totale (erogata al carico) è data da $$I=I_{ph}-I_{diff}=I_{ph}-I_{s}\left( e^{ \frac{V}{V_{th}} }-1 \right)$$
		- $i$) Se $R=0$ → condizione di cortocircuito → $I_{cc}=I_{ph}$
		- $ii$) Se $R\to+\infty$ → condizione di circuito aperto $$I=I_{ph}-I_{diff}=0$$da cui si ricava la tensione a vuoto ai capi: $$V_{0}=V_{th} \log\left( 1+ \frac{I_{ph}}{I_{s}} \right)$$
			- È la condizione che massimizza la generazione di tensione
		- La caratteristica di una cella fotovoltaica è la seguente ![[scr 2026-10-19 alle 09.50.08.png]]
			- Si noti che nella zona tratteggiata in giallo $$V_{D}I_{ph}<0\implies \dot{W}<0$$nella convenzione degli utilizzatori 
			- → La giunzione genera potenza!

+ Come mai l'efficienza delle celle fotovoltaiche ha un limite teorico attorno al $\sim 29.4\%$?
	+ a) Ogni fotone, indipendentemente dalla sua energia, genera una sola coppia di portatori ($\sim -33\%$ efficienza)
		+ Pertanto tutti i fotoni con energia $$E_{\nu}=h\nu>E_{g}$$daranno lo stesso contributo di energia di un fotone con energia $E_{g}$
	+ b) Il silicio è trasparente all'infrarosso ($\sim-19\%$ efficienza)
		+ Infatti tutti i fotoni con $h\nu<E_{g}$ attraversano il materiale senza produrre alcuna coppia
	+ c) La tensione ai capi della giunzione non è $1.12V$ (massima possibile per il bandgap) ma solo $\sim 0.7eV$ ($\sim -10\%$ efficienza)
	+ d) La caratteristica del diodo non è ideale (rettangolo) ma un'esponenziale ($\sim -8\%$ efficienza)
	+ Oggi si è raggiunta un efficienza reale attorno al $27\%$, molto vicina ai limiti teorici 
		+ → La tecnologia deve innovarsi per essere resa più efficiente
#### 2.3.4 - Sensore di temperatura

- Nell'approssimazione di base corta, la corrente che circola nella giunzione vale $$J_{tot}=en_{I}^2 \left( \frac{D_{n}}{N_{A}W_{p}}+\frac{D_{p}}{N_{D}W_{n}} \right)\left( e^{ \frac{V_{D}}{V_{th}} } -1\right)$$
	- Quali sono gli elementi che dipendono dalla temperatura?
		- a) La densità intrinseca di portatori  $$n_{I}=\sqrt{ N_{C}N_{V} }e^{ - \frac{E_{g}}{2k_{B}T} }$$
		- b) I coefficienti di diffusione $$D_{n}=\frac{k_{B}T\mu_{n}}{e}  \quad  \quad D_{p}= \frac{k_{B}T\mu_{p}}{e}$$
			- Siccome la dipendenza lineare è trascurabile rispetto alla dipendenza esponenziale di $n_{I}$ considereremo apprezzabile solo la prima
		- Per cui approssimativamente $$I_{tot}(T)\propto e^{ \frac{eV_{D}-E_{g}}{k_{B}T} }$$
			- In polarizzazione diretta $qV_{D}-E_{g}<0$ per cui all'aumentare di $T$, $I$ cresce esponenzialmente
		- In un intorno di $V_{D}=0.7V$, la corrente del diodo cresce di  $\sim 100 \frac{\mu A}{K}$

+ Tramite questa dipendenza è possibile realizzare un sensore di temperatura 
	  ![[scr 2026-10-19 alle 09.13.56.png|342]]
	+ Per isolare bene la dipendenza esponenziale di $I$ da $T$ prendiamo due diodi identici con la stessa $I_{S}$
	+ Li colleghiamo a due generatori di corrente $I_{1}$ e $I_{2}$, dove $$I_{1}=NI_{2}$$
	+ Dalla formula $$I_{j}=I_{S}\left( e^{ \frac{qV_{j}}{k_{B}T} } -1\right)\implies V_{j}=\frac{k_{B}T}{e}\log\left( \frac{I_{j}}{I_{S}} +1\right)$$
		+ Siccome  prendo $I_{j}\gg I_{S}$ l'uno additivo è trascurabile nel logaritmo
		+ Segue che $$\begin{align}  V_{out}&=V_{2}-V_{1}  \\  &≈ \frac{k_{B}T}{e}\log\left( \frac{I_{1}}{I_{S}} \right)-\frac{k_{B}T}{e}\log\left( \frac{I_{2}}{I_{S}} \right)  \\  &=\frac{k_{B}T}{e}\log N \end{align}$$quindi $V_{out} \propto T$
### 2.E Esercizi

es. Barretta di $Si$ mantenuta a temperatura ambiente e drogata con $B$
- Calcolare la concentrazione di drogante $N_{A}$ necessaria a portare il livello di Fermi al bordo della banda di valenza, assumendo valida l'approssimazione di Boltzmann 
	- In realtà, non sarebbe possibile! La differenza tra le due approssimazioni è grande
	- Il semiconduttore si dice quasi *degenere* → è così drogato che diventa simile a quello di un metallo
- Devo abbassare $E_{F}$ di $\frac{E_{g}}{2}≈0.56eV$
	- Per cui $$p=n_{i}e^{ \frac{E_{I}-E_{F}}{k_{B}T} }=n_{I}e^{\frac{E_{g}}{k_{B}T} }≈7.76\times 10^{19} \text{cm}^{-3}$$
	- Poichè praticamente tutti i droganti sono ionizzati, possiamo assumere $N_{A}=p=7.76\times 10^{19}\text{cm}^{-3}$
	- Il drogaggio è elevatissimo → il $B$ è il $0.15\%$ del $Si$


es. $Si$, $T=300K$, so che $E_{C}-E_{F}=0.25eV$ → determinare numero di $n$ e $p$
- Il bandgap è dato dal formulario → $E_{G}=1.12eV$
- Siccome $E_{C}-E_{F}< \frac{E_{G}}{2}\implies$ il $Si$ è drogato di tipo $n$
	- Siccome l'energia termica è data da $$E_{th}=k_{B}T≈25.9meV$$vale che $$k_{B}T=\frac{E_{th}}{e} ≈25.9mV = 25.9\times 10^{-3} V≈25\times 10^{-3} V$$
		- Approssimazione ma non è la + brutale (stiamo considerando casi unidimensionali ecc...)
	- Posso calcolare quindi $n$ e $p$ come $$\begin{cases}  n=N_{C}e^{ -\frac{E_{C}-E_{F}}{k_{B}T} } \\  p=N_{V}e^{ -\frac{E_{F}-E_{V}}{k_{B}T} }   \end{cases} \quad \text{oppure} \quad \begin{cases}  n=n_{I}e^{  \frac{E_{F}-E_{I}}{k_{B}T} } \\  p=n_{I}e^{  \frac{E_{I}-E_{F}}{k_{B}T} }  \end{cases}$$dove a temperatura ambiente $T=300K$, $n_{I}=1.45\times 10^{10} \text{cm}^{-3}$
		- Trick per ricordarlo → siccome $N_{C}$ è molto grande, $n$ sarà più piccolo (idem $N_{V}$ e $p$) → l'esponenziale è sempre decrescente
		- Facendo i conti si ottiene che $$n=3.5\times 10^{15} \text{cm}^{-3}  \quad  \quad p=6 \times 10^{4} \text{cm}^{-3}$$dove dalla legge di azione di massa $np=n_{I}^2$, essendo all'equilibrio termodinamico

es. Un cristallo di $Si$ a $T=300K$, drogato con $P$ (tipo $n$)
- a) Calcolare concentrazione di drogante $N_{D}$ tale che $n=10p$
	- Gli elettroni saranno in banda di conduzione, in parte generati tramite drogante, in parti generati termicamente $$n=n_{\text{dr} }+n_{\text{th}}$$
		- Assumendo ionizzazione completa vale che $$n=N_{D}+n_{\text{th}}≈N_{D}$$ se $N_{D}\gg n_{th}$
			- Posso in seguito verificare se l'approssimazione è valida
	- Siccome chiedo che $n=10p$ a malapena, l'approssimazione potrebbe non essere valida
		- Dalla legge di azione di massa gli elettroni generati termicamente sono $$\begin{cases}  10p^2=n_{I}^2  \\  n=\frac{n_{I}^2}{p}   \end{cases}\implies \begin{cases}  p=\frac{n_{I}}{\sqrt{ 10 }}≈4.6\times 10^{9}\text{cm}^{-3}  \\  n=\sqrt{ 10 }n_{I}≈4.6\times 10^{10}\text{cm}^{-3}  \end{cases}$$
		- Per cui dire che $n≈N_{D}$ è un approssimazione errata → $n=N_{D}+n_{th}=N_{D}+p_{th}$ ($n_{th}=p_{th}=p$ perchè si generano coppie elettrone-lacuna)  $$N_{D}=n-p=(4.6\times 10^{10}- 4.6\times 10^{9} )\text{cm}^{-3}$$
	- La posizione del livello di Fermi $E_{F}$ rispetto al livello intrinseco $E_{I}$ è dato da $$n=n_{I}e^{ \frac{E_{F}-E_{I}}{k_{B}T} }\implies E_{F}-E_{I}=k_{B}T\log\left( \frac{n}{n_{I}} \right)=k_{B}T\log(\sqrt{ 10 })≈29meV$$ (che è pochissimo)
	- Oss: tecnologicamente, si utilizzano sempre drogaggi molto più alti → $\sim 10^{14}-10^{16}$
		- Infatti introdurre drogaggi meno concentrati significherebbe pretendere un $Si$ particolarmente puro, cosa che costa moltissimo nell'elettronica consumer
- b) Concentrazione di drogante necessaria a portare $E_{F}$ all'incirca al livello di conduzione, usando l'approssimazione di Boltzmann
	- Uso la relazione $$n=n_{I}e^{ \frac{E_{F}-E_{I}}{k_{B}T} }=n_{I} \frac{\frac{E_{G}}{2}}{k_{B}T}≈7.75\times 10^{19} \text{cm}^{-3}$$
		- Il semiconduttore è quasi degenere → quando il livello di Fermi entra in banda di conduzione ottengo un metallo
		- → I produttori hanno quasi 5 ordini di grandezza nella scelta della concentrazione dei portatori (da $10^{14}$ a $10^{19}$)
	- 
- c) Quanto dovrebbe aumentare $T$ per rendere il conduttore nuovamente intrinseco 
	- .

es. Giunzione $pn$
- A destra regione di sezione trasversale $S=10\mu m^2$ e lunghezza $L=1\mu m$ drogata con Boro densità $\rho_{B}=1\times 10^{16}\text{cm}^{-3}$
	- Al sinistra introduco una sezione lunga $L=1\mu m$ di $As$ con concentrazione $\rho_{As}=6\times 10^{16}\text{cm}^{-3}$
- 1) Calcolare $p$ e $n$ e rispettive polarità
	- Polarità: $As$ → zona $n$, $B$ → zona $p$
	- Zona $n$ ($As$) → $n≈N_{D}=6\times 10^{16}\text{cm}^{-3}$ e $p≈ n_{I}^2/N_{D}≈3.3\times 10^{3} \text{cm}^{-3}$
	- Zona $p$ ($B$) → $p≈N_{A}=1\times 10^{16}\text{cm}^{-3}$ e $n≈ \frac{n_{I}^2}{N_{A}} ≈2\times 10^{4}\text{cm}^{-3}$
- 2) Calcolare tensione di built-in
	- Nel disegnare il grafico dei livelli energetici devo considerare alcune cose:
		- a) Equilibrio termodinamico → livello di Fermi costante
		- b) Concentrazione di $As$ maggiore di quella di $B$ → $E_{F}$ più vicino a $E_{C}$ nel $As$ di quanto sia vicino a $E_{V}$ nel $B$
		- c) Tensione di built-in è la differenza tra le bande di conduzione: $\Phi_{bi}= \frac{k_{B}T}{e} \log\left( \frac{N_{A}N_{D}}{n_{I}^2} \right)≈718mV$
			- Si poteva anche trovare considerando la distanza di $E_{F}$ da $E_{I}$ nei materiali $$\Phi_{bi}=(E_{F}-E_{I})_{As}+(E_{I}-E_{F})_{B}$$
	- Se impongo la legge di azione di massa e la conservazione della carica elettrica per una regione drogata: $$\begin{align}  &\begin{cases}  e(-n+p+N_{D}-N_{A}) =0 \\  pn=n_{I}^2 \end{cases}  \\  \implies &-\frac{n_{I}^2}{p}+p+(N_{D}-N_{A})=0  \\  \implies &-n_{I}^2+p^2+p(N_{D}-N_{A})=0 \\  \implies &p=\frac{N_{A}-N_{D}}{2}+\sqrt{ \left( \frac{N_{A}-N_{D}}{2} \right)^2+n_{I}^2 } \end{align}$$
		- Se $N_{A} > N_{D}$ (tipo p compensato) con $(N_{A}-N_{D})/2 \gg n_I$: $$p \approx N_{A} - N_{D}, \quad n \approx \frac{n_{I}^2}{N_{A} - N_{D}}$$
		- Se $N_{D} > N_{A}$ (tipo n compensato) con $(N_{D}-N_{A})/2 \gg n_I$: $$n \approx N_{D} - N_{A}, \quad p \approx \frac{n_{I}^2}{N_{D} - N_{A}}$$
- 3) Spessore della regione svuotata $x_{}$ e cadute di potenziale in zona $p$ e zona $n$
	- Siccome so che $N_{D}>N_{A}$ $$x_{d}=x_{n}+x_{p}=\sqrt{ \frac{2\varepsilon_{Si}}{e}\left( \frac{1}{N_{D}}+\frac{1}{N_{A}} \right)\Phi_{bi} }≈320nm$$
	- Per calcolare $x_{p}$ e $x_{n}$ ho bisogno di un'altra equazione
		- a) Potrei usare $$\Phi_{bi}=\frac{1}{2} \frac{eN_{A}}{\varepsilon_{Si}}x_{P}^2+\frac{1}{2} \frac{eN_{D}}{\varepsilon_{Si}}x_{n}^2$$ma è scomodo invertirla
		- b) Uso la conservazione della quantità di carica $$eN_{D}x_{n}=eN_{A}x_{p}\implies x_{n}=\frac{N_{A}}{N_{D}}x_{p}$$→ $$x_{n}=\frac{x_{d}}{1+\frac{N_{A}}{N_{D}}}≈277nm  \quad   \quad x_{p}=x_{d}-x_{n}≈46nm$$
- 4) Calcolare concentrazione dei portatori nei due tipi nella regione centrale
	- Considero sotto l'approssimazione di Boltzmann che $$n(x)=n_{I}e^{ \frac{E_{F}-E_{I}(x)}{k_{B}T} }$$
		- Se considero due ascisse $x_{1}$ e $x_{2}$ vale che $$\frac{n(x_{1})}{n(x_{2})}=e^{ \frac{E_{F}-E_{I}(x_{1})-E_{F}+E_{I}(x_{2})}{k_{B}T} }=e^{ \frac{E_{I}(x_{2})-E_{I}(x_{1})}{k_{B}T} }\implies n(x_{1})=n(x_{2})e^{ \frac{E_{I}(x_{2})-E_{I}(x_{1})}{k_{B}T} }$$
		- Prendo una delle due ascisse comode → prendo ad esempio $x_{1}=-x_{n}$ in modo tale che dalla legge di azione di massa: $$n(-x_{n})≈N_{D}\implies n(0)=N_{D}e^{ \frac{E_{I}(0)-E_{I}(-x_{n})}{k_{B}T} }=N_{D}e^{ \frac{}{} }$$
			- La differenza di energia si trova interpolando la parabola del potenziale (?????)
	- 5) Polarizzazione diretta, $V_{D}=500mV$ → calcolare rapporto $\frac{n}{p}$ e $\tau=2.5\mu s$ per lacune in zona neutra $n$ e $\tau=$
		- → La barriera di potenziale si abbassa a $$\Phi_{bi}-V_{D}=218mV$$
		- Conseguenza sulle bande: i livelli di fermi si avvicinano verso $E_{I}$
		- Sotto l'ipotesi di base corta: 

es. Giunzione a 3 parti $pnn$ all'equilibrio → $N_{A}, N_{D_{1}}, N_{D_{2}}$
- $N_{A}= 10^{18} \text{cm}^{-3}$, $N_{D_{1}}=2.5\times 10^{14}\text{cm}^{-3}$, $N_{D_{2}}=10^{15}\text{cm}^{-3}$
- $W_{p}=50 \mu m$, $W_{n_{1}}=5 \mu m$, $W_{n_{2}}=200 \mu m$
- $\mu_{n}=630 \frac{\text{cm}^2}{Vs}$, $\mu_{p}=400 \frac{\text{cm}^2}{Vs}$
- Posso ricavare la tensione di built-in come $$\begin{align}  e\Phi_{bi}&=E_{i, N_{A}}-E_{i, N_{D_{2}}} \\  &=(E_{i, N_{A}}-E_{F})+(E_{F}-E_{i, N_{D_{2}}}) \\  &=k_{B}T\log\left( \frac{N_{A}}{n_{I}} \right)+k_{B}T\log\left( \frac{N_{D_{2}}}{n_{I}} \right) \\  &=k_{B}T\log\left( \frac{N_{A}N_{D_{2}}}{n_{I}^2} \right)  ≈ 730meV\end{align}$$
	- → Ottengo esattamente la formula della giunzione $pn$ ma con i due estremi
	- In particolare: $$\begin{align}  E_{i, N_{A}}-E_{F} &≈451 meV \\  E_{F}-E_{i, N_{D_{1}}}&≈243meV  \\  E_{F}-E_{i, N_{D_{2}}} &≈ 279meV   \end{align}$$
- La regione drogata $N_{D_{1}}$ è davvero tutta svuotata?
	- Posso procedere in 2 modi:
		- a) Calcolare la tensione che servirebbe per svuotare completamente la zona
		- b) Calcolare l'estensione della zona che posso completamente svuotare con la tensione esistente
			- Procedo in questo modo
	- Posso procedere sotto l'approssimazione della giunzione unilatera, cioè che la zona svuotata sia solo tra la zona $p$ e la zona $n$, siccome i drogaggi delle zone $N_{D_{1}}$ e $N_{D_{2}}$ sono simili (e $N_{A}\gg N_{D_{1}},N_{D_{2}}$)
		- Eventualmente dopo si può verificare la validità dell'ipotesi
	- Calcolo $$\Phi_{bi, N_{A}-N_{D_{1}}}=V_{th}\log\left( \frac{N_{A}N_{D_{1}}}{n_{I}^2} \right)≈696mV$$
	- L'ampiezza della zona svuotata pertanto è $$\begin{align}  \tilde{x}_{d} &=\sqrt{ \frac{2\varepsilon_{Si}\Phi_{bi, N_{A}-N_{D_{1}}}}{e}\left( \frac{1}{N_{A}}+\frac{1}{N_{D_{1}}} \right) } \\  &≈ \sqrt{ \frac{2\varepsilon_{Si}\Phi_{bi, N_{A}-N_{D_{1}}}}{e}\left( \frac{1}{N_{D_{1}}} \right) }  ≈ 1.86 \mu m \end{align}$$
	- Siccome $\tilde{x}_{d}<W_{N_{1}}$ la zona $N_{D_{1}}$ non è completamente svuotata
- Quale deve essere la tensione necessaria per svuotarla completamente? 
	- Innanzitutto la zona svuotata è quasi solo in zona $n$, siccome il drogaggio $p$ è molto maggiore di quello $n$
	- Consideriamo la distribuzione di carica lungo l'asse $x$ $$\rho(x)=\begin{cases}  0 & x<-x_{p} \\ -eN_{A}  & -x_{p}<x<0 \\  eN_{D_{1}}  & 0<x<W_{N_{1}} \end{cases}$$
	- Dal teorema di Gauss $\mathbf{E}(\mathbf{x})=E(x)\hat{u}_{x}$ e  $$E(x)=\begin{cases} 0 & x< -x_{p} \\    \int_{-x_{p}}^0\rho(x)dx=- \frac{eN_{A}}{\varepsilon_{Si}}(x+x_{p}) &  -x_{p}<x<0 \\  \int_{0}^{W_{N_{1}}}\rho(x)dx =\frac{eN_{D_{1}}}{\varepsilon_{Si}}x - \frac{eN_{A}x_{p}}{\varepsilon_{Si}}& 0<x<W_{N_{1}} \end{cases}$$
	- Il campo massimo è $$max\left\{ E(x) \right\}=E(0)=- \frac{eN_{A}}{\varepsilon_{Si}}x_{p}≈-2\times 10^{4} \frac{V}{\text{cm}}$$
	- Per quanto detto $x_{p}\ll W_{N_{1}}$ quindi possiamo ignorarla nel calcolo, quindi con la brutale formula dell'area del triangolo $$\Phi_{bi} + V_{D}≈ \frac{1}{2} W_{N_{1}}E(0)≈-5V\implies V_{D}≈-4.3V$$
- Intensità di corrente se $V_{D}=-4.3V$ inversa? ($\tau_{n}=200ns$, $\tau_{p}=$)
	- Dobbiamo tenere in conto gli effetti di generazione e ricombinazione? (base corta o basa lunga?)
		- Devo confrontare la lunghezza di diffusione dei minoritari con l'estensione fisica della zona $$\begin{align}  L_{n}&=\sqrt{ D_{n}\tau_{n} } = \sqrt{ \mu_{n}V_{th}\tau_{n} }≈17.6\mu m \\  L_{p}&= \sqrt{ D_{p}\tau_{p} }=\sqrt{ \mu_{p}V_{th}\tau_{p} } ≈ 14.1\mu m \end{align}$$
		- Siccome $L_{n} \ll W_{n}$ e $L_{p}\ll W_{p}$ devo usare l'approssimazione di base lunga
	- Calcolo la corrente con approssimazione in base lunga $$\begin{align}  &\begin{cases}  J_{n}=e \frac{D_{n}}{L_{n}} \frac{n_{I}^2}{N_{A}} \left( e^{ \frac{V_{D}}{V_{th}} } -1\right)  \\  J_{p}=-e \frac{D_{p}}{L_{p}} \frac{n_{I}^2}{N_{D}}\left( e^{ \frac{V_{D}}{V_{th}} }-1 \right) \end{cases} \\   \\  \implies J_{tot} &=en_{I}^2 \left(  \frac{D_{n}}{L_{n}N_{A}} - \frac{D_{p}}{L_{p}N_{D}} \right) \left( e^{ \frac{V_{D}}{V_{th}} }-1 \right)≈227.3 \frac{pA}{\text{cm}^2} \end{align}$$
	- Siccome la zona di carica spaziale non è trascurabile devo considerare la corrente di generazione $$J_{ric}=e \frac{n_{I}}{2\tau}W_{N_{1}}=2.97 \frac{\mu A}{\text{cm}^2} \gg J_{tot}$$
		- → Domina rispetto al contributo di diffusione

es. Fotodiodo 
- $N_{A}=N_{D}=4\times 10^{17} \text{cm}^{-3}$, $W_{n}=0.5 \mu m$, $W_{i}=4\mu m$, $W_{p}=550 \mu m$, $S=1\text{cm}^2$
- Ipotesi di lavoro → $x_{n}, x_{p} \ll W_{i}$
	- .
- Applico un fascio di fotoni esterno con flusso $\Phi_{ph}=10^{16} \frac{1}{cm^2s}$, $E_{ph}=2eV$, $L_{A}=2\mu m$ 
	- I fotoni sono assorbiti? → si ($E_{ph}=2eV > 1.12eV = E_{g}$)
	- Da Lambert Beer $$\Phi(x)=\Phi_{ph}e^{ -x/L_{A} }$$
		- Per avere un flusso ampio (quindi un buon fotodiodo) devo avere le basi molto piccole, e la SCR molto ampia
	- L'intensità è pertanto $$\Phi_{abs}=[\Phi(W_{N})-\Phi(W_{N}+W_{I})]=\Phi_{ph}e^{ - W_{N}/L_{A} }(1-e^{ -W_{I}/L_{A} })$$
		- Se calcoliamo $$\frac{\Phi_{abs}}{\Phi_{ph}}≈ 63.7\%$$
	- La corrente invece $$I_{ph}=e\Phi_{abs}$$
- $\tau=1ms$, $V_{R}=1V$ → calcolo $W_{I}$ per massimizzare $$I_{ph}-I_{buio}$$
	- So che $I_{buio}=I_{S}+I_{g}$ dove la corrente di generazione è $$I_{g}=\frac{en_{I}}{2\tau}SW_{i}$$
	- ...
- $\Phi_{ph}=0$, $I_{gen}=500\mu A$ → $V_{R}=?$
	- 

es. 

## 3 Transistori

- *Transistore* = transfer resistor
	- È un componente elettronico caratterizzato dall'avere 3 terminali (*tripolo*)
		- a) Riferimento
		- b) Ingresso
		- c) Uscita
	- Il primo transistore bipolare nasce nel dicembre 1947
		- I primi circuiti integrati nascono nel 1958-9, contenente 10 componenti in pochi $mm^2$
		- Oggi invece i transistor all'avanguardia sono a $2nm$


- Scopo → attraverso una tensione tra il terminale di ingresso e il terminale di riferimento, posso controllare la coprrente che circola tra il terminale di uscita e di riferimento
	- Fornendo una piccola potenza al terminale di ingresso, lo scopo è di produrre una potenza maggiore al terminale d'uscita (prelevata dal riferimento)
		- Può essere usato sia come interruttore (elemento digitale) o come amplificatore (elemento analogico)
	- Ci sono due tipologie di transistori:
		- a) *MOSFET* → basati su un contatto metallo-ossido-semiconduttore e un campo elettrico
			- Sono i transistori maggiormente utilizzati nell'elettronica e nei circuiti integrati
		- b) *BJT* (transistore bipolare a giunzione) 
			- È utilizzato in molti OPAMP basati sulla tecnologia bipolare
			- Non sono più bipolari puri, ma oggi si utilizza anche il $Ge$ 

+ Notazione
	+ BJT → i terminali sono detti *base*, *collettore* e *emettitore*
		+ Le tensioni $V_{B}$, $V_{C}$ e $V_{E}$ sono prese rispetto a massa
		+ Si utilizza anche la scrittura concisa $$V_{BE}:=V_{B}-V_{E}$$come anche $V_{CE}$ e $V_{CB}$
		+ La corrente è presa positiva uscente dal morsetto
	+ MOSFET → i terminali sono detti *gate*, *source* e *drain*
		+ Le notazioni sono simili solo con $V_{G}$, $V_{S}$ e $V_{D}$
### 3.1 Transistore Bipolare (BJT)

È un elemento da intermezzo tra la giunzione $pn$ e il transistore MOSFET

- L'idea alla base è di mettere insieme due giunzioni $pn$ collegate in maniera $npn$ (la parte $p$ del primo tocca la parte $p$ del secondo) ![[scr 2026-10-19 alle 10.14.15.png]]
	- Il transistore esiste anche $pnp$ ma non la considereremo in questo corso
	- Il terminale $B$ è collegato alla zona $p$, i contatti $C$ ed $E$ alle due zone $n$
		- Introduco una polarizzazione diretta tra emettitore e base, una inversa tra base e collettore $$\begin{cases}  V_{BE}>0V \\  V_{CB}>0V  \end{cases}\implies V_{CE}=V_{BE}+V_{CB}>0$$
	- Livelli energetici → emettitore e collettore sono drogati $n$ ($E_{F}$ vicino a $E_{C}$), base è drogata $p$ ($E_{F}$ vicino a $E_{V}$) ![[scr 2026-10-19 alle 10.14.59.png]]
		- Il meccanismo è il seguente:
			- 1) Gli elettroni per diffusione vanno dall'emettitore (dove sono maggioritari) alla base
			- 2) Passano indenni nella base senza ricombinare
				- Per far sì che ciò avvenga, la base deve essere molto corta, minore della lunghezza di diffusione $$x_{B}< L_{n}$$→ approssimazione in base corta 
			- 3) Per drift passano dalla base al collettore 
				- Siccome la tensione $V_{BE}$ è scelta $$V_{BE}\gg |V_{CE}|$$è molto difficile il passaggio inverso di elettroni (dal collettore alla base)
		- → La corrente che fluisce al collettore dipende solo dalla tensione $V_{BE}$ 

+ Analisi quantitativa
	+ Utilizziamo due approssimazioni diverse per le due giunzioni ![[scr 2026-10-19 alle 10.47.32.png]]
		+ a) Base-Emettitore → a *base corta*
			+ Definisco la zona di carica spaziale tra le coordinate $[-x_{dn}, +x_{dp}]$
			+ La corrente di diffusione è pertanto data da
		+ b) Base-Collettore → a *base lunga*
			+ Sia $x_{B}^{\prime}$ il punto in cui inizia la zona di carica spaziale tra $B$ e $C$ e $$x_{B}=x_{B}^{\prime}-x_{dp}$$ la lunghezza di tale zona
	- La concentrazione di portatori minoritari nella giunzione $BE$ (elettroni in base, lacune in emettitore) ha condizioni al contorno: $$\begin{align}  n(x)&=\begin{cases} \frac{n_{I}^2}{N_{B}} e^{ \frac{V_{BE}}{V_{th}} }& x=x_{dp} \\  \frac{n_{I}^2}{N_{ B}} e^{ \frac{V_{BC}}{V_{th}} } ≈0 & x=x_{B}^{\prime}   \end{cases} \\   \\  p(x)&= \begin{cases} \frac{n_{I}^2}{N_{E}}e^{ \frac{V_{BE}}{V_{th}} } & x=-x_{dn} \\  \frac{n_{I}^2}{N_{E}} & x=-W_{E}   \end{cases}  \end{align}$$dove $n(x_{B}^{\prime})≈0$ siccome $V_{BC}<0$
	- Quali sono le correnti all'interno del transistore?
		- a) Giunzione $BE$ in diretta
			- La corrente è data dalla di diffusione di elettroni (da $B$ a $E$) e delle lacune (da $E$ a $B$) minoritari
			- Dall'approssimazione in base corta queste valgono: $$\begin{align}  I_{BE, n}&= -eAD_{n} \left( -\frac{dn'_B}{dx} \right)(0) \\  &=-eAD_{n} \frac{n_{I}^2}{N_{B}x_{B}}e^{ \frac{V_{BE}}{V_{th}} } \\ I_{BE, p}&=eAD_{p} \left( -\frac{dp'_E}{dx} \right)(0) \\  &=eAD_{p} \frac{n_{I}^2}{N_{E}x_{E}}\left( e^{ \frac{V_{BE}}{V_{th}} }-1 \right)  \\  &≈ eAD_{p} \frac{n_{I}^2}{N_{E}x_{E}} e^{ \frac{V_{BE}}{V_{th}} }  \\ \\    \implies I_{BE} &= -I_{BE,n}+I_{BE,p}  \\  &≈ eA\left( \frac{D_{n}}{N_{B}x_{B}}+\frac{D_{p}}{N_{E}x_{E}} \right)e^{ \frac{V_{BE}}{V_{th}} } \\  &=I_{S}e^{ \frac{V_{BE}}{V_{th}} }\end{align}$$
		- b) Giunzione $BC$ in inversa
			- La corrente di lacune (da $B$ a $C$) e di elettroni (da $C$ a $B$) è data dalla corrente di diffusione di saturazione $I_{S}$
		- → Essendo $e^{ {V_{BE}}/{V_{th}}} \gg 1$ si ha che i contributi di corrente della giunzione polarizzata inversa sono trascurabili: $$\begin{align}  I_{C} &= -I_{BE,n}+I_{BC,n}≈ -I_{BE,n}=eAD_{n} \frac{n_{I}^2}{N_{B}x_{B}}e^{ \frac{V_{BE}}{V_{th}} } \\  I_{B} &= I_{BE,p}-I_{BC,p}  =eAD_{p} \frac{n_{I}^2}{N_{E}x_{E}}e^{ \frac{V_{BE}}{V_{th}} } \end{align}$$sono le correnti rispettivamente di collettore e base
	- Posso definire il *guadagno di corrente di emettitore comune* $\beta$: $$\beta:= \frac{I_{C}}{I_{B}}≈ \frac{D_{n}N_{E}W_{E}}{D_{p}N_{B}W_{B}}$$
		- Oss: il rapporto si massimizza drogando pesantemente l'emettitore ($N_E \gg N_B$) e assottigliando la base ($W_B \ll W_E$)
			- Posso rendere $\beta≈100-400$ facilmente con i consueti profili tecnologici

+ Usi dell'amplificatore bipolare
	- Posso in questo modo realizzare un'amplificazione di segnale tra base e collettore 
		  ![[scr 2026-10-19 alle 11.59.09.png|392]]
		- Collego l'emettitore a massa e la base ad un generatore di corrente $I_{B}$
		- Se pongo una resistenza collegata al collettore e a massa, in essa scorre una corrente $I_{C}=\beta I_{B}$
	- A seconda delle polarizzazioni delle due giunzioni ($V_{BE}$ e $V_{BC}$) ci sono 4 regioni di funzionamento:
		- a) $V_{BE} > 0$ (diretta) e $V_{BC} < 0$ (inversa) → *zona attiva diretta* (amplificazione lineare)
		- b) $V_{BE} > 0$ (diretta) e $V_{BC} > 0$ (diretta) → *saturazione* (interruttore chiuso)
		- c) $V_{BE} < 0$ (inversa) e $V_{BC} < 0$ (inversa) → *interdizione* (interruttore aperto)
		- d) $V_{BE} < 0$ e $V_{BC} > 0$ → *zona attiva inversa* (basso $\beta$, non usata)

- Ci sono in realtà alcune non-idealità fondamentali:
	- 1) Ricombinazione nella regione di base:
		- Sia $t_{tr} \approx \frac{W_B^2}{2D_n}$ il tempo di transito degli elettroni in base
			- Per rendere trascurabile la ricombinazione serve $t_{tr}\ll \tau_{n}$ (approssimazione in base corta)
		- La corrente di ricombinazione è data (dall'equazione di continuità) dal numero di cariche che ricombinano in più rispetto a quelle generate, nell'unità di tempo $$I_{ric}=\int_{\Sigma}\int_{x_{dn}}^{x_{B}}eU(x)dxd\sigma≈eS \int_{x_{dn}}^{x_{B}}\frac{n^{\prime} (x)}{\tau_{n}}dx=\frac{Q_{exc}}{\tau_{n}}$$dove $Q_{exc}$ è il numero di cariche in eccesso nella base
		- Per cui dalla definzione di tempo di transito $$t_{tr}=\frac{Q_{exc}}{I_{E}}\implies I_{ric}=\frac{Q_{exc}}{\tau_{n}}=\frac{t_{tr}}{\tau_{n}}I_{E}≈ \frac{W_{B}^2}{2D_{n}\tau_{n}}I_{E}$$
		- Essendo inoltre dalla legge di Kirkhoff $I_{C}=I_{E}-I_{ric}$ vale che $$I_{C}=\left( 1- \frac{t_{tr}}{\tau_{n}} \right)I_{E}:=\alpha_{T}I_{E}$$dove $\alpha_{T}:=1-\frac{t_{tr}}{\tau_{n}}$ è detto *fattore di trasporto in base*
		- → Il fattore $\beta$ vale ora $$\begin{align}  \frac{1}{\beta}=\frac{I_{B}}{I_{C}} &=\frac{I_{BE,n}}{I_{B}}+\frac{I_{ric}}{I_{B}}=\frac{1}{\beta_{0}}+  \frac{\frac{t_{tr}}{\tau_{n}}}{1- \frac{t_{tr}}{\tau_{n}}}≈ \frac{1}{\beta_{0}}+ \frac{t_{tr}}{\tau_{n}}  \\  \\   \implies & \beta= \frac{1}{\frac{1}{\beta_{0}}+ \frac{t_{tr}}{\tau_{n}}} \end{align}$$(siccome ho approssimato $t_{tr}\ll\tau_{n}$) dove $\beta_{0}$ è il coefficiente ottenuto nell'idealità
			- Conseguenza → anche nel caso in cui $\beta_{0} \to +\infty$ (è arbitrariamente grande), la ricombinazione rimane un collo di bottiglia, per cui $$\beta < \frac{\tau_{n}}{t_{tr}}$$
	- 2) Modulazione della larghezza di base → *effetto Early*
		- Siccome la larghezza della SCR tra base e collettore aumenta all'aumentare della tensione inversa $V_{CB}$, la larghezza neutra di base $W_B$ si riduce 
		- Di conseguenza il gradiente di diffusione aumenta e $I_C$ cresce leggermente con $V_{CE}$: $$I_C = I_{S} e^{\frac{V_{BE}}{V_{th}}} \left(1 + \frac{V_{CE}}{V_A}\right)$$
		- Si dice *tensione di Early* $V_{A}$ l'intersezione con l'asse delle tensioni negative dell'estrapolazione delle caratteristiche di uscita $I_C(V_{CE})$

### 3.2 - Transistore MOSFET

- Sono di gran lunga il transistore prevalente, per via delle sue dimensioni estremamente ridotte
	- Il motivo per cui predomina rispetto al BJT è la totale assenza di drogaggio all'interno della sua struttura
		- Se si dovesse drogare un transistor grande $5nm$ (esistenti nel 2026) si avrebbe meno di un atomo di drogante in tutta la struttura!

#### 3.2.1 - Condensatore MOS

- Il cuore del MOSFET è la struttura *MOS*, ovvero *metallo-ossido-semiconduttore* (metal-oxide-semicondutctor) ![[scr 2026-10-19 alle 14.10.32.png|483]]
	- La struttura è quella di un condensatore con un dielettrico tra le armature → è costituito da 3 componenti: ![[scr 2026-10-19 alle 14.52.33.png]]
		- 1) Gate ($G$) → è un conduttore → realizzato da :
			- a) Un metallo (es. $Au$, $Al$, $Cr$, $Ti$) ![[scr 2026-10-19 alle 14.46.15.png]]
				- È caratterizzato dalla sua *funzione lavoro* $q\Psi_{m}$, ovvero l'energia necessaria a promuovere un elettrone dal livello di Fermi al livello di vuoto (cioè estrarlo dal materiale)
			- b) Silicio policristallino (detto *polisilicio*) con drogaggio elevatissimo ($p^+$ o $n^+$)
				- È tale da portare il livello di Fermi presso la banda di conduzione
					- Si può definire anche la funzione lavoro, ma dipende dal livello di Fermi (quindi dal drogaggio)
				- → Possiamo trovare come parametro alternativo l'*affinità elettronica* $q \chi$, ovvero l'energia necesaria a estrarre un $e^-$ da $E_{C}$ (fondo della banda di conduzione)
					- Vale $q\chi=4.05eV$
		- 2) Source → è $SiO_{2}$, un isolante
			- È un ottimo isolante facile da realizzare
			- Il suo energy gap è $E_{g}= 9eV$ → ci sono un numero esiguo di lacune ed elettroni liberi qualsiasi sia il livello di Fermi nel gap
				- L'affinità elettronica vale invece $q\chi=0.95eV$
		- 3) Base ($B$) → semiconduttore, $Si$ drogato $p$ o $n$

##### 3.2.1.1 - MOS a due terminali

Concentriamoci inizialmente sul gate e sul semiconduttore
  
+ Analisi qualitativa
	+ Cosa succede se collego semiconduttore e gate con un generatore di tensione $V_{S}$?![[scr 2026-10-19 alle 15.19.36.png]]
		- Convenzione → si prende il $+$ della differenza di potenziale sul gate, e posto un sistema ortogonale $z_{gate}>z_{Si}$
	- → Ci sono 4 casi:
		- Caso base: $V_{S}=0$ → gli elettroni fluiscono spontaneamente dal gate al semiconduttore
			- Siccome $E_{F, \text{metallo}}>E_{F, \text{Si}}$ gli elettroni a spostarsi per occupare gli stati di energia minori possibili
				- Quantomeccanicamente, tramite la regola d'oro di Fermi e la statistica di Fermi-Dirac si possono calcolare le probabilità di un elettrone di saltare dal gate → silicio, e dal silicio → gate 
				- La prima transizione è favorita → nel tempo gli elettroni si spostano formando una corrente di drift, mediante il conduttore 
			- La corrente si ferma quando il livello di Fermi dei due marteriali è lo stesso
				- Questo comporta che si crei una differenza di potenziale tra le armature del condensatore, pertanto un campo elettrico uniforme $\mathbf{E}=E \hat{k}$
			- Mi chiedo ora → esiste una tensione applicata che azzera il campo elettrico?
		- 1) $V_{S}=V_{FB}$ (potenziale di *flat band*)
			- È la tensione, negativa $V_{FB}<0$, per cui non c'è passaggio di corrente, né campo elettrico tra le due armature ($\mathbf{E}=0 \hat{k}$)
		- 2) $V_{S}<V_{FB}$ (regione di *accumulazione*) → il gate si carica negativamente, il semiconduttore positivamente![[scr 2026-10-19 alle 18.37.00.png]]
			- Questo porta alla formazione di un campo elettrico $\mathbf{E}=E \hat{k}$
			- → Le lacune nel semiconduttore risentiranno dell'interazione coulombiana e saranno avvicinate alla superficie del semiconduttore
				- Questo porta la concentrazione $p(z)$ ad essere non uniforme, con la zona vicina alla superficie più ricca di lacune
			- Dal punto di vista dei livelli energetici, questo porta la banda di valenza a "piegarsi" verso l'alto in prossimità della superficie ![[scr 2026-10-19 alle 18.36.26.png]]
				- Oss: sebbene non siamo all'equilibrio termodinamico, $E_{F}$ è costante nel $Si$ → è perchè $J=0$
					- Infatti in un condensatore nel caso stazionario non scorre corrente
		- 3) $V_{S}>V_{FB}$ (regione di *svuotamento*) → il gate si carica positivamente, il semiconduttore negativamente ![[scr 2026-10-19 alle 18.38.22.png]]
			- Il campo elettrico è ora $\mathbf{E}=- E \hat{k}$
			- → Le lacune si allontanano dalla zona superficiale, creando una zona di carica spaziale indotta
			- Di conseguenza, la banda di valenza del silicio si piega verso il basso ![[scr 2026-10-19 alle 18.39.07 1.png]]
			- Nei casi in cui $V_{S}$ è più intensa, la regione di carica spaziale si allarga, e il livello di fermi intrinseco $E_{Fi}$ potrebbe intersecare il livello di fermi $E_{F}$ ![[scr 2026-10-19 alle 18.41.39.png]]
				- Se $E_{F}$ sale sopra il livello intrinseco, il semiconduttore diventa per una certa zona più carico di portatori $n$ che di portatori $p$! → viene detto *strato di inversione*

+ Analisi quantitativa
	+ Quanto vale la tensione di flat-band $V_{FB}$?
		+ Fissiamo l'energia potenziale del livello di vuoto a zero $$E_{0}=0 \implies  V_{0}=0$$
		+ Allora per definizione di funzione lavoro, per $Si$ e metallo: $$q\Psi_{Si}=qV_{Si}-0\implies V_{Si}=\Psi_{Si}, \,\,V_{G}=\Psi_{G}$$
		+ Per cui la tensione imposta che azzera la differenza di potenziale è proprio $$V_{FB}=\Psi_{G}-\Psi_{Si}$$
	+ Consideriamo ora i vari casi considerando $V_{S}$ e $V_{FB}$
		+ Convenzione → qui poniamo $V_{Si}=0$ a terra quindi $V_{S}=V_{G}$
		+ a) $V_{G}<V_{FB}$
			+ Essendo il campo elettrico supposto uniforme (condensatore a facce piane parallele), ed escludendo gli effetti di bordo, vale che $\mathbf{E}=E_{ox} \hat{k}$, con $$E_{ox}=\frac{\sigma_{exc}}{\varepsilon_{ox}}$$
				+ Vale pertanto che per uniformità $$V_{ox}=-\sigma_{exc} \frac{t_{ox}}{\varepsilon_{ox}}=- \frac{\sigma_{exc}}{C_{ox}}$$dove $C_{ox}$ è la capacità del condensatore considerando il dielettrico ($SiO_{2}$) per unità di area 
			+ Dove è distributo l'eccesso di tensione di $V_{G}$ rispetto a $V_{FB}$?
				+ a) Nella differenza di potenziale del condensatore
				+ b) Nella nuova distribuzione di $p(x)$ vicino la superficie del $Si$
					+ Si può definire la tensione superficiale del $Si$ $\Phi_{S}$ come la differenza tra il livello intrinseco alla superficie e nel bulk del materiale $$\Phi_{S}=\frac{E_{I, sup.}-E_{F}}{e}$$
					+ Allo stesso modo definiamo questa differenza nel bulk ($fp$ = Fermi, $p$-type) $$\Phi_{fp}= \frac{E_{I, bulk-E_{F}}}{e}$$
				+ → Pertanto vale che $$V_{G}-V_{FB}=V_{ox}+\Phi_{S}$$
					+ Si noti che mentre $V_{ox} \propto \sigma_{exc}$, vale che $\Phi_{s}$ ha solo una relazione logaritmica rispetto alla carica
						+ Infatti considerando $\lambda$ la distanza dalla superficie del $Si$ si ha che $$Q_{exc}=\int_{0}^{L}eSp^{\prime} (\lambda)d\lambda$$
							+ Approssimazione → essendo $p^{\prime}(x)$ (carica in eccesso) concentrata nei primissimi nanometri del materiale, vale che $$p^{\prime} (x)≈\delta(0)$$ per cui $$Q_{exc}≈e Sp^{\prime} (0)=eS\Delta p$$
						+ Dall'approssimazione di Boltzmann $$\Delta p=p_{sup.}-p_{bulk}=n_{I}e^{ \frac{e\Phi_{S}}{k_{B}T} }$$
						+ → Vale che $$\Phi_{S}=\frac{k_{B}T}{e} \log\left( \frac{\Delta p}{n_{I}} \right)=\frac{k_{B}T}{e}\log\left( \frac{Q_{exc}}{eSn_{I}} \right)$$
					+ Per cui essendo la relazione lineare predominante approssimiamo $$V_{G}-V_{FB}≈V_{ox}=- \frac{\sigma_{exc}}{C_{ox}}$$
					+ → Il comportamento è pienamente quello di un condensatore a facce piane parallele
		+ b) $V_{G}=0$ (eq. termodinamico)
			+ Fissiamo l'ossido in $x \in[-t_{ox}, 0]$ 
			+ Il potenziale tra i due bulk è nullo, ma il campo elettrico nell'ossido no → è dovuto a due ragioni: ![[scr 2026-10-19 alle 20.41.32.png|260]]
				+ a) Siamo nel caso dello svuotamento → c'è una regione spessa $x_{d}$ svuotata dai portatori maggioritari per via del campo elettrico
					+ Come nella giunzione $pn$, il campo elettrico qui seguirà un andamento di tipo lineare, azzerandosi in $x_{d}$$$E(x)=0 \quad x>x_{d}$$ 
				+ b) Siccome il metallo conduce, la sua carica sarà distribuita all'equilibrio solo sulla superficie (a contatto con l'ossido) → nel conduttore $$E(x)=0  \quad x< -t_{ox}$$
			+ Nella regione svuotata invece, dall'equazione di maxwell $$\nabla \cdot \mathbf{E}= \frac{dE}{dx}=- \frac{eN_{A}}{\varepsilon_{Si}}(x_{d}-x)$$trascurando nella SCR la carica di lacune ed elettroni
				+ Per cui il potenziale superficiale è $$\Phi_{S}=\int_{x_{d}}^0 -E(x)dx= \frac{eN_{A}}{2\varepsilon_{Si}}x_{d}^2$$e segue $$x_{d}=\sqrt{ \frac{2\varepsilon_{Si}\Phi_{S}}{eN_{A}} }$$formula molto simile alle giunzioni $pn$
			+ Il potenziale nel condensatore è quindi $$V_{ox}=- \frac{\sigma_{exc}}{C_{ox}}=- \frac{eN_{A}x_{d}}{C_{ox}}= \frac{\sqrt{ 2e \varepsilon_{Si}N_{A}\Phi_{S} }}{C_{ox}}$$
				+ Pertanto il potenziale di flat-band è dato da $$-V_{FB}=V_{ox}+\Phi_{S}= \frac{\sqrt{ 2e \varepsilon_{Si}N_{A}\Phi_{S} }}{C_{ox}}+\Phi_{S}$$che invertendo mi permette di ottenere $\Phi_{S}$
		+ c) $V_{G}>V_{FB}$ 
			+ Supponiamo sia imposta al gate una tensione positiva, vale che come in precedenza $$V_{G}-V_{FB}=V_{ox}+\Phi_{S}=\frac{\sqrt{ 2e \varepsilon_{Si} N_{A} \Phi_{S} }}{C_{ox}}+\Phi_{S}$$
				+ Vale soltanto se abbiamo una regione svuotata non nulla, quindi per tensioni $V_{G}>V_{FB}$
			+ Più la banda si piega verso il basso, più aumenterà il numero di elettroni liberi $n_{S}$ vicino la superficie del semiconduttore $$n_{S}=\frac{n_{I}^\text{2}}{N_{A}} e^{ \frac{e\Phi_{S}}{k_{B}T} }$$
				+ È una concentrazione di elettroni in pochissimi $nm$ dalla superficie, sopra la zona di carica spaziale
				+ Finché $n_{S}\ll N_{A}$ gli elettroni non svolgono un contributo significativo
			+ La tensione da applicare al gate per ottenere $n_{S}=N_{A}$ è detta *tensione di soglia* $V_{T}$ (threshold)
				+ È il punto in cui gli elettroni in superficie eguagliano il numero di lacune nel bulk ($p_{bulk}≈N_{A}$)
					+ → Si "inverte" la polarizzazione della superficie del silicio da $p$ a $n$
				+ Una caratterizzazione di questa condizione è geometrica, ovvero il livello di Fermi è distante dal livello intrinseco in superficie tanto quanto lo è nel bulk ![[scr 2026-10-22 alle 09.30.44.png]]
					+ Questo porta a scrivere $$p_{bulk}=n_{I}e^{ \frac{E_{I, bulk}-E_{F}}{k_{B}T} }=n_{I}e^{ \frac{e\Phi_{fp}}{k_{B}T} }≈N_{A}$$da cui $$\Phi_{fp}=\frac{k_{B}T}{e}\log\left( \frac{N_{A}}{n_{I}} \right)$$
					+ Ponendo la condizione $n_{S}=p_{bulk}$ otteniamo $$n_{I}e^{ \frac{E_{F}-E_{I, sup}}{k_{B}T} }=n_{I}e^{ \frac{e\Phi_{fp}}{k_{B}T} }\implies \Phi_{fp}=E_{F}-E_{I, sup}$$
				+ → Le bande si piegano complessivamente di $$\Phi_{S}=2\Phi_{fp}$$
				+ Da questa condizione possiamo trovare la tensione di soglia $$\begin{align}  V_{T} & =V_{FB}+V_{ox}+\Phi_{S} \\   & =V_{FB}+ \frac{2\sqrt{ e \varepsilon_{Si} N_{A} \Phi_{fp} }}{C_{ox}}+2\Phi_{fp}  \end{align}$$
					+ Dipende quindi dal metallo ($V_{FB}$), dallo spessore, dalla costante dielettrica dell'isolante ($C_{ox}$), dal drogaggio e dal tipo di semiconduttore
			+ Se invece $V_{G}>V_{T}$ 
				+ La carica totale del silicio è data da $$\sigma_{Si}=\sigma_{Si, d}+\sigma_{Si, l}$$dove: 
					+ $\sigma_{Si,d}≈ eN_{A}x_{d}$ è la densità superficiale di carica contenuta nella zona di carica spaziale
					+ $\sigma_{Si, l}$ è la carica libera dovuta agli elettroni sulla superficie → diventa significativa ed aumenta esponenzialmente per $V_{G}>V_{T}$
						+ Per $V_{G}=V_{T}+\Delta V$ infatti $$\sigma_{Si} =\sigma_{Si, T}+\Delta \sigma_{Si, d}+\Delta \sigma_{Si, l}$$dove $\Delta \sigma_{Si, d} \propto \sqrt{ \Delta \Phi_{S} }$ e $\Delta \sigma_{Si, l} \propto e^{ \frac{e \Delta \Phi_{S}}{k_{B}T} }$
						+ → $\Delta \sigma_{Si, l} \gg \Delta \sigma_{Si,d}$
				+ L'estensione della carica spaziale inoltre non cresce significativamente per $V_{G}>V_{T}$, e si può considerare costante pari al valore di soglia $$x_{d, T}= 2 \sqrt{ \frac{\varepsilon_{Si}\Phi_{fp}}{eN_{A}} }$$
					+ Infatti siccome il semiconduttore è $p$-type nel bulk, il livello $E_{F}$ sarà ragionevolmente vicino al livello di valenza $E_{V}$
					+ Pertanto, applicando tensione di soglia, alla superficie sarà ragionevolmente vicino al livello di conduzione $E_{C}$ 
					+ → Non può aumentare significamente perchè vorrebbe dire avere un semiconduttore degenere
				+ La carica di accumulo vicino la superficie si può ottenere da $$\begin{align}  V_{ox} & =- \frac{\sigma_{Si}}{C_{ox}} \\   & =- \frac{\sigma_{Si,d}+\sigma_{Si, l}}{C_{ox}} \\   & ≈ - \frac{-eN_{A}x_{d, T}+\sigma_{Si, l}}{C_{ox}}  \\   & = \frac{2\sqrt{ e \varepsilon_{Si}N_{A}\Phi_{fp} }}{C_{ox}}- \frac{\sigma_{Si, l}}{C_{ox}}  \\   \implies V_{G} & = V_{FB}+ \frac{2\sqrt{e \varepsilon_{Si} N_{A} \Phi_{fp}  }}{C_{ox}}  - \frac{\sigma_{Si, l}}{C_{ox}} +2\Phi_{fp} \\   & =V_{T} - \frac{\sigma_{Si,l}}{C_{ox}} \\  \implies  \sigma_{Si, l} & =-C_{ox}(V_{G}-V_{T}) \end{align}$$
					+ → La struttura si comporta quindi nuovamente come un condensatore, con dielettrico pari all'ossido, come per $V_{G}<V_{FB}$
##### 3.2.1.2 - Non-idealità della struttura MOS

- Nella trattazione abbiamo considerato il $SiO_{2}$ un isolante perfetto → è così?
	- In realtà per motivi tecnologici esistono delle cariche sulla superficie dell'ossido, in partiolare nell'interfaccia $Si-SiO_{2}$
	- Questo comporta un cambiamento della tensione $V_{FB}$
		- Per avere campo elettrico nullo infatti bisogna compensare la tensione all'interno dell'ossido stesso, pari a $$V_{ox} = - \frac{\sigma_{ox}}{C_{ox}}$$
		- Per cui la tensione di flat band è $$V_{FB}=V_{FB, ideale}+V_{ox}=\Psi_{G}-\Psi_{Si}- \frac{\sigma_{ox}}{C_{ox}}$$
##### 3.2.1.3 - Caratteristica CV della struttura MOS

- So che la capacità di un condensatore (per unità di superficie) è definita analiticamente come $$C= \frac{d\sigma_{G}}{dV_{G}}$$dove $\sigma_{G}=-\sigma_{Si}$ densità di carica sull'armatura del gate
	- Caso ideale → ossido isolante ideale ![[scr 2026-10-22 alle 11.21.19.png]]
		- Dobbiamo differenziare 3 casi al variare di $V_{G}$
			- a) Regione di accumulazione ($V_{G}<V_{FB}$)
				- In quel caso non c'è regione di carica spaziale quindi l'unica capacità è quella dell'ossido $$C_{acc}=C_{ox}= \frac{\varepsilon_{ox}}{t_{ox}}$$
			- b) Regione di svuotamento ($V_{FB}<V_{G}<V_{T}$)
				- In questo caso si avrà anche a capacità data dallo svuotamento della zona di carica spaziale $C_{SCR}$ $$C_{SCR}=\frac{\varepsilon_{Si}}{x_{d, T}}$$ 
				- → Posso modellare come due condensatori in serie $$\begin{align}  C_{dep} & =\frac{1}{\frac{1}{C_{ox}}+\frac{1}{C_{SCR}}} \\   & =\frac{C_{ox}C_{SCR}}{C_{ox}+C_{SCR}}  \\   &  =\frac{\varepsilon_{ox}}{t_{ox}+\left( \frac{\varepsilon_{ox}}{\varepsilon_{Si}} \right)x_{d, T}} \end{align}$$
					- Di conseguenza $C_{dep}<C_{ox}$ e ha punto di minimo proprio in $V_{G}=V_{T}$
			- c) Regione di inversione ($V_{G}>V_{T}$)
				- Nella regione di inversione, al crescere di $V_{G}$, la densità di carica nella zona svuotata $\sigma_{Si, d}$ rimane sostanzialmente costante
				- Per cui si avrà che $$\begin{align}  C_{ox} & = \frac{d\sigma_{G}}{dV_{G}} \\   & =- \frac{d\sigma_{Si}}{dV_{G}} \\   & =- \frac{d}{dV_{G}}(\sigma_{Si, d}+\sigma_{Si, l}) \\   & = \underbrace{-\frac{d\sigma_{Si,d}}{dV_{G}}}_{≈ 0} -\frac{d}{dV_{G}}(-C_{ox}(V_{G}-V_{T})) \\   & =C_{ox}=\frac{\varepsilon_{ox}}{t_{ox}}  \end{align}$$
		- Si mostra inoltre che la capacità $C(V_{FB})$ è data da $$C(V_{FB})= \frac{\varepsilon_{ox}}{t_{ox}+ \frac{\varepsilon_{ox}}{\varepsilon_{Si}} \sqrt{ \frac{k_{B}T}{e^2} \frac{\varepsilon_{Si}}{N_{A}} }}$$
	- Caso reale → carica accumulata nell'ossido
#### 3.2.2 - Transistore MOSFET

- Struttura *MOSFET* (metal-oxide-semiconductor field-effect transistor)![[scr 2026-10-22 alle 10.38.50.png]]
	- Sono aggiunte alla struttura MOS due zone polarizzate $n$ che prendono il nome di *source* ($S$) e *drain* ($D$)
		- Solitamente hanno lo stesso drogaggio e le stesse dimensioni
		- Chiameremo drain quella delle due a potenziale maggiore $$V_{D}>V_{S}$$
		- Solitamente si pone per convenzione $V_{S}=V_{B}=0$
	+ Meccanismo qualitativo
		+ Aggiunti source e drain, possiamo studiare l'andamento di corrente tra le due zone $n$
		+ a) Regione di accumulazione ($V_{G}<V_{FB}$)
			+ → Superficie $Si-SiO_{2}$ ricca di lacune $p$ 
			+ Siccome nel drain le lacune sono minoritarie, si avrà una piccola corrente inversa $I_{inv}$ tra drain e source $$I_{D}=I_{inv}≈0$$
		+ b) Regione di svuotamento ($V_{FB}<V_{G}<V_{T}$)
			+ → Superficie $Si-SiO_{2}$ coperta dalla SCR
			+ Siccome è priva di cariche, posso considerare qualitativamente $$I_{D}≈0$$
		+ c) Regione di inversione ($V_{G}>V_{T}$)
			+ → Superficie $Si-SiO_{2}$ ricca di elettroni $n$
			+ Si avrà pertanto una corrente massiccia di elettroni tra source e drain $$I_{D} \text{ significativa}$$
				+ Siccome il vettore intensità di corrente $\mathbf{J}$ va da drain a source, gli elettroni si muoveranno sotto una forza $$\mathbf{F}=-e\mathbf{E}=-e\sigma \mathbf{J}$$quindi da source (fonte degli $e^-$) a drain

		- → Approssimazione brutale $$I_{D}(V)\begin{cases}= 0 &  V_{G}<V_{T} \\  > 0 & V_{G}>V_{T}  \end{cases}$$
			- La zona tra $S$ e $D$ è pertanto chiamata *canale conduttivo* del transistor

+ Analisi quantitativa
	+ Poniamo l'asse $x$ nell'asse tra source e drain, con la SCR in $x \in[0,L]$
	+ La corrente $I_{D}$ è dovuta al campo elettrico tra source e drain, è una corrente di deriva $$I_{D}=-eSn(x)\mu_{n}E(x)=\lambda(x)\mu_{n}E(x)$$dove $S$ è la sezione della regione di conduzione (perpendicolare a $x$), e $\lambda(x)$ la densità lineare di carica nel canale
		+ Siccome nella regione di inversione, il MOS si comporta da condensatore, con densità superficiale di carica libera lungo il canale pari a  $$\sigma_{ch}(x)=-C_{ox}(V_{G}-V(x)-V_{T})$$nella presenza di un potenziale imposto $V(x)$ ($V(0)=0, V(L)=V_{D}$)
			+ Si considera come superficie sempre quella parallela al condensatore tra gate e silicio (integrata sulla $y$, per unità di superficie $xz$)
			+ Assumiamo anche che $V_{G}-V_{D}>V_{T}$, cioè tutto il condotto è nella regione di inversione → questa condizione è detta *regione ohmica* (o *triodo*)
		+ → Si ha che la densità lineare è $$\lambda=-eS n(x)=-W\sigma_{ch}=-WC_{ox}(V_{G}-V(x)-V_{T})$$
		+ Per cui essendo $\mathbf{E}=-\nabla V$ ottengo l'equazione differenziale $$I_{D}=\lambda(x)\mu_{n} \left( -\frac{dV(x)}{dx} \right)=WC_{ox}(V_{G}-V(x)-V_{T})\mu_{n} \frac{dV(x)}{dx}$$
			+ Integrando $$\begin{align}  \int_{0}^L I_{D}dx & =WC_{ox}\mu_{n}\int_{0}^{V_{D}}(V_{G}-V(x)-V_{T})dV \\  LI_{D} & =WC_{ox}\mu_{n} \left[ V_{G}V-\frac{V^2}{2}-V_{T}V \right]_{0}^{V_{D}} \\ I_{D} & =\mu_{n}C_{ox} \frac{W}{L}\left[ (V_{G}-V_{T})V_{D}- \frac{V_{D}^2}{2} \right]    \end{align}$$
			+ Nel caso generale in cui $V_{S}≠0$ si ha $$I_{D}  =\mu_{n}C_{ox} \frac{W}{L}\left[ (V_{G}-V_{T})V_{DS}- \frac{V_{D}^2}{2} \right]    $$(valida se $V_{G}-V_{T}>V_{D}-V_{S}$)
		+ Il legame tra $I_{D}$ e $V_{D}$ si differenzia in questi due casi particolari ![[scr 2026-10-24 alle 10.14.52.png]]
			+ a) $V_{D}\ll V_{G}-V_{T}$ → il termine quadratico è trascurabile $$I_{D} ≈ \mu_{n}C_{ox} \frac{W}{L}(V_{G}-V_{T})V_{D}\implies I_{D} \propto V_{D}$$
				+ → Il canale si comporta come un resistore di resistenza $$R_{ch}= \frac{V_{D}}{I_{D}}=\frac{L}{\mu_{n}C_{ox}W(V_{G}-V_{T})}$$
			+ b) $V_{D} \text{ comparabile con }V_{G}-V_{T}$ → la corrente cresce meno che linearmente
			+ c) $V_{D}=V_{G}-V_{T}=V_{PO}$ (caso estremo) → detto *punto di pinch-off*
				+ La corrente è massima in questo caso, ed è detta *corrente di saturazione* $$I_{D, S}=\frac{1}{2}\mu_{n}C_{ox} \frac{W}{L}(V_{G}-V_{T})^2=k(V_{G}-V_{T})^2$$dove $k:=\frac{1}{2}\mu_{n}C_{ox} \frac{W}{L}$ è detto *fattore di trans-conduttanza*
			+ d) $V_{D}> V_{G}-V_{T}$ → è detta *regione di saturazione*
				+ Dalla formula scritta prima, esisterà una certa $x_{PO} \in [0, L]$ tale che $V(x_{PO})=V_{PO}=V_{G}-V_{T}$ e $$\lambda(x)=0 \quad  \quad x>x_{PO}$$
					+ → Il canale si interrompe e inizia la SCR
				+ Questo cosa comporta?
					+ Gli elettroni che arrivano ad $x_{P}$ sono comunque attratti dalla differenza di potenziale $V_{D}>V_{PO}=V(x_{PO})$ (come nella $pn$)
						+ → Sebbene non siano presenti elettroni liberi in quel tratto, la corrente rimane fissa alla corrente di saturazione 
	+ Com'è il profilo della tensione nel canale? ![[scr 2026-10-24 alle 12.10.42.png]]
		+ Considero l'equazione di prima, integrata su un $x$ generico $$I_{D}=\mu_{n}C_{ox} \frac{W}{x}\left[ (V_{G}-V_{T})V(x)- \frac{V^2(x)}{2} \right]$$
		+ Ci sono due casistiche:
			+ a) Nel canale ($\lambda>0$) 
				+ Suppongo che nel tratto $x \in [0, a]$ ci sia canale → in questo caso uso la condizione $$I_D=\mu_nC_{ox}\frac{W}{a}\left[(V_G-V_T)V_A-\frac{V_A^2}{2}\right]$$dove $V_{A}=V(a)$
				+ Risolvendo l'equazione di secondo grado in $V(x)$ si ottiene la soluzione generale $$V(x)=V_{PO}\left[ 1-\sqrt{ 1-\left( 2 \frac{V_{A}}{V_{PO}}-\left( \frac{V_{A}}{V_{PO}} \right)^2 \right) \frac{x}{a} } \,\,\right]$$con $V_{PO}=V_{G}-V_{T}$
				+ A questo punto ci sono più condizioni interessanti
					+ i) $V_{D}<V_{PO}$ (caso ohmico) → $a=L$, $V_{A}=V_{D}$ $$V(x)=V_{PO}\left[ 1-\sqrt{ 1-\left( 2 \frac{V_{D}}{V_{PO}}-\left( \frac{V_{D}}{V_{PO}} \right)^2 \right) \frac{x}{L} } \,\,\right]$$
					+ ii) $V_{D}=V_{PO}=V_{A}$ (pinch-off) → si ha la forma semplificata $$V(x)=V_{PO}\left( 1-\sqrt{ 1- \frac{x}{L} } \right)$$
					+ iii) $V_{D}>V_{PO}$ (saturazione) → $a=x_{PO}$ e $V_{A}=V_{PO}$
			+ b) Zona di carica spaziale
				+ Devo in questo caso risolvere l'equazione di Poisson $$\frac{d^2V}{dx^2}=\frac{eN_{A}}{\varepsilon_{Si}}$$
					+ Siccome non so dove cade il punto di pinch-off $x_{PO}$ il problema è detto ai limiti (BVP) a frontiera libera → devo imporre 3 condizioni:  $$\begin{cases}  V(x_{PO})=V_{PO} & (\text{Dirichlet a sx}) \\  V^{\prime} (x_{PO})=-E(x_{PO})=E_{max} & \text{(Neumann a sx)}  \\   V(L)=V_{D} & \text{(Dirichlet a dx)} \end{cases}$$
				+ Risolvendo, ottengo la forma chiusa $$V(x) = V_{PO} + E_{max}\,(x - x_{PO}) + \frac{eN_A}{2\varepsilon_{Si}}(x - x_{PO})^2, \qquad x_{PO} \le x \le L$$
					+ Oss: se $x-x_{PO} \to 0$ posso considerare la SCR puntiforme ![[scr 2026-10-24 alle 12.09.15.png]]
						+ Ne consegue che essendo $\lambda(x_{PO})=0$ e $I_{D}=\lambda(x)E(x)$ costante, si ha che $$E(x)=(V_{D}-V_{PO})\delta(x-x_{PO})$$
						+ Quindi $$V(x)=\begin{cases} V_{PO}\left( 1- \sqrt{ 1-\frac{x}{a} } \right) & x<a\\ V_{D} & x>a\end{cases}$$→ c'è un salto di $V_{D}-V_{PO}$ in $x=a$
		+ Domanda → siccome $x_{PO}$ dipende da $V_{D}$ come scrivere $I_{D}(V_{D})$? ![[scr 2026-10-24 alle 20.42.05.png|379]]
			+ Abbiamo già fatto un'approssimazione di ordine 0 per la lunghezza della SCR, ora possiamo provare a fare un'approssimazione di $1^o$ ordine → definisco $$\Delta L=L-x_{PO}$$
			+ So che dallo sviluppo di Taylor per $\frac{\Delta L}{L}\to0$:  $$I_D=\mu_nC_{ox}\frac{W}{L-\Delta L} \frac{V_{PO}^2}{2}=\frac{1}{2} \mu_{n}C_{ox} \frac{W}{L}\left( 1+\frac{\Delta L}{L}+o\left( \frac{\Delta L}{L} \right) \right)V_{PO}^2$$
				+ Siccome su $\Delta L$ cade la differenza di tensione tra $V_{D}$ e $V_{PO}$ si ha che, in primo ordine di approssimazione (campo $E$ costante pari a $E_{max}$): $$\Delta L= \frac{V_{D}-V_{PO}}{E_{max}}$$
			+ → Segue che $$I_{D}≈kV_{PO}^2\left( 1+ \frac{V_{D}-V_{PO}}{LE_{max}} \right)$$
			+ Siccome questo aspetto è deleterio per il funzionamento del MOSFET, di solito si applicano al circuito condizioni per cui $\Delta L$ è molto piccolo

+ Ci sono non-idealità? → *effetto body*
	+ Base e source non sono in realtà allo stesso potenziale $$V_{S}≠V_{B}\implies V_{SB}≠0$$![[scr 2026-10-24 alle 20.44.21.png|491]]
	+ Trattando il sistema verticale come due condensatori in serie, si ha che 
		+ a) Il primo condensatore ha armature alle tensioni $V_{G}$ e $V(x) \in [V_{S}, V_{D}]$ 
		+ b) Il secondo condensatore ha armature alle tensioni $V(x)$ e $V_{B}$
	+ Se mi metto in $x=0$ nel source, $V(0)=V_{S}$ fissata, per cui la densità di carica nel canale totale sarà data da $$\begin{align}  \sigma_{ch} & =\sigma_{GS}+\sigma_{SB}   \\   & =-(V_{GS}-V_{T, 0})C_{ox}+V_{SB}C_{SCR} \\  &  = -C_{ox}\left( V_{GS}-V_{T,0}- \frac{C_{SCR}}{C_{ox}}V_{SB} \right)  \\  & =-C_{ox} (V_{GS}-V_{T}(V_{SB})) \end{align}$$dove:
		+ $V_{T,0}$ è la tensione di soglia nel caso ideale in cui $V_{SB}=0$
		+ $V_{T}(V_{SB})$ è una nuova definizione di tensione di soglia, dipendente linearmente dalla tensione di body $$V_{T}(V_{SB}):=V_{T,0}+ \frac{C_{ox}}{C_{SCR}}V_{SB}$$
	+ Possiamo studiare quantitativamente questo fenomeno partendo dall'evoluzione dei diagrammi a bande della struttura MOSFET
		+ Caso ideale → consideriamo la tensione di built-in della giunzione $pn$ all'interfaccia $Si-SiO_{2}$ nei vari casi di tensione
			+ a) Tensione di flat band $V_{G}=V_{FB}$ → è data dalla formula già vista in precedenza $$\Phi_{bi, FB}=\Phi_{fp}+\Phi _{fn}$$
			+ b) Tensione di soglia $V_{T, 0}$ → siccome $\Phi_{S}=2\Phi_{fp}$ la tensione di built-in si abbassa a $$\Phi_{bi, T}=\Phi_{fn}-\Phi_{fp}$$
		+ Cosa succede con $V_{SB}≠0?$
			+ Dalla definizione di soglia, la concentrazione di elettroni sulla superficie deve essere pari alle lacune nel bulk $n=N_{A}$
				+ → La barriera energetica della giunzione $pn$ non cambia!
			+ Pertanto la differenza di potenziale applicata deve cadere nella SCR, portato ad un allargamento della sua ampiezza $$x_{d, max}=\sqrt{ \frac{2\varepsilon_{Si}}{eN_{A}}(2\Phi_{fp}+V_{SB}) }$$
				+ La carica della SCR è pertanto data da $$\sigma_{SCR}=-eN_{A}x_{d,max}=-\sqrt{ 2eN_{A}\varepsilon_{Si}(2\Phi_{fp}+V_{SB}) }$$
				+ La differenza di carica rispetto all'idealità è $$\begin{align}  \Delta\sigma_{SCR} & =-\sqrt{ 2eN_{A}\varepsilon_{Si}(2\Phi_{fp}+V_{SB}) } + \sqrt{ 2eN_{A} \varepsilon_{Si} (2\Phi_{fp}) } \\   &=-\sqrt{ 2eN_{A} \varepsilon_{Si}} (\sqrt{ 2\Phi_{fp}+V_{SB} }-\sqrt{ 2\Phi_{fp} })  \end{align}$$
				+ Di conseguenza ciò porta ad un aumento della tensione di soglia pari a $$\begin{align}  \Delta V_{T}   & =-\frac{\Delta\sigma_{SCR}}{C_{ox}}=\frac{\sqrt{ 2eN_{A}\varepsilon_{Si} }}{C_{ox}}\left( \sqrt{ 2\Phi_{fp}+V_{SB} }-\sqrt{ 2\Phi_{fp} }  \right)  \\  &= \gamma  \left( \sqrt{ 2\Phi_{fp}+V_{SB} }-\sqrt{ 2\Phi_{fp} }  \right)    \end{align}$$dove $\gamma:= \frac{\sqrt{ 2eN_{A} \varepsilon_{Si} }}{C_{ox}}$ è detto *coefficiente di effetto body*
			+ → La nuova tensione di soglia è data da $$\begin{align}  V_{T} & =V_{T,0}+\gamma\left( \sqrt{ 2\Phi_{fp}+V_{SB} }-\sqrt{ 2\Phi_{fp} } \right) \\  & =V_{FB}+ \frac{\sqrt{ 2e \varepsilon_{Si}N_{A}(2\Phi_{fp}+V_{SB}) }}{C_{ox}}+2\Phi_{fp}  \end{align}$$
				+ Questo comporta anche una diminuzione della corrente nel transitore in zona di inversione
			+ Oss: questo comporta anche una non-omogeneità del livello di Fermi lungo l'asse $y$
				+ Il livello di Fermi del bulk è maggiore del livello di Fermi dell'interfaccia
			+ Esercizio → studiare $V(x)$ nel caso di effetto body
			+ Studiare cosa accade per $V$ poco sotto la soglia
	+ Come evitarlo?
		+ Si cerca di evitare questo effetto realizzando delle strutture più complesse, con un substrato in comune di tipo $n$ ![[scr 2026-10-24 alle 21.51.26.png]]
			+ Questo permette di realizzare dei singoli collegamenti tra il well di ogni transistor e il source, riducendo gli effetti di body
		+ Un'alternativa è la tecnologia *CMOS* (*complementary-MOS*) a drogaggi invertiti ![[scr 2026-10-24 alle 21.53.31.png]]
			+ Il concetto di base è l'alternarsi di un MOSFET di tipo $n$ (*nMOS*) e uno di tipo $p$ (*pMOS*)
				+ pMOS e nMOS sono sostanziamente strutture speculari
					+ Le tensioni cambiano di segno, in particolare la zona di inversione è per $V_{G}<V_{T}$ 
					+ Pertanto anche i nomi di source e drain si invertono → il source $p$ è quello a potenziale maggiore 
				+ Il preferito tecnologicamente è comunque l'nMOS, siccome gli elettroni hanno mobilità $\mu_{n}$ maggiore delle lacune $\mu_{p}$
					+ Tra l'altro, naturalmente il drogaggio del Silicio è di tipo $p$, quindi tra i due il substrato $p$ è anche più economico
			+ In realtà questa struttura NON è conveniente ![[scr 2026-10-26 alle 10.03.35.png]]
				+ Infatti si realizzerebbe un effetto body mostruoso nel $nMOS$
					+ → Faccio una well anche per il tipo $p$, di drogaggio $p^+$
				+ Ci sarà un'alta tensione quindi tra i well e i substrati
				+ Il FOX (field oxide) è un ossido che separa i due transistori per evitare che interferiscano

- Simboli
	- nMOS 
		  ![[power-mosfet-field-effect-transistor-semiconductor-device-symbol-6817a82d02117e16636c4cf6c28b8471.png|284]]
	- pMOS 
		  ![[pngwing-2.com.png|286]]
	- In alcuni casi in elettronica digitale non si sa se è un tipo $n$ o $p$, allora elimino semplicemente la freccia

> [!NOTE] Convenzione Adottata
> - Si mantengono le stesse quantità e polarità di riferimento dell'nMOS: $V_{GS}$, $V_{DS}$, $V_{GD}$, $V_{SB}$.
> - Per il pMOS la tensione di soglia è intrinsecamente negativa ($V_{Tp} < 0$), dunque non si usano moduli né definizioni ad-hoc ($|V_{Tp}| = -V_{Tp}$).
> - La corrente $I_D$ è considerata con la convenzione standard dei terminali (entrante nel drain, quindi $I_D < 0$ nel pMOS). Se si preferisce la corrente fisica uscente / positiva lungo il verso di conduzione, si adotta $I_{SD} = -I_D > 0$.

| Parametro / Regime           | MOSFET a canale $n$ (nMOS)                                                                                                                                                        | MOSFET a canale $p$ (pMOS)                                                                                                                                                                               |
| :--------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Tensione di soglia**       | $V_{Tn0} = V_{FB} + \dfrac{\sqrt{2q\varepsilon_{Si}N_A 2\phi_{fp}}}{C_{ox}} + 2\phi_{fp}$<br><br>*(usualmente positiva: $V_{Tn0} > 0$)*                                           | $V_{Tp0} = V_{FB} - \dfrac{\sqrt{2q\varepsilon_{Si}N_D 2\phi_{fn}}}{C_{ox}} - 2\phi_{fn}$<br><br>*(usualmente negativa: $V_{Tp0} < 0$)*                                                                  |
| **Effetto body**             | $V_{Tn} = V_{Tn0} + \gamma_n \left( \sqrt{2\phi_{fp} + V_{SB}} - \sqrt{2\phi_{fp}} \right)$<br><br>$\gamma_n = \dfrac{\sqrt{2qN_A\varepsilon_{Si}}}{C_{ox}} \quad (V_{SB} \ge 0)$ | $V_{Tp} = V_{Tp0} - \gamma_p \left( \sqrt{2\phi_{fn} - V_{SB}} - \sqrt{2\phi_{fn}} \right)$<br><br>$\gamma_p = \dfrac{\sqrt{2qN_D\varepsilon_{Si}}}{C_{ox}} \quad (V_{SB} \le 0 \implies -V_{SB} \ge 0)$ |
| **Costante $k$**             | $k_n = \dfrac{1}{2}\mu_n C_{ox}\dfrac{W}{L}>0$                                                                                                                                    | $k_p =- \dfrac{1}{2}\mu_p C_{ox}\dfrac{W}{L}<0$                                                                                                                                                          |
| **Regime di corrente nulla** | $V_{GS} < V_{Tn}$<br>$I_D \approx 0$                                                                                                                                              | $V_{GS} > V_{Tp}$<br>$I_D \approx 0$                                                                                                                                                                     |
| **Regime ohmico** *(Triodo)* | $V_{GS} > V_{Tn}$<br>$V_{GD} > V_{Tn} \iff V_{DS} < V_{GS} - V_{Tn}$<br><br>$I_D = 2k_n \left[ (V_{GS} - V_{Tn})V_{DS} - \dfrac{V_{DS}^2}{2} \right]$                             | $V_{GS} < V_{Tp}$<br>$V_{GD} < V_{Tp} \iff V_{DS} > V_{GS} - V_{Tp}$<br><br>$I_D = 2k_p \left[ (V_{GS} - V_{Tp})V_{DS} - \dfrac{V_{DS}^2}{2} \right]$                                                    |
| **Regime di saturazione**    | $V_{GS} > V_{Tn}$<br>$V_{GD} < V_{Tn} \iff V_{DS} > V_{GS} - V_{Tn}$<br><br>$I_D = k_n (V_{GS} - V_{Tn})^2$                                                                       | $V_{GS} < V_{Tp}$<br>$V_{GD} > V_{Tp} \iff V_{DS} < V_{GS} - V_{Tp}$<br><br>$I_D = k_p (V_{GS} - V_{Tp})^2$                                                                                              |

- La caratteristica $I_{D}(V_{D})$ del $pMOS$ è data dalla simmetrica delle caratteristica del $nMOS$ rispetto a $(0,0)$
- Il grafico delle bande sarà allo stesso modo
## 4 Introduzione ai Segnali

(recuperate segnali e disturbi da [[Misure Elettroniche]])
(imparare a calcolare FdT di circuiti lineari e capire qualitativamente la risposta → es. RC, CR)

- Un *sistema digitale* è un ...
	- Si basa su una logica di tipo:
		- *Combinatoria* → l'uscita è unicamente dipendente dai suoi input $(b_{1}, \dots, b_{n-1}, b_{n})$ $$D_{out}=D_{out}(b_{1},\dots,b_{n-1},b_{n})$$
		- *Sequenziale* → l'uscita dipende anche dal percorso che questi input seguono nel circuito
	- È costituita da *famiglie logiche* come:
		- a) Tecnologia bipolare → le più popolari sono
			- i) TTL (transistor-transistor logic)
			- ii) ECL (emitter-coupled logic)
			- È una logica che dissipa 
		- b) Tecnologia MOS
			- i) nMOS 
			- ii) cMOS → è quasi il top di gamma
				- Permette di ridurre la dissipazione di potenza ma ha anche un sufficiente swing logico ($V_{1}-V_{0}$) per non essere particolarmente soggetta a rumori

+ Come si analizza una porta logica?
	+ Proprietà statiche:
		+ a) La funzione logica che svolge  $$y=f(A, B, C, \dots)$$
			+ es. La porta AND ha come funzione $y= A \land B$
		+ b) Caratteristica ingresso-uscita
			+ È un sistema cartesiano dove rappresentiamo $V_{out}(V_{in})$
	+ Proprietà dinamiche:
		+ c) Dissipazione di potenza
		+ d) Velocità di risposta
			+ Posso calcolare il prodotto ritardo $\times$ potenza per riassumere queste due caratteristiche 
				+ Tanto più è basso, tanto più la porta è performante
		+ e) Area della porta
			+ Ovviamente il $Si$ costa → se la porta occupa meno area è più economica
### 4.1 Porte logiche elementari

- Buffer logico (o comparatore) → visto in circuiti
	- Se $V_{in}<V_{s} \implies V_{out}=V_{-}$
	- Se $V_{in}>V_{s} \implies V_{out}=V_{+}$
	- Come mai è utile?
		- Permette di convertire un segnale digitale distorto in un segnale digitale pulito!
		- Infatti ponendo $$V_{s}=\frac{V_{1}-V_{0}}{2}  \quad \quad \begin{cases} V_{+}=V_{1} \\  V_{-}=V_{0}    \end{cases}$$i segnali digitali vengono mappati nel valore ideale

+ Porta NOT 
	  ![[NOT_ANSI_Labelled.svg|376]]
	- Lo schema circuitale è molto semplice
		  ![[Meccanica Analitica 6.png|275]]
		- Se assegno l'$1$ logico all'interruttore chiuso e $0$ a quello aperto, $V_{out}$ segue l'andamento opposto
	- Come si realizza?
		- a) Inverter a tecnologia $nMOS$
			- Un $nMOS$ è esattamente l'elemento 