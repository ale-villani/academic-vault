---
title: "Misure Elettroniche"
domain: "engineering/metrology"
source_course: "Misure Elettroniche"
tags:
  - engineering/metrology
  - engineering/metrology/uncertainty
  - engineering/metrology/instrumentation
---

## 1 - Misurazione e Sistema internazionale

### 1.4 - Caratteristiche metrologiche di misura di uno strumento

- Sono 8 definizioni che è molto importante comprendere bene per la metrologia
	- 1) *Incertezza* → stima quantitativa, eseguita seguendo procedimenti convenzionali, del livello di non conoscenza del misurando
		- È il parametro fondamentale in metrologia per la qualità di una misura
		- es. Il tavolo è lungo $1.00\pm0.01m$ → $0.01m$ è l'incertezza
		- es. La misura è accurata entro $10cm$ → $10cm$ è l'incertezza
	- 2) *Accuratezza* → stima qualitativa del grado di concordanza tra valore misurato e valore vero
		- È la stima di quanto è corretta la misura, solo qualitativa
	- 3) *Sensibilità* → per uno strumento, il rapporto tra la variazione della grandezza in uscita e quella in entrata
		- es. Un termometro mostra per ogni variazione di $1K$ uno spostamento del livello di Hg di $0.001m$ → la sensibilità è $0.001 \frac{m}{K}$
	- 4) *Risoluzione* → è la minima variazione risolubile tramite lo strumento
		- es. Un righello ha solitamente una risoluzione di $1mm$ (distanza tra le tacche)
	- 5) *Ripetibilità* → è l'attitudine di uno stesso processo di misura di fornire valori poco differenti tra loro, in misurazioni indipendenti sullo stesso misurando e nelle stesse condizioni, nel breve tempo
		- es. Se in breve tempo una misura fornisce i risultati da $56g$ a $60g$ con media di $58g$, la ripetibilità è $\pm2g$
	- 6) *Stabilità* → è l'attitudine di uno stesso processo di misura di fornire valori poco differenti tra loro, in misurazioni indipendenti sullo stesso misurando e nelle stesse condizioni, in un tempo  precisato
		- È come una ripetibilità in funzione del tempo
		- es. Un peso è pari a $10g$ ma per usura la sua massa si riduce di $2 \times10^{-6} \frac{g}{giorno}$ (stabilità)
	- 7) *Riproducibilità* → è la vicinanza di risultati ottenuti sullo stesso misurando in diverse specificate condizioni di misura
		- es. Misuro la lunghezza di uno stessa auto la prima volta in inverno a $2^oC$ e la seconda in primavera a $25^oC$ → varierà leggermente per dilatazione termica
	- 8) *Riferibilità* → è la proprietà di una misura di essere messa in relazione con un campione riconosciuto
		- È fondamentale in ambito commerciale
		- es. Misura temporale tramite un orologio a quarzo viene messa in confronto con una eseguita da un orologio atomico

## 2 - Incertezza di misura

### 2.1 - Introduzione

- Il risultato di una misura è sempre costituito da: un valore, l'*incertezza* sul valore e un'unità di misura
	- Infatti, misure ripetute anche nel breve tempo senza apportare modifiche al processo di misura differiscono sempre tra di loro
		- Questo per via della stabilità temporale del misurando, dell'inadeguata conoscenza delle condizioni ambientali, dei limiti dello strumento, dell'instabilità dello strumento e delle differenze tra diverse realizzazioni della stessa unità di misura
	- L'incertezza è una proprietà intrinseca della misura
		- Infatti dipende tra le cose dallo strumento e dal grado di realizzazione dell'unità di misura
	- È espressa come "una *fascia di valori* tutti egualmente validi a rappresentare il misurando"
		- Di questi, si sceglie come rappresentativo il valore centrale per la misura

+ Esistono due possibili metodi per stimare di l'incertezza di misura, tramite cui essa viene catalogata
	+ Sono le seguenti:
		+ A → incertezza stimata tramite metodi statistici su misure ripetute
		+ B → incertezza stimata in altro modo
### 2.2 - Valutazione dell'incertezza di categoria A

- Sia $X$ un n-campione di variabili aleatorie indipendenti $X_{k}$ di cui si possiedono le misure $x_{k}, \,\, k\in \left\{ 1,\dots,n \right\}$ 
	- Da statistica, la media campionaria $\bar{X}$ è uno stimatore non distorto del valore atteso $$\mathbb{E} \left[  \bar{X}  \right]=\mathbb{E} \left[  X  \right]$$
	- La varianza campionaria $S^2$ è uno stimatore non distorto della varianza $\mathbb{E} \left[  S^2  \right]=\mathbb{V}\left[  X  \right]$
	- La variazione standard campionaria è indicata con $S$ (la abbrevieremo con *sd*, standard deviation)
		- È stimatore non distorto della deviazione standard $\mathbb{E} \left[  S  \right]=\sigma\,[X]=\sqrt{ \mathbb{V}\left[  X  \right] }$
		- La sua stima puntuale $s$ calcolata a partire dalle misure $x_{k}$ fornisce un'indicazione della *dispersione* dei valori $x_{k}$ intorno a $\bar{x}$ (stima puntuale della media campionaria) e quindi una stima dell'incertezza della misura singola

+ Per poter stimare l'incertezza di misura consideriamo $M$ n-campioni $X_{m}$, di indice $m \in \left\{ 1, \dots , M \right\}$
	- Le singole misure indipendenti sono indicate come $x_{k, m}$ ($k$ → indice della misura all'interno dello stesso campione, $m$ il numero del campione)
	- Per ogni campione si può calcolare $\bar{x}_{m}$
		- Dell'insieme dei valori medi $\left\{ \bar{x}_{m} \right\}_{m=1,\dots,M}$ posso calcolare la sd campionaria $s(\bar{x})$
		- Questo metodo però è molto laborioso e si dovrebbe eseguire la misura moltissime volte
	- → Usiamo un approccio alternativo
		- Si osservi che da risultati noti di statistica per ciascun campione $m$-esimo, $$\mathbb{V}\left[  \bar{X}_{m}  \right] =\frac{1}{n}\mathbb{V}\left[X\right] $$
			- Di conseguenza, per stimare $s(\bar{x})$ posso direttamente usare lo stimatore $s(x)$ scalato per il numero di campioni
		- Pertanto il miglior stimatore della deviazione standard della media campionaria è pertanto la stima dell'incertezza derivante dalla variabilità delle misure ripetute $$u_{A}(x)=s(\bar{x})=\frac{s(x)}{\sqrt{ n }}$$
		- Usando la definizione di deviazione standard si ottiene una forma per calcolare $u_{A}(x)$$$\begin{align}u_{A}(x)&=\sqrt{ \frac{1}{n(n-1)}\sum_{k=1}^{n}(x_{k}-\bar{x})^2}\\&=\sqrt{ \frac{1}{n(n-1)}\left[ \left( \sum _{k=1}^{n}x^2_{k} \right)-n\bar{x}^2 \right] }\end{align}$$

+ Oltre all'incertezza di misura posso considerare l'*incertezza relativa*, rapportata al valore misurato $$u_{r}(x)=\frac{u(x)}{\bar{x}}$$
	+ In questo modo posso confrontare incertezze anche tra grandezze non omogenee, indipendentemente dal valore e dal tipo del misurando
### 2.3 - Valutazione dell'incertezza di categoria B

- Quando si valuta l'incertezza in questo modo?
	- → Quando ci sono altre informazioni esterne che già stimano l'incertezza del processo di misura
		- es. Specifiche tecniche dello strumento, certificati di taratura, dati da manuali, esperienza
	- Lo strumento ha una certa *risoluzione* finita
		- Ad esempio dalle tacche del righello (dove però sono presenti anche limiti di carattere soggettivo), alla quantizzazione degli strumenti digitali
		- → Conosco bene in molti casi a priori l'intervallo (minimo) in cui sono certo di avere il risultato

- Qual è il processo da applicare?
	- Devo scegliere 2 fattori per questa valutazione dell'incertezza
	- 1) Un *intervallo* (limitato o illimitato) dei possibili valori di misura
		- Questo è di solito noto dalle informazioni esterne
		- Convenzione → l'intervallo è del tipo $$I=[a_{0}-a, a_{0}+a]$$dove $a_{0}$ è il valore misurato e $a$ è l'ampiezza dell'intervallo
		- es. Per gli strumenti con una risoluzione finita considero $$a=0.5\text{LSD}$$dove LSD = least significant digit, l'ultima cifra significativa
	- 2) Una *densità di probabilità*, adeguata al caso
		- Grazie a questa calcolo media, varianza e deviazione standard

+ Le densità di probabilità più utilizzate sono:
	+ 1) *Gaussiana* (o normale)
		+ L'intervallo scelto qui è tutto $\mathbb{R}$
		+ Uso → 
		+ a) Distribuzione (come è arcinoto) $$p(x)=\frac{1}{\sqrt{ 2\pi \sigma }}e^{ - \frac{(x-a_{0})^2}{2\sigma^2} }$$ 
		+ b) Valor medio $a_{0}$
		+ c) Varianza $\sigma^2$
	+ 2) *Uniforme*  $\mathcal{U}([a_{0}-a, a_{0}+a])$
		- a) Densità di probabilità $$p(x)=\frac{1}{2a} \,\text{rect}([a_{0}-a, a_{0}+a])(x)$$
		- b) Valor medio $a_{0}$
		- c) Varianza $$\mathbb{V}\left[  X  \right]=\frac{(2a)^2}{12}$$
		- d) Deviazione standard $$\sigma[X]=\frac{a}{\sqrt{3 }}=\frac{|[a_{0}-a, a_{0}+a]|}{\sqrt{ 12 }}$$![[scr 2026-05-12 alle 20.00.24.png]]
	- 3) *Triangolare* $\mathrm{Tr}([a_{0}-a,a_{0}+a])$
		- a) Distribuzione $$p(x)=\begin{cases}0 & x>a_{0}-a \\\frac{x+a-a_{0}}{a^2} & a_{0}-a\leq x\leq a_{0} \\-\frac{x+a+a_{0}}{a^2} & a_{0}<x\leq a_{0}+a\end{cases}$$
		- b) Valor medio $a_{0}$
		- c) Varianza $$\mathbb{V}\left[  X  \right] =\frac{a^2}{6}$$
		- d) Deviazione standard $$\sigma[X]=\frac{a}{\sqrt{ 6 }}=\frac{|[a_{0}-a, a_{0}+a]}{\sqrt{ 24 }}$$![[scr 2026-05-12 alle 20.47.11.png]]
	- 4) *A "U"*
		- a) È una distribuzione con code divergenti del tipo (si è posto $a_{0}=0$ per comodità) $$p(x)=\begin{cases}0 & x<-a \\\frac{1}{a\pi} \frac{1}{\sqrt{ 1-\left( x/a \right)^2 }} & -a\leq x\leq a \\0 & x>a\end{cases}$$
			- È utilizzata solitamente per descrivere gli scostamenti tra che si possono rilevare tra la misura effettuata da uno strumento analogico e il valore reale del misurando
		- b) Valor medio $a_{0}=0$
		- c) Varianza $$\mathbb{V}\left[  X  \right] =\frac{a^2}{2}$$
		- d) Deviazione standard $$\sigma[X]=\frac{a}{\sqrt{ 2 }}=\frac{|[a_{0}-a, a_{0}+a]}{\sqrt{ 8}}$$![[scr 2026-05-12 alle 20.51.15.png]]


#### 2.3.1 Gradi di libertà dell'incertezza

- Anche la stessa incertezza (cioè la deviazione standard campionaria $S$) è una variabile aleatoria!
	- → Ha la sua stessa dispersione e la sua stessa incertezza
	- Come tengo in conto di questo? → introduco il concetto di *gradi di libertà* dell'incertezza
		- Sono un'indicazione sull'affidabilità dell'incertezza → più è alto il numero di g.d.l, più la stima di varianza è accurata

+ Tecnica di stima A
	+ I gradi di libertà sono banalmente dati dal numeri di misure eseguite meno uno (come nel denominatore della varianza campionaria) $$v_{A}=n-1$$
		+ Si osservi che se $n=1$ non ha senso definire la varianza, e quindi il numero di g.d.l è zero
	+ Si dimostra che la varianza della deviazione standard campionaria è approssimativamente $$\mathbb{V}\left[  S(\bar{X})  \right] ≈ \frac{\mathbb{V}\left[ \bar{X}  \right]}{2v_{A}}  $$
		+ Pertanto lo scarto quadratico medio relativo della variabile aleatoria $S(\bar{X})$ è $$\frac{\sigma[S(\bar{X})]}{S(\bar{X})} ≈ \frac{1}{\sqrt{ 2v_{A} }} \frac{\sigma[\bar{X}]}{S(\bar{X})}$$
		+ Essendo $S(\bar{X})$ proprio stimatore corretto di $\sigma[\bar{X}]$ si ottiene che la deviazione standard relativa dell'incertezza è puntualmente data da $$\frac{\sigma[S(\bar{X})]}{S(\bar{X})} =u_{r}(u_{A}(x))≈ \frac{1}{\sqrt{ 2v_{A} }}$$ (e la stima è molto precisa, da $v_{A}>4$)
		+ Infine, invertendo la formula posso stimare il numero di gradi di libertà se conoscessi l'incertezza relativa dell'incertezza $$v_{A} ≈ \frac{1}{2} \frac{S^2(\bar{X})}{\mathbb{V}\left[  S(\bar{X})  \right] }=\frac{1}{2} \frac{u^2_{A}(x)}{\mathbb{V}\left[  u_{A}(x)  \right] }=\frac{1}{2u_{r}^2(u(x))}$$

- Tecnica di stima B
	- Anche in questo caso è possibile dedurre il numero di gradi di libertà dell'incertezza, seppure in maniera meno lineare
		- Bisogna attentamente considerare il processo e fare riferimento all'esperienza
		- Proprio per questo, il numero di gradi di libertà è presente nel certificato di taratura, rilasciato da un laboratorio ACCREDIA
	- Alcuni esempi utili:
		- a) Strumenti digitali con quantizzatore → si suppone $v_{B}=+\infty$
			- La distribuzione è altamente uniforme degli errori e l'incertezza è perfettamente adeguata
		- b) Strumenti manuali e analogici → $v_{B}$ più basso (sempre $\geq 1$)
### 2.4 - Valutazione delle componenti di incertezza

- Quanto devo impiegare la metodologia A? Quando la B?
	- Nel primo caso abbiamo un effettiva famiglia di dati, da cui sono state estratte le stime puntuali degli indicatori statistici
	- Nel secondo caso ci si basa su criteri generali → è una distribuzione presunta
	- Entrambe le categorie sono gestite allo stesso modo dalla statistica

+ Esistono due tipi di misura da considerare:
	+ a) Misure *dirette* → la grandezza in uscita è determinata da un solo tipo di misura (ingresso) $$Y=X$$
	+ b) Misure *indirette* → in questo caso la grandezza in uscita dipende da diverse misure in ingresso $$Y=f(X_{1},\dots X_{n})$$
	+ Questa distinzione è cruciale per poter comprendere quali sono le correlazioni tra le variabili aleatorie che si vuole studiare

### 2.5 - Modello e legge di propagazione dell'incertezza

- Supponiamo di avere una grandezza indiretta $Y$ dipendente da $N$ grandezze $X_{i}$ $$Y=f(X_{1},\dots X_{N})+\delta f=f(\mathbf{X})+\delta f$$
	- Si è considerata anche la presenza di un errore residuo del modello, indicato con $\delta f$
		- Spesso gli è attribuito un valore nullo, ma comunque ha una certa incertezza
	- Ovviamente la stima puntuale sarà data da $y=f(\mathbf{x})$
#### 2.5.1 - Grandezze d'ingresso non correlate

- Supponiamo che a ciascuna variabile di ingresso $X_{i}$ sia possibile associare:
	- a) Una stima puntuale ${\bar{x_{i}}}$ 
	- b) Un'incertezza $u(x_{i})$

+ Per poter determinare l'incertezza di y sviluppo la funzione $f$ al primo ordine di Taylor rispetto alle stime puntuali $\bar{\mathbf{x}}$$$y-f(\bar{\mathbf{x}})≈\nabla f(\bar{\mathbf{x}}) \cdot (\mathbf{x}-\bar{\mathbf{x}})+\delta f$$questo sviluppo è detto *legge di propagazione degli errori*
	+ Questa è valida quando i contributi di ordine successivo sono trascurabili
	+ Si introducono le variabili $\varepsilon(y)=y-f(\bar{\mathbf{x}})$ e $\varepsilon(\mathbf{x})=\mathbf{x}-\bar{\mathbf{x}}$ per cui $$\varepsilon(y)=\nabla f (\bar{\mathbf{x}})\cdot \mathbf{\varepsilon}(\mathbf{x})+\delta f$$
		+ Dalla teoria dell'incertezza di misura, esse sono stime puntuali di variabili aleatorie, di cui l'incertezza è rappresentata dalla deviazione standard $u(X_{i})=\sigma[\varepsilon(X_{i})]=\sigma[X_{i}-\bar{X}]=\sigma[X_{}]$
		+ Pertanto, passando alle varianze, ricordando che $$\mathbb{V}\left[  aX+bY  \right]=a^2\mathbb{V}\left[  X  \right]+b^2\mathbb{V}\left[  Y  \right] +2ab\text{Cov}[X, Y]  $$ si ottiene che (considerando le derivate valutate nel punto di lavoro $\bar{\mathbf{x}}$)$$u_{c}^2(y)=\sum_{i=1}^{n} \left(\frac{ \partial f }{ \partial x_{i} }\right)^2u^2(x_{i})+\sum _{i \neq j}\left( \frac{ \partial f }{ \partial x_{i} }\frac{ \partial f }{ \partial x_{j} }   \right)u(x_{i}, x_{j})+\sigma^2[\delta f] $$dove $u(x_{i}, x_{j})=Cov[X_{i}, X_{j}]$

- Supponendo le variabili *indipendenti* (quindi scorrelate) si ottiene la formula 

> [!theorem] Legge di propagazione dell'incertezza per misure non correlate
> $$u_{c}(y)=\sqrt{ \sum_{i=1}^{n}\left( \frac{ \partial f }{ \partial x_{i} }  \right)^2u^2(x_{i})+s^2(\delta f) }$$

> [!proposition] Casi particolari della legge di propagazione per misure non correlate
> a) Combinazione lineare  $$Y=m_{1}X_{1}+m_{2}X_{2}+\dots+m_{n}X_{n}=\sum_{i=1}^nm_{i}X_{i}$$
> per cui si ottiene $$u_{c}(y)=\sqrt{ \sum _{i=1}^n m_{i}^2u^2(x_{i}) }$$
> b) Produttoria $$Y=m\prod_{i=1}^nX_{i}^{n_{i}}$$
> per cui si ottiene $$u_{r}(y)=\frac{u_{c}(y)}{|y|}=\sqrt{ \sum_{i=1}^n n_{i}^2\frac{u^2(x_{i})}{x_{i^2}}}=\sqrt{ \sum_{i=1}^{n}n_{i}^2u_{r}^2(x_{i}) }$$
> c) Logaritmo della produttoria $$Y=\log\left(m\prod_{i=1}^nX_{i}^{n_{i}}\right)$$
> per cui si ottiene $$u_{c}(y)=\sqrt{ \sum_{i=1}^n n_{i}^2\frac{u^2(x_{i})}{x_{i^2}}}$$
> d) Esponenziale della sommatoria $$Y=\exp\left(\sum_{i=1}^nX_{i}^{n_{i}}\right)$$
> per cui si ottiene $$u_{c}(y)=\sqrt{ \sum_{i=1}^n \left(n_{i}x_{i}^{n_{i}}\right)^2\frac{u^2(x_{i})}{x_{i}^2}}$$
> 

> [!proof]
> a) È banale
> b) $$\begin{align}u_{c}(y)&=\sqrt{ (n_{1}x_{1}^{n_{1}-1}x_{2}^{n_{2}})^2u^2(x_{1})+(n_{2}x_{1}^{n_{1}}x_{2}^{n_{2}-1})^2u^2(x_{2}) } \\
&=x_{1}^{n_{1}}x_{2}^{n_{2}}\sqrt{ \frac{n_{1}x_{1}^{n_{1}-1}x_{2}^{n_{2}}}{x_{1}^{2n_{1}}x_{2}^{2n_{2}}}u^2(x_{1})+\frac{n_{2}x_{1}^{n_{1}}x_{2}^{n_{2}-1}}{x_{1}^{2n_{1}}x_{2}^{2n_{2}}}u^2(x_{2}) } \\
&= x_{1}^{n_{1}}x_{2}^{n_{2}}\sqrt{ \frac{n_{1}^2u^2(x_{1})}{x_{1}^2}+\frac{n_{1}^2u^2(x_{2})}{x_{2}^2} } \\
&=x_{1}^{n_{1}}x_{2}^{n_{2}}\sqrt{ n_{1}^2u_{r}^2(x_{1})+n_{2}^2u_{r}^2(x_{2}) }
\end{align}$$


- Oss: per una misura diretta (tramite uno strumento di misura) sono alcune volte compresenti incertezze di categoria A e B
	- In tal caso le due incertezze posso definirsi tra loro indipendenti per la loro differente natura
	- Pertanto la formula dell'incertezza complessiva sarà data da $$u^2(x)=u_{A}^2(x)+u_{B}^2(x)$$
#### 2.5.2 - Grandezze d'ingresso correlate

- L'incertezza composta vale in generale la formula trovata in precedenza (trascurando il termine di errore di $\delta f$) $$u_{c}^2(y)=\sum_{i=1}^{n} \left(\frac{ \partial f }{ \partial x_{i} }\right)^2u^2(x_{i})+\sum _{i \neq j}\left( \frac{ \partial f }{ \partial x_{i} }\frac{ \partial f }{ \partial x_{j} }   \right)u(x_{i}, x_{j})$$
	- Dalla statistica si può definire il *coefficiente di correlazione* tra $X_{i}$ e $X_{j}$ come $$R_{ij}=\frac{\text{Cov}[X_{i}, X_{j}]}{\sqrt{ \mathbb{V}\left[  X_{i}  \right] \mathbb{V}\left[  X_{j}  \right]  }}$$ che ha stima data da $$r_{ij}=\frac{u(x_{i}, x_{j})}{u(x_{i})u(x_{j})}\in[-1, 1]$$
	- Introducendo anche i *coefficienti di sensibilità* $c_{i}=\frac{ \partial f }{ \partial x_{i} }(\bar{\mathbf{x}})$ l'equazione può essere scritta come $$u_{C}(y)=\sqrt{ \sum c_{i}^2u^2(x_{i}) + 2\sum r_{ij}c_{i} c_{j}u(x_{i})u(x_{j}) }$$
		- Nel caso particolare in cui i coefficienti di correlazione siano tutti nulli si ottiene l'equazione di prima $$u(y)=\sqrt{ \sum c_{ii}^2u^2(x_{i}) }$$


- es: Velocità di un autovelox $$v=\frac{L}{\Delta t}$$
	- Misuro direttamente la lunghezza $L=12.00(25)m$
	- La fotocellula è start-stop: da quanto la macchina passa inizia a contare un multiplo temporale fino a quando non riceve notizia dell'arrivo della macchina
	- Supponiamo si contino $N=5000$ unità di tempo $T_{C}=\frac{1}{200kHz}$
	- Affinchè si possa compiere un errore sia all'istante precedente che a quello successivo calcolo la lunghezza come $$\Delta t=\left( N+\frac{1}{2} \right)T_{C}=0,0250025s$$ (conti bruti senza incertezza)
	- Il clock sbaglia al più della quantizzazione → categoria B, distribuzione uniforme
		- La risoluzione dello strumento è $$T_{C}=0.5\times 10^{-5}s $$
		- L'incertezza è data dalla sd dell'uniforme $$u(\Delta t)=\frac{T_{C}}{\sqrt{ 12 }}≈1.45\times 10^{-6} s$$
		- Se conoscessi il valore di partenza con certezza l'incertezza sarebbe questa, ma se invece anche l'incertezza di tempo non fosse conosciuta avrei che $$\Delta t=t_{f}-t_{i}$$dove $t_{f}$ e $t_{i}$ hanno entrambi incertezza $u(t)≈1.45\times 10^{-6}$
			- Ho una grandezza somma di due quindi l'incertezza di $\Delta t$ sarà $$u(\Delta t)=\sqrt{ u^2(t_{i}) +u^2(t_{f})}=\sqrt{ 2 }u(t_{i})=2.0412\times 10^{-6}s $$
		- Quindi in entrambi i casi $$\begin{align}\Delta t_{end}&=0.0250025(15)s \\\Delta t_{start+end}&=0.0250000(20)s\end{align}$$
		- Per la velocità, scegliendo il primo caso, è una produttoria e le misure sono scorrelate $$u_{r}(v)=\sqrt{ u_{r}^2(L)+u_{r}^2(\Delta t) }=0,064$$quindi $$v=\frac{L}{\Delta t}=480.000(64) \frac{m}{s}$$

+ es.  Non bisogna mai nascondere le correlazioni
	+ Immagino di avere due misure dirette di $R$ e $I$. Devo calcolare la potenza
	+ Il ragionamento corretto è usare $$P=RI^2\implies u_{r}(P)=\sqrt{ u_{r}^2(R)+4u_{r}^2(I) }$$
		+ Se facessi il ragionamento $$\begin{cases}P=VI \\ V=RI\end{cases}\,\,\implies u_{r}(V)=\sqrt{ u_{r}^2(R)+u_{r}^2(I) } \implies u_{r}(P)=\sqrt{ u_{r}^2(V)+u_{r}^2 (I)}$$ SBAGLIEREI
			+ Questo perchè così sto dicendo che $V$ e $I$ NON sono correlati, il che è ERRATO perchè l'incertezza di $V$ dipende proprio dall'incertezza di $I$
			+ → Il secondo ragionamento è errato
### 2.6 - Aspetti formali dell'espressione dell'incertezza

- Una misurazione deve sempre fornire, al minimo:
	- a) Il valore della misura
	- b) La sua incertezza composta
	- c) L'unità di misura $$V_{m}=1.0032(19) V$$dove l'incertezza è data da $u(V_{m})=0.019$
		- Per gradi di libertà $v<1000$
- oppure, in maniera più completa:
	- a) Il valore della misura
	- b) La sua incertezza estesa
	- c) Il fattore di copertura
	- d) Il numero di gradi di libertà
	- e) L'unità di misura $$V_{m}=(1.0032\pm 0.0043)V$$dove l'incertezza estesa è data da $U(V_{m})=ku_{c}(V_{m})$ dove il coefficiente di copertura $k=2.26$ è basato su una distribuzione t a $v=9$ gradi di libertà, su un intervallo di confidenza del $95\%$

+ Come si gestisce l'incertezza nei calcoli?
	+ Arrotondamento → quando calcolo $u_{c}(x)$ la regola da seguire è:
		+ Arrotondo per difetto → solo se la differenza tra valore iniziale e finale non supera il $5\%$ del valore inizale 
		+ Arrotondo per eccesso → in tutti gli altri casi (meglio sovrastimare)
	+ Nel caso di calcoli molto complessi potrebbe essere utile una tabella del genere ![[scr 2026-05-14 alle 17.27.32.png]]
### 2.7 - Incertezza estesa

+ Qual è la distribuzione di $Y$?
	+ Non conosco a priori la distribuzione di $Y$
		- Si potrebbe provare a ricavarla tramite simulazioni Montecarlo, però l'idea migliore è un'approssimazione
	- Si noti che dal teorema del limite centrale, se considero $Y$ composta da diverse distribuzioni $X_{i}$ con $\sigma[Y]\gg\sigma[X_{i}]$, allora essa è approssimativamente considerabile una distribuzione normale
		- Pertanto la sua stima $y$ è la media della distribuzione
		- La sua deviazione standard $u_{c}(y)$ contiene una probabilità di circa il $68.3\%$ di avere la misura nell'intervallo $I_{\alpha}=[y-u(y). y+u(y)]$, intervallo di confidenza al $\alpha=0.317$
			- Per alcuni campi questo livello di confidenza è alto rispetto ai livelli tipici del $1-5\%$ → devo introdurre una soluzione
	- E quando l'ipotesi di Gaussianità non è valida?
		- → Posso utilizzare la distribuzione $t$ di Student, a $v$ gradi di libertà
		- In questo caso, seppure possa conoscere il numero di g.d.l. di ciascuna delle incertezze singole $u(x_{i})$ (supposte indipendenti), come trovo il numero di *g.d.l. efficaci* $\nu_{eff}$ dell'incertezza composta $u_{c}(y)$?
			- Questa è data dalla formula di Welch-Satterthwaite:$$\nu_{\text{eff}} = \frac{\left[ \displaystyle \sum_{i=1}^{N} c_i^2 u^2(x_i) \right]^2}{\displaystyle \sum_{i=1}^{N} \frac{c_i^4 u^4(x_i)}{\nu_i}} = \frac{\left[ \displaystyle \sum_{i=1}^{N} u_i^2(y) \right]^2}{\displaystyle \sum_{i=1}^{N} \frac{u_i^4(y)}{\nu_i}} = \frac{u_C^4(y)}{\displaystyle \sum_{i=1}^{N} \frac{u_i^4(y)}{\nu_i}} \leq \sum_{i=1}^{N} \nu_i$$
				- Si osservi che $v_{c}\geq v_{i }$ → facendo più misure si migliora il grado di conoscenza del misurando
				- Effettivamente la formula fornisce anche un "test di normalità" per la $Y$: se $\nu_{eff}$ è molto alto posso considerarla normale
					- Un test alternativo è dato dal test di Shapiro-Wilk, se si hanno diverse misure, che compara i quantili della distribuzione a quelli della gaussiana

+ Nel caso in cui è essenziale che l'incertezza non sia invalidante per la misura si introduce il concetto di *incertezza estesa*
	- È data da $$U(y)=ku_{c}(y)$$dove $k>1$ è detto *fattore di copertura*
	- Grazie a quest'incertezza "incrementata" posso ottenere intervalli di confidenza con $\alpha$ a piacere, aumentando il fattore di copertura
		- Ad esempio se $k=2$ ottengo una confidenza del $\alpha=95\%$ (nell'ipotesi di gaussianità), se $k=3$ ottengo $\alpha=99.7\%$
		- Se invece $Y$ è una $t$ di Student, il calcolo di $\alpha$ è fatto tramite le tabelle
### 2.9 - Compatibilità tra le misure e media pesata

- Immagino di avere più misure di uno stesso misurando eseguite da diversi strumenti
	- Ognuno ha il suo valore, l'incertezza, l'unità di misura
	- Come faccio a capire quale scegliere? → introduco il concetto di *compatibilità* 
		- Dico che due misure sono compatibili se i loro intervalli di confidenza (con un certo coefficiente di correlazione $k\geq 1$) sono sovrapponibili $$|x_{1}-x_{2}|\leq k\sqrt{ u^2(x_{1})+u^2(x_{2})-2r_{12}u(x_{1})u(x_{2}) }$$
			- La scelta $k=1$ è "stretta", cioè l'intervallo di confidenza ha la probabilità del $68\%$ di comprendere il valore
			- Solitamente si accetta la compatibilità fino a $k=3$ e non oltre
	- Suppongo ora di avere un $n$-campione di misure $x_{i}$ equidistribuite normali e compatibili
		- La stima migliore per la misura è la media pesata di queste misure $$\bar{x}_{p}=\frac{\sum_{i=1}^n \frac{x_{i}}{u^2(x_{i})}}{\sum _{i=1}^n \frac{1}{u^2(x_{i})}}$$ e la sua incertezza al quadrato è proprio data dal denominatore $$u(\bar{x}_{p})=\sqrt{  \frac{1}{\sum_{i=1}^n \frac{1}{u^2(x_{i})}} }$$
## 3 - Rappresentazione e analisi dei dati sperimentali

### 3.1 - Introduzione

- La rappresentazione dei dati sperimentali deve avvenire secondo certi criteri
	- Sull'asse delle ascisse è posta la variabile $X$ indipendente, sulle ordinate la variabile $Y$ dipendente
		- Di solito vale che $$u(X)\ll u(Y)$$infatti solitamente $X=t$ il tempo, per cui l'incertezza è molto bassa ed è data dai clock dell'elettronica considerata
	- È obbligatorio porre unità di misura e scale sugli assi, altrimenti il grafico ha solo valore qualitativo
		- Le scale devono essere scelte in modo che tutti i dati, o la loro componente più significativa, sia riportata nello spazio a disposizione
### 3.2 - Rappresentazioni cartesiane e polari, scale logaritmiche

- Immaginiamo di aver raccolto dei dati sperimentali e di volerli rappresentare in un diagramma cartesiano, allora è importante inserire
	- a) I punti sperimentali, ben contraddistinguibili
	- b) Una linea di interpolazione (lineare, cubica, $\text{sinc}$ ...)
	- c) Le *error bars* → sono dei segmenti verticali e orizzontali che rappresentano l'incertezza
		- L'incertezza sulle $Y$, è rappresentata tramite dei segmenti verticali di lunghezza pari a $u(Y)$ sopra e sotto il punto misurato
		- Alcune volte lo si include anche per l'incertezza sulle $X$, che però è solitamente molto minore e trascurabile

+ Se abbiamo una funzione $y=kf(x)$, $k\in \mathbb{R}$, per verificare la dipendenza può aver senso "linearizzare" il grafico
	+ Si pone una funzione ausiliaria $w=f(x)$ in modo da plottare nel grafico $(y, w)$
		+ Se si verifica una relazione lineare, si può notare l'adesione al modello

- Oltre ai diagrammi cartesiani, esistono i diagrammi polari, in cui si disegna la curva polare $$\mathbf{r}(t)=\begin{pmatrix}\rho(t)\cos(\theta(t)) \\\rho(t)\sin(\theta(t))\end{pmatrix}$$ dove $t$ è un parametro, sostituibile anche dalla lunghezza d'arco $s$

+ Particolari diagrammi cartesiani molto utilizzati sono quelli in scala logaritmica
	+ In una scala logaritmica, se due coppie di valori sono equidistanti, allora tali stanno allo stesso rapporto reciproco
	+ È utile quando si vuole rappresentare una grande variabilità di dati, non ignorando né il comportamento per dati piccoli ($\to0$), né per dati grandi ($\to +\infty$)
	+ Esistono due tipi di diagrammi logaritmici:
		+ a) Diagrammi semi-logaritmici 
			+ i) Diagrammi semilog-$y$ → l'unità di misura di $y$ è logaritmica, quella di $x$ è lineare $$\log_{B}(y)=f(x)$$
			+ ii) Diagrammi semilog-$x$ → l'unità di misura di $x$ è logaritmica, quella di $y$ è lineare $$y=f(\log_{B}(x))$$
		+ b) Diagrammi bi-logaritmici $$\log_{B}(y)=f(\log_{B}(x))$$
	+ Si osservi che in entrambi un tratto lineare corrisponde ad una relazione esponenziale, logaritmica o di potenze tra $y$ e $x$
		+ Semilog-$y$ → relazione esponenziale $$\frac{\log_{B}y-\log_{B}y_{0}}{x-x_{0}}=m \,\, (\text{cost.})$$allora $$\frac{y}{y_{0}}=B^{m(x-x_{0})} \implies  y=\frac{y_{0}}{B^{mx_{0}}}B^{mx}$$
		+ Semilog-$x$ → relazione logaritmica $$\frac{y-y_{0}}{\log_{B}x-\log_{B}x_{0}}=m$$e quindi $$\begin{align}y&=y_{0}+m\log_{B}\left( \frac{x}{x_{0}} \right) \\&=(y_{0}-m\log_{B}x_{0})+m\log_{B}x \end{align}$$
		+ Bilog → relazione di potenze $$\frac{\log_{B}y-\log_{B}y_{0}}{\log_{B}x-\log_{B}x_{0}}=m \implies y=\frac{y_{0}}{x_{0}^m}x^m$$
### 3.3 - Curve di interpolazione

- Per poter visualizzare l'andamento di una variabile continua nel tempo, abbiamo bisogno di trasformare l'insieme discreto delle misure in una funzione continua
	- Questo processo è detto *interpolazione* e la curva scelta per rappresentare i dati *curva di interpolazione*
	- Una curva di interpolazione passa sempre per i dati sperimentali, pertanto è completamente diversa da un fit (in cui si minimizzano gli errori quadratici)
#### 3.3.1 - Interpolazione lineare

- È la più semplice possibile → si traccia una spezzata che passa per tutti i punti sperimentali
	- Siano $\left\{ (x_{j}, y_{j}) \right\}$ i dati sperimentali acquisiti
		- Divido l'intervallo delle misure in sottointervalli $[x_{j}, x_{j+1}]$, allora la spezzata è data da $$y(x)=\left[ \frac{y_{j+1}-y_{j}}{x_{j+1}-x_{j}} \right]x+\left[ y_{j}-\frac{y_{j+1}-y_{j}}{x_{j+1}-x_{j}}x_{j} \right], \, \,\, x \in[x_{j}, x_{j+1}]$$
	- La funzione è continua ma in generale non derivabile (ha punto angoloso potenzialmente in ogni $x_{j}$)
#### 3.3.2 - Interpolazione polinomiale cubica (spline)

- L'idea è di volere una curva interpolante che non sia colo continua, ma di classe $C^2$
	- A tal proposito, in ognuno dei $N-1$ sotto-intervalli $[x_{j}, x_{j+1}]$ la curva interpolante sarà polinomio di terzo grado $$p_{j}(x)=a_{j}x^3+b_{j}x^2+c_{j}x+d_{j}, \, \, \, x \in[x_{j},x_{j+1}]$$
		- Da cui la curva globale (detta *spline*) sarà $$\begin{align}y(x)&=\sum_{j=1}^{N-1}p_{j}(x)\,\text{rect}([x_{j}, x_{j+1}]) \\&=\sum_{j=1}^{N-1}(a_{j}x^3+b_{j}x^2+c_{j}x+d_{j})\,\text{rect}([x_{j}, x_{j+1}])\end{align}$$
		- Si osservi che con $N$ dati ho ben $4(N-1)$ coefficienti ${\left\{ a_{j}, b_{j}, c_{j}, d_{j} \right\}_{j=1,\dots ,N}}$ da determinare → devo imporre $4(N-1)$ condizioni
			- a) $2(N-1)$ condizioni di interpolazione
				- Per ognuno dei $N-1$ polinomi devo porre che $$\begin{cases}p_{j}(x_{j})=y_{j} \\p_{j}(x_{j+1})=y_{j+1}\end{cases}$$
			- b) $N-2$ condizioni sulle derivate prime
				- Per ogni $j=1,\dots,N-2$$$p_{j}^{\prime} (x_{j+1})=p_{j+1}^{\prime} (x_{j+1})$$
			- c) $N-2$ condizioni sulle derivate seconde
				- Per ogni $j=1,\dots,N-2$$$p_{j}^{\prime\prime} (x_{j+1})=p_{j+1}^{\prime\prime} (x_{j+1})$$
			- d) $2$ condizioni agli estremi
				- Si noti che non abbiamo ancora posto condizioni sulle derivate ai punti estremi $x_{1}$ e $x_{N}$
				- Per questo ci sono diverse opzioni:
					- i) Spline cubica naturale → impongo derivata seconda nulla agli estremi $$\begin{cases}p_{1}^{\prime\prime}(x_{1})=0  \\p_{N-1}^{\prime\prime}(x_{N})=0 \end{cases}$$
					- ii) Spline cubica competa → specifico i valori di derivata prima agli estremi $$\begin{cases}p_{1}^{\prime}(x_{1})=s_{1}  \\p_{N-1}^{\prime}(x_{N})=s_{2} \end{cases}$$
					- iii) Spline cubica periodica → se $y_{1}=y_{N}$ impongo derivata prima e seconda continua agli estremi $$\begin{cases}p_{1}^{\prime}(x_{1})=p_{N-1}^{\prime} (x_{N})  \\p_{1}^{\prime\prime}(x_{1})=p_{N-1}^{\prime\prime}(x_{N})  \end{cases}$$
	- Esiste un teorema che lega il numero di punti campionati con l'errore totale nell'interpolazione dei dati raccolti
		- Si supponga che si conoscano i dati $x_{1}, \dots, x_{N}$ della funzione $f(x)$
		- Allora, l'errore dell'approssimazione con la spline $p(x)$ sarà $$|f(x)-p(x)|\leq k(\Delta x_{MAX})^{3/2}$$dove $\Delta x_{MAX}=max\{|x_{j+1}-x_{j}|\}_{j=1,\dots ,N-1}$
			- Nel caso di campionamento uniforme, $$\Delta x_{MAX}=\frac{x_{N}-x_{1}}{N} \implies  |f(x)-p(x)|\leq k \left[\frac{x_{N}-x_{1}}{N}\right]^{3/2}$$
#### 3.3.3 - Interpolazione a seno cardinale (sinc intepolator)

- Dal teorema di Shannon-Nyquist so che la curva interpolatrice che permette di ricostruire esattamente un segnale è la curva seno cardinale ($\text{sinc}$)
	- Infatti so che la curva di partenza è data esattamente da $$x(t)=\sum_{k \in \mathbb{Z}}X(kT_{C})\text{sinc}\left( \frac{t-kT_{c}}{T_{c}} \right)$$se $\frac{1}{T_{C}}>2B$
	- Si noti che, a differenza delle interpolanti precedenti, il seno cardinale si estende su tutto l'asse reale
		- Per questo, ogni campione influenza i valori di $x(t)$ su tutto l'asse reale $t\in \mathbb{R}$

(Attenzione! studiare la regressione ai minimi quadrati dal quaderno di statistica!)
## 4 - Campionamento e convertitori analogico-digitali

- Ci sono 2 tipologie di segnali:
	- a) Segnali *analogici* → sono a valori continui
		- Sono affetti da:
			- a) Rumore → è una variabile aleatoria a media nulla che si somma al segnale, impossibile da eliminare
			- b) Disturbi → (es. frequenza di rete a $50Hz$) sono segnali non voluti che si sommano al segnale desiderato
	- b) Segnali *digitali* → sono a tempo discreto e valori discreti
		- Prendiamo ad esempio una TTL (valori: 0, 1)
			- Il rumore è praticamente ininfluente, finché non è così forte da coprire metà della differenza tra le tensioni $V_{0}$, $V_{1}$
			- Molto spesso si tende per motivi di dissipazione di potenza a ridurre lo  *swing logico* $V_{1}-V_{0}$ 
				- Questo sicuramente migliora le performance ma rischia sempre di più di assoggettare il digitale al rumore
### 4.1 - Introduzione

- I processi di misura oggi sono completamente digitali, mentre una volta erano analogici
	- 2 fasi fondamentali per il processo di misura:
		- 1) Conversione analog → digital (ADC)
		- 2) Elaborazione del segnale
	- Pro della transizione → maggiore flessibilità, funzionalità, accuratezza
		- Propulsa dallo sviluppo degli ADC e dall'elaborazione numerica dei segnali

### 4.2 - Teorema del campionamento

- Il *campionamento* di un segnale tempo continuo $x(t)$ è un processo di discretizzazione temporale
	- Si preleva il segnale in un certo numero di campioni temporali discreti $t_{k}$, $k \in \mathbb{Z}$
		- Questi campioni si susseguono in maniera periodica nel tempo, alla *frequenza $f_{C}$ di campionamento*
			- È detto *periodo di campionamento* $T_{C}=\frac{1}{f_{C}}$
	- Il segnale $X(t)$ che si ottiene unendo i valori di questi campioni è detto campionato 
	  ![[scr 2026-05-12 alle 09.18.07.png]]

+ Come avviene il campionamento?
	+ L'idea è di avere un circuito in cui l'interruttore viene chiuso ogni $t_{k}$ ![[scr 2026-05-12 alle 09.15.49.png|400]]
	+ Processo ideale → nella realtà i campionatori sono molto più complessi, li vedremo

- Descrizione matematica del campionamento
	- Suppongo di avere un segnale a *banda limitata*, cioè la trasformata di Fourier $\hat{x}(\omega)$ del segnale è a supporto compatto $\implies \text{supp}(\tilde{x})\subseteq [-B, B]$
		- Ciò avviene, ad esempio, se il segnale è periodico
			- Infatti, in tal caso, il segnale si può scrivere in serie di Fourier trigonometrica $$x(t)=\sum _{k \in \mathbb{Z}}\hat{x}_{k}\,e^{ i\omega_{k}t }$$
				- Oss: la componente continua ($\omega_{k}=0$) è il valor medio del segnale 
			- Siccome la trasformata di Fourier di un esponenziale immaginario è una $\delta$ di Dirac $$\mathcal{F}\,[e^{ ikt }]=\delta_{\omega_{k}}(t)$$ vale che $$\hat{x}(t)=\sum_{k \in \mathbb{Z}}\hat{x}_{k}\,\delta_{\omega _{k}}(t)$$ che ha supporto compatto $$\text{supp}(\hat{x}(t)) = \left\{ \omega _{k} : k \in \mathbb{Z} \right\}$$
- L'operazione di campionamento si può descrivere tramite un pettine di $\delta$ di Dirac $$T(t)=\sum _{k\in \mathbb{Z}}\delta_{t_{k}}(t)$$ per cui il segnale campionato assume la forma $$X(t)=x(t)T(t)=\sum_{k\in \mathbb{Z}}x(t)\delta_{t_{k}}(t)$$
	- Trasformandolo, si ottiene: $$\begin{align}\hat{X}(\omega) &=\sum_{k\in \mathbb{Z}}\hat{x}(\omega) \, * \, \mathcal{F}\,[\delta_{t_{k}}](\omega)  \\&= \sum_{k\in \mathbb{Z}}\hat{x}(\omega)\,*\,\left( \frac{2\pi}{T_{C}} \delta_{\frac{2\pi k}{T_{C}}}(\omega)\right) \\&=\frac{2\pi}{T_{C}}\sum_{k\in \mathbb{Z}}\hat{x}\left( \omega-\frac{2\pi k}{T_{C}} \right) \\&=\frac{2\pi}{T_{C}}\sum_{k\in \mathbb{Z}}\hat{x}(\omega-k\omega_{C})\end{align}$$ dove si è definita $$\omega_{C}:=\frac{2\pi}{T_{C}}$$
		- Si osservi che il segnale campionato è nel dominio delle frequenze periodico di periodo $\omega_{C}$
			- $\implies$ Il campionamento rende il segnale periodico in frequenza ![[scr 2026-05-12 alle 10.00.23.png|550]]

- Un risultato fondamentale è il seguente

> [!theorem] Teorema di Shannon - Nyquist
> Sia $x \in \mathcal{S}^*(\mathbb{R})$ un segnale a banda limitata (cioè $\text{supp}(\hat{X}) \subseteq [-\omega_B, \omega_B]$), il segnale può essere univocamente ricostruito a partire dai suoi campionamenti a pulsazione $\omega_C$ se soddisfa: $$\omega_C > 2\omega_B := 4\pi f_N$$
> dove $f_{N}$ è detta *frequenza di Nyquist*


> [!proof] Dimostrazione:
> So che
> $$\hat{X}(\omega) = \frac{2\pi}{T_C} \sum_{k \in \mathbb{Z}} \hat{x}(\omega - k\omega_C)$$
> Nell'ipotesi $\omega_C > 2\omega_B \Rightarrow T_C < \frac{\pi}{\omega_B}$.
> Isolo ora la replica centrale del segnale. Si definisce il "*filtro passa basso*" o "*anti-aliasing*":
> $$H(\omega) = T_{C} \,\text{rect}{\left[-\frac{\omega_C}{2}, \frac{\omega_C}{2}\right]}(t)$$
> Siccome $\frac{\omega_C}{2} > \omega_B$ non si ha sovrapposizione tra le copie identiche di $X$. Allora
> $$X(\omega) = H(\omega) \hat{X}_C(\omega)$$
> Si noti che $\mathcal{F}^{-1}(H(\omega)) = \text{sinc}\left(\frac{t}{T_C}\right)$
> $$
> \begin{aligned}
> \Rightarrow x(t) &= \frac{1}{2\pi} \cdot 2\pi \mathcal{F} \left( \sum_{k \in \mathbb{Z}} \hat{X}(\omega - k\omega_C) \right) * \text{sinc}\left(\frac{t}{T_C}\right) \\
> &= \sum_{k \in \mathbb{Z}} X(kT_C) \delta_{kT_C} * \text{sinc}\left(\frac{t}{T_C}\right) \\
> &= \sum_{k \in \mathbb{Z}} X(kT_C) \,\text{sinc}\left(\frac{t - kT_C}{T_C}\right)
> \end{aligned}
> $$
> Ho calcolato esattamente $x(t)$ a partire dal segnale campionato $X(t_{k})$ tramite un'interpolazione a seno cardinale

- Se $f_C < 2 f_{\text{max}}$ si dice di essere in *aliasing*
	- Nel regime delle frequenze, il segnale si *sovrappone* e non permette di ricostruire il segnale
	- Infatti, come notato il precedenza, il segnale campionato è periodico in frequenza ![[scr 2026-05-12 alle 10.11.56.png]]

+ Il campionamento così descritto è un processo puramente ideale
	+ In condizioni di lavoro reali, questo avviene in maniera molto diversa

#### 4.2.1 - Campionamento reale e non-idealità

- Quali sono le limitazioni pratiche che rendono impossibile il campionamento ideale?
	- 1) È impossibile campionare il segnale per tempo infinito $t \in(-\infty, +\infty)$
		- Infatti nella definizione di $X(t)$ sono presenti i campioni su tutto l'asse dei tempi
		- Nella realtà, il mio segnale è troncato $$x_{T}(t)=x(t)\,\text{rect}[0, +T_{0}](t)$$dove $T_{0}$ è la durata dell'intervallo di osservazione
		- Gli effetti di questa non-idealità sono più o meno gravi a seconda del segnale
			- Segnali periodici → se scelto $T_{0}$ multiplo del periodo, il segnale è intatto
			- Segnali non periodici → c'è una distorsione del segnale
		- Si osservi che un segnale a banda limitata $\text{supp}(\hat{x})\subseteq[-B,B]$ ha necessariamente $\text{supp}(x)=\mathbb{R}$, mostrato nel seguente risultato
			- Questo rende di fatto impossibile il campionamento ideale

> [!proposition]
> Sia $x \in L^2(\mathbb{R})$ un segnale a banda limitata (cioè $\text{supp}(\hat{x}) \subseteq [-\omega_B, \omega_B]$), allora $$\text{supp}(x)=\mathbb{R} $$

> [!proof] Dimostrazione:
> Dall'invertibilità della trasformata di fourier $\mathcal{F}:L^2(\mathbb{R})\to L^2(\mathbb{R})$ si ottiene che $$x(t)=\frac{1}{2\pi}\int_{-\omega_{B}}^{\omega_{B}}\hat{x}(\omega)e^{j\omega t}d\omega$$
> L'idea è di estendere ora la funzione $x(t)$ al piano complesso, rendendo la variabile temporale reale $t \in \mathbb{R}$ una variabile complessa $z = t + j\tau\in \mathbb{C}$ (con $t, \tau \in \mathbb{R}$). Definiamo il prolungamento analitico del segnale: $$x(z) = \frac{1}{2\pi} \int_{-\omega_{B}}^{\omega_{B}} \hat{x}(\omega) e^{j\omega z} d\omega$$
> Sostituendo esplicitamente $z = t + j\tau$, l'integrale assume la forma: $$x(t + j\tau) = \frac{1}{2\pi} \int_{-\omega_{B}}^{\omega_{B}} \hat{x}(\omega) e^{j\omega t} e^{-\omega \tau} d\omega$$
> Dimostriamo che $x(z)$ è una funzione olomorfa (analitica) su tutto il piano complesso $\mathbb{C}$. Consideriamo la funzione integranda $g(\omega, z) = \hat{x}(\omega) e^{j\omega z}$. La sua derivata parziale rispetto a $z$ vale: $$\frac{\partial g}{\partial z} = j\omega \hat{x}(\omega) e^{j\omega z}$$
> Poiché l'intervallo di integrazione $[-\omega_{B}, \omega_{B}]$ è compatto (chiuso e limitato): 
> 1. Il termine esponenziale in modulo $|e^{j\omega z}| = e^{-\omega \tau}$ è limitato superiormente dal valore finito $e^{\omega_{B} |\tau|}$ per ogni $\tau$ fissato. 
> 2. Poiché $\hat{x}(\omega) \in L^2(\mathbb{R})$, l'integranda e la sua derivata parziale sono funzioni assolutamente sommabili rispetto a $\omega$ sull'intervallo. 
> Per il teorema di derivazione sotto il segno di integrale (Teorema di Leibniz), è lecito scambiare l'operatore di derivata complessa con l'integrale. Pertanto, la derivata complessa $x'(z)$ esiste ovunque in $\mathbb{C}$ ed è pari a: $$x'(z) = \frac{1}{2\pi} \int_{-\omega_{B}}^{\omega_{B}} j\omega \hat{x}(\omega) e^{j\omega z} d\omega$$
> Esistendo la derivata prima in ogni punto del piano complesso, $x(z)$ è una funzione intera. 
> Ma allora, dal teorema di identità per funzioni analitiche si ottiene che affinché $x(z)≠0$, la funzione non può annullarsi in alcun aperto di $\mathbb{R}$. Ne consegue che $$supp(x) = ℝ$$
- .
	- 2) La durata del singolo campionamento non può essere istantanea
		- Questo risulta evidente solo se la frequenza di campionamento $f_{C}$ è molto alta
		- Anziché avere un pettine di $\delta$ di Dirac, avrò un pettine di rettangoli del tipo $$T(t)=\sum_{k\in \mathbb{Z}}\text{rect}\left[ t_{k}-\frac{T_{W}}{2}, t_{k}+\frac{T_{W}}{2} \right](t)$$dove $T_{W}$ è la lunghezza della "finestra" (window) di acquisizione
			- Ciò comporta che la trasformata di Fourier del pettine sarà composta non da $\delta$, ma da seni cardinali $$\mathcal{F}\,\left[\text{rect}\left[ t_{k}-\frac{T_{W}}{2}, t_{k}+\frac{T_{W}}{2} \right]\right](\omega)=T_{W} \text{sinc}\left( \frac{T_{W}}{2}\omega \right)$$per cui il segnale campionato trasformato risulta diverso $$\hat{X}(\omega)=\frac{2\pi T_{W}}{T_{C}}\sum_{k\in \mathbb{Z}}\text{sinc}\left( \frac{k\,\omega_{C}\,T_{W}}{2} \right)\hat{x}(\omega-k\omega_{_{C}})$$
		- Si noti come il segnale campionato appare deformato maggiormente ad alte frequenze, vicino a $f_{B}$ (in immagine $f_{MAX}$) 
			  ![[scr 2026-05-12 alle 10.48.38.png|500]]
			- Per limitare questo fenomeno bisognerebbe lavorare nelle condizioni$$T_{W}<T_{C}\ll T_{B}=\frac{1}{f_{B}}$$
				- Questo si può ottenre *sovracampionando* il segnale, cioè utilizzando una frequenza di campionamento $f_{C}\gg f_{MAX}$
					- Questo è possibile in quanto oggi gli ADC sono spesso molto veloci
					- Ad esempio, se $f_{C}=10f_{MAX}$ l'errore nel caso peggiore (ovvero nel tempo di apertura $T_{W}=T_{C}$) ha valore massimo di $0.17\%$
	- 3) L'interpolazione a seno cardinale per ricostruire il segnale di partenza non è ideale

### 4.3 - Conversione Analogico-Digitale e Digitale-Analogico

- Per poter trattare i segnali con metodi numerici, è necessario convertirli in digitale
	- La conversione da analogico a digitale comoprende due fasi fondamentali
		- 1) *Campionamento* → si discretizza il segnale nel tempo
		- 2) *Quantizzazione* → si discretizza il segnale nelle ampiezze
			- (vedi [[Fondamenti di Telecomunicazioni]])
			- Come avviene?
				- L'ampiezza dei campioni è divisa in un numero finito di livelli discreti
					- Il numero di livelli $I= 2^b$, dove $b$ è il numero di bit necessari a descrivere l'ampiezza per ogni campionamento
					- Una volta stabilito $I$, ogni campionamento viene approssimato al livello più vicino e dunque rappresentato da $\log_{2} I$ bit
				- La *risoluzione* è data dall'inverso del numero di livelli
			- L'uscita digitale è costituita da una tensione a valori molto precisi
				- Convenzione in comune (logica TTL) → $V_{0}=0V$ per il bit 0, $V_{1}=5V$ per il bit 1
					- In particolare il bit 0 è qualsiasi tensione nell'intervallo $[0V, 0.8V]$ e per il bit 1 $[2V, 5V]$
					- Il segnale digitale $s(t)$ è un'onda quadra che oscilla tra i due valori di tensione $V_{0}$ e $V_{1}$ 
				- Il supporto fisico su cui viaggia questo segnale è variabile
					- a) A più fili paralleli → sono presenti $n_{\, \text{bit}}$ fili, ognuno che trasporta il segnale di un bit nel tempo
						- Se $s(t)=b_{0}(t)b_{1}(t)\dots b_{n}(t)$ ogni cavo trasporta il segnale $b_{i}(t)$
					- b) A un unico pin (es. USB) 
						- In questo caso è presente un multiplexer che alterna i segnali dei vari bit a una frequenza che non causi la perdita di informazione
		  ![[scr 2026-05-12 alle 11.14.18.png]]
  - L'accuratezza di un ADC è data dalla differenza tra il valore dell'uscita digitale e quello dell'entrata analogica
	  - Questa differenza è anche detta errore di quantizzazione
  - Sebbene l'ingresso dell'ADC può essere idealmente qualsiasi grandezza fisica (come la temperatura), considereremo l'ADC con un ingresso già in tensione ($V$) e $n$ uscite in tensione discretizzata $V_{k}(t_{k})$
	  - ADC: $V(t) \to V_{k}(t_{k})$
	  - DAC: $V_{k}(t_{k}) \to V(t)$

#### 4.3.1 - Limiti dei convertitori

- Le non-idealità dei convertitori sono attribuibili a due fonti:
	- a) Discretizzazione dei valori segnale (quantizzazione)
		- Questo comportamento non è un disturbo, è un funzionamento programmatico necessario per il funzionamento dell'ADC
		- L'errore di conversione tra le ampiezze dei segnali in ingresso e in uscita è facilmente calcolabile e manipolabile
			- L'errore massimo in uscita è pari a $\pm 0.5 \,\text{LSB}$ (least significant bit) (cioè se l'uscita è 101 il segnale è compreso tra 100.5 e 101.5)
			- La distribuzione dell'incertezza in questo caso è data da una distribuzione uniforme (a infiniti g.d.l.) di larghezza $\Delta V$, che corrisponde al passo della quantizzazione
	- b) Rumore elettronico e imperfezioni
		- Questi sono propri di ogni convertitore → non possono essere totalmente eliminati
			- Si può però correggere successivamente questa non-idealità
		- Si dividono in 3 categorie:
			- a) Errore di *offset* (cioè di spostamento) → tutti i dati sono traslati di una certa quantità $$V \to V+V_{off}$$
				- Può essere banalmente eliminato tramite una misura di zero
			- b) Errore di *guadagno* → tutti i dati sono dilatati di un certo gain $$V \to gV$$
				- Può essere eliminato tramite una misura di taratura, ma richiede un confronto con un sistema di misura più accurato
			- c) Errore di *non linearità* → il passo di quantizzazione differisce da quello ideale
				- Nell'ipotesi più estrema si giunge ad un errore di omissione, per cui un "gradino" non è presente (e altera tutte le misure pesantemente)
				- Si può misurare in maniera differenziale (cioè vedendo l'errore di ogni singolo passo di quantizzazione) e in maniera integrale (cioè considerando l'errore globale)
				  
		  ![[scr 2026-05-17 alle 09.08.30.png|375]]

#### 4.3.2 - Velocità, risoluzione e accuratezza

- Velocità, risoluzione e accuratezza sono i parametri fondamentali che caratterizzano gli ADC
	- Velocità → frequenza di campionamento ($f_{C}$)
		- Deve essere come già visto più alta possibile e almeno $f_{C}>2f_{B}$ per Nyquists
	- Accuratezza → rappresentata dall'incertezza dovuta al processo di quantizzazione
	- Risoluzione → l'inverso del numero di livelli del quantizzatore
		- Ne esistono due tipi
		- 1) Risoluzione *dimensionale* $\Delta V$
			- È il passo della quantizzazione, dove se $D$ è la *dinamica d'uscita* dell'ADC (ovvero l'insieme dei valori di uscita possibile) e $N$ il numero di livelli è $$\Delta V=\frac{D}{N}$$
			- Di conseguenza l'incertezza di quantizzazione è data da una distribuzione uniforme $$u_{q}(V)=\frac{\Delta V}{\sqrt{ 12 }}$$
				- Si osservi che il rumore comporta un numero di bit effettivo minore
					- Si può infatti definire il numero di bit equivalenti come $$n_{eq}=n-\frac{1}{2}\log_{2}\left( \frac{\sigma^2(N)}{\sigma^2(Q)} \right)$$dove $\sigma^2(N)$ è la varianza del rumore, mentre $\sigma^2(Q)$ la varianza di quantizzazione, pari a $$\sigma^2(Q)=\frac{D^2}{2^{2n} 12 }$$
					- → Non ha senso creare ADC con tanti bit se il rumore è molto alto 
		- 2) Risoluzione *adimensionale* $\delta$
			- È data dall'inverso del numero di livelli $$\delta =\frac{1}{N}$$
			- Si può esprimere in bit on in numero

+ Ovviamente è ottimale aumentare tutte e 3 contemporaneamente ma c'è un trade-off
	+ Solitamente la velocità va a discapito della risoluzione del quantizzatore


### 4.4 - Convertitore digitale → analogico (DAC)

- Il *DAC* (convertitore digitale → analogico) consente di creare una tensione proporzionale ad un valore numerico digitale

+ Lo schema di un DAC molto semplice è il seguente (DAC con *resistenze pesate*) ![[scr 2026-05-17 alle 10.02.56.png]]
	+ Il codice binario in ingresso è rappresentato dagli $n$ interruttori $b_{0},\dots,b_{n}$ 
		+ Il segnale in ingresso si scrive in codice binario come $b_{n}b_{n-1}\dots b_{0}$
	+ Il circuito è un sommatore (in configurazione non invertente), di conseguenza si avrà $$\begin{align}V_{out}&=-R_{F}\left[ b_{n-1}\left( \frac{V_{REF}}{\frac{R}{2^{n}}} \right)+b_{n-2}\left( \frac{V_{REF}}{\frac{R}{2^{n-1}}} \right)+ \dots+b_{1}\left( \frac{V_{REF}}{\frac{R}{2^2}} \right)+b_{0}\left( \frac{V_{REF}}{\frac{R}{2}} \right)  \right] \\&=-\frac{R_{F}V_{REF}}{\frac{R}{2}}[b_{n-1}2^{n-1}+b_{n-2}2^{n-2}+\dots+b_{1}2^1+b_{0}2^0]= \\&=-2 \frac{R_{F}V_{REF}}{R}signal_{(dec)}\end{align}$$
		+ Pertanto $V_{out} \propto signal_{(dec)}$
	+ Si osservi che la realizzazione pratica di un DAC del genere è praticamente impossibile (caso ideale)
		+ Considerando un DAC a $12\, \text{bit}$, produrre un valore di resistenza (del MSB) $2048$ volte maggiore di quello del LSB è inutilmente complicato
		+ Invece, lo stesso effetto lo si può ottenere tramite il circuito seguente (DAC con *resistenze a scala* ![[scr 2026-05-17 alle 10.13.25.png]]
		+ Per mostrare come il funzionamento dei DAC è identico considero un caso semplificato 
			  ![[scr 2026-05-17 alle 10.14.45.png|425]]
			+ a) Nel primo circuito, siamo in una banale configurazione non invertente e perciò $$V_{out, 1}=-V_{REF}b_{n-1} \frac{R_{F}}{2R}$$
			+ b) Nel secondo, risolvendo si ottiene che il ramo $b_{n-2}$ produce una $$V_{out, 2}=-V_{REF}b_{n-2} \frac{R_{F}}{4R}$$
			+ Iterando, si ottiene lo stesso risultato del DAC a resistenze pesate

### 4.5 - Voltmetri e convertitori analogico → digitale (ADC)

- Un *voltmetro* è uno strumento in grado di misurare una tensione
	- Un *ADC* (convertitore analogico → digitale) è in grado di produrre un segnale in bit a partire da un valore di tensione
	- C'è un forte legame tra voltmetri digitali e ADC in quanto i voltmetri digitali moderni sono basati sui ADC
		- Pertanto useremo voltmetri e ADC quasi come sinonimi, sempre intendendo che il voltmetro consiste in un ADC + indicatori 

+ I voltmetri sono di due categorie principali
	+ a) *Differenziali* → effettua la misura di tensione tramite il confronto con una tensione campione, interna allo strumento
		+ Questa tensione viene fatta variare fino a quando eguaglia quella de misurare (nei limiti della risoluzione)
	+ b) *Integrali* → effettua un'integrazione prima del confronto con il riferimento
#### 4.5.1 - Voltmetro potenziometrico

- Il modello più basilare di voltmetro è quello *potenziometrico*
	  ![[scr 2026-05-17 alle 10.39.29.png]]
	- Si misura la tensione incognita, $V_{X}$, comparandola (tramite un op-amp comparatore) con una tensione $V_{R}$ variabile, ottenuta a partire da un partitore della tensione $V_{RIF}$ regolato da potenziometro
		- Tramite un motore, si incrementa (o decrementa) progressivamente la resistenza del circuito per avvicinare $V_{R}$ alla tensione misuranda tramite una retroazione
		- Ai limiti della risoluzione, quando il comparatore "scatta" si ricava tramite la posizione del motore la tensione incognita
		- Le tensioni con polarità opposta si misurano invertendo le connessioni tra i riferimento $V_{RIF}$ e il partitore tramite un deviatore
	- Questo sistema ha diversi limiti
		- a) È un sistema analogico → l'indicatore di tensione (display) non è digitale ma meccanico (lancetta)
		- b) È poco accurato
			- Oltre ai limiti della risoluzione, gli attriti, il guadagno del sistema, e il rumore contribuiscono alla poca accuratezza
			- Di solito non si raggiungono più di 3 cifre significative
#### 4.5.2 - Voltmetro a rampa analogica

- Un altro voltmetro analogico è quello detto a *rampa* analogica 
	  ![[scr 2026-05-25 alle 18.04.51.png]]
	- Il cuore di questo sensore è un componente (spesso un op-amp integratore) che genera una tensione che cresce linearmente nel tempo (a "rampa") tra $V_{m}$ e $-V_{m}$  $$V_{ramp}(t)=(V_{m}-2ktV_{m})$$con $k \in [0,1]$
	- Tramite un orologio interno e due comparatori si ricava la differenza temporale $\Delta t$ tra il momento in cui $V_{ramp}(\bar{t})=V_0=0V$ e quello in cui $V_{ramp}(\bar{t}+\Delta t)=V_{X}$, dove $V_{X}$ è la tensione da misurare
		- Un comparatore compara $V_{ramp}$ e $V_{0}$, un altro $V_{ramp}$ e $V_{X}$
		- La scansione temporale è data da un orologio interno, con un clock molto veloce, che a ogni passo temporale verifica se i due comparatori hanno "scattato"
	- Il numero massimo di livelli è dato da $$N=\frac{T}{T_{clock}}$$
		- $T$ è la durata totale temporale della rampa ($V_{ramp}(T)=-V_{m}$)
		- $T_{clock}$ è il periodo del clock
	- La tensione misuranda $V_{X}$ è proporzionale a $\Delta t$
		- Il suo segno è dato dall'ordine in cui scattano i due comparatori: se scatta prima lo zero, allora è positiva, altrimenti negativa
#### 4.5.3 - Voltmetro (ADC) ad approssimazioni successive

- È la versione digitale e più performante del voltmetro a rampa 
	  ![[scr 2026-05-25 alle 18.04.26.png]]
	- L'idea di base è che anziché ciclare su tutti i valori tra $-V_{m}$ e $V_{m}$, conviene fare una "ricerca binaria" (tecnica di bisezione), estremamente più rapida
		- es. Immagina di dover indovinare un numero tra $0$ e $+15$ ($4\, \text{bit}$)
			- Voltmetro a rampa → tramite confronti decrescenti si chiede "il numero incognito è 15? è 14? è 13? ..."
			- Voltmetro ad approssimazioni successive → splitta l'intervallo della dinamica e chiede "è maggiore o minore di 8?" proseguendo via via in intervalli di ampiezza dimezzata
	- I componenti fondamentali del circuito sono:
		- a) Unità logica → è l'elemento elettronico che propone i valori successivi da confrontare con la tensione incognita, implementando il metodo di bisezione
		- b) DAC → permette di convertire la guess dell'unità logica in un valore di tensione $V_{guess}$
		- c) Comparatore → confronta la tensione incognita $V_{X}$ con la tensione generata dal DAC $V_{guess}$
		- d) Clock → temporizza il circuito
	- es. Immaginiamo di voler misurare una tensione $V_{X}=+3.8203V$
		- Supponiamo che la tensione di fondo scala sia $V_{FS}=10V$, e che il DAC abbia una risoluzione di $18\, \text{bit}$
			- Il DAC converte un numero, espresso in binario ($b_{17}b_{16}\dots b_{1}b_{0}$) in una tensione direttamente proporzionale al suo valore $$V_{guess}=\frac{V_{FS}}{2^{18}}[b_{17}2^{17}+\dots+b_{1}2^1+b_{0}2^0]$$
		- Il processo è il seguente
			- 1) L'unità logica impone come primo confronto quello con la tensione di metà fondo scala $V_{17}=5V$, che corrisponde all'informazione binaria $100\dots000$ ($b_{17}=1$, gli altri zero)
				- Il DAC converte l'informazione binaria in tensione e avviene il confronto
					- Se $V_{X}>V_{17}$ il primo bit rimane $b_{17}=1$ ($V_{X} \in(5V, 10V]$)
					- Se $V_{X}<V_{17}$ il primo bit viene mutato in $b_{17}=0$ ($V_{X} \in [0V, 5V)$)
				- Nel nostro caso $V_{X}<V_{17}$ quindi $b_{17}=1$
			- 2) L'unità logica passa al prossimo confronto, pari al punto medio dell'intervallo selezionato nel passo precedente ($V_{16}=2.5V$, che corrisponde all'informazione binaria $010\dots 000$), cioè pone $b_{16}=1$, lasciando invariato il bit precedente
				- Tramite il confronto anche in questo caso si seleziona il valore di $b_{16}$ ottenendo la prima coppia di bit $b_{17}b_{16}$
			- Proseguendo, dopo altri 16 confronti si ottiene la convergenza al valore di tensione da misurare (in totale 18 confronti, cioè $n_{\text{confronti}}=n_{ \text{bit}}$)  
			  ![[scr 2026-05-17 alle 11.39.08.png]]
	- Le caratteristiche del voltmetro sono sostanzialmente dipese da
		- a) Velocità del DAC → determina la velocità del processo
		- b) Numero di bit del DAC
		- c) Rumore del comparatore
	- Alcuni valori tipici per convertitori di questo tipo sono $v_{sampling}=100 k Sa/s \to 10MSa/s$ e $n_{\, \text{bit}}=12 \, \text{bit} \to 18 \, \text{bit}$
#### 4.5.4 - Voltmetro (ADC) di tipo flash

- Se la priorità è la velocità la soluzione è parallelizzare i confronti, come avviene nell'ADC di tipo *flash* 
	![[scr 2026-05-17 alle 12.00.16.png|450]]
	- La misurazione di una tensione $V_{X}$ a precisione $n$ bit avviene tramite $2^n-1$ confronti contemporanei con una tensione di riferimento $V_{RIF}$
		- I comparatori ricevono in ingresso oltre alla tensione da misurare una tensione via via decrescente di un passo $\Delta V=\frac{D}{N}$
	- Questo viene realizzato tramite $2^n$ resistenze di uguale valore $R$
		- Prima di questa serie, ci sarà una resistenza di valore $\frac{3}{2}R$ per ottenere il primo livello di quantizzazione di ampiezza metà di tutti i successivi
			- Questo fa sì che il confronto sia con il punto medio di ogni intervallo $[V_{n}, V_{n}+\Delta V]$, cioè le tensioni di confronto saranno $\frac{1}{2}\Delta V, \frac{3}{2}\Delta V, \dots$
			- In questo modo si riduce l'errore da $1LSB$ a $\pm \frac{1}{2}LSB$
				- es. Se avessi $V_{X}=0.999V$ e $\Delta V=1V$ senza questo shift di punto medio avrei $V_{misurata}=0V$, invece in questo modo $V_{misurata}=0.5V$
			- La resistenza finale $\frac{R}{2}$ rende la somma delle resistenze $R_{eq}=2^nR$
	- I codici di comparazione in uscita saranno del tipo $00110011110000110011\dots$, cioè costituti da coppie di $0$ e $1$, una per ogni confronto, per un totale di $2^n-1$ bit per codificare un informazione di $n$ bit
		- Per questo, un dispositivo realizza la conversione nell'usuale rappresentazione binaria, contando quante coppie di $1$ sono presenti → si ottiene un segnale a $n$ bit cioè rappresentato da $n$ linee

+ Il limite di questo dispositivo è l'hardware
	+ Infatti il numero di comparatori cresce esponenzialmente
	+ Per questo la risoluzione massima di ADC flash oggi è di $8-10 \, \text{bit}$, ma con velocità di conversione altissime $v_{sampling}=200G Sa/s$
		+ Per le sue velocità elevate viene utilizzato negli oscilloscopi digitali
#### 4.5.5 - Voltmetro (ADC) con struttura pipeline

- È il punto di incontro tra ADC flash e ad approssimazioni successive 
	  ![[scr 2026-05-17 alle 12.34.48.png]]
	- Funziona tramite un *pipelining* (ponendo in serie, "a cascata") più strutture uguali
		- I "blocchi" sono costituiti da un ADC di tipo flash e un DAC, entrambi a $m \, \text{bit}$
			- L'ADC converte il segnale in digitale, fino al massimo della sua risoluzione, e il DAC ottiene il segnale analogico corrispondente
				- Successivamente, la tensione in uscita dal DAC viene sottratta al segnale iniziale (tramite un op-amp differenziale), che produce quindi in uscita l'errore della quantizzazione
				- es. $m=4 \, \text{bit}$ e $V_{X}=12.156V$, con $\Delta V=1V$
					- ADC+DAC produrranno un segnale di $12V$ → l'errore di quantizzazione è $0.156V$
			- Prima e dopo di questi è posto un elemento fondamentale chiamato *sample-and-hold* (SH)
				   ![[scr 2026-05-17 alle 16.59.09.png]]
				- Il segnale in ingresso varia continuamente, ma l'ADC ha bisogno di un tempo (anche se breve) per agire → come fare?
				- Il SH campiona un valore di tensione e lo conserva immutato per permettere all'ADC di funzionare
					- Utilizza un condensatore per immagazzinare la tensione iniziale, dopodichè apre il circuito per mantenere la tensione costante ai capi del condensatore
					- Immediatamente dopo il periodo $T_{sample}$ dell'ADC+DAC richiude il circuito e ottiene un nuovo valore di tensione
				- Il SH ha anche la funzione fondamentale di amplificare il segnale, per farlo ritornare alla dinamica del segnale in ingresso
					- es. $m=4 \, \text{bit}$ e $\Delta V=1V$ ($D=16V$)
						- Alla fine del primo blocco l'errore sarà un valore $V_{1}\in[0V, 1V]$
						- Pertanto il SH applica un gain di $G=16$ per riottenere un valore in $[0V,16V]$
		- I blocchi successivi ripetono lo stesso processo, per un numero totale di $p$ volte, dove $mp=n$ è il numero di bit totale dell'ADC pipeline
			- Nell'ultimo blocco non è presente il DAC, ma l'ADC flash riporta direttamente i valori dei $m \, \text{bit}$ finali
	- I benefici di questo tipo di convertitore sono il suo bilancio tra complessità hardware e velocità
		- Se per un ADC con $n=12 \, \text{bit}$ uno di tipo flash avrebbe impiegato $2^n-1=4095$ op-amp comparatori, per un ADC pipeline con $p=3, m=4$ ne servono solo $p(2^m-1)=45$
		- La velocità di campionamento è minore a quello di un ADC flash ma migliore di un ADC ad approssimazioni successive
			- Oggi lo state of art è $v_{sample}=1GSa/s$ e $n_{\, \text{bit}}=8-14 \, \text{bit}$
		- Un ADC pipeline con $p=2$ è anche detto *semi-flash* (o *half-flash*)
#### 4.5.6 - Principio di integrazione e reiezione al distrurbo

- Per i voltmetri a funzionamento integratore bisogna tenere sempre presente le fluttuazioni della corrente alternata
	- Infatti, la corrente ha valore medio pari a quello efficace solo se l'intervallo considerato è un multiplo intero del periodo della corrente
	- Siccome la nostra corrente è a $f = 50Hz$ sarà necessario che il tempo di integrazione dei voltmetri sarà un multiplo di $T=20ms$

+ Nel caso più generale, suppongo di avere un disturbo di tipo sinusoidale $$V_{d}(t)=V_{0}\sin(\omega t+\varphi)$$
	+ Calcolo ora il valor medio del disturbo integrando su un intervallo $\left[ t_{0}-\frac{T}{2} , t_{0}+\frac{T}{2}\right]$ $$\begin{align}
\bar{V_{d}}&=\frac{V_{0}}{T}\int_{t_{0}-\frac{t}{2}}^{t_{0}+\frac{T}{2}}\sin(\omega t+\varphi)dt \\
&=\frac{V_{0}}{\omega T}\left\{ \cos \left[\omega\left( t_{0}-\frac{T}{2} \right)+\varphi\right] -\cos \left[\omega\left( t_{0}+\frac{T}{2} \right)+\varphi\right]\right\}= \\
&=\frac{V_{0}}{\omega T}2\sin(\omega t_{0}+\varphi)\sin\left( \frac{\omega T}{2} \right)= \\
&=V_{0} \frac{\sin(\pi fT)}{\pi fT}\sin(\omega t_{0}+\varphi) \\
&=V_{0}\text{sinc}(\pi fT)F(t_{0}, \varphi)
\end{align}$$
		- Il risultato dipende sia dall'istante $t_{0}$ di misura, che tramite $F(t_{0}, \varphi)$
		- Se non ci sono ulteriori della fase del disturbo, supponiamo sia uniforme, nell'intervallo $[-\pi, \pi]$
		- In tal caso, lo scarto quadratico medio della funzione $F(t_{0}, \varphi)$ è dato da $$\sigma(F)=\sqrt{ \frac{1}{2\pi}\int_{-\pi}^\pi \sin^2(\omega t_{0}+\varphi)d\varphi}=\sqrt{ \frac{1}{2} }$$
		- Pertanto il valore efficace del disturbo (pari al suo scarto quadratico medio) vale $$V_{d, eff}=\sigma(\bar{V_{d}})=V_{0}\text{sinc}(fT)\sigma(F)=\frac{V_{0}}{\sqrt{ 2 }}\text{sinc}(fT)$$
	- Pertanto sul disturbo, integrando, si applica una pesatura del tipo $\text{sinc}(x)$ dove $x=fT$
		- Il disturbo è massimo se $fT\to 0$, ha massimi relativi, in modulo crescenti se $fT=n+\frac{1}{2}, \, \, n\in \mathbb{N}$, è zero in $fT=n$
		- Solitamente ci si pone nelle condizioni di "caso peggiore" e si valuta il contributo massimo del disturbo ($F=\pm1$) → vale che $$V_{d}=V_{0}\text{sinc}(fT)$$
	- Si definisce *reiezione* al disturbo il rapporto tra l'ampiezza del disturbo originale e l'ampiezza massima dopo l'integrazione $$\begin{align}r&=\frac{V_{0}}{|\text{max}\bar{V}_{d}|}=\frac{(\pi fT)}{|\sin(\pi fT)|} \, \, \, \text{in ampiezza} \\R&=r^2=\frac{(\pi fT)^2}{\sin^2(\pi fT)} \text{in potenza}\end{align}$$
		- Si può disegnare il diagramma di Bode della reiezione $(20\log_{10}R)$ 
			  ![[scr 2026-05-21 alle 15.41.56.png]]
#### 4.5.7 - Voltmetro integratore a doppia rampa

- È il migliore strumento dal punto di vista della sensibilità e dell'accuratezza di una misura in tensione continua
	   ![[scr 2026-05-17 alle 14.12.00.png]]
	- Funzionamento → la misura avviene in 2 fasi
		  ![[scr 2026-05-17 alle 14.12.20.png]]
		- 1) "Salita" → la tensione in ingresso viene integrata per un tempo $T_{U}$ fissato
			- L'interruttore $S$ posto in parallelo al condensatore $C$ viene aperto
			- Il commutatore $S_{IN}$ seleziona la variabile $V_{X}$ che viene integrata, fino a quando la logica di controllo determina la fine del tempo $T_{U}$
				- Questa conta un certo numero di clock dell'oscillatore di riferimento
				- Di solito la scelta del tempo $T_{U}=100ms$, in modo che sia multiplo del periodo della corrente alternata europea ($50Hz$) e americana ($60Hz$) 
					- Siccome in tutte le correnti continue c'è sempre un rumore di fondo dovuto all'AC di casa (campo e-m irradiato), questo viene annullato dal multimetro
			- Alla fine di questo tempo, il condensatore è carico e ha una certa differenza di potenziale $V_{0}$ $$V_{0}=V_{C}(T_{U})=-\frac{V_{X}T_{U}}{RC}$$
				- La carica è lineare perchè la corrente in ingresso è $V_{X}$ costante 
		- 2) "Discesa" → si determina il tempo di scaricamento $T_{D}$ e da questo la tensione $V_{X}$
			- Il commutatore $S_{IN}$ sceglie ora la variabile $V_{R}$, tensione di riferimento, che ha la polarizzazione opposta rispettto a $V_{X}$
			- Questo fa sì che il condensatore si scarichi linearmente con rate fissato determinato da $V_{R}$ $$0=V_{0}-\frac{V_{R}T_{D}}{RC}$$da cui segue la formula $$V_{X}=-V_{R} \frac{T_{D}}{T_{U}}=-V_{R} \frac{N_{D}}{N_{U}}$$
				- Considerando $T_{U}$ e $T_{D}$ noti con precisione entro l'incertezza del clock (che però è molto piccola e uniforme), l'unica incertezza è data dalla conoscenza del riferimento $V_{R}$
					- In realtà sarebbe da considerare anche il jitter del clock, ovvero quanto le onde quadre del clock si allargano e si stringono nel tempo
	- La risoluzione del voltmetro è data da $$\Delta V=\frac{|V_{R}|}{N_{U}}$$ e l'incertezza è $$u_{r}^2(V_{X})=u_{r}^2(V_{R})+u_{r}^2(N_{D})$$ dove $u_{r}(N_{D})=\frac{1}{\sqrt{ 12 }N_{D}}$ è molto piccolo
	- Non è affatto come l'ADC flash, per questo viene usato solo per tensioni continue
		- È utilizzato nei multimetri planari e da banco (da $3.5$ a $8.5$ cifre decimali)
		- Nel caso di necessità di alta precisione il processo è modificato, con una tecnica a multi rampa per ridurre il rumore del comparatore	
#### 4.5.8* - Voltmetro (ADC) a sovracampionamento Sigma-Delta ($\Sigma\Delta$)

- Consente di ottenere elevatissima risoluzione ($n = 16 \div 24\,\text{bit}$) e reiezione al rumore su bande moderate (audio e strumentazione di precisione), scambiando la precisione richiesta nei componenti analogici con la velocità di campionamento e l'elaborazione numerica
	- L'architettura si fonda su tre principi metrologici:
		- 1) *Sovracampionamento* (*Oversampling*, OSR) → campionamento a frequenza $f_{s} \gg 2f_{B}$ molto superiore a quella di Nyquist
		- 2) *Modellamento del rumore* (*Noise Shaping*) → tramite un anello di retroazione con integratore si filtra selettivamente la densità spettrale del rumore di quantizzazione, spingendolo fuori dalla banda utile
		- 3) *Filtraggio numerico e decimazione* → un filtro digitale passa-basso elimina il rumore ad alta frequenza e riduce la frequenza di campionamento alla frequenza di Nyquist target, incrementando la risoluzione effettiva in bit

+ I componenti fondamentali del circuito (modulatore del $1^\circ$ ordine) sono:
	+ a) *Nodo sommatore/sottrattore* ($\Delta$) → esegue la differenza tra la tensione di ingresso $V_{in}(t)$ e la tensione analogica di retroazione $V_{DAC}(t)$ generando il segnale di errore $$e(t) = V_{in}(t) - V_{DAC}(t)$$
	+ b) *Integratore analogico* ($\Sigma$) → circuito op-amp con condensatore (polo nell'origine), che integra l'errore nel tempo $$V_{int}(t) = \frac{1}{RC}\int_{0}^t e(\tau)\,d\tau$$
	+ c) *Quantizzatore a 1 bit* (comparatore + latch clocked a $f_{s}$) → a ogni colpo di clock confronta $V_{int}$ con la massa ($0\,\text{V}$)
		+ Se $V_{int} > 0\,\text{V} \implies y_{k} = 1$
		+ Se $V_{int} < 0\,\text{V} \implies y_{k} = 0$
		+ Produce un flusso seriale a 1 bit di tipo PDM (*Pulse Density Modulation*)
	+ d) *DAC a 1 bit in retroazione* → pilotato dall'uscita binaria $y_{k}$, restituisce al nodo sottrattore una tensione bipartita: $$V_{DAC} = \begin{cases} +V_{REF} & \text{se } y_{k}=1 \\ -V_{REF} & \text{se } y_{k}=0 \end{cases}$$
	+ e) *Filtro digitale e decimatore* (fuori dall'anello analogico) → calcola la media pesata del flusso PDM, taglia le frequenze fuori banda ed effettua il downsampling a $f_{Nyquist}$

- es. Esempio numerico esplicito del funzionamento del modulatore:
	- Immaginiamo di voler quantizzare una tensione continua incognita $V_{in} = +0.6\,\text{V}$
	- Poniamo la tensione di riferimento $V_{REF} = 1\,\text{V}$ (dinamica di ingresso $[-1\,\text{V}, +1\,\text{V}]$)
	- Il DAC a 1 bit genera $+1\,\text{V}$ se riceve il bit $1$, oppure $-1\,\text{V}$ se riceve il bit $0$
	- Poniamo per semplicità il guadagno dell'integratore $\frac{T_{s}}{RC} = 1$ e valore iniziale dell'integratore $V_{int}[0] = 0\,\text{V}$
	- A ogni colpo di clock $k$, la dinamica discreta evolve secondo:
		$$V_{int}[k] = V_{int}[k-1] + (V_{in} - V_{DAC}[k-1])$$
		$$y_{k} = \begin{cases} 1 \implies V_{DAC}[k] = +1\,\text{V} & \text{se } V_{int}[k] \geq 0\,\text{V} \\ 0 \implies V_{DAC}[k] = -1\,\text{V} & \text{se } V_{int}[k] < 0\,\text{V} \end{cases}$$
	- Tracciamo i singoli passi di campionamento:
		- 1) Passo $k=1$: $V_{int}[0] = 0\,\text{V} \geq 0 \implies y_{0} = 1 \implies V_{DAC}[0] = +1\,\text{V}$
			- Errore istantaneo: $e = 0.6 - 1.0 = -0.4\,\text{V}$
			- Integratore: $V_{int}[1] = 0 + (-0.4) = -0.4\,\text{V}$
		- 2) Passo $k=2$: $V_{int}[1] = -0.4\,\text{V} < 0 \implies y_{1} = 0 \implies V_{DAC}[1] = -1\,\text{V}$
			- Errore istantaneo: $e = 0.6 - (-1.0) = +1.6\,\text{V}$
			- Integratore: $V_{int}[2] = -0.4 + 1.6 = +1.2\,\text{V}$
		- 3) Passo $k=3$: $V_{int}[2] = +1.2\,\text{V} \geq 0 \implies y_{2} = 1 \implies V_{DAC}[2] = +1\,\text{V}$
			- Errore istantaneo: $e = 0.6 - 1.0 = -0.4\,\text{V}$
			- Integratore: $V_{int}[3] = 1.2 - 0.4 = +0.8\,\text{V}$
		- 4) Passo $k=4$: $V_{int}[3] = +0.8\,\text{V} \geq 0 \implies y_{3} = 1 \implies V_{DAC}[3] = +1\,\text{V}$
			- Errore istantaneo: $e = 0.6 - 1.0 = -0.4\,\text{V}$
			- Integratore: $V_{int}[4] = 0.8 - 0.4 = +0.4\,\text{V}$
		- 5) Passo $k=5$: $V_{int}[4] = +0.4\,\text{V} \geq 0 \implies y_{4} = 1 \implies V_{DAC}[4] = +1\,\text{V}$
			- Errore istantaneo: $e = 0.6 - 1.0 = -0.4\,\text{V}$
			- Integratore: $V_{int}[5] = 0.4 - 0.4 = 0.0\,\text{V}$
		- 6) Passo $k=6$: $V_{int}[5] = 0.0\,\text{V} \geq 0 \implies y_{5} = 1 \implies V_{DAC}[5] = +1\,\text{V}$
			- Errore istantaneo: $e = 0.6 - 1.0 = -0.4\,\text{V}$
			- Integratore: $V_{int}[6] = 0.0 - 0.4 = -0.4\,\text{V}$
		- 7) Passo $k=7$: $V_{int}[6] = -0.4\,\text{V} < 0 \implies y_{6} = 0 \implies V_{DAC}[6] = -1\,\text{V}$
			- Errore istantaneo: $e = 0.6 - (-1.0) = +1.6\,\text{V}$
			- Integratore: $V_{int}[7] = -0.4 + 1.6 = +1.2\,\text{V}$
	- La sequenza binaria d'uscita è: $1, 0, 1, 1, 1, 1, 0, 1, 1, 1\dots$
		- Su una finestra temporale di $N = 10$ campioni si contano $N_{1} = 8$ (uni) e $N_{0} = 2$ (zeri)
		- La tensione ricostruita tramite la media del decimatore digitale è:
			$$\bar{V}_{out} = \frac{N_{1}(+V_{REF}) + N_{0}(-V_{REF})}{N} = \frac{8(+1\,\text{V}) + 2(-1\,\text{V})}{10} = \frac{+6.0\,\text{V}}{10} = +0.60\,\text{V}$$
		- Il valore medio converge esattamente al valore analogico reale $V_{in} = 0.6\,\text{V}$!

- Modellizzazione matematica nel dominio discreto ($Z$):
	- Discretizzando con periodo di campionamento $T_{s} = \frac{1}{f_{s}}$, l'integratore corrisponde a un accumulatore ritardato: $$H(z) = \frac{z^{-1}}{1 - z^{-1}}$$
	- Il quantizzatore a 1 bit viene linearizzato modellandolo come sorgente additiva di rumore di quantizzazione bianco $q[n]$, scorrelato dal segnale
	- L'equazione di bilancio dell'anello nel dominio $Z$ è:
		$$Y(z) = H(z)[X(z) - Y(z)] + Q(z)$$
	- Risolvendo per l'uscita $Y(z)$ si ottiene:
		$$Y(z) = \frac{H(z)}{1 + H(z)}X(z) + \frac{1}{1 + H(z)}Q(z)$$
	- Sostituendo $H(z)$:
		- La funzione di trasferimento del segnale (STF, *Signal Transfer Function*) è:
			$$\text{STF}(z) = \frac{\frac{z^{-1}}{1-z^{-1}}}{1 + \frac{z^{-1}}{1-z^{-1}}} = z^{-1}$$
			→ Il segnale utile passa inalterato, subendo unicamente un ritardo di un periodo di clock $T_{s}$
		- La funzione di trasferimento del rumore (NTF, *Noise Transfer Function*) è:
			$$\text{NTF}(z) = \frac{1}{1 + \frac{z^{-1}}{1-z^{-1}}} = 1 - z^{-1}$$
			→ Corrisponde a un filtro alle differenze prime, ovvero un **filtro passa-alto** sul rumore

+ Analisi spettrale e abbattimento dell'incertezza di quantizzazione:
	- Valutando la NTF sull'asse delle frequenze ($z = e^{j\omega T_{s}} = e^{j 2\pi \frac{f}{f_{s}}}$):
		$$|\text{NTF}(f)| = |1 - e^{-j 2\pi \frac{f}{f_{s}}}| = 2\left|\sin\left(\frac{\pi f}{f_{s}}\right)\right|$$
		- Per le basse frequenze interne alla banda utile ($f \ll f_{s}$):
			$$|\text{NTF}(f)| \approx \frac{2\pi f}{f_{s}}$$
			→ La densità spettrale del rumore di quantizzazione è nulla in continua ($f=0$) e cresce con la frequenza
	- Definiamo l'*Oversampling Ratio* ($OSR$):
		$$OSR = \frac{f_{s}}{2f_{B}}$$
		dove $f_{B}$ è la banda utile del segnale
	- La potenza del rumore di quantizzazione residuo nella banda utile $[0, f_{B}]$ vale:
		$$\sigma_{q, inband}^2 = \int_{0}^{f_{B}} S_{q}(f) |\text{NTF}(f)|^2 df \approx \sigma^2(Q) \frac{\pi^2}{3 (OSR)^3}$$
		dove $\sigma^2(Q) = \frac{\Delta V^2}{12}$ è la varianza del quantizzatore uniforme ideale
	- Legge di scala e guadagno in risoluzione:
		- In un modulatore del $1^\circ$ ordine ($\sigma_{q}^2 \propto \frac{1}{OSR^3}$), ogni raddoppio di $OSR$ produce un incremento di $+9\,\text{dB}$ di SNR, pari a **$+1.5\,\text{bit}$**
		- In un modulatore del $2^\circ$ ordine (due integratori in serie, $\text{NTF}(z) = (1-z^{-1})^2$):
			$$\sigma_{q, inband}^2 \approx \sigma^2(Q) \frac{\pi^4}{5 (OSR)^5}$$
			→ Ogni raddoppio di $OSR$ produce un incremento di $+15\,\text{dB}$ di SNR, pari a **$+2.5\,\text{bit}$ effettivi**!

- Vantaggi e limiti metrologici:
	- a) *Linearità intrinseca (DNL = 0)* → il quantizzatore e il DAC a 1 bit posseggono solo due livelli ($\pm V_{REF}$); per due punti passa una e una sola retta. Si eliminano per principio geometrico gli errori di non linearità differenziale (DNL) e integrale (INL) dovuti alle tolleranze di processo dei DAC a resistenze pesate/scala del SAR
	- b) *Rilassamento del filtro anti-aliasing analogico* → poiché $f_{s} \gg 2f_{B}$, le repliche spettrali centrate su $k f_{s}$ sono isolate a frequenze altissime; non occorrono filtri passa-basso analogici ad altissima pendenza (che introdurrebbero distorsioni di fase e ritardi di gruppo non lineari), ma basta un semplice polo RC passivo
	- c) *Limiti* → inapplicabile per larghezze di banda elevatissime (RF, microonde); rischio di instabilità per modulatori di ordine $> 2$ (risolto tramite architetture MASH, ovvero cascata di modulatori stabili del $1^\circ$ o $2^\circ$ ordine)
	- *Parametri tipici (audio high-end / strumentazione)*: $f_{s} = 2.8\,\text{MHz} \div 11.2\,\text{MHz}$, $OSR = 64 \div 256$, risoluzione finale $n = 24\,\text{bit}$, frequenza di uscita decimata $f_{out} = 44.1\,\text{kHz} \div 192\,\text{kHz}$, $\text{ENOB} \approx 20 \div 22\,\text{bit}$, dinamica $> 120\,\text{dB}$.

### 4.6 - Multimetri digitali

- I *multimetri* sono strumenti multifunzione in grado di leggere tensioni, correnti e resistenze
	- Attraverso un selettore meccanico si può scegliere il tipo di misura da effettuare e il fondo scala
#### 4.6.1 - Rilevatori di valore efficace

- Il voltmetro a doppia rampa funziona solo con correnti continue (DC) o lentamente variabili
	- Grazie alla scelta del tempo $T_{U}$, si rimuove il rumore della corrente alternata irradiata

+ Per misurare invece il multimetro con correnti rapidamente variabili, c'è bisogno di un dispositivo detto *rilevatori di valore efficace* (o convertitore *ACDC*)
	+ Sono dispositivi che hanno in input una corrente alternata a una certa $f$, in output il suo valore efficace $$V_{RMS}=\sqrt{ <V^2(t)> }$$
	+ Possono essere di 3 tipi:
		+ a) Termico → si genera una corrente continua che produce lo stesso riscaldamento via effetto Joule, misurato tramite una termo-coppia
		+ b) Analitico → si effettua il quadrato del segnale in ingresso, lo si media con un filtro passa-basso e si estrae la radice quadrata
		+ c) Numerico → si campiona il segnale ad alta frequenza e si calcola il valore efficace come $V_{RMS}=\sqrt{ \frac{1}{n}\sum_{i=1}^n v_{i}^2 }$
#### 4.6.2 - Misure di tensione

- Nel misurare la tensione è cruciale essere vigili nella scelta del fondo scala 
	  ![[scr 2026-05-17 alle 15.25.44.png]]
	- Infatti il voltmetro ha un fondo scala di $200mV$ → se una tensione superiore entrasse andrebbe in saturazione (e si romperebbe)
		- Per fortuna, c'è un modo per scalare la tensione in ingresso per rispettare la dinamica desiderata
	- La misura di tensione avviene tramite un partitore di tensione con una serie di resistenze
		- La tensione da misurare è la $V$ in figura, mentre la tensione effettivamente in ingresso al multimetro è quella ai capi della serie di resistori sotto il selettore
		- Siccome $$V_{IN}=V \frac{\sum_{i=j}^nR_{i}}{\sum_{i=1}^nR_{i}}$$selezionando la $j$ di inizio posso modificare la tensione in ingresso
			- es. Se voglio misurare una tensione di $V=170V$, sceglierò la dinamica di $200V$
				- Siccome la resistenza totale ai cui capi è presente la tensione in ingresso è $R_{A}=10k\Omega$, dal partitore di tensione la corrente in ingresso sarà moltiplicata di un fattore $\frac{R_{A}}{R_{TOT}}=\frac{10k\Omega}{10M\Omega}=\frac{1}{1000}$, rispettando così il fondo scala del voltmetro
	- Siccome la resistenza totale è in genere molto grande (in figura $R_{TOT}=10M\Omega$ ma si arriva anche a $10G\Omega$ in alcuni modelli) porre in parallelo alla tensione da misurare un resistore così grande altererà in maniera trascurabile il circuito
		- Bisogna considerare questa perturbazione solo in casi di alta impedenza
#### 4.6.3 - Misure di corrente

- La procedura è simile, ma si inserisce il multimetro come elemento circuitale in serie alla corrente desiderata 
	  ![[scr 2026-05-17 alle 15.28.22.png]]
	- È una procedura più invasiva, specialmente per bassi valori di resistenza
	- La resistenza è detta *shunt*
#### 4.6.4 - Misura di resistenza

- La misura di resistenza avviene sempre con la catena di resistenza della misura di tensione, ma in modo diverso 
	  ![[scr 2026-05-17 alle 15.38.40.png]]
  - Le due tensioni, $V_{X}$ e $V_{R}$ del voltmetro vengono prelevate dalle due resistenze in figura $R_{R}$ e $R_{X}$ (resistore da misurare)
	  - Inoltre in entrambi i resistori viene fatta scorrere la stessa corrente continua $I$ 
	  - Pertanto, il rapporto tra le due resistenze misurato dal voltmetro sarà $$\frac{V_{X}}{-V_{R}}=\frac{IR_{X}}{IR_{R}}=\frac{R_{X}}{R_{R}}=\frac{N_{D}}{N_{u}}$$pertanto $$R_{X}=R_{R}\frac{N_{D}}{N_{U}}$$
	- Per questa misura è fondamentale che il circuito che si vuole misurare NON sia alimentato
## 5 - Schede e sistemi di acquisizione dati

### 5.1 - introduzione

- Tramite le schede di acquisizione è possibile realizzare l'acquisizione di qualsiasi grandezza fisica, tramite trasduttori che convertono la grandezza in una tensione ad essa direttamente proporzionale
	- È un sistema automatico, costituito da più strumenti connessi e gestito da un calcolatore
### 5.2 - Struttura di un sistema di acquisizione dati

- Un sistema di acquisizione dati è costituito da 4 fasi distinte: 
	  ![[scr 2026-05-17 alle 15.48.35.png]]
	- 1) *Trasduzione* → si converte una grandezza fisica in una elettrica (corrente, tensione o impedenza) con uno o più trasduttori
	- 2) *Condizionamento* → il segnale elettrico viene adattato per essere un segnale di tensione compatibile con le caratteristiche della DAQ
	- 3) *Scheda DAQ* (Data Acquisition Board) → acquisizione (campionamento e quantizzazione) del segnale
	- 4) *Calcolatore* → permette di configurare il processo di misura (programmare la DAQ) e visualizzare i dati
### 5.3 - Scheda di acquisizione dati (DAQ)

- Una scheda di acquisizione è composta da diversi processi
	  ![[scr 2026-05-17 alle 16.06.35.png]]
	- a) Acquisizione di ingressi e uscite analogici (analog I/O)
		- Parametri caratteristici → numero di canali in ingresso e uscita, velocità di campionamento ADC, numero di bit ADC, valori di fondo scala ADC, risoluzione DAC
	- b) Acquisizione di ingressi e uscite digitali (digital I/O)
		- Parametri caratteristici → numero di canali in ingresso e uscita
	- c) Produzione di segnali di sincronismo analogici (*timer*) e digitali (*trigger*)
	- d) Bus PC → è un protocollo di comunicazione che permette di comunicare con il computer
#### 5.2.1 - Acquisizione analogica

- L'acquisizione analogica è composta da 5 elementi fondamentali
	  ![[scr 2026-05-17 alle 16.18.04.png]]
	- 1) Canali in ingresso analogici
	- 2) *Multiplexer* (MUX) → consente di collegare $N_{CH}$ canali indipendenti in un'unica connessione
	- 3) *Amplificatore per strumentazione* (INA, Instrumentation Amplifier) → amplifica i segnali per sfruttare pienamente la dinamica dell'ADC
	- 4) Campionamento e conversione (SH + ADC) → trasforma il segnale analogico in digitale
		-  Solitamente si usa un convertitore ad approssimazioni successive, con $n=12\to16\, \text{bit}$ e $v_{sample}≈MSa/s$
		- È l'elemento più costoso del setup e quasi sempre è uno solo per DAQ
			- Alcune schede più costose hanno più ADC, per aumentare la frequenza di campionamento di ogni segnale
	- 5) *Registro di memoria* (memory buffer) di tipo FIFO (First In First Out)
		- Sono memorizzati i dati che verranno poi inviati al PC tramite il bus dati
##### 5.2.1.1 - Canali di ingresso analogici

- Possono essere di due tipologie:
	- a) A singolo canale (*single-handed*)
		- Tutte le $N_{CH}$ tensioni sono riferite allo stesso riferimento di massa, che può essere:
			- i) AGND (Analog GrouND) → riferimento di massa interno alla scheda (modalità *referenced* single-handed)
			- ii) In alcune schede esiste un canale dedicato AISENSE (Analog Input SENSE) → puoi mandare in input anche il riferimento di massa (modalità *non-referenced* single-handed)
		- Viene utilizzato con misure di una certa ampiezza (almeno centinaia di $mV$)
	- b) Differenziali (*differential*)
		- Ognuno dei $\frac{N_{CH}}{2}$ segnali ha il suo riferimento di terra differente
			- ($\frac{N_{CH}}{2}$ segnali $+\frac{N_{CH}}{2}$ riferimenti di terra $=N_{CH}$ numero di canali massimi del multiplexer)
			- Questo permette una riduzione dei disturbi molto superiore
##### 5.2.1.2 - Multiplexer (MUX)

- Permette di utilizzare un unico ADC con $N_{CH}$ segnali in ingresso
	- → Alterna i segnali periodicamente, alla frequenza $$f_{CH}=\frac{f_{ADC}}{N_{CH}}$$dove:
		- $f_{CH}$ è la frequenza di campionamento di ogni singolo segnale
		- $f_{ADC}$ è la frequenza massima di campionamento dell'ADC
		- Per ricostruire pienamente il segnale di ogni ingresso dovrò verificare che $\forall i=1,\dots ,N_{CH}$ $$f_{CH, i}=\frac{f_{ADC}}{N_{CH}} >f_{NYQUIST, i}=2f_{B, i}$$
	- È sincronizzato con il *clock* della DAQ (tramite i trigger digitali)
	- Solitamente il numero di canali tipici sono $N_{CH}=8\to 80$
##### 5.2.1.3 - Amplificatore per strumentazione (INA)

- Ha la caratteristica particolare di essere un insieme di op-amp con guadagno $G$ programmabile
	- Questo rende la scheda molto flessibile, anche per segnali di ampiezza molto diversa tra loro
		- Il guadagno si seleziona via software, tra un set di valori disponibili, in modo da massimizzare l'uso della dinamica dell'ADC senza saturarla
		- Idealmente, $$G_{i}=\frac{D_{ADC}}{D_{i}}$$
	- Grazie all'amplificazione, la risoluzione dell'$i$-esimo segnale viene portata ad essere $$\Delta V_{i}=\frac{\Delta V_{ADC}}{G_{i}}=\frac{D_{ADC}}{2^nG_{i}}$$dove $n$ è il numero di bit dell'ADC e $\Delta V_{ADC}$ la sua risoluzione
	- Una caratteristica tipica dell'INA è lo *stew-rate* → è la massima pendenza con cui posso far variare la tensione di uscita 
		  ![[scr 2026-05-17 alle 16.57.06.png]]
		- Uno stew-rate alto è fondamentale per avere canali con valori di tensione sensibilmente diversi senza errori (overshoot = sovraelongazioni o ringing = oscillazioni)
##### 5.2.1.4 - Registro FIFO

- È un buffer di memoria che salva le strighe di bit appena convertiti
	- Questi possono essere inviati:
		- a) Direttamente alla RAM (*DMA*, direct memory access)
			- Non passano per il processore
		- b) Per via di I/O programmati
	- Se la frequenza di acquisizione dati è maggiore della velocità di trasferimento dei dati al PC, la quantità di dati acquisibili in una sequenza continua è limitata
### 5.3 - Protocolli di comunicazione

- Ci sono diversi protocolli con cui la DAQ comunica in digitale tra strumento e strumento, o tra strumento e computer
	- Si differenziano per velocità e complessità di implementazione
	- La distinzione di base è tra:
		- a) Protocolli seriali → i bit della stringa sono inviati sequenzialmente ($n \, \text{bit}$, 1 filo)
			- Sono utilizzati nelle connessioni a bassa velocità
		- b) Protocolli paralleli → i bit della stringa sono inviati in parallelo ($n \, \text{bit}$, $n$ fili)

+ 1) RS-232 → seriale
	   ![[scr 2026-05-17 alle 17.23.32.png]]
	+ È piuttosto lenta e datata
		+ È usato prevalentemente per le misure a bassa frequenza (es. temperatura)
	- La comunicazione avviene attraverso 3 linee
		- a) *RX* → ricezione
		- b) *TX* → trasmissione
		- c) *GND* → massa
			- A questa sono riferiti i livelli di tensione di RX e TX
	- Utilizza una convenzione vecchia per i livelli di tensione
		- Bit 0 nell'intervallo $[3V, 12V]$, bit 1 in $[-3V, -12V]$
	- È point-to-point → i due strumenti possono parlare solo tra loro e non con il mondo esterno
		- es. Ho un oscilloscopio, un voltmetro e il computer
	- Metriche fondamentali
		- a) *Baud rate* → rate di trasmissione $\, \frac{\text{bit}}{s}$
		- b) Data bits (= 7) → numero di bit del segnale (ogni numero è un pacchetto)
		- c) Stop bit → indicano il numero di bit che indicano la fine della comunicazione di un singolo pacchetto di informazione
		- d) Parry bit (= 1) → numero di bit usati come cheksum per pacchetto
			- I controlli sono basati sulla parità o sono un bit fisso (alto o basso)
		- Quindi un pacchetto è formato da data bits + parry bit + stop bit

+ 2) RS-422 → parallelo, differenziale
	- Dentro c'è una linea di massa e più linee positive
		- È un protocollo a indirizzi → posso collegare sullo stesso bus fino a 15/16 strumenti diversi
		- Ognuno manderà la tensione esclusivamente tra 2 pin
			- es. Lo strumento ha relazione univoca ad un pin con cui comunicare

  
-  3) IEEE-488 (GPIB, general purpose interface bus) → parallelo 
	  ![[scr 2026-05-17 alle 18.10.29.png]]
	- Standardizzata nel 1975 dall'IEEE
	- Obiettivi principali:
		- Interconnessione su distanze limitate (rete locale)
		- Minimizzare le limitazioni sulle prestazioni dei singoli strumenti
		- Scambio di informazioni ad alta velocità
		- Integrazione tra strumenti di diversi costruttori
	- Caratteristiche elettriche (IEEE-488.1):
		- Bus formato da: 8 linee dati (DIO1–8) + 3 linee di _handshaking_ + 5 linee di gestione dell'interfaccia
		- Trasmissione: byte seriale, bit parallelo, asincrona controllata da handshaking
		- Codice ASCII a 7 bit + 1 bit di parità
		- Max 15 dispositivi collegabili al bus, max distanza 20m
		- Velocità massima 1 Mbyte/s (tipicamente 250–500 kbyte/s)
	- Ognuno dei dispositivi sul bus ha diversi ruoli possibili:
		- a) _Listener_ (ascoltatore): riceve solo i dati dal bus, max 14 contemporanei
		- b) _Talker_ (parlatore): trasmette dati sul bus → solo 1 attivo per volta
		- c) _Controller_: gestisce la comunicazione, assegna i ruoli
			- Di solito il PC ricopre il ruolo di system controller
			- È possibile usare l'IEEE-488 anche senza controller, basta solo un trasmettitore e un ricevitore
		- d) _Idler_: ozioso, non partecipa ma legge le info di servizio del controllore
	- Ogni dispositivo ha un indirizzo numerico univoco (indirizzo primario)

+ 3) USB (_Universal Serial Bus_) → seriale, differenziale 
	- Interfaccia seriale sviluppata negli anni '90
	- Caratteristiche:
		- Collega fino a 127 dispositivi verso un unico calcolatore (compresi hub di connessione)
		- Alta immunità a rumore e disturbi
		- Architettura asimmetrica: un gestore + periferiche collegate ad albero
		- Esiste una linea di alimentazione integrata (a 5V) per periferiche a bassa potenza
		    - Periferiche ad alta potenza devono essere alimentate separatamente
		- Funzionalità: *Plug and play* + *hot swap* (rimozione a caldo senza riavvio)
	- Pin:
		- 1) VBUS → alimentazione (5 V)
		- 2) D- → ricezione dati 
		- 3) D+ → trasmissione dati
		- 4) GND → riferimento di massa
	- Connettori: Type-A, Type-B, Mini-A/B, Micro-A/B → tutti half-duplex fino a USB 2.0
		- Da USB 3.0 in poi: aggiunta seconda linea di comunicazione → full-duplex
		- USB Type-C (introdotto con USB 3.1): reversibile (inseribile in entrambi i versi), 24 pin, supporta segnali video (>5 Gbps)
	- Quando un dispositivo si connette all'albero, gli viene assegnato un indirizzo logico
		- Dopo la sincronizzazione con il clock, il dispositivo deve dichiarare quali dati vuole trasferire
		- a) *Control*: operazioni di comandi e stato
		- b) *Interrupt*: latenze garantite, pochi dati → tipico per mouse e tastiere
		- c) *Bulk*: latenze non garantite, grandi pacchetti → tipico per stampanti
		- d) *Isochronous*: streaming continuo → tipico per webcam
	- USB Type-C è anche standard di alimentazione: molti produttori hanno abbandonato i connettori proprietari in favore del Type-C
## 6 - Oscilloscopio

### 6.1 - Introduzione

- L'oscilloscopio è uno strumento che permette la visualizzazione grafica dell'andamento nel tempo di segnali
	- Permette di ricavare informazioni non solo dal punto di vista qualitativo (forma d'onda, distorsioni ...) ma anche dal punto di vista quantitativo (misure di ampiezza, di tempo ...)
	- Ne esistono due categorie
		- a) Oscilloscopio *analogico*
		- b) Oscilloscopio *digitale*
### 6.2 - Oscilloscopio analogico

- È un oscilloscopio fondato sul funzionamento del tubo a raggi catodici
	- È stato inventato da Braun nel 1898, oggi è diventato però obsoleto
	- È ricco di controlli nel suo pannello frontale 
		  ![[scr 2026-05-17 alle 18.27.47.png|675]]
		 - Si può modificare l'ampiezza del segnale sullo schermo (amplificazione verticale), modificare la velocità di scansione (base dei tempi) e gestire la sincronizzazione
	- Funzionamento → è basato sul tubo catodico (CRT) 
		  ![[scr 2026-05-17 alle 18.35.26.png]]
		- Un tubo in vetro sottoposto a ultravuoto genera un fascio di elettroni veloci
			- Un catodo (C), costituito da un materiale conduttore ad altissima temperatura, produce $e^-$ per effetto termonionico
			- Gli $e^-$ sono attratti da un anodo, sviluppato in diverse sezioni ($A_{1}$, $A_{2}$, $A_{3}$) presenti lungo il tubo → gli $e^-$ vengono accelerati e il flusso focalizzato
			- Tra il catodo e l'anodo è presente una griglia (G), utile a regolare l'intensità del flusso
		- Successivamente, una sezione di deflessione (nelle direzioni X e Y) tramite delle differenze di potenziale deviano gli $e^-$ per fargli prendere una precisa direzione
		- Infine, gli $e^-$ colpiscono la superficie opposta del CRT, dove è presenta uno strato di fosfori
			- Questi rilasciano fotoni nel visibile se interagiscono con un $e^-$ → appare luce sullo schermo
	- L'oscilloscopio analogico non viene più prodotto perché molto limitato
		- a) La banda del segnale doveva essere limitata (a centinaia di $MHz$)
			- Questo perché per deflettere il segnale sopra quella banda si sarebbe dovuta applicare una differenza di potenziale di centinaia di $V$
		- b) Era impossibile acquisire e segnale i segnali, come manipolarli ed elaborarli
		- c) L'interfaccia era molto limitata
### 6.3 - Oscilloscopio digitale (DSO)

- Gli oscilloscopi digitali (o DSO, digital storage oscilloscope) sono lo standard odierno 
	  ![[scr 2026-05-17 alle 18.47.35.png]]
	- Funzionamento → basato sul campionamento e alla conversione del segnale
		- Un aspetto chiave dell'oscilloscopio risiede nella sincronizzazione (trigger) che consente di ripetere le acquisizioni in maniera ordinata
			- È ciò che contraddistingue un oscilloscopio da un banale data logger (acquisizione di un segnale)
			- I segnali sono ricostruiti sotto specifici constraint temporali
		- Il processo di misura è costituito da 4 fasi:
			- 1) Conversione analogico → digitale (condizionamento analogico, campionamento e quantizzazione)
			- 2) Memorizzazione dei campioni
			- 3) Elaborazione numerica e ricostruzione temporale del segnale
			- 4) Visualizzazione del segnale
				- La visualizzazione non è in tempo reale come nell'oscilloscopio analogico, ma i dati vengono salvati in memoria prima di essere visualizzati
#### 6.2.1 - Condizionamento analogico e amplificazione verticale

- Come nella DAQ, il segnale deve essere ottimizzato per accedere all'ADC
	- Questa fase è anche detta "front-end analogico"
	- È composta da 4 elementi: 
		  ![[scr 2026-05-17 alle 19.34.20.png]]
		- 1) Modalità di trasferimento all'attenuatore
			- È possibile inviare i dati selezionando, tramite un commutatore, 3 modalità
			- a) DC (Direct *coupling*, non current) → il segnale passa invariato senza mutazioni
			- b) AC (Alternate coupling) → il segnale è ottimizzato per eliminare la componente continua
				- Un filtro passa-alto a $5-10Hz$ elimina le parti "troppo lente" del segnale
				- Questa modalità è da usare con attenzione → si sta perdendo parte del segnale in ingresso
					- Anche le correnti continue di rete a $50-60Hz$ sono solite subire distorsioni
			- c) GND (ground) → serve come riferimento per lo zero della massa
				- Questo era utile negli oscilloscopi analiogici per regolare la posizione verticale sullo schermo, ma in quelli digitali ha perso di importanza come funzione
				- Lo zero è sempre segnato con l'asse $V=0$
		- 2) Attenuatore variabile 
			  ![[scr 2026-05-17 alle 19.34.40.png]]
			- Ha lo scopo di attenuare l'ampiezza del segnale per farlo apparire correttamente sullo schermo
				- L'attenuazione è espressa in $\frac{V}{DIV}$, volt su divisione (da circa $1 \frac{mV}{DIV}$ a $5 \frac{V}{DIV}$)
				- L'incertezza assegnata alla taratura di questa sezione è circa dell'1%
			- È costituito da:
				- a) Una o più "celle $\pi$ " a cascata → introducono l'attenuazione
					- Sono costituite non solo da resistori ma anche da condensatori
						- Il motivo è che l'impedenza di ingresso del segnale $Z_{in}(\omega)$ è ohmico-capacitiva → dipende da $\omega$
						- I condensatori servono quindi a compensare questa dipendenza da $\omega$, rendendo l'attenuazione uniforme sulle frequenze
				- b) Buffer → serve a separare il segnale che arriva all'ADC e ai filtri da ciò che c'è prima
					- Attenzione! → l'impedenza dell'op-amp di buffer non è infinita, ma è di circa $1M\Omega$
						- → Non è sempre trascurabile l'influenza sul segnale
						- È un osservatore della tensione, ma potrebbe risultare invasivo
					- Esiste infatti una seconda opzione di collegamento in $50\Omega$, in cui l'oscilloscopio a questo punto assorbe tutta la potenza
		- 3) Amplificatore → serve ad:
			- a) Amplificare se il segnale in partenza è già piccolo
			- b) Aggiungere se si vuole un offset verticale al segnale (spostare il segnale lungo l'asse y sullo schermo)
		- 4) Filtro antialiasing
			- È indispensabile per il funzionamento corretto dell'ADC
			- → Costituisce la *banda passante* B dello strumento 
				- Come convenzione si usa il valore della frequenza che è attenuata di $3dB$ rispetto al suo valore reale
#### 6.2.2 - Sezione di conversione analogico-digitale e acquisizione

- La digitalizzazione del segnale nei DSO ha "paradigmi" diversi rispetto a una scheda di acquisizione
	- Nella scheda di acquisizione si privilegia la risoluzione, a costo di velocità di campionamento minori
	- Nell'oscilloscopio invece è fondamentale avere una frequenza di campionamento elevatissima, a scapito della risoluzione del segnale
		- Si usano solitamente $n=8\, \text{bit}$ ma $v_{sample}=100MSa/s \to 100GSa/s$
	- Struttura → è composta da (per ogni canale):
		- a) Un SH
		- b) Uno o più ADC
		- c) Una memoria dati

+ Gli ADC sono di tipo flash
	+ Spesso ce n'è più di uno → tecnica di *interlacciamento*
		   ![[scr 2026-05-17 alle 19.42.45.png]]
		+ Un solo segnale viene gestito da più ADC → solo in questo modo si raggiungono $v_{sample}$ elevatissime
		+ Funzionamento → lo stesso segnale viene inviato contemporaneamente a tutti gli ADC
			+ Il campionamento però avviene a ritardi temporali multpli interi di un certo $\tau$
			+ Se ci sono $N$ ADC, la frequenza totale di campionamento scala come $$f_{ADC, tot}=Nf_{ADC}=N \frac{1}{N\tau}=\frac{1}{\tau}$$
		+ Un aspetto da tenere in considerazione è che la velocità di campionamento potrebbe essere anche superiore a quella della RAM
			+ → Si usano blocchi di memoria RAM in parallelo
		+ Anche la capacità della RAM è particolarmente importante → tanto più è grande, tanto più il segnale è visualizzabile con continuità
#### 6.2.3 - Sezione di sincronismo

- La differenza fondamentale tra un oscilloscopio e un acquisitore di dati è la possibilità di "agganciare" l'acquisizione al segnale stesso
	- Si riesce in questo modo a vedere ferma sullo schermo una porzione di segnale che si ripete identica nel tempo
		- Supponiamo in questa sezione di avere un segnale periodico
	- Ogni frame sullo schermo è la rappresentazione di un certo numero di campioni acquisiti
		- Siccome la RAM può gestire al massimo una schermata di segnali, dopo i dati vengono gestiti ed elaborati dal processore
			- → C'è del tempo di "vuoto" dopo ogni acquisizione, l'oscilloscopio rimane cieco per una certa quantità di tempo
		- Pertanto l'inizio della schermata deve essere sincronizzato con un preciso istante della forma d'onda
			- Questo è affidato alla sezione di *trigger*

+ La struttura del trigger è la seguente 
	  ![[scr 2026-05-17 alle 19.54.03.png]]
  -  a) Comparatore di livello → indica quando il segnale in ingresso interseca un certo valore di soglia impostato 
	    ![[scr 2026-05-17 alle 19.57.46.png]]
	  - Questa tecnica è anche detta *edge-trigger*
	  - Ogni volta che la soglia è attraversata, il comparatore genera un impulso, sfruttato poi per individuare i dati in memoria da visualizzare
		  - Si deve selezionare se farlo partire quando la funzione cresce (SLOPE $=+$) o decresce (SLOPE $=-$)
	  - Ci sono diverse possibilità nella scelta del segnale da usare per la sincronizzazione
		  - a) INT (interno) → il segnale è lo stesso che si vuole visualizzare, prelevato dalla sezione di condizionamento verticale
		  - b) EXT (esterno) → il segnale è un segnale esterno arbitrario (es. un'onda quadra di clock)
		  - c) LINE (rete) → si utilizza come segnale la corrente di rete (quella a $50-60Hz$)
			  - Questo è utile quando il segnale è sincrono con la rete
	  - Oltre al segnale in ingresso il comparatore riceve il livello di tensione di soglia (o di triggrer) $V_{T}$
  - b) Pre-amplificatore e filtro → migliora l'accuratezza e l'efficacia del sincronismo a monte del comparatore
	- Ci sono 3 tipologie di filtro principali:
		- a) Filtro passa alto (AC filter) → si elimina la componente continua della corrente
		- b) Filtro passa basso (LP filter) → si eliminano rumore e disturbi ad alta frequenza
			- Questo diminuisce la fluttuazione (*jitter*) del segnale di sincronismo
		- c) Filtro passa tutto (DC filter) → non si altera lo spettro
  - c) Controllo del trigger → è possibile impostare come il trigger influenza la visualizzazione
	  - Ci sono 3 diverse modalità attivabili:
		  - a) NORM (normale) → la visualizzazione si aggiorna SOLO con un trigger, altrimenti rimane l'ultima acquisizione fatta
		  - b) AUTO (automatica) → dopo $0.5s$ senza trigger parte comunque l'acquisizione, ripetendola ad una frequenza propria
			  - Questo è fondamentale per visualizzare segnali costanti o segnali non ancora sincronizzati
		  - c) Single (single shot) → si emette un solo impulso di sincronismo
			  - È utile per visualizzare i transitori
	  - In generale, non tutti gli impulsi di trigger generano una nuova schermata
		  - Dopo un impulso di sincronizzazione valido, i successivi in tempi brevi sono ignorati (sennò ripartirebbe una nuova schermata ogni periodo)
		  - Il trigger fornisce semplicemente un rifrimento temporale, è possibile visualizzare sullo schermo anche alcuni dati prima (*pre-trigger*) e dopo (*post-trigger*)
			     ![[scr 2026-05-18 alle 14.26.04.png]]
			  - La memoria dati si può rappresentare come un buffer circolare con $M$ celle
#### 6.2.4 - Visualizzazione di più canali

- La gestione di tracce multiple è gestita indipendentemente da un ADC o da più ADC per ogni singolo canale
	- Mentre nell'oscillatore analogico l'unica traccia doveva rappresentare entrambi i canali, in quello digitale possono agire indipendentemente
	- I segnali possono ricevere diverse amplificazioni verticali, ma la traslazione orizzontale e la frequenza di campionamento sono in comune
		- Le diverse frequenze appaiono stabili sullo schermo solo se isofrequenziali (o multipli l'una dell'altra in termini di frequenza)
#### 6.2.5 - Sonde di ingresso

- Come si collega il punto del prelievo del segnale con l'oscilloscopio? → tramite un cavo coassiale 
	  ![[scr 2026-05-18 alle 14.47.41.png]]
	- Questo permette di:
		- a) Ridurre i disturbi dovuti all'induzione di campi elettromagnetici esterni
		- b) Aumentare l'impedenza totale dell'oscilloscopio per ridurre il disturbo sul circuito
	- Problema → il cavo coassiale ha una certa impedenza, che può essere modellizzata tramite un condensatore $C_{C}$
		- Questo ovviamente applica un filtro passa-basso (integratore) che diminuisce l'ampiezza delle alte frequenze
		- → La soluzione è aggiungere una compensazione di questo fenomeno, tramite una sonda (*probe*) passiva
			- Questa è schematizzabile come un condensatore $C_{S}$ e una resistenza $R_{S}$ in parallelo
			- Scegliendo un valore ottimo per $C_{S}$ e $R_{S}$ pari a $$C_{S}R_{S}=R_{i}(C_{i}+C_{C})$$dove $C_{I}$ e $R_{I}$ sono rispettivamente il condensatore e il resistore con cui si schematizza l'impedenza interna all'oscilloscopio, l'attenuazione totale di oscilloscopio + cavo + sonda è pari a $$a=\frac{V_{in}}{V_{in}^{\prime} }=\frac{Z_{I}+Z_{S}}{Z_{I}}=\frac{{\frac{R_{I}}{1+j\omega R_{I}(C_{I}+C_{C})}+\frac{R_{S}}{1+j\omega R_{S}C_{S}}}}{\frac{R_{I}}{1+j\omega R_{I}(C_{I}+C_{C})}}=\frac{R_{I}+R_{S}}{R_{I}}$$
			- Questo permette inoltre di aumentare l'impedenza totale del sistema oscilloscopio+cavo+sonda a $R_{I}+R_{S}$ 
				- Scegliendo ad esempio $R_{S}=9M\Omega$ si ottiene un impedenza totale di $10M\Omega$, pari a 10 volte quella del solo oscilloscopio (per questo è detta sonda $10\times$)
			- Ovviamente nella realtà non si riusciranno mai a impostare i valori ideali di $C_{S}$ e $R_{S}$, pertanto la capacità $C_{S}$ è di tipo variabile e può essere ottimizzata tramite una calibrazione su onda quadra 
				- a) Compensazione corretta → le frequenze passano inalterate
				- b) Sovra-compensazione → l'onda quadra presenta le alte frequenze attenuate
				- c) Sotto-compensazione → l'onda quadra presenta le basse frequenze attenuate
				  ![[scr 2026-05-18 alle 14.53.30.png]]
		- Oltre alle sonde passive, sono presenti anche tipologie di sonde attive, con alta impedenza anche ad alte frequenze (meno invasive)
			- i) Sonde differenziali di tensione → sono di natura differenziale, utili per piccoli segnali
			- ii) Sonde differenziali di corrente → misurano la corrente tramite il campo magnetico da essa generato
#### 6.2.6 - Modalità di campionamento

- Come avviene il campionamento? → esistono 3 modalità
	- a) Campionamento in tempo reale → i campioni sono prelevati ad un ritmo costante, senza interruzione, fino all'esaurimento della RAM
		- Con questa modalità il segnale non deve essere necessariamente periodico, si possono campionare anche i transitori
		- Si osservi che la scelta delle frequenza di campionamento è sempre importante 
			  ![[scr 2026-05-18 alle 15.16.54.png]]
			- Per Nyquist, basterebbe avere $f_{C}\geq2f_{B}$
			- Però, se si vuole ricostruire "a occhio" la forma d'onda, è necessario richiedere una frequenza di campionamento molto più elevata
				- Il valore convenzionalmente utilizzato è circa $25$ punti per periodo per una sinusioide 
			- Invece, se si utilizza qualche tipo di interpolatore il numero di punti necessari potrebbe essere minore
				- a) Interpolatori lineari → almeno $10$ punti al periodo per una sinusoide
				- b) Interpolatori $\text{sinc}$ → almeno $2.5$ punti al periodo per una sinusoide
					- Sono decisamente i migliori interpolatori, su cui è anche fondata la teoria di Shannon-Nyquist
		- Per migliorare la qualità del segnale acquisito ci sono diversi metodi:
			- i) Si esegue la media tra più tracce acquisite ripetutamente
				- Questo altera il segnale → le componenti sincrone con il trigger rimane inalterata, ma le altre frequenze sono attenutate
			- ii) Modalità *high-res* → è basata sul principio del sovracampionamento
				- L'idea è che per eliminare possibili fluttuazioni del segnale lo si:
					- i) Sovracampiona di un certo fattore (es. $100$)
					- ii) Per ognuno di questi vettori di punti che occuperebbero il periodo di un solo campione si esegue la media campionaria (decimazione)
				- In questo modo si riducono i rumori e si aumenta effettivamente il numero di $\, \text{bit}$ dell'ADC
					- Si può aumentare anche di $1-2 \, \text{bit}$ effettivi tramite questo sovracampionamento
				- Nonostante ciò, è una tecnica comunque limitata in frequenza (impossibile se $f_{ADC}≈f_{NYQUIST}$)
			- iii) Modalità chiamata *high-definition* → è ancora superiore
				- L'unica differenza con la modalità high-res è che si aggiunge anche un segnale a media nulla che riduce ancora maggiormente gli errori
				- Si riesce con questa modalità a "guadagnare" fino a $8\, \text{bit}$
	- b) Campionamento in tempo equivalente di tipo sequenziale → si preleva un solo campione per trigger 
		  ![[scr 2026-05-18 alle 15.38.14.png]]
		-  Si utilizza solo per segnali di tipo periodico o ripetitivo, e solitamente ad alta frequenza
			- È un modo per superare la velocità di campionamento dell'ADC 
		- L'idea è, siccome il segnale si ripete, di acquisire i vari campioni sfasati di un certo numero di periodi
			- Supponiamo ad esempio che $f(x+kT)=f(x)$, $\forall k\in \mathbb{Z}$
			- Posto $\tau$ il periodo di campionamento "target", anziché campionare ogni $f_{C}=\frac{1}{\tau}$ si può equivalentemente fare ogni $$\tilde{f}_{C}=\frac{1}{kT+\tau }$$ dove $k\in \mathbb{Z}$
		- Questo consente di superare la velocità di campionamento dell'ADC e campionare segnali anche ad altissime frequenze
			- Ad esempio, nei DSO moderni si possono tranquillamente campionare segnali a $100GHz$ di frequenza, mantenendo anche una certa risoluzione del segnale (usando ADC lenti)
	- 3) Campionamento in tempo equivalente di tipo casuale (o *RIS*, Random Interleaved Sampling) 
		  ![[scr 2026-05-18 alle 15.46.28.png]]
		- La logica è simile al campionamento equivalente sequenziale, ma $\tau$ non è più un numero fissato
			- I segnali vengono campionati al massimo della velocità possibile, indipendentemente dal segnale, a intervalli casuali, sia prima che dopo il segnale di trigger 
			- Poi, come nel caso precedente, i segnali provenienti da più periodi si utilizzano per ricostruire un'unica forma d'onda
				- Per fare ciò bisogna sempre misurare l'intervallo temporale tra l'ultimo evento di trigger e ogni campione
		- Il principale limite alla velocità di questo metodo risulta essere pertanto la velocità del contatore elettronico temporale (time-to-digital-converter o TDC)
			- La velocità negli strumenti migliori oggi è di circa $1ps$

+ In base alla tecnica di campionamento scelto si trovano sul mercato diverse tipologie di oscilloscopi, più o meno performanti
	+ a) Sampling Oscilloscope → utilizzati per altissime frequenze, usati quasi esclusivamente in tempo equivalente di tipo sequenziale
		+ Sono usati per esempio per le telecomunicazioni e i segnali in fibra ottica
	+ b) Oscilloscopi di alta gamma → hanno ADC velocissimi per acquisizione in tempo equivalente
	+ c) Oscilloscopi di bassa gamma → hanno ADC più limitati che usano il tempo equivalente per frequenze che superano il teorema del campionamento
		+ La qualità in tempo equivalente peggiora per via dell'instabilità del trigger (jitter)
#### 6.2.7 - Mixed Signal e Mixed Domain Oscilloscope (MSO)

- Esistono anche oscilloscopi con diverse entrate digitali 
	  ![[scr 2026-05-18 alle 16.18.06.png]]
	- a) Mixed Signal Oscilloscope (MSO) → permette di visualizzare in maniera sincrona un certo numero di segnali digitali (solitamente $8-64$)
	- b) Mixed Domain Oscilloscope → si visualizza un analisi spettrale sincrona del segnale (canale RF)
### 6.3 - Criteri di scelta di un oscilloscopio

- Le caratteristiche fondamentali di un oscilloscopio sono:
	- a) Numero di canali → solitamente da 2 a 4 analogici
		- Esistono anche modelli con oltre 32 canali analogici, ma sono meno diffusi e più specifici
	- b) Banda analogica → la frequenza che viene attenuata di $3dB$ rispetto ad una sinusoide a bassa frequenza
		- Di solito si va da $50-60MHz$ (basso costo) fino a $100GHz$ (top di gamma)
	- c) Frequenza di campionamento → la frequenza complessiva di campionamento degli ADC
		- Si a dai $100MSa/s$ per i modelli base fino a $250GSa/s$ per i top di gamma
	- d) Risoluzione 
		- Solitamente è di $8 \, \text{bit}$ tramite un ADC flash, ma si raggiungono $10-12 \, \text{bit}$ reali con tecniche hi-res
	- e) Rumore → è fortemente correlato alla risoluzione
		- Solitamente è dovuto proprio all'incertezza di quantizzazione
		- Uno strumento di buon livello con $8\, \text{bit}$ e $1GHz$ di banda ha un fondo di rumore con valore efficace di $100\mu V$
	- f) Profondità di memoria → il numero massimo di campioni acquisibili con continuità
		- Si va da pochi $kSa$ fino a olte $1GSa$
	- g) Numero massimo di schermate al secondo (waveform update rate)
		- I migliori DSO superano addirittura $1$ milione di schermate al secondo
		- È dovuto al tempo in cui l'oscilloscopio è "cieco"
	- h) Analisi spettrale → capacità di fare FFT e analisi spettrale 
	- i) Funzioni speciali → altre funzioni software o hardware utili
		- Ad esempio, spesso i DSO moderni hanno un generatore di segnali
	- j) Connettività e capacità di elaborazione → porta USB, Ethernet, GPIB...
		- Alcuni oscilloscopi hanno addirittura un PC incorporato
### 6.4 - Misure con l'oscilloscopio

- Prima di procedere con le misure bisogna effettuare alcuni settaggi sull'oscilloscopio:
	- a) Impostare il livello di riferimento zero
		- Si imposta l'ingresso su GND e la modalità trigger ad AUTO 
		- Dopodiché con il comando "Vert. Pos." si può applicare un offset verticale per portare il segnale sullo zero
	- b) Impostare la modalità di ingresso (DC vs AC)
	- c) Impostare la modalità di trigger
		- Se il segnale è continuo o non periodico, scegliere AUTO
		- Nel caso di un segnale variabile il segnale di trigger va impostato su una soglia sensata
			- L'idea è di impostare la soglia nel punto di maggior pendenza del segnale, così da aumentare l'insensibilità dell'istante di scatto
	- In alternativa, si può scegliere l'impostazione di *autoset*
		- In base alle caratteristiche del segnale (periodicità, banda, ampiezza) sono scelte le impostazioni di visualizzazione ottimali
#### 6.4.1 - Misure di Ampiezza

- È opportuno effettuare le misure di ampiezza tramite una misurazione picco-picco 
	  ![[scr 2026-05-18 alle 16.54.40.png]]
	- La misura è effettuata banalmente tramite il conteggio delle divisioni, di ampiezza $A_{Y}$ $$V=MA_{Y}$$
	- Per minimizzare l'incertezza, inoltre, il segnale va ingrandito nelle ampiezze al massimo possibile
		- L'accuratezza relativa di solito si assesta attorno all'$1\%$
	- La misura può essere effettuata in maniera automatica, o in maniera manuale (tramite un cursore)
#### 6.4.2 - Misure di tempo e frequenza

- Anche in questo caso si basa sul conteggio delle divisioni orizzontali $$T=NA_{X}$$
	- È preferibile selezionare per il periodo la misura tra due attraversamenti dello zero o tra due punti a pendenza massima
	- Sono molto più accurate, perchè dipendono dalla quantizzazione del clock
		- Sono solitamente con incertezza relativa $≈10^{-5}$
#### 6.4.3 - Misure di sfasamento

- Suppongo di avere due sinusoidi di uguale periodo $T$: come misuro la loro differenza di fase $\Delta \varphi$? 
	  ![[scr 2026-05-18 alle 17.30.05.png]]
	- So che la loro differenza di fase è direttamente proporzionale al ritardo temporale tra esse $\Delta t$: $$\Delta \varphi=-2\pi \frac{\Delta t}{T}$$
		- Il meno è dipeso dal fatto che se la seconda è in anticipo sulla prima, $\Delta t<0$ e $\Delta \varphi>0$
	- Questo può essere applicato negli strumenti elettronici → spesso il segnale in ingresso e in uscita hanno la stessa frequenza ma sono sfasati
		- Ampiezza e fase sono i parametri fondamentali nei diagrammi di Bode
	- Per tale misura, è essenziale allargare la figura per avere i due punti di zero delle due sinusoidi distanziate il massimo possibile, per la massima risoluzione
		- Spesso nei DSO moderni è possibile "splittare" lo schermo nelle due visualizzazioni (per l'abbondanza della memoria) → in uno viene visualizzato con precisione il periodo $T$ dei segnali, nell'altro la loro distanza temporale $\Delta t$
#### 6.4.4 - Misure di tempo di salita

- Come posso misurare la banda del segnale?
	- Un metodo funzionale spesso utilizzato consiste nel misurare il tempo di salita $t_{rise}$ che impiega il segnale a passare dal $10\%$ al $90\%$ del salto in ampiezza tra due stati stazionari
	- Come funziona il metodo?
		- Prendiamo un sistema molto semplice, un filtro passa-basso del primo ordine, con funzione di trasferimento $$G(f)=\frac{1}{1+jf/f_{0}}$$
		- Il polo di questa funzione è in $\omega_{0}=2\pi f_{0}$, pertanto la costante di tempo del sistema è $\tau=\frac{1}{\omega_{0}}=\frac{1}{2\pi f_{0}}$
		- Risolvendo l'equazione differenziale legata al filtro (passando dalla FdT all'equazione esplicita) si ottiene un'esponenziale $$y(t)=1-e^{-t/\tau}$$ tale che $y(t) \overset{t\to+\infty}{→}1$
		- Cerco i tempi $t_{10\%}$ e $t_{90\%}$ imponendo le condizioni $y(t_{10\%})=0.1$ e $y(t_{90\%})=0.9$, ottenendo $$t_{10\%}=\tau \log\left( \frac{10}{9} \right), \,\,\, t_{90\%}=\tau \log(10)$$
		- Il tempo di salita è pertanto $$t_{rise}=\tau \log(9)≈2.2\tau≈ \frac{0.35}{f_{0}}$$
		- Siccome in questo sistema la banda è proprio $B=f_{0}$ ottengo una relazione approssimativa fondamentale $$B≈ \frac{0.35}{t_{rise}}$$
		- Il modello ha validità approssimata più generale
			- Abbiamo ricavato questa relazione da un semplice transitorio RC del primo ordine, ma spesso questa relazione vale per sistemi complessi
			- Infatti, dal teorema del limite centrale, l'applicazione di diverse amplificazioni e filtri passa-basso indipendenti porta il filtro complessivo ad essere gaussiano
			- Per un filtro puramente gaussiano, si mostra che vale una relazione molto simile, pertanto assumiamo validità approssimata generale
	- Quando si effettua una misura non bisogna mai dimenticare che l'oscilloscopio stesso ha un tempo di salita
		- Per due filtri indipendenti il tempo di salita complessivo è dato da $$t_{rise, 12}=\sqrt{ t_{1 }^2+t_{2}^2}$$
		- Di conseguenza, si ottiene che se $t_{MIS}$ è il tempo di salita misurato, il tempo di salita del segnale $t_{SIG}$ è dato da $$t_{SIG}=\sqrt{ t_{MIS}^2-t_{OSC}^2 }$$dove $t_{OSC}$ è il tempo di salita dell'oscilloscopio
			- Se ad esempio l'oscilloscopio ha banda passante $B=70MHz$ il suo tempo di salita è circa $\frac{0.35}{B} = 5ns$ → non può misurare transitori più brevi
#### 6.4.5 - Misure automatiche

- Gli oscilloscopi hanno a disposizione diverse misure automatiche a partire dai dati a schermo (caricati in RAM)
	- Tra questi minimo, massimo, media, valore RMS, ampiezza picco-picco, tempo di salita, tempo di discesa, durata di un impulso, frequenza e periodo (per segnali periodici)
	- È importante ricordare che sono eseguite da algoritmi sui dati acquisiti, quindi va fatta un'acquisizione corretta (sullo schermo)
#### 6.4.6 - Modalità XY

- È possibile impostare la visualizzazione del canale Y, espresso in funzione del canale X
	- In questo modo si può notare la dipendenza dei segnali dei due canali
	- Se i due canali hanno tra di loro frequenze multiple e una certa differenza di fase, si ottengono le *figure di Lissajous*
		   ![[scr 2026-05-18 alle 17.59.17.png]]
#### 6.4.7 - Canale matematico

- È possibile nei DSO creare un canale ottenuto come funzione di altri canali $$Z=f(X, Y)$$
	- Ad esempio questo permette di eseguire misure differenziali ($Z=X-Y$) oppure operazioni come la trasformata di Fourier ($Z(\omega)=\mathcal{F}\,\left[X\right](\omega)$)
## E - Esercizi

### Esercizio 1 (Acquisizione e Condizionamento Segnali)

4 segnali:
- S1: riferito a massa,  banda $50 kHz$ ($[-25 kHz, 25kHz]$). La dinamica del segnale è $D= \pm 1V$. Voglio avere una risoluzione $\Delta V = 1mV$.
- S2: onda quadra a frequenza $f_{2}=2kHz$, le tensioni sono $V_{0}=0, V_{1}=5V$
- S3: uscita di un sensore differenziale, con $f_{MAX} = 100 Hz$, $V \in [0, 10mv]$. $\Delta V=3.46 mV$
- S4: allarme con $V_{1}=1V$ e durata $T=100 \mu s$, riferita a massa

Quali devono essere le caratteristiche della scheda di acquisizione?
La prima cosa è capire la modalità di acquisizione (single-handed o differenziale). Usiamo la stessa modalità per tutti i canali (anche se in laboratorio ogni canale ha la sua modalità). 
S4 → è riferita a massa → potrei usare single-handed
S2 → è un onda quadra → potrei usare single-handed
S1 → se non ci sono disturbi sovrapposti, essendo riferita a massa, potrei usare SH (con $\Delta V$ abbastanza alta)
S3 → è l'uscita di una scheda differenziale → devo usare differenziale per tutti i segnali
$$
N_{sig, SH}=8 \implies N_{sig, DIFF} = 4
$$

Come trovo $f_{C, ADC}$?
S1 → $f_{C, MIN}=100 Hz$ dal teorema di Nyquist
S2 → non ho restrizioni su $f_{C, ADC}$
S3 → idem
S4 → so che $T_{C}<100 \mu s \implies f_{C}> \frac{1}{10^2*10^-6}=10^4 Hz$
$\implies f_{C, ADC}>N_{sig, DIFF}*f_{C, MAX}=400 kHz$

Calcolare la dinamica e il numero di bit minimo per ogni canale.
S1 → $D_{S_{1}}=\pm 1mV$, $\Delta V=1 mV$, $N_{LIV}=\frac{D_{S_{1}}}{\Delta V}=2000$
S2 → $D_{S_{2}}=\pm 5V$, non ci sono requisiti su $\Delta V$ $\implies$ non ci sono requisiti su $N_{LIV}$
S3 → $D_{S_{3}}=\pm 0.01V$, $N_{LIV}=\frac{D_{S_{3}}}{\Delta V}=0,5618*10^{4}$
S4 → $D_{S_{4}}=\pm 1V$, no requisiti su risoluzione $\implies$ no requisiti su livelli
→ $N_{liv}=N_{LIV, S_{3}}=0,5618*10^{4}$

Il numero di bit è dato da $n_{bit}=\log_{2}(N_{LIV})=12.49 \, \text{bit}$
## A - Appendici

### A.1 - Bel e decibel

- Attenuazione ($A$)
	- Se un segnale in ingresso ha una potenza $P_{IN}$ in ingresso e $P_{OUT}$ in uscita, si definisce attenuazione (o guadagno) del collegamento A$$
A = \frac{P_{OUT}}{P_{IN}}$$
	- Si può esprimere in:
		- a) Bel ($B$)
			- È definito come: $$A_{(B)} = \log_{10}\left( \frac{P_{OUT}}{P_{IN}} \right)$$
		- b) Decibel ($dB$)
			- Si utilizza generalmente per indicare un valore relativo, in questo caso di potenza$$
A_{(dB)} =10\log_{10}\left( \frac{P_{1}}{P_{0}} \right)$$
				- Dove $P_{1}$ è la potenza in uscita, $P_{0}$ la potenza in ingresso
				- Oss: se ho un carico $R$ fisso, allora la potenza si può esprimere come $V^2R$. Pertanto $$
A_{(dB)}=10\log_{10}\left( \frac{P_{1}}{P_{0}} \right)=10\log_{10}\left( \frac{V^2_{1}}{V^2_{0}} \right)=20\log_{10}\left( \frac{V_{1}}{V_{2}} \right)$$
		- c) Decibel milliwatt ($dBm$) 
			- È un'unità di misura utile per scrivere le potenze $P$ in forma logaritmica, comparandole con un'unità presa ad $1mW$
			- Infatti $$
P_{(dBm)}=10\log_{10}\left( \frac{P}{1mW} \right)$$
			- Da questo si ricava, tramite proprietà dei logaritmi, che:			- 
$$A_{(dB)} = 10\log_{10}\left( \frac{P_{1}}{P_{0}} \right)=P_{1 \; (dBm)}-P_{0 \; (dBm)}$$
			- Spesso allora quando si studia lo spettro di $\hat{x}$ trasformata di Fourier del segnale si esprimono le ampiezze in $dBm$
			- Si osservi che essendo $10\log_{10}\left( \frac{1}{2} \right)≈ 3.01$ allora un guadagno di $3 dB$ significa che $P_{1}=2P_{0}$
		- d) Decibel watt ($dBW$)
			- È definita come $$A_{(dBW)}=10\log_{10}\left( \frac{P}{1W} \right)$$
		- e) Neper ($Np$)
			- È un unità logaritmica basata sul logaritmo naturale $\log$ $$A_{(Np)}=\log\left( \frac{P_{OUT}}{P_{IN}} \right)$$
	- es. $$P_{0}=1000 W, \; P_{1} = 1W \implies A= 10\log_{10}\left( \frac{1}{1000} \right) = -30 dB$$

+ Similmente, per la banda $B$ si può definire
	+ a) Decibel Hertz ($dB_{Hz}$) $$
dB_{Hz}=10\log_{10}\left( \frac{B}{1 Hz} \right)$$
### B - Analisi Spettrale e Rumore

- Posso definire la grandezza densità spettrale $\mathcal{P}(\omega)$ tale che $\dot{W}=\int_{B}\mathcal{P}(\omega)d\omega$ dove $B \subseteq \mathbb{R}$ è la banda del sistema
	- Oss: se riduciamo la banda del segnale, ridurremo il rumore
		- Quando parleremo di rumore parleremo quasi sempre di rumore bianco, ovvero dove la potenza in funzione delle frequenze $\mathcal{P}(\omega)=\text{cost}$. 
	- Dal teorema della media, $\dot{W}=\overline{\mathcal{P}} *|B|$
		- Pertanto, aumentando la larghezza di banda, aumenta la potenza
		- Inoltre, in unità logaritmiche $$\dot{W}_{(dBm)}=\bar{\mathcal{P}}_{\left( \frac{dBm}{Hz} \right)}+B_{(dB_{Hz})}$$

+ Si definisce rapporto segnale-rumore (o Signal to Noise Ratio, SNR) il rapporto $$
SNR=10\log_{10}\left( \frac{\mathcal{P}_{S}}{\mathcal{P}_{N}} \right)$$
### Sensori e trasduttori

- a) Misure di tensione $V$ 
	- So che le schede di acquisizione hanno una dinamica massima di $\pm 10V$
		- Come fare a misurare voltaggi più grandi o molto più piccoli?
	- i) Uso il cosiddetto *partitore resistivo*
		- È un partitore di tensione con una corrente $V_{MIS}$ e due resistenze $R_{1}$ e $R_{2}$
			- Se $R_{1} + R_{2} \to \infty$, allora $$|V_{MIS} * \frac{R_{2}}{R_{1}+R_{2}}|<10V$$
			- Oss: Questo sistema è poco efficiente
	- ii) Uso un trasformatore, detto *trasformatore voltmetrico*
		- Il rapporto di trasformazione $k$ è tale che $V_{2}<10V$

+ b) Misure di corrente $I$
	+ i) Il sistema più semplice è quello di *shunt*
		+ Ho banalmente una corrente da misurare $I_{MIS}$ e una resistenza $R_{S}$ $\implies$ banalmente leggo la tensione ai capi della resistenza
			+ Ci deve essere però una resistenza che cambi poco al variare della temperatura (la resistività $\rho(T)=\text{cost}$)
	+ ii) Uso il *trasformatore amperometrico*
		+ Modifico il raporto tra le spire per avere una tensione $V_{2}$ misurabile dalla mia scheda di acquisizione
	+ iii) Sistemi a secondario aperto
		+ Se faccio circolare una corrente in un solenoide, creerò un flusso, pertanto una corrente indotta nel secondario

- c) Misure di impedenza $Z$
	- Come converto un'impedenza in una tensione?
	- i) Circuiti *"a ponte"*
		- In corrente continua sono detti *"ponti di Wheatstone"*





































### 4.6 - Multimetri digitali

#### 4.6.1 - Rilevatori di valore efficace

- Il voltmetro a doppia rampa funziona solo con correnti continue (DC) o lentamente variabili
	- Grazie alla scelta del tempo $T_{U}$, si rimuove il rumore della corrente alternata irradiata

+ Per misurare invece con il multimetro correnti rapidamente variabili, c'è bisogno di un dispositivo detto *rilevatore di valore efficace* (o convertitore *ACDC*)
	+ Sono dispositivi che hanno in input una corrente alternata a una certa $f$, in output il suo valore efficace $$V_{\text{RMS}}=\sqrt{ \langle V^2(t) \rangle }$$
	+ Possono essere di 3 tipi:
		+ a) Termico → si genera una corrente continua che produce lo stesso riscaldamento via effetto Joule, misurato tramite una termo-coppia
		+ b) Analitico → si effettua il quadrato del segnale in ingresso, lo si media con un filtro passa-basso e si estrae la radice quadrata
		+ c) Numerico → si campiona il segnale ad alta frequenza e si calcola il valore efficace come $V_{\text{RMS}}=\sqrt{ \frac{1}{n}\sum_{i=1}^n v_{i}^2 }$

#### 4.6.2 - Misure di tensione

- Nel misurare la tensione è cruciale essere vigili nella scelta del fondo scala per evitare che lo strumento vada in saturazione o subisca rotture hardware.
	- Per adattare tensioni molto elevate o molto piccole alla dinamica d'ingresso dell'ADC (es. $\pm10\text{ V}$) si ricorre a sistemi di condizionamento dedicati

+ 1) *Partitore resistivo (Attenuatore d'ingresso)* → sfrutta una serie di resistenze di precisione per ripartire la tensione misuranda $V_{\text{MIS}}$
	  ![[scr 2026-05-17 alle 15.25.44.png]]
	- Fisicamente implementato all'interno dei multimetri tramite una catena di resistenze selezionabili tramite commutatore 
	- La tensione in ingresso all'ADC è data dalla relazione di partizione ideale:
	  $$V_{\text{IN}}=V_{\text{MIS}} \frac{R_{2}}{R_{1}+R_{2}}$$
	- **Effetto di carico e compromesso progettuale:** Denotando con $R_{\text{in}}$ l'impedenza d'ingresso propria della scheda DAQ o del voltmetro, la formula reale risente del parallelo tra resistenze:
	  $$V_{\text{IN}} = V_{\text{MIS}} \frac{R_2 \parallel R_{\text{in}}}{R_1 + (R_2 \parallel R_{\text{in}})}$$
	- Per minimizzare la perturbazione sul circuito sotto misura (effetto di carico) e ridurre la potenza dissipata per effetto Joule, si impone che la resistenza totale tenda all'infinito ($R_1 + R_2 \to \infty$, tipicamente $10\text{ M}\Omega \to 10\text{ G}\Omega$). Porre in parallelo al circuito un resistore così grande altera in maniera trascurabile lo stato della rete, tranne in rari casi di sorgenti ad altissima impedenza.
	- *Limite fisico:* Valori di resistenza eccessivamente elevati aumentano drasticamente il rumore termico di Johnson ($e_n = \sqrt{4k_B T R \Delta f}$) e creano costanti di tempo elevate accoppiandosi con le capacità parassite dell'elettronica, limitando severamente la banda passante del sistema.

+ 2) *Trasformatore Voltmetrico (TV)* → trasformatore d'isolamento e misura utilizzato per accoppiare tensioni alternate elevate (media e alta tensione) a strumenti di misura a bassa dinamica
	- Il funzionamento si basa sulla legge di accoppiamento magnetico di Faraday-Lenz. Il rapporto di trasformazione nominale vale:
	  $$k_n = \frac{V_1}{V_2} = \frac{N_1}{N_2}$$
	- **Condizioni operative:** Un TV deve lavorare in condizioni ideali di **quasi-vuoto**. L'impedenza dello strumento di misura posto al secondario deve essere estremamente elevata ($Z_{\text{carico}} \to \infty$).
	- Se scorre corrente non trascurabile al secondario, le cadute di tensione sulle resistenze dei conduttori e sulle induttanze di dispersione dei flussi provocano un *errore di rapporto* (alterazione del modulo di $k_n$) e un *errore d'angolo* (sfasamento introdotto tra primario e secondario), invalidando le calibrazioni e le accuratezze sulle componenti armoniche.

#### 4.6.3 - Misure di corrente

- La misura di corrente richiede l'inserzione dello strumento in serie al ramo circuitale d'interesse. Per non alterare lo stato del circuito, l'impedenza interna dell'amperometro deve essere idealmente nulla ($Z_{\text{amp}} \to 0$).
	- Per adattare o misurare correnti di grande intensità tramite schede DAQ o voltmetri si utilizzano tre approcci principali:

+ 1) *Shunt amperometrico* → resistenza di precisione a basso valore ohmico inserita in serie, che converte la corrente $I_{\text{MIS}}$ in una tensione direttamente proporzionale leggibile dall'ADC
	- Schema di inserzione in serie: ![[scr 2026-05-17 alle 15.28.22.png]]
	- La caduta di potenziale ai capi dello shunt fornisce la misura:
	  $$V_{\text{shunt}} = I_{\text{MIS}} \cdot R_s$$
	- **Accuratezza e stabilità termica:** Per evitare errori sistematici dovuti all'auto-riscaldamento per effetto Joule ($P = I^2 R_s$), lo shunt viene progettato con materiali a bassissimo coefficiente termico di resistenza ($\alpha \approx 0$, come Manganina o Costantana), garantendo che la resistività rimanga costante al variare della temperatura:
	  $$\rho(T) = \text{cost.}$$
	- Per eliminare l'incertezza introdotta dalle resistenze di contatto e dei cavi di collegamento, si utilizzano strutture a **quattro terminali** (due terminali amperometrici esterni per il passaggio della corrente, due terminali voltmetrici interni ad alta impedenza per il prelievo pulito della tensione).

+ 2) *Trasformatore Amperometrico (TA)* → trasformatore di misura operante in corrente alternata, utilizzato per ridurre correnti di grande intensità a valori standardizzati compatibili con gli strumenti (tipicamente $1\text{ A}$ o $5\text{ A}$ fondo scala)
	- Il primario (spesso costituito da una sola spira o dal cavo di potenza stesso passante nel nucleo ferromagnetico) è percorso dalla corrente $I_1$. Il rapporto di trasformazione nominale vale:
	  $$k_n = \frac{I_1}{I_2} = \frac{N_2}{N_1}$$
	- **Condizioni operative:** Al contrario del TV, il TA deve lavorare rigorosamente in condizioni di **quasi-cortocircuito**. Lo strumento di misura (amperometro o impedenza di ingresso del canale DAQ) connesso al secondario deve avere un'impedenza trascurabile ($Z_{\text{carico}} \to 0$).

+ 3) *Il pericolo del secondario aperto nei TA (Sistemi a secondario aperto)* → **CRITICAL SAFETY ISSUE**
	- Se il circuito secondario di un TA viene aperto accidentalmente mentre al primario scorre corrente ($I_1 \neq 0$), la forza magnetomotrice del secondario ($N_2 I_2$) si annulla istantaneamente. 
	- Tutta la corrente primaria $I_1$ agisce quindi come corrente di magnetizzazione del flusso. Il nucleo ferromagnetico entra immediatamente in **profonda saturazione**.
	- Questo provoca due effetti catastrofici:
		- a) Generazione di impulsi di tensione indotta al secondario con picchi elevatissimi ($kV$), che distruggono l'isolamento del trasformatore e costituiscono un gravissimo pericolo di folgorazione per l'operatore.
		- b) Surriscaldamento localizzato del nucleo ferromagnetico per aumentate perdite per isteresi e correnti parassite, portando alla distruzione termica del componente.
	- *Sistemi alternativi sicuri:* Per ovviare a questo pericolo o per misurare correnti continue (DC), si utilizzano la **Bobina di Rogowski** (un trasformatore con nucleo in aria che misura la derivata temporale della corrente $\propto \frac{dI}{dt}$, intrinsecamente sicuro a circuito aperto) o i **sensori a effetto Hall**.

#### 4.6.4 - Misura di resistenza e impedenza

- La determinazione di un'impedenza o resistenza incognita si basa sulla conversione della grandezza passiva in un segnale di tensione misurabile dall'ADC. Si distinguono due metodologie principali:

+ 1) *Metodo raziometrico* → utilizzato nei multimetri digitali per misure di resistenza in corrente continua
	- Il principio sfrutta lo stesso hardware della misura di tensione ![[scr 2026-05-17 alle 15.38.40.png]]
	- Viene fatta scorrere una stessa corrente continua $I$ generata internamente sia sul resistore campione $R_R$ sia sul resistore incognito $R_X$.
	- Il voltmetro integratore calcola il rapporto tra le due cadute di tensione $V_X$ e $V_R$:
	  $$\frac{V_X}{-V_R} = \frac{I \cdot R_X}{I \cdot R_R} = \frac{R_X}{R_R} = \frac{N_D}{N_U} \implies R_X = R_R \frac{N_D}{N_U}$$
	- **Vincolo operativo:** Per l'incolumità dello strumento e l'accuratezza della misura, è fondamentale che il circuito oggetto di misura **NON sia alimentato** da sorgenti esterne.

+ 2) *Circuiti a ponte (Ponte di Wheatstone)* → configurazione a quattro bracci sensibili utilizzata per la misurazione accurata di resistenze e piccole variazioni di impedenza ($\Delta R$, tipico nell'interfacciamento di sensori estensimetrici)
	- **Condizione di equilibrio:** Considerato un ponte alimentato in tensione continua $V_S$, la tensione letta sulla diagonale di misura $V_D$ è nulla ($V_D = 0$) se e solo se i prodotti delle resistenze dei bracci opposti sono uguali:
	  $$R_1 \cdot R_4 = R_2 \cdot R_3$$
	- Se tre resistenze sono note di precisione, si ricava il valore esatto della quarta senza risentire delle fluttuazioni della tensione di alimentazione $V_S$.
	- **Modalità a deflessione (Fuori equilibrio):** Se il ponte subisce una piccola variazione di resistenza $\Delta R$ a partire da una condizione di bilanciamento (supponendo bracci inizialmente uguali a $R_0$), la tensione diagonale diventa linearmente proporzionale alla variazione:
	  $$V_D \approx V_S \frac{\Delta R}{4R_0}$$
	- Questo approccio permette di convertire variazioni infinitesime di impedenza in tensioni rilevabili con elevata risoluzione dalle schede DAQ tramite amplificatori differenziali (INA). Per componenti reattive (capacità ed induttanze) in corrente alternata, il principio viene esteso ai **ponti in AC**, dove l'equilibrio richiede il bilanciamento simultaneo dei moduli e delle fasi delle impedenze complesse: $Z_1 Z_4 = Z_2 Z_3$.