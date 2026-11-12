---
title: "Fondamenti di Automatica"
domain: "engineering/control-theory"
source_course: "Fondamenti di Automatica"
tags:
  - engineering/control-theory
  - engineering/systems/state-space
  - engineering/systems/stability
---

## 0. Introduzione ai sistemi di controllo

- L'*automatica* è la disciplina che ha per obiettivo il progetto di un *sistema di controllo* che agisca su un *processo* per far sì che esso segua un comportamento desiderato
	- Processo → sistema fisico da controllare
	- Comportamento → andamento nel tempo di alcune variabili caratteristiche del processo, dette *variabili controllate*
	- Agire → imporre il valore di alcune variabili, dette *variabili di controllo*
	- es.
		- Studenti in aula → processo
		- Tono di voce del docente → variabile di controllo
		- Docente → controllore
		- Alto e costante → desiderio
		- Livello di attenzione → variabile controllata

+ Come è costituito un sistema di controllo? 
	  ![[scr 2026-05-28 alle 14.10.26.png]]

	- Legenda:
		- Blocchi → sono i *sistemi*
			- Un sistema è un insieme di elementi, il cui comportamento può dipendere da grandezze esterne (dette *ingressi*) e il cui comportamento viene osservato tramite alcune variabili caratteristiche dette *uscite* 
		- Fili → sono i segnali, dove la freccia rappresenta l'influenza casuale
		- Diramazione → lo stesso segnale viene riportato in più punti
		- Nodo somma (differenza) → i segnali si sommano/sottraggono
	- Quali sono i blocchi fondamentali?
		- P → *processo*
			- È influenzato dalle variabili manipolate $u_{m}$ ma anche da diversi disturbi $d$ (caratteristici di ogni sistema fisico)
		- A → *attuatore*
			- Implementa sul processo la variabile di controllo $u$
			- Nel caso ideale l'attuatore applica esattamente la variabile di controllo ($u_{m}=u$)
		- T → *trasduttori / sensori*
			- Nel caso ideale le misure trasdotte sono pari ai valori reali
		- $C_{OL}$ → controllore in *anello aperto* (*open-loop*)
			- Viene detto anche controllore in *feedforward*
			- Decide il contributo della variabile $u_{OL}$ soltanto sulla base del desiderio $y^o$
			- → Converte il desiderio nell'azione della variabile di controllo
		- $C_{CL}$ → controllore in *anello chiuso* (*closed-loop*)
			- Viene detto anche controllore in *retroazione* (o *feedback*)
			- Decide il contributo della variabile $u_{CL}$ sulla base dell'errore di controllo $e_{T}$
				- Viene detto closed-loop perchè la variabile di uscita $u_{CL}$ influenza il suo ingresso $e_{T}$
			- → Corregge la variabile di controllo sulla base dei dati empirici
		- $\text{Comp}$ → *compensatore*
			- Decide il contributo $u_{COMP}$ sulla base del disturbo $d_{T}$
			- → Corregge la variabile di controllo per eliminare i disturbi
	- Quali sono i segnali fondamentali?
		- Uscite
		- $y$ → variabili controllate
		- $y_{T}$ ($y$ trasdotto) → misure delle variabili controllate
			- Considereremo spesso il caso ideale, cioè $y_{T}=y$
		- $y^o$ → desiderio (andamento di riferimento)
		- $e = y^0-y$ → errore di controllo
		- $e_{T}=y^o-y_{T}$ → misura dell'errore di controllo
			- Anche in questo caso nel caso ideale $e_{T}=e$
		- $u_{m}$ → variabile manipolata
			- È la "realizzazione" migliore della variabile di controllo $u$
		- $u=u_{CL}+u_{OL}+u_{COMP}$ → variabile di controllo
		- $d$ → disturbo
		- $d_{T}$ → misura del disturbo
			- Nel caso ideale $d_{T}=d$

## 1. Modello matematico di un sistema fisico

- Consideriamo un singolo sistema fisico (un blocco nello schema a blocchi) → come può essere descritto?
	- Gli ingressi e le uscite dal sistema sono dette *variabili esterne*
		- $m$ variabili di ingresso $\mathbf{u}(t)=(u_{1}(t), u_{2}(t), \dots, u_{m}(t)) \in \mathbb{R}^m$
		- $p$ variabili di uscita $\mathbf{y}(t)=(y_{1}(t), y_{2}(t), \dots, y_{p}(t)) \in \mathbb{R}^p$
	- Le variabili che descrivono lo stato del sistema sono dette *variabili di stato*
		- $n$ variabili di stato $\mathbf{x}(t)=(x_{1}(t), x_{2}(t), \dots, x_{n}(t)) \in \mathbb{R}^n$

+ I segnali possono essere in relazione alla variabile tempo $t$ di tue tipi:
	+ a) A *tempo continuo* (t.c.) → $t\in \mathbb{R}$
	+ b) A *tempo discreto* (t.d.) → $t \in \mathbb{Z}$

- Un *modello* matematico è una relazione matematica tra gli ingressi $\mathbf{u}(t)$ e le uscite $\mathbf{y}(t)$
	- Può essere classificato sulla base della relazione che descrive il sistema:
		- a) Modello *algebrico* → esiste un legame istantaneo tra le sole $\mathbf{y}(t)$ e $\mathbf{u}(t)$ $$\mathbf{y}(t)=\mathbf{g}(\mathbf{u}(t), t)$$dove al variare del tempo $\mathbf{g}(t):\mathbb{R}^{m+1}\to \mathbb{R}^{p}$
		- b) Modello *dinamico* → la variabile d'uscita dipende anche dal valore delle variabili di stato $\mathbf{x}(t)$ $$\mathbf{y}(t)=\mathbf{g}(\mathbf{x}(t), \mathbf{u}(t), t)$$dove $\mathbf{g}(t): \mathbb{R}^{m+n+1}\to \mathbb{R}^p$
			- Il numero di variabili di stato $n$ è detto l'*ordine* (o *dimensione*) del sistema
			- Quando la scelta delle variabili di stato è adeguata?
				- Un *buono stato* è tale che noto $\mathbf{x}(t_{0})$ e $\mathbf{u}(t)$, per $t \in [t_{0}, t)$, è possibile determinare lo stato del sistema $\mathbf{x}(t)$ per ogni $t \in[t_{0}, t]$ (lo stato finale al momento $t$ compreso) 
					- In particolare, è impossibile una relazione istantanea tra ingresso e variabile di stato, cioè $\mathbf{x}(t)$ NON può dipendere direttamente $\mathbf{u}(t)$ (invece $\dot{\mathbf{x}}$ sì)
				- Come si relazionano $\mathbf{x}$ e $\mathbf{u}, t$? 
					- a) A tempo continuo → tramite un'equazione differenziale del tipo $$\dot{\mathbf{x}}(t)=\mathbf{f}(\mathbf{x}(t), \mathbf{u}(t), t)$$
					- b) A tempo discreto → tramite un'equazione alle differenze del tipo $$\mathbf{x}(t+1)=\mathbf{f}(\mathbf{x}(t), \mathbf{u}(t), t)$$
				- → Pertanto, se $\mathbf{x}(t)$ è un buono stato, risolvendo l'equazione posso determinare anche l'uscita $\mathbf{y}(t)$ per ogni $t \in[t_{0},t]$
			- Hanno diverse sotto-classificazioni
				- i) Sistemi *propri* → è assente un legame istantaneo tra ingresso e uscita
					- Pertanto nei sistemi propri $$\mathbf{g}(\mathbf{x}(t), t)$$ cioè non dipende da $\mathbf{u}(t)$
					- (vs *impropri* dove $\mathbf{g}(\mathbf{x}(t), \mathbf{u}(t), t)$)
				- ii) Sistemi *tempo invarianti* → non c'è nessuna dipendenza esplicita dal tempo $$\frac{ \partial \mathbf{f} }{ \partial t }=\frac{ \partial \mathbf{g} }{ \partial t }=0 \implies \mathbf{f}(\mathbf{x}(t), \mathbf{u}(t)), \,\, \mathbf{g}(\mathbf{x}(t), \mathbf{u}(t))  $$
				- iii) Sistemi *autonomi* → non ci sono ingressi (o gli ingressi sono costanti) $$\mathbf{u}=0 \implies  \mathbf{f}(\mathbf{x}(t),t ),\,\,\mathbf{g}(\mathbf{x}(t), t)$$
				- iv) In base al numero di ingressi e uscite:
					- SISO (single input, single output) → $m=1, \, p=1$
					- MIMO (multiple inputs, multiple outputs) 
	- Si può classificare anche sotto altri parametri:
		- a) *Deterministici* vs *stocastici* (in cui le variabili sono aleatorie)
		- b) A *dimensione finita* ($n \in \mathbb{N}$) vs a *dimensione infinita*
			- I sistemi a dimensione infinita possono avere $n$ nella potenza del continuo
				- Ad esempio accade quando $$\mathbf{x}=\mathbf{x}(\mathbf{r}, t)$$dove $\mathbf{r} \in \mathbb{R}^3$ è la posizione
				- In tal caso la relazione tra $\mathbf{x}$ e $\mathbf{u}(t)$ e $t$ sarà una PDE

- Si può visualizzare per i sistemi a dimensione finita la *traiettoria* del sistema
	- È il grafico della curva $\mathbf{x}(t)$ al variare di $t\in \mathbb{R}$ nello  *spazio di stato* $\mathbb{R}^n$ 
		  ![[scr 2026-05-28 alle 15.37.15.png]]

- Tra i sistemi dinamici sono di particolare importanza i *sistemi lineari* $$\begin{cases}\mathbf{f}(\mathbf{x}(t), \mathbf{u}(t), t))=A(t)\mathbf{x}(t)+B(t)\mathbf{u}(t) \\\mathbf{g}(\mathbf{x}(t), \mathbf{u}(t), t)=C(t)\mathbf{x}(t)+D(t)\mathbf{u}(t)\end{cases}$$ dove $$A \in \text{Mat}_{\mathbb{R}}(n, n), \, B \in \text{Mat}_{\mathbb{R}}(n, m) , \,C \in \text{Mat}_{\mathbb{R}}(p, n) ,\,D \in \text{Mat}_{\mathbb{R}}(p, m)$$![[scr 2026-05-28 alle 16.05.34.png]]

### 1E - Esempi


- a) Legge di Ohm → algebrico $$V(t)=RI(t)$$
	- Uscita → $y(t)=V(t)$
	- Entrata → $u(t)=I(t)$

- b) Serbatoio → dinamico a t.c.
		   ![[scr 2026-05-28 alle 14.59.08.png|224]]
	- Immagino di avere un serbatoio con portata in ingresso $u(t)$ e portata in uscita $y(t)$
	- Come variabile di stato posso scegliere ad esempio la massa d'acqua contenuta nel serbatoio $x(t)$
	- In tal caso, la relazione è di tipo proporzionale $$y(t)=kx(t)$$
	- Inoltre la differenza istantanea di massa è data proprio da $$\dot{x}(t)=u(t)-y(t)=u(t)-kx(t)$$
	- Pertanto il sistema è dato da $$\begin{cases}
	\dot{x}(t)=u(t)-kx(t) \\
	y(t)=kx(t)
	\end{cases}$$

- c) Leggi di Newton → dinamico a t.c. 
	- Suppongo che $F_{X}(t)=u(t)$ sia l'ingresso mentre $y(t)={x}(t)$ l'uscita
	- Pertanto $$\ddot{{x}}(t)=\frac{{u}(t)}{m}$$
	- Per rendere $x$ un buono stato devo portare l'equazione differenziale di secondo ordine in due equazioni di primo ordine $$\begin{cases}
	\dot{x_{1}}(t)=x_{2}(t) \\
	\dot{x_{2}}(t)=\frac{u(t)}{m} \\
	\mathbf{y}(t)=(x_{1}(t), x_{2}(t))
	\end{cases}$$
	- Se aggiungo l'attrito viscoso ottengo che $$F(t)=u(t)-hx_{1}(t)$$ e quindi $$\begin{cases}
	\dot{x_{1}}(t)=x_{2}(t) \\
	\dot{x_{2}}(t)=\frac{u(t)}{m} -hx_{1}(t)\\
	\mathbf{y}(t)=(x_{1}(t), x_{2}(t))
	\end{cases}$$

- d) Allevamento di Fibonacci → dinamico a t.d
	- Immagino di avere un certo numero di conigli, che sono giovani nel primo mese e adulti a partire dal secondo di vita
		- Ogni coppia maschio-femmina adulta genera una nuova coppia ogni fine mese
		- I conigli non muoiono, ma Fibonacci ne preleva $u(t)$ coppie adulte a fine mese
		- → Quanti conigli ci sono in ogni mese? 
	- Ingresso → $u(t)$ coppie adulte prelevate
	- Uscita → $y(t)$ numero di coppie in ogni mese
	- Gli ingressi potrebbero essere ad esempio
		- $x_{1}(t)$ → numero di coppie giovani
		- $x_{2}(t)$ → numero di coppie adulte
		- Per cui ci sono le relazioni $$\begin{cases}
		x_{1}(t+1)=x_{2}(t) \\
		x_{2}(t+1)=x_{1}(t)+x_{2}(t)-u(t) \\
		y(t)=x_{1}(t)+x_{2}(t)
		\end{cases}$$
	- Si possono definire più buoni stati
		- Ad esempio definendo il numero di coppie totali $$x_{1}^{\prime} (t) := x_{1}(t)+x_{2}(t)$$ ottengo che $$\begin{cases}
		x_{1}^{\prime} (t+1)=x_{1}^{\prime} (t)+x_{2}(t)-u(t) \\
		x_{2}(t+1)=x^{\prime} _{1}(t)-u(t) \\
		y(t)=x^{\prime} _{1}(t)
		\end{cases}$$

- e) Saldo nel conto corrente → dinamico t.d.
	- Sia $u(t)$ il deposito netto giornaliero e $y(t)$ il saldo a fine giornata (prima dell'applicazione degli interessi)
	- Stato → potrei scegliere quello banale $x(t)=y(t)$, ma in tal caso si avrebbe $$x(t+1)=(1+\rho)x(t)+u(t+1)$$quindi NON è un buono stato ($x(t+1)$ dipende istantaneamente da $u(t+1)$)
	- Allora devo scegliere $x(t)$ saldo a inizio giornata e scrivere $$\begin{cases}y(t)=x(t)+u(t) \\ x(t+1)=(1+\rho)(x(t)+u(t))\end{cases}$$
## 2. Modello ARMA e Funzione di Trasferimento

(Notazione: da ora in poi smetteremo di usare $\mathbf{x}$ per indicare un vettore, ma useremo $x$ sia nel caso di scalari, che di vettori e matrici, e a seconda del contesto le operazioni sono definite in maniera diversa)

- Abbiamo definito un modello *interno* lineare dinamico come $$\begin{cases}\dot{x}=Ax+bu &(\text{a t.c.}) \\x(t+1)=Ax(t)+bu(t) &(\text{a t.d.}) \\y(t)=cx(t)+du(t)\end{cases}$$
	- Esistono altre formulazioni?

+ Introduciamo il *modello esterno* o *ARMA* (auto-regressive moving average come) $$\begin{align}  
\text{t.c.} \implies &y^{(n)}(t)+\alpha_{1}y^{(n-1)}(t)+\alpha_{2}y^{(n-2)}(t)+\dots+\alpha_{n}y^{(0)}(t)=\beta_{0}u^{(n)}(t)+\beta_{1}u^{(n-1)}(t)+\dots+\beta_{n}u^{(0)}(t)\\
\text{t.d.} \implies  &y(t+n)=\alpha_{1}y(t+n-1)+\alpha_{2}y(t+n-2)+\dots+\alpha_{n}y(t)=\beta_{0}u(t+n)+b_{1}u(t+n-1)+\dots \beta_{n}u(t)\end{align}$$
	- Il nome dipende dal fatto che nel caso t.d. si può scrivere il modello come $$y(t)=-\sum_{i=1}^n\alpha_{i}y(t-i)+\sum_{i=0}^n\beta_{i}u(t-i)$$dove la prima somma è la parte di auto regressione (AR) mentre la seconda una media mobile (MA)
	- Si noti la somiglianza tra le due espressioni → la derivata a t.c. corrisponde a un anticipo temporale a t.d.
		- Notazione → indico con:
			- $s$ l'operatore derivazione a t.c. $$s^{k}y(t):=\frac{d^ky}{dt^k}(t)$$
			- $z$ l'operatore anticipo temporale a t.d. $$z^ky(t):=y(t+k)$$
			- $p$ la generica operazione di derivazione $s$ o anticipo $z$, a seconda se siamo in t.c. o t.d.
		- → Il modello ARMA può essere riscritto genericamente nella *notazione polinomiale* $$(p^n+\alpha_{1}p^{n-1}+\dots+\alpha_{n})y(t)=(\beta_{0}p^n+\beta_{1}p^{n-1}+\dots+\beta n)u(t)$$
			- Posso allora definire i polinomi $D(p)$ e $N(p)$ tali che $$D(p)y(t)=N(p)u(t)$$
				- Che proprietà hanno i polinomi?
					- a) $D$ è monico, ovvero ha coefficiente pari a $p^n$ pari a 1
					- b) $D$ ed $N$ sono di grado $\leq n$
		- Che senso ha questa notazione? 
			- → A tempo continuo assume significato con la trasformata di Laplace $$\mathcal{L}\,[f](s)=\int_{-\infty}^{+\infty}f(t)e^{ -st }dt$$dove $s:=\sigma+j\omega \in \mathbb{C}$
				- Solitamente si definisce la trasformata con un integrale per $t>0$, ma per poterlo adeguare alle distribuzioni considero l'integrale su tutto $\mathbb{R}$ ma impongo che le funzioni siamo Laplace-trasformabili se e solo se $$\text{supp}(f)\subseteq[0, +\infty) $$
					- Questo implica che $f(0)=0$
				- Si verifica che la trasformata della derivata è per funzioni trasformabili data da $$\mathcal{L} \left[  \frac{dy}{dt}  \right] (s) =s(\mathcal{L}y(s))$$
				- Pertanto $$\begin{align}\mathcal{L} \left[ y^{(n)}(t)+\alpha_{1}y^{(n-1)}(t)+\dots+\alpha_{n}y^{(0)}(t) \right] &=s^nY(s)+\alpha_{1}s^{n-1}Y(s)+\dots+\alpha_{n}Y(s) \\&=(s^n+\alpha_{1}s^{n-1}+\dots+\alpha _{n})Y(s) \\&=D(s)Y(s)\end{align}$$dove si è posto $Y(s):=\mathcal{L} \left[  y(t)  \right](s)$ e $$\mathcal{L}[\beta_{0}u^{(n)}(t)+\beta_{1}u^{(n-1)}(t)+\dots+\beta_{n}u^{(0)}(t)]=N(s)U(s)$$dove naturalmente $U(s):=\mathcal{L} \left[  u(t)  \right](s)$, quindi: $$D(s)Y(s)=N(s)U(s)$$
			- Similmente, a tempo discreto vale con la trasformata zeta $$D(z)Y(z)=N(z)U(z)$$dove $Y(z):=\mathcal{Z} \left[  y(t)  \right](z)$ e $U(z):=\mathcal{Z} \left[  u(t)  \right](z)$
	- Pertanto ha senso definire la *funzione di trasferimento* del sistema $$G(p):=\frac{N(p)}{D(p)}$$che è effettivamente una funzione razionale fratta nei domini delle trasformate

+ A cosa servono questi vari modelli? → hanno scopi diversi
	+ Modello interno → utile a studiare sia il movimento libero che forzato degli stati $x$ del sistema
	+ Modello ARMA → utile a studiare sia il moto libero che forzato dell'uscita $y$ del sistema
	+ Funzione di Trasferimento (FdT) → utile a studiare SOLO il moto FORZATO del sistema
		+ Infatti abbiamo ipotizzato precedentemente che $Y(0)=U(0)=0$ 
		+ È una semplificazione enorme nei calcoli, utilissima ma solo per studiare come le uscite rispondono a  certi ingressi noti

+ Come passo da un modello all'altro? 
	  ![[scr 2026-05-28 alle 18.10.04.png]]
	+ a) Modello interno → esterno (ARMA)
		+ i) Metodo *intuitivo* → procedere per sostituzione
			+ Partendo dal sistema delle equazioni di stato, sostituire per ottenere un'unica equazione tra $y$ e $u$
		+ ii) Metodo *algoritmico* → esiste un metodo per sistematizzare questo passaggio
			+ So che il mio sistema è dato da $$px=Ax+bu \implies (pI-A)x=bu \implies x=(pI-A)^{-1}bu$$
				+ In questo caso $p$ è trattato come una banale variabile, non come un operatore lineare differenziale
			+ Il problema sta proprio nell'invertire la matrice $(pI-A)$ 
				+ La matrice è sempre invertibile perchè $p$ è da interpretare come variabile di un polinomio (questa teoria assume rigore solo nel dominio di Laplace/zeta)
				+ Come si inverte una generica matrice $n \times n$? Esiste una formula generale: $$(pI-A)^{-1}=\frac{\text{Cof}^T(p)}{\Delta_{A}(p)}$$
					+ $\text{Cof}^T(p)$ è la *matrice dei cofattori*, i cui elementi sono dati da $$\text{Cof}_{ij}(p)=(-1)^{i+j}\det(B_{ij})$$dove la matrice $B_{ij} \in Mat_{\mathbb{C}}(n-1, n-1)$  è la matrice $(pI-A)$ a cui è rimossa esattamente la riga $i$ e la colonna $j$
						+ È simile al metodo di Laplace per calcolare il determinante
						+ Si osservi che ogni elemento $\text{Cof}_{ij}$ è un polinomio nella variabile $p$ di grado al più $n-1$
					+ $\Delta_{A}(p)$ è banalmente il polinomio caratteristico di $A$ nella variabile $p$ $$\Delta_{A}(p)=\det(pI-A)$$
				+ (Bonus) Altro metodo algoritmico comodo → metodo di Faddev-Leverrier
					+ È un metodo ricorsivo comodo per calcolare algoritmicamente la FdT
					+ 1) Caso base: pongo $$B_{0}=I,  \quad  a_{0}=1$$
					+ 2) Passo ricorsivo: per ogni $k \in 1,\dots,n$ calcolo $$M_{k}:=AB_{k-1} $$
						+ Ne faccio la traccia: $$t_{k}:=\text{Tr}(M_{k})$$
						+ E calcolo $$\alpha_{k}=-\frac{1}{k}t_{k}  \quad  \text{e}  \quad \beta_{k}=c^TB_{k}b$$
							+ Per $k=n$ non serve il calcolo di $\beta_{n}$
						+ Infine il prossimo $B_{k}$ è dato da $$B_{k}=M_{k}+\alpha_{k}I$$
					+ La FdT sarà data da $$G(s)= \frac{\beta_{0}s^{n-1}+\beta_{1}s^{n-2}+\dots+\beta_{n-1}}{s^n+\alpha_{1} s^{n-1}+\dots+\alpha_{n}}$$
			+ Pertanto posso scrivere con la matrice inversa $$x=\left( \frac{\text{Cof}^T}{\Delta_{A}} \right)bu \implies y=c^Tx+du=c^T\left( \frac{\text{Cof}^T}{\Delta_{A}} \right)bu+du \implies \Delta_{A} \,y=(c^T\text{Cof}^Tb+d\Delta_{A})u$$
				+ Definisco ora $N_{A}:=c^T\text{Cof}^Tb+d\Delta_{A}$ tale che $$\Delta_{A} (p)\, y=N_{A}(p)\, u$$
			+ Vale allora che $D(p)=\Delta_{A}(p)$ e $N(p)=N_{A}(p)$? → in generale NO
				+ Infatti la condizione necessaria per cui questo avvenga e che gli ordini dei modelli esterni e interni coincidano, ma il modello esterno potrebbe avere ordine inferiore di quello interno
					+ Cioè riesco ad ottenere un polinomio $D(p)$ di ordine inferiore di $\Delta_{A}(p)$ (ma che non aggiunge nuove radici) → direi che $$\text{"}D(p)\subseteq \Delta_{A}(p) \text{ ", "} N(p) \subseteq N_{A}(p)\text{ "}$$
				+ Come agire? Quando una variabile $x_{i}$ è:
					+ a) *Inosservabile* = il suo valore e la sua evoluzione non ha alcun effetto sul sistema
						+ → In questo caso nel modello ARMA devo eliminare la radice "sbagliata" in comune
					+ b) *Irraggiungibile* ma osservabile = l'ingresso $u$ non ha effetto su essa, ma $x_{i}$ ha effetto sull'uscita $y$
						+ → In questo caso nel modello ARMA NON posso eliminare la radice in comune
				+ es. Serbatoi in serie
					+ Siano $x_{1}$, $x_{2}$ le masse di acqua di due serbatoi posti in serie
					+ Caso 1 → Osservo solo l'acqua in uscita da $x_{1}$ → $x_{2}$ è inosservabile 
						  ![[scr 2026-06-01 alle 12.13.32 1.png]]
						+ Ottengo quindi le equazioni 
							  ![[scr 2026-06-01 alle 12.14.50.png]]
						+ Si noti che risolvendo algoritmicamente abbiamo un fattore in comune $(s+k_{2})$
						+ → In questo caso è corretto, siccome $y=kx_{1}$ non dipende in alcun modo da $x_{2}$, eliminare le radici in comune
					+ Caso 2 → L'ingresso agisce solo su $x_{2}$ → $x_{1}$ è irraggiungibile 
						  ![[scr 2026-06-01 alle 12.18.14.png]]
					  - Ottengo quindi le equazioni 
						    ![[scr 2026-06-01 alle 12.18.58.png]]
					- In questo caso ottengo un fattore in comune $(s+k_{2})$ in entrambi i metodi risolutivi
					- → In questo caso se eliminassi tale fattore eliminerei una variabile fondamentale per l'evoluzione del sistema → NON cancello la radice
	- b) Modello esterno (ARMA) → FdT
		- In questo caso banalmente $$G(p)=\frac{N(p)}{D(p)}$$
			- → Devo eliminare le radici in comune, anche se legate a poli osservabili ma irraggiungibili
				- Infatti, la FdT è basata sull'ipotesi che qualsiasi variabile di stato sia all'inizio nulla $x_{i}(0)=0$, cioè studia solo il movimento *forzato* del sistema (come $Y$ reagisce agli ingressi $U$)
				- In tal caso, qualsiasi variabile di stato che non è alterata dagli ingressi (irraggiungibile) rimarrà necessariamente sempre nulla
				- Ovviamente se volessimo studiare invece il movimento libero, devo usare ARMA e quindi mantenere i poli irraggiungibili
		- Si noti che $G$ è una funzione complessa razionale di variabile complessa → avrà un certo numero di poli e di zeri $$G(p)=\beta_{r} \frac{(p-z_{1})(p-z_{2})\dots(p-z_{n-r})}{(p-p_{1})(p-p_{2})\dots(p-p_{n})}$$
			- Indico con $n$ il numero di poli (che può essere minore del numero di variabili di stato $n$ del modello interno) e con $r=\text{\#poli}-\text{\#zeri}$ il grado relativo della FdT
	- c) Modello esterno (ARMA) → interno
		- Questo processo è anche detto *realizzazione* del modello ARMA
		- Si osservi che mentre per ogni modello interno esiste un unico ARMA associato, non è vero viceversa
			- Infatti se $T$ è invertibile e $x$ è il vettore di stato, posso costruire gli stati $z=Tx$ tali che ponendo $$\begin{align} A_{z}&=TAT^{-1} \\ b_{z}&=Tb \\ c^T_{z}&= c^T T^{-1} \\ d_{z}&=d\end{align}$$ ottengo un sistema lineare $$\begin{cases}\dot{z}=A_{z}z+b_{z}u \\ y=c_{z}^Tz+d_{z}u \end{cases}$$ che ha la stesso ARMA e FdT del modello di partenza
				- $A$ e $A_{z}$ in particolare sono matrici simili → hanno lo stesso polinomio caratteristico
			- Pertanto ha senso trovare UNA $z$ "comoda", detta *forma canonica* tale da poter ricavare poi tutti i sistemi ottenuti tramite le sue trasformazioni
		- Caso particolare → è facile se $N(p)=\beta_{n-1}$ costante
			- In tal caso posso passare al modello interno proprio come passavo da una singola ODE di ordine $n$ a un sistema lineare di ODE
			- Definisco infatti le $x$ tali che, posto $D(p)=p^ny+\alpha_{1}p^{n-1}y+\dots+\alpha_{n}y$$$\begin{cases} x_{1}=y \\ px_{1}=x_{2} \\ px_{2}=x_{3} \\ \dots \\ px_{n-1}=x_{n} \\ px_{n}=p^ny=-\alpha_{1}x_{n}+\alpha_{2}x_{n-1}+\dots+\alpha_{n}x_{1}+\beta_{n} u \end{cases}$$ottenendo gli stati e l'equazione di stato del sistema
		- Caso generale → immagino $D(p)$ come prima ma $N(p)=\beta_{0}p^{n}+\beta_{1}p^{n-1}+\dots\beta_{n}$
			- In tal caso posso definire un vettore di stato "comodo" come $$z_{i}=(p^{n-i} +\alpha_{1}p^{n-i-1}+\dots+a_{n-i})y-(\beta_{0}p^{n-i}+\beta_{1}p^{n-i-1}+\dots+\beta_{n-1})u$$
				- L'idea è $z_{i}\to \frac{D(p)y-N(p)u}{p^n}$ scartando però tutti i termini di $p$ a potenza negativa
				- Si osservi che per $i=n$: $$z_{n}=y-\beta_{0}u  \implies y=z_{n}+\beta_{0}u$$ e in questo modo ho trovato facilmente l'equazione d'uscita
					- Segue che $$c=\begin{pmatrix}
					0 & 0 & \dots & 0  & 1
					\end{pmatrix}, \, \, d=\beta_{0}$$
			- Vale inoltre che $$\begin{align} pz_{i}&=p(p^{n-i} +\alpha_{1}p^{n-i-1}+\dots+a_{n-i})y-p(\beta_{0}p^{n-i}+\beta_{1}p^{n-i-1}+\dots+\beta_{n-1})u \\ &= (p^{n-i+1} +\alpha_{1}p^{n-i}+\dots+a_{n-i}p)y-(\beta_{0}p^{n-i+1}+\beta_{1}p^{n-i}+\dots+\beta_{n-1}p)u \\ &= (p^{n-i+1} +\alpha_{1}p^{n-i}+\dots+a_{n-i}p+\alpha_{n-i+1}-\alpha_{n-i+1})y \\ &\quad \quad \qquad \qquad			-(\beta_{0}p^{n-i+1}+\beta_{1}p^{n-i}+\dots+\beta_{n-i}p+\beta_{n-i+1}-\beta_{n-i+1})u  \end{align}$$
				- Si noti allora che:
					- $i>1$ → le parentesi moltiplicate per $y$ e $u$ danno proprio il termine $z_{i-1}$, per cui $$\begin{align} pz_{i}&=z_{i-1}-\alpha_{n-i+1}y+\beta_{n-i+1}u \\ &=z_{i-1}-\alpha_{n-i+1}(z_{n}+\beta_{0}u)+\beta_{n-i+1}u \\ &=z_{i-1}-\alpha_{n-i+1}z_{n}+(\beta_{n-i+1}+\beta_{0}\alpha_{n-i+1})u \\ &= z_{i-1}-\alpha_{n-i+1}z_{n}+\gamma_{n-i+1}u \end{align}$$ definendo $$\gamma_{i}:=\beta_{i}-\beta_{0}\alpha_{i}$$
					- $i=1$ → $z_{0}=0$ pertanto $$pz_{1}=-\alpha_{n}z_{n}+\gamma_{n}u$$
			- Pertanto le matrici sono date da $$\begin{align}
			&A=\begin{pmatrix}
			0 & 0 & \dots & 0 & -\alpha_{n} \\
			1 & 0 & \dots & 0 & -\alpha_{n-1} \\
			0 & 1 & \dots & 0 & -\alpha_{n-2} \\
			\vdots & \vdots &  & \vdots & \vdots \\
			0 & 0 & \dots & 1 & -\alpha_{1} 
			\end{pmatrix}, \quad \, \, b=\begin{pmatrix}
			\gamma_{n} \\
			\gamma_{n-1} \\
			\gamma_{n-2} \\
			\vdots \\
			\gamma_{1}
			\end{pmatrix} \\\\
			&c=\begin{pmatrix}
					0 & 0 & \dots & 0  & 1
					\end{pmatrix}, \quad \, \, d=\beta_{0}
			\end{align}$$
## 3. Aggregati di sottosistemi

- Immagino di avere $N$ sotto-sistemi di cui conosco il modello (interno, ARMA, FdT)
	- Sia $x_{i}$ il vettore di stato del sistema $i$-esimo, $u_{i}$ e $y_{i}$ ingressi e uscite di tale sotto-sistema, e $G_{i}$ la sua funzione di trasferimento
	- Il sistema ha complessivamente un ingresso $u$, un'uscita $y$ e una FdT $G$
	- → Come formulo il modello per il loro aggregato?

+ a) Metodo algebrico
	+ Devo scrivere un sistema lineare, dove ogni equazione è del tipo $$y_{i}=G_{i}u_{i}=G_{i}\,L_{i}(u, y_{1}, y_{2}, \dots, y_{N})$$dove $L_{i}$ è lineare
		+ Cioè devo esprimere l'ingresso del blocco $i$-esimo $u_{i}$ in funzione dell'ingresso di tutto il sistema $u$ e delle uscite degli altri sotto sistemi $y_{j}$
	+ Risolvendo il sistema ottengo la funzione di trasferimento di tutte le uscite rispetto all'ingresso $u$ $$y_{i}=G^{\prime}_{i}u$$
	+ Infine posso esprimere l'uscita $y$ del sistema come una combinazione lineare delle $y_{i}$ e di $u$ $$y=\alpha_{1}y_{1}+\dots+\alpha_{N}y_{N}+\beta u=(\alpha_{1}G^{\prime} _{1}+\dots+\alpha_{N}G^{\prime} _{N}+\beta)u$$ottenendo la funzione di trasferimento complessiva $$y=Gu$$
	- es. 
		  ![[scr 2026-06-01 alle 14.15.56.png]]



- b) Metodo configurazioni standard
	- Esistono 3 semplici configurazioni che ci permettono di scrivere rapidamente la FdT del sistema e ricavarne il modello interno ed esterno
	- a) Sistemi in *serie* 
		  ![[scr 2026-06-01 alle 14.17.03.png|500]]
		- i) FdT → è data da $$G=G_{1}G_{2}$$
			- Infatti il sistema è $$\begin{cases} y_{1}=G_{1}u \\ y_{2}=G_{2}y_{1}=G_{1}G_{2}u \\ y=y_{2}=G_{1}G_{2}u \end{cases}$$
		- ii) Modello interno → il sistema è $$\begin{cases} px_{1}=A_{1}x_{1}+b_{1}u \\ px_{2}=A_{2}x_{2}+b_{2}y_{1} \\ y_{1}=c_{1}^Tx_{1}+d_{1}u \\ y=y_{2}=c_{2}^Tx_{2}+d_{2}y_{1} \end{cases} \implies  \begin{cases} px_{1}=A_{1}x_{1}+b_{1}u \\ px_{2}=A_{2}x_{2}+b_{2}(c_{1}^Tx_{1}+d_{1}u)=A_{2}x_{2}+b_{2}c_{1}^Tx_{1}+d_{1}b_{2}u \\ y_{1}=c_{1}^Tx_{1}+d_{1}u \\ y=y_{2}=c_{2}^Tx_{2}+d_{2}(c_{1}^Tx_{1}+d_{1}u)=c_{2}^Tx_{2}+d_{2}c_{1}^Tx_{1}+d_{1}d_{2}u \end{cases}$$
			- Quindi lo schema matriciale è 
				  ![[scr 2026-06-01 alle 14.41.26.png|575]]
				- La matrice $A$ del sistema è triangolare a blocchi
					- Quindi suoi autovalori sono l'unione degli autovalori dei due sistemi (il che era intuibile guardando la forma della FdT)
		- iii) Moderno esterno → so che $$G=G_{1}G_{2}=\frac{N_{1}N_{2}}{D_{1}D_{2}}$$
			- La domanda allora è: quando nell'equazione ARMA globale $N=N_{1}N_{2}$ e $D=D_{1}D_{2}$?
			- Ci possono essere due casi di poli/zeri in comune:
				- a) $N_{2}$ e $D_{1}$ hanno una radice in comune (polo → zero) 
					- In questo caso c'è una variabile di stato che è inosservabile
						- Infatti se $G_{1}$ ha polo in $\lambda$, il sistema avrà un transitorio di tipo $e^{\lambda t}$ 
						- Quando questo transitorio entra in $G_{2}$, viene moltiplicato per $s-\lambda$, cioè derivato e sommato a $-\lambda e^{\lambda t}$, restituendo esattamente $0$
					- → Posso eliminare la radice in comune nell'ARMA
				- b) $N_{1}$ e $D_{2}$ hanno una radice in comune (zero → polo)
					- In tal caso c'è una variabile di stato irraggiungibile
						- Infatti $G_{2}$ vorrebbe avere un transitorio di tipo $e^{\lambda t}$ ma lo zero al numeratore di $G_{1}$ blocca tale modo di $u$ in entrata
					- → Devo mantenere la radice in comune nell'ARMA
	- b) Sistemi in *parallelo* 
		  ![[scr 2026-06-01 alle 14.19.23.png|394]]
		- i) FdT → è data da $$G=G_{1}+G_{2}$$
			- Infatti il sistema è $$\begin{cases} y_{1}=G_{1}u \\ y_{2}=G_{2}u \\ y=y_{1}+y_{2}=(G_{1}+G_{2})u \end{cases}$$
		- ii) Modello interno → il modello è banalmente diagonale $$\begin{cases} px_{1}=A_{1}x_{1}+b_{1}u \\ px_{2}=A_{2}x_{2}+b_{2}u \\ y=y_{1}+y_{2}=c_{1}^Tx_{1}+d_{1}u+c_{2}^Tx_{2}+d_{2}u \end{cases}$$
			- Quindi lo schema matriciale è 
				  ![[scr 2026-06-01 alle 15.14.01.png|475]]
		- iii) Modello esterno → so che $$G=G_{1}+G_{2}=\frac{N_{1}D_{2}+D_{1}N_{2}}{D_{1}D_{2}}$$
			- In questo caso l'unico caso di radici in comune è se $D_{1}$ e $D_{2}$ condividono una radice (zero → zero)
				- Siccome lo steso ingresso $u$ arriva ad entrambe e produce un transitorio del tipo $e^{\lambda t}$ il transitorio complessivo sarà un termine del tipo $(A+B)e^{\lambda t}$
				- Guardando la FdT però al denominatore c'è una radice doppia $(p-\lambda)^2$ che genera un termine del tipo $te^{\lambda t}$ che nella realtà non esiste
				- → È un caso di inosservabilità → devo semplificare 
	- c) Sistemi in *retroazione* 
		  ![[scr 2026-06-01 alle 14.25.12.png|475]]
		- È una configurazione fondamentale in automatica
			- La linea di $G_{1}$ è detta di "andata", la $G_{2}$ di "ritorno"
			- Il sistema è anche detto anello
		- i) FdT → è data da $$G=\frac{G_{1}}{1\mp G_{1}G_{2}}$$
			- Infatti il sistema è $$\begin{cases} y_{1}=G_{1}(u\pm y_{2}) \\ y_{2}=G_{2}y_{1} \\ y=y_{1} \end{cases} \implies \begin{cases} y_{1}=G_{1}(u\pm G_{2}y_{1}) \\ y_{2}=G_{2}y_{1} \\ y=y_{1} \end{cases} \implies \begin{cases} y_{1}=\frac{G_{1}}{1\mp G_{1}G_{2}}u=y \\ y_{2}=G_{2}y_{1} \\ \end{cases}$$
		- ii) Modello interno →  la forma matriciale è complicata $$\begin{cases} px_{1}=A_{1}x_{1}+b_{1}(u\pm y_{2}) \\ px_{2}=A_{2}x_{2}+b_{2}y \\ y=c_{1}^Tx_{1}+d_{1}(u\pm y_{2}) \\ y_{2}=c_{2}^Tx_{2}+d_{2}y \end{cases}\implies y=\frac{c_{1}^Tx_{1}\pm d_{1}c_{2}^Tx_{2}+d_{1}u}{1\mp d_{1}d_{2}}$$
		- iii) Modello esterno → so che $$G=\frac{G_{1}}{1\mp G_{1}G_{2}}=\frac{N_{1}}{D_{1}\mp D_{1} \frac{N_{1}N_{2}}{D_{1}D_{2}}}=\frac{N_{1}D_{2}}{D_{1}D_{2}\mp N_{1}N_{2}}$$
			- In questo caso quando passo al modello ARMA devo rendere monico il polinomio $D$ dividendo per il fattore $(1\mp d_{1}d_{2})$, quindi la guess è $$D=\frac{D_{1}D_{2}\mp N_{1}N_{2}}{1\mp d_{1}d_{2}}, \,\,\,N=\frac{N_{1}D_{2}}{1\mp d_{1}d_{2}}$$
			- Questo è vero tranne nel caso di due radici in comune:
				- a) $N_{1}$ e $D_{2}$ hanno una radice in comune (nell'ordine 2 → 1 → uscita quindi polo → zero → uscita)
					- → È un caso di inosservabilità → posso cancellare
				- b) $N_{2}$ e $D_{1}$ hanno una radice in comune (zero → polo → uscita)
					- → È un caso irraggiungibilità → devo mantenere la radice

| Aggregato                                                      | RADICI DA ELIMINARE (INOSSERVABILI)<br>*(Artefatti da scartare subito dall'ARMA)*                                                                          | RADICI DA TENERE (IRRAGGIUNGIBILI)<br>*(Da tenere nell'ARMA, si semplificano in FdT)*                                                                               |
| :------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **SERIE**<br>$u \rightarrow G_1 \rightarrow G_2 \rightarrow y$ | **Polo in $G_1$, Zero in $G_2$**<br>$D_1(s) = N_2(s) = 0$<br>*(Il segnale sbatte sul muro $G_2$ prima di uscire)*                                          | **Zero in $G_1$, Polo in $G_2$**<br>$N_1(s) = D_2(s) = 0$<br>*(Il muro $G_1$ scherma l'ingresso, ma il polo $G_2$ esce)*                                            |
| **PARALLELO**<br>$y = y_1 + y_2$                               | **Polo in $G_1$, Polo in $G_2$**<br>$D_1(s) = D_2(s) = 0$<br>*(Duplicarli creerebbe una falsa risonanza $t e^{\lambda t}$. Presi 1 volta sola col m.c.m.)* | **Zero in $G_i$, Polo in $G_i$**<br>*(Condizioni algebriche casuali in cui il numeratore globale si azzera)*                                                        |
| **RETROAZIONE**<br>Andata: $G_1$<br>Ritorno: $G_2$             | **Zero in andata, Polo in ritorno**<br>$N_1(s) = D_2(s) = 0$<br>*(Il transitorio del sensore $G_2$ sbatte sullo zero in andata prima di uscire in $y$)*    | **Polo in andata, Zero in ritorno**<br>$D_1(s) = N_2(s) = 0$<br>*(Il polo in andata esce in $y$, ma lo zero del sensore gli impedisce di fare il giro dell'anello)* |

### 3E - Esempio

- es. Calcolo della FdT di un aggregato 
	  ![[scr 2026-06-01 alle 15.54.19.png]] ![[scr 2026-06-01 alle 15.54.36.png]] ![[scr 2026-06-01 alle 15.55.08.png]] ![[scr 2026-06-01 alle 15.55.30.png]] ![[scr 2026-06-01 alle 15.56.13.png]]
	 ![[scr 2026-06-01 alle 15.56.48.png]]
	

## 4 - Movimento

- Come trovo la soluzione $x(t)$ al sistema lineare di stato?
	- Supponiamo di avere un sistema $\dot{x}(t)=Ax(t)+bu$ lineare e tempo-invariante
	- Esistono due cause del movimento:
		- a) Movimento *libero* → lo stato iniziale $x(0)$
		- b) Movimento *forzato* → l'ingresso $u(t)$
	- Si può introdurre una notazione operatoriale che tiene conto di ciò: $$x(t)=\hat{\Phi}(t)x(0)+\hat{\Psi}(t)u([0, t))$$detta anche *equazione di Lagrange generalizzata*
		- Da cui si ottiene $$y(t)=c^T\hat{\Phi}(t)x(0)+c^T\hat{\Psi}(t)u([0, t))$$
		- a) Movimento libero → $\hat{\Phi}(t)$ → è la *matrice di transizione*
			- È l'equivalente dell'operatore $\hat{U}(t)$ in meccanica quantistica → spiega come evolve lo stato nel tempo se inizialmente vale $x(0)$
			- Assume forme esplicite diverse a seconda del tempo:
				- i) A tempo continuo (t.c.) → è la matrice esponenziale $$\hat{\Phi}(t)=e^{At}$$
				- ii) A tempo discreto (t.d.) → è la matrice potenza $$\hat{\Phi}(t)=A^t$$
		- b) Movimento forzato → $\hat{\Psi}(t)$ operatore di movimento forzato
			- Prende in ingresso tutta la funzione $u(t)$ nell'intervallo $[0, t)$ e restituisce una funzione del tempo
			- Anche in questo caso ci sono due possibilità
				- i) A tempo continuo → è un integrale di convoluzione $$\hat{\Psi}(t)u=\int_{0}^te^{A(t-\tau)}bu(\tau)d\tau=(e^{A\tau}bH(\tau) *u)(t)$$
					- Qui $\tau$ è la variabile muta del prodotto di convoluzione
				- ii) A tempo discreto → è una convoluzione discreta $$\hat{\Psi}(t)u=\sum_{k=0}^{t-1}A^{t-k-1}bu(k)=(A^{\tau-1}bH( \tau-1)*u)(t)$$
					- In questo caso si noti come l'intero finale sia $t-1$ e non $t$
		- Riassumendo:
			- i) A tempo continuo $$\begin{cases} x(t)=e^{At}x(0)+\int_{0}^te^{A(t-\tau)}bu(\tau)d\tau \\ y(t)=c^Te^{At}x(0)+c^T\int_{0}^te^{A(t-\tau)}bu(\tau)d\tau +du(t) \end{cases}$$
				- La prima detta *equazione di Lagrange* per la soluzione di sistemi lineari di ODE
			- ii) A tempo discreto $$\begin{cases} x(t)=A^tx(0)+\sum_{k=0}^{t-1}A^{t-k-1}bu(k) \\ y(t)=c^TA^tx(0)+c^T\sum_{k=0}^{t-1}A^{t-k-1}bu(k) +du(t) \end{cases}$$
	- Ovviamente essendo risoluzioni di sistemi lineari vale il principio di sovrapposizione
		- Quindi posso studiare separatamente moto libero e forzato e poi combinare le due informazioni
		- Inoltre posso, ad esempio, nei sistemi con più ingressi, considerarne uno alla volta e sommare le uscite
			- Siano $x$ le variabili di stato e $u_{1}, \dots, u_{m}$ gli ingressi
			- Allora ha senso eseguire le prove in questo ordine:
				- i) $m$ prove dove accendo solo un singolo ingresso $u_{j}≠0$ e con $x(0)=0$
				- ii) La $m+1$ prova di movimento libero, cioè $u_{1}, \dots, u_{m}=0$ e $x(0)≠0$
		- Il principio di sovrapposizione mi fornisce anche un metodo per trovare empiricamente la matrice di transizione 
			  ![[scr 2026-06-01 alle 17.36.07.png]]
			- Se ho $n$ variabili di stato, $\hat{\Phi}(t)$ sarà una matrice $n \times n$
			- Per trovare i suo elementi di matrice $\Phi_{ij}(t)$ posso porre $x(0)=\begin{pmatrix}0 & 0 & \dots & 0 & 1 & 0 & \dots & 0\end{pmatrix}=e_{j}$ dove l'elemento non nullo è il $j$-esimo
			- Infatti: $$x(t)=\hat{\Phi}(t)e_{j}=\begin{pmatrix} \Phi_{1j}(t) \\ \Phi_{2j}(t) \\ \vdots \\ \Phi_{nj}(t) \end{pmatrix}$$
- Nella formula di Lagrange si suppone $t\geq0$ → quando posso trovare la soluzione per $t<0$?
	- Si definisce *reversibile* un sistema per cui ciò è possibile
		- Infatti suppongo sia noto $x(t)$ e voglio conoscere $x(0)$
		- Sapendo che $$x(t)=\hat{\Phi}(t)x(0)+\hat{\Psi}(t)u$$il sistema si dice reversibile se posso calcolare $$x(0)=\hat{\Phi}^{-1}(t)[x(t)-\hat{\Psi}(t)u]$$
	- La reversibilità del sistema dipende dal dominio del tempo
		- a) A tempo continuo → tutti i sistemi lineari tempo-invarianti sono reversibili 
			- È una diretta conseguenza del teorema di esistenza ed unicità di Cauchy
			- Si può anche vedere dalle proprietà della matrice esponenziale $$\hat{\Phi}(t)\hat{\Phi}^{-1}(t)=e^{At}e^{ -At }=I$$
		- b) A tempo discreto → non vale in generale la reversibilità
			- Infatti dai teoremi di teoria degli operatori, lo spettro di un operatore lineare potenza è $\sigma(A^t)=[\sigma(A)]^t$
			- Quindi $$A^t \text{ non singolare} \iff A \text{ non singolare}$$cioè se $\lambda=0 \notin \sigma(A)$
	- Analizzare i sistemi irreversibili può risultare di particolare interesse
		- Si consideri il sistema $$A^t(t)x(0)=x(t)-\hat{\Psi}(t)u$$dove il secondo membro si suppone noto
			- Siccome $A$ non è invertibile, ci aspettiamo che per ogni $t>0$ fissato il sistema abbia $\infty$ soluzioni (da Rouché-Capelli)
				- → $\text{dim}(\text{Ker}(A))\geq1$
			- Il $\text{Ker}(A)$ è generato dagli autovettori $v$ associati all'autovalore $\lambda=0$
				- In particolare, tali $v$ sono anche autovettori di $A^t$
			- Allora si considerino due soluzioni $x^{\prime}(0),\,\, x^{\prime \prime}(0)=x^{\prime}(0)+\alpha v \in \text{Ker}(A)$
				- Queste soluzioni dopo un passo temporale si intersecheranno! Infatti $$x(1)=Ax^{\prime\prime}(0)+bu(0)=Ax^{\prime} (0)+A\alpha v +b(0)=Ax^{\prime} (0)$$
		- Un particolare tipo di sistemi irreversibili sono quelli a *memoria finita*
			- Sono sistemi in cui l'unico autovalore è $\lambda=0$
			- Sono caratterizzati dalla seguente relazione$$\sigma(A)=\left\{ 0 \right\} \iff \exists t^*>0: A^{t}=0 \,\, \forall t\geq t^+$$
				- Si dimostra tramite il teorema di Cayley-Hamilton, che afferma che ogni matrice annulla il proprio polinomio caratteristico (se posta come variabile del polinomio) $$\Delta_{A}(A)=0 \implies  A^n+\alpha_{1}A^{n-1}+\dots+\alpha_{1}A+\alpha_{0}=0$$
					- Siccome se $\sigma(A)=0$ allora il polinomio caratteristico è $\Delta _A(\lambda)=\lambda^n$ e quindi dal teorema $$A^n=0$$quindi esiste $t^*\leq n$ che avvera la tesi
			- Quindi dopo un certo numero di passi finiti (al raggiungimento di $t^*$) il sistema interrompe il movimento libero per sempre!

### 4E - Esempi

- Ritardatore → è l'unico sistema a dimensione infinita che vedremo $$y(t)=u(t-\tau)$$
	- Infatti si presuppone di sapere l'ingresso $u$ in tutti gli istanti nell'intervallo $[t-\tau, \tau]$
		- Quindi se selezionassimo una variabile di stato $x_{T}=u(T), \, \forall T\in[t-\tau,t]$ avremmo infinite non numerabili variabili di stato $n=+\infty$
	- Posso risolverla espandendo in serie di Taylor (in maniera formale) l'ingresso $$u(t-\tau)=\sum _{k=0}^{+\infty}\frac{(-\tau)^k}{k!}u^{(k)}(t) =\sum _{k=0}^{+\infty} \frac{(-\tau)^k}{k!}s^ku(t)=\sum _{k=0}^{+\infty}\frac{(-s\tau)^k}{k!}u(t) =:e^{-s \tau}u(t)$$
		- Ovviamente $e^{-s\tau}$ è un operatore, che però diventa un'effettiva esponenziale passando al dominio delle frequenze (applicando $\mathcal{L}$)
			- Infatti $$\mathcal{L} \left[  u(t-\tau)  \right]= e^{-s\tau}\mathcal{L} \left[  u(t)  \right] $$
	- Pertanto si ha una FdT non polinomiale fratta! $$G(s)=e^{-s\tau}$$
## 5 - Equilibrio

- Suppongo di avere un sistema lineare tempo-invariante $$px(t)=Ax(t)+bu(t)$$
	- Si *equilibrio* di un sistema lineare la coppia $(\bar{x}, \bar{u})$ tali che $$\begin{cases} x(0)=\bar{x} \\ u(t) =\bar{u} \,\, \forall t\geq{0}\end{cases} \implies x(t)=\bar{x} \,\, \forall t\geq{0}$$
	- Per trovare gli equilibri devo:
		- a) A tempo continuo → pongo $$px=\dot{x}=0 \implies A\bar{x}=-b\bar{u}$$
		- b) A tempo discreto → pongo $$x(t+1)=\bar{x} \implies (I-A)\bar{x}=b\bar{u}$$
	- In entrambi i domini del tempo ci sono 4 possibilità:
		- (Indico con $M$ la matrice $A$ a t.c. e $I-A$ a t.d.)
		- i) La matrice non è singolare ($\det (M)≠0$)
			- → Esiste un unico equilibrio $$\begin{align} \bar{x}=-A^{-1}b\bar{u} \quad &(\text{a t.c.}) \\ \bar{x}=(I-A)^{-1}b\bar{u} \quad &(\text{a t.d.}) \end{align}$$
				- Ciò equivale a dire che per ogni $\bar{x}$ fissato che voglio raggiungere, esiste un'unico ingresso costante da applicare $\bar{u}$
			- In tal caso ottengo $y=(-c^TA^{-1}b+d)\bar{u}$ a t.c. e $y=(c^T(I-A)^{-1}b+d)\bar{u}$ a t.d.
				- Posso allora definire il *guadagno* del sistema $$\begin{align} \mu:=-c^TA^{-1}b+d \quad (\text{a t.c.}) \\ \mu := c^T(I-A)^{-1}b+d \quad (\text{a t.d.}) \end{align}$$ come il rapporto $y/u$ all'equilibrio
				- Si osservi che confrontandolo con la forma della FdT si ottiene che $$\begin{align} \mu=G(0) \quad (\text{a t.c.}) \\ \mu=G(1) \quad (\text{a t.d.}) \end{align}$$
				- Inoltre negli aggregati elementari $$\begin{align} \text{Serie} \implies &\mu=\mu_{1}\mu_{2} \\ \text{Parallelo} \implies &\mu=\mu_{1}+\mu_{2} \\ \text{Retroazione} \implies  &\mu=\frac{\mu_{1}}{1\mp \mu_{1}\mu_{2}} \end{align}$$
		- ii) $M$ è singolare ($\det(M)=0$) e $\bar{u}=0$
			- Allora dal teoreama di Rouché-Capelli esistono $\infty$ equilibri $$\begin{align} A\bar{x}=0 \quad (\text{a t.c.}) \\ (I-A)\bar{x}=0 \quad (\text{a t.d.}) \end{align}$$dove $\bar{x}$ è autovettore di $A$ associato a $$\begin{align} \lambda=0 \quad (\text{a t.c.}) \\ \lambda=1 \quad (\text{a t.d.}) \end{align}$$(o equivalentemente autovettore di $M$ con $\lambda=0$)
		- iii) $M$ è singolare, $\bar{u}≠0$ e $\text{rank}\begin{pmatrix} M & b \end{pmatrix}=\text{rank}(M)$
			- Allora se $\bar{x}$ è equilibrio, lo è anche $$\bar{x}^{\prime} =\bar{x}+\alpha v$$dove $v$ è l'autovettore associato a $\lambda=0$ o $1$ come sopra
			- → Gli equilibri formano un sottospazio di dimensione $m_{g}$, molteplicità geometrica di $\lambda$
		- iv) $M$ è singolare, $\bar{u}≠0$ e $\text{rank}\begin{pmatrix}M&b\end{pmatrix}=\text{rank}(M)+1$
			- → Non esistono equilibri
### 5E - Esempi

+ es. Newton con attrito viscoso
	+ Ho che $$\begin{cases} \dot{x_{1}}=x_{2} \\ \dot{x_{2}}=-\frac{h}{m}x_{1}+\frac{u}{m} \end{cases} \implies A = \begin{pmatrix} 0 & 1 \\ 0 & -\frac{h}{m} \end{pmatrix}, \quad b=\begin{pmatrix} 0 \\ \frac{1}{m} \end{pmatrix}$$
	- Allora $A$ è singolare ($\det A=0$)
	- Inoltre è triangolare → gli autovalori sono $\lambda_{1}=0, \,\,\lambda_{2}=-\frac{h}{m}$
	- Calcolo $\bar{x}$ dalle condizioni di equilibrio $0=A\bar{x}+b\bar{u}$
		- Se $\bar{u}=0$ ho $$\begin{cases} 0=x_{2} \\ 0=-\frac{h}{m}x_{2} \end{cases} \implies \begin{cases}  x_{1} \,\,\text{qualsiasi}\\ x_{2}= 0 \end{cases}$$
		- L'autovettore associato a $0$ è $$\text{Ker}(A)=\text{Ker}\begin{pmatrix} 0 & 1 \\ 0 & -\frac{h}{m} \end{pmatrix}=\text{Span}\begin{pmatrix} 1 \\ 0 \end{pmatrix}$$
## 6 - Stabilità

- Si dice *stabilità* una proprietà del movimento libero di un sistema che studia il comportamento asintotico attorno a una una soluzione
	- Esistono 4 classi di stabilità → una soluzione $x(t)$ del sistema è:
		- a) *Stabile* se le orbite che partono vicine rimangono vicine per tutti i tempi $$\forall \varepsilon>0, \exists \delta>0: \forall z \text{ soluzione}: ||z(0) -x(0)||<\delta \implies ||z(t)-x(t)||<\varepsilon, \,\, \forall t\geq{0}$$
			- a1) *Asintoticamente stabile* se tutte le orbite convergono a tale soluzione $$\forall \varepsilon>0, \exists \delta>0: \forall z \text{ soluzione}: ||z(0) -x(0)||<\delta \implies ||z(t)-x(t)|| \overset{t \to +\infty}{ \to }0$$
			- a2) *Semplicemente stabile* se stabile ma non asintoticamente, ovvero esiste una soluzione che rimane vicina ma non converge a $x(t)$ 
		- b) *Instabile* se non è stabile, cioè se esiste qualche soluzione illimitata $$ \exists \varepsilon>0 : \forall \delta>0, \exists z \text{ soluzione}: ||z(0) -x(0)||<\delta \,\,\, e\,\,\, \exists \bar{t}\geq 0 : ||z(\bar{t})-x(\bar{t})|| \geq \varepsilon $$
			- b1) *Debolmente instabile* se diverge come un polinomio
			- b2) *Fortemente instabile* se diverge esponenzialmente
	- Come si determina la stabilità di un equilibrio?
		- a) Caso semplicissimo del I ordine, con $\lambda\in \mathbb{C}$$$\begin{align} \dot{x}=\lambda x \implies  x(t)=x(0)e^{\lambda t} \quad &(\text{a t.c.}) \\ x(t+1)=\lambda x(t) \implies x(t)=x(0)\lambda^t \quad &(\text{a t.d.}) \end{align}$$
			- Pertanto si noti che $$\begin{align} \text{Tempo continuo} \implies \text{Re}(\lambda)&\begin{cases} <0 \implies  \text{asintoticamente stabile} \\ =0 \implies  \text{semplicemente stabile} \\ >0 \implies  \text{instabile (fortemente)} \end{cases} \\ \\ \text{Tempo discreto} \implies |\lambda|&\begin{cases} <1 \implies  \text{asintoticamente stabile} \\ =1 \implies  \text{semplicemente stabile} \\ >1 \implies  \text{instabile (fortemente)} \end{cases} \end{align}$$
			- Questi sono dei criteri per un caso banale ma vedremo che l'idea vale in generale
		- b) $A$ diagonalizzabile
			- Si noti che la stabilità non dipende dal sistema matematico scelto → posso scegliere lo stato più comodo per studiarla 
			  ![[scr 2026-06-01 alle 21.35.17.png]]
			- Se riesco a passare a un sistema $pz=TAT^{-1}z$ dove $TAT^{-1}$ è diagonale, posso scomporre il sistema in sistemi di I ordine
				- Gli elementi sulla diagonale sono gli autovalori, che potrebbero anche essere complessi $\lambda \in \mathbb{C}$, i $z_{i}$ sono gli autovettori del sistema
				- Se ritorno allo stato originario del sistema ovviamente tutte le orbite ritornano reali
			- In tal caso applico il criterio del caso banale, per ogni $\lambda_{i}$ → se $A$ è diagonalizzabile: $$\begin{matrix} \text{Tipo stabilità} & \text{t.c.} & \text{t.d.} \\ \\ \text{Asintotica stabilità} & \mathrm{Re}(\lambda_{i})<0, \,\forall i & |\lambda_{i}|<1, \,\,\forall i \\ \text{Semplice stabilità} & \begin{cases} \mathrm{Re}(\lambda_{i})\leq 0, \,\, \forall i \\ \exists k: \mathrm{Re}(\lambda_{k})=0 \end{cases}  & \begin{cases} |\lambda_{i}|\leq 1, \,\, \forall i \\ \exists k: |\lambda_{k}|=1 \end{cases}  \\ \text{Forte instabilità}  & \exists k:\mathrm{Re}(\lambda_{k})>0 & \exists k:|\lambda_{k}|>1 \end{matrix}$$
		- c) Caso generale ($A$ non diagonalizzabile)
			- Supponiamo di avere un autovalore $\lambda_i$ multiplo ($m_{a, \,i}>1$) ma non regolare ($m_{g, \, i}<m_{a,\,i}$) con autovettori $\left\{ v^{(i, 1)}, \dots, v^{(i, m_{g,\,i})} \right\}$
			- Devo cercare di ottenere una matrice $TAT^{-1}$ più vicino possibile a una matrice diagonale
				- Dai risultati dell'algebra lineare, si mostra che si possono definire degli *autovettori generalizzati* $\left\{ w^{(i, \, j, \, 1)}, w^{(i, \, j, \, 2)}, \dots \right\}$ nel numero mancante (proprio $m_{a,\,i}-m_{g,\,i}$) per completare la base
				- La matrice che si ottiene in questo modo è triangolare, ed è detta *forma canonica di Jordan* 
					  ![[scr 2026-06-01 alle 22.04.56.png]]
					- Ha attorno alla diagonale un certo numero di *blocchi di Jordan*, sotto-matrici diagonali con una serie di $1$ sulla sopra-diagonale
						- Questi elementi $1$ indicano se nella corrispondente colonna del vettore riga di autovettori (propri e generalizzati) $T$ c'è un autovettore generalizzato
				- Le variabili che costituiscono un blocco di Jordan costituiscono un sotto-sistema isolato 
					  ![[scr 2026-06-01 alle 22.09.09.png]]
					- Infatti sopra, sotto e ai lati del miniblocco la matrice è ovunque nulla → no interazione con altre variabili
					- → Posso studiare a parte il suo movimento isolato!
			- Si consideri allora un singolo blocco di Jordan $$\begin{pmatrix} \dot{z_{q}} \\ \vdots \\ \dot{z}_{q+k-1} \\ \dot{z}_{q+k} \end{pmatrix}=\begin{pmatrix} \lambda_{q} & 0 & \dots & 0 & 0 \\ \vdots & \vdots  & \ddots  & \vdots & \vdots\\ 0 & 0 & \dots & \lambda_{q+k-1} & 1 \\ 0 & 0 & \dots & 0& \lambda_{q+k}  \end{pmatrix} \begin{pmatrix} {z_{q}} \\ \vdots \\ {z}_{q+k-1} \\ {z}_{q+k} \end{pmatrix}$$
				- L'ultima variabile $z_{q+k}$ è sempre un autovettore proprio, ma le altre?
				- Si mostra il seguente risultato $$ \begin{align} &\text{A tempo continuo} \\ &z_{q+k}(t)=z_{q+k}(0)e^{\lambda_{i}t} \\ &z_{q+k-1}(t)=(z_{q+k-1}(0)+z_{q+k}(0)t)e^{\lambda_{i}t} \\ &z_{q+k-2}(t)=\left(z_{q+k-2}(0)+z_{q+k-1}(0)t+z_{q+k}\left(0\right) \frac{t^2}{2}\right)e^{\lambda_{i}t} \\ \vdots \\ \\ &\text{A tempo discreto} \\ &z_{q+k}(t)=z_{q+k}(0)\lambda_{i}^t \\ &z_{q+k-1}(t)=z_{q+k-1}(0)\lambda_{i}^t+z_{q+k}(0)t\lambda_{i}^{t-1} \\ &z_{q+k-2}(t)=z_{q+k-2}(0)\lambda_{i}^t+z_{q+k-1}(0)t\lambda_{i}^{t-1}+z_{q+k}\left(0\right) \frac{t(t-1)}{2}\lambda_{i}^{t-2} \\ \vdots\end{align}$$
					- → Ottengo polinomi in $t$ di grado $0,1,\dots,k-1$
			- Posso pertanto aggiornare i criteri di stabilità per una matrice generica $$\begin{matrix} \text{Tipo stabilità} & \text{t.c.} & \text{t.d.} \\ \\ \text{Asintotica stabilità} & \mathrm{Re}(\lambda_{i})<0, \,\forall i & |\lambda_{i}|<1, \,\,\forall i \\ \text{Semplice stabilità} & \begin{cases} \mathrm{Re}(\lambda_{i})\leq 0, \,\, \forall i \\ \exists k: \mathrm{Re}(\lambda_{k})=0 \text{ regolare} \end{cases}  & \begin{cases} |\lambda_{i}|\leq 1, \,\, \forall i \\ \exists k: |\lambda_{k}|=1 \text{ regolare} \end{cases}  \\ \text{Debole Instabilità}  &  \begin{cases} \mathrm{Re}(\lambda_{i})\leq 0, \,\, \forall i \\ \exists k: \mathrm{Re}(\lambda_{k})=0 \text{ non regolare} \end{cases}  & \begin{cases} |\lambda_{i}|\leq 1, \,\, \forall i \\ \exists k: |\lambda_{k}|=1 \text{ non regolare} \end{cases} \\ \text{Forte instabilità}  & \exists k:\mathrm{Re}(\lambda_{k})>0 & \exists k:|\lambda_{k}|>1 \end{matrix}$$
			- → Sono in generale detti *modi* dell'autovalore $\lambda_{i}$ gli andamenti del tipo
				- a) Esponenziale / geometrico reale → $e^{\mathrm{Re}(\lambda_{i})t}$ o $|\lambda_{i}|^{t-j-1}$
				- b) Sinusoidale / angolo di rotazione → $e^{\mathrm{Im}(\lambda_{i})t}$ o $e^{i \mathrm{arg}(\lambda_{i})}$
				- c) Polinomi in $t$ di grado $k-1$

![[mappatura_stabilita_s_z.png|697]] ![[modi_tempo_continuo.png|697]]

+ Per studiare la dinamica del sistema un elemento essenziale sono le sue costanti di tempo
	+ Segue da quanto svolto prima che per il modo associato all'autovalore $\lambda_{i}$ la costante di tempo è data da $$T_{i}=\begin{cases} -\frac{1}{\mathrm{Re}(\lambda_{i})}  & \text{(a t.c.)} \\ -\frac{1}{\log|\lambda_{i}|} &  (\text{a t.d.}) \end{cases}$$
		+ Cioè il modo è dato da un'esponenziale del tipo $e^{t/T_{i}}$
		+ Nei casi in cui ho un'esponenziale moltiplicata per un polinomio, trascuro il contributo dei polinomi
	+ Nel complesso quale costante di tempo caratterizza meglio il sistema? → il *modo dominante* 
		  ![[scr 2026-06-01 alle 23.03.34.png]]
		+ a) Sistemi asintoticamente stabili → il modo dominante è quello che ci mette più tempo ad estinguersi
			+ Approssimazione → si considera un modo esaurito ($z_{i}(t)≈0$) quando $t>5T_{i}$, detto *tempo di assestamento* del modo
			+ Questo modo dominante ha costante di tempo data da $$T_{d}=max\left\{ T_{i} \right\}\implies \lambda _{d}=\begin{cases} max\left\{ \mathrm{Re}(\lambda_{i}) \right\}  & (\text{a t.c.}) \\ max\left\{ |\lambda_{i}| \right\}  & (\text{a t.d.}) \end{cases}$$
				+ Attenzione! → nei sistemi asintoticamente stabili a t.c. le $\mathrm{Re}(\lambda_{i})<0$ quindi si intende l'autovalore con parte reale meno negativa
		+ b) Sistemi instabili → il modo dominante è quello più "veloce"
			+ Si considera il nodo che tende a $+\infty$ più velocemente, il cui contributo determina l'andamento del sistema
			+ Anche in questo caso domina la costante di tempo maggiore, quindi i criteri sono i medesimi del caso asintoticamente stabile
				+ Solo che in questo caso vince il $\mathrm{Re}(\lambda_{i})$ di modulo maggiore

- Come sono relazionati stabilità ed equilibrio?
	- Si dimostra che i sistemi asintoticamente stabili sono tutti e soli i sistemi che hanno un unico punto di equilibrio $\bar{x}$ tale che $$x(t)\overset{t\to \infty}{\to} \bar{x}, \,\,\forall x(0)$$
### 6.1 - Test di stabilità

+ Esistono dei metodi per capire rapidamente se un sistema è stabile
	+ Sono utili solo per capire se un sistema è asintoticamente stabile / fortemente instabile
	+ In alcuni casi, siamo comunque costretti a calcolare autovalori e autovettori

+ 1) Test di instabilità della traccia $$\begin{align} \text{Tempo continuo}:&\quad\mathrm{Tr}(A)>0 \implies A \text{ fortemente instabile} \\ \text{Tempo discreto}:&\quad|\mathrm{Tr}(A)|>n \implies A \text{ fortemente instabile} \end{align}$$
	+ Infatti vale che $$\begin{align} \text{Tempo continuo}:&\quad\mathrm{Tr}(A)=\sum_{i=1}^n \lambda_{i}=\sum_{i=1}^n \mathrm{Re}(\lambda_{i})>0 \implies \exists\lambda_{i}>0 \\ \text{Tempo discreto}:&\quad|\mathrm{Tr}(A)|=|\sum_{i=1}^n \lambda_{i}|=|\sum_{i=1}^n \mathrm{Re}(\lambda_{i})|>n \implies \exists|\lambda_{i}|>1 \end{align}$$dove i $\lambda_{i}$ complessi coniugati cancellano la loro parte immaginaria

- 2) Test di instabilità del determinante $$\begin{align} \text{Tempo continuo}: & \quad  (-1)^n \det (A)<0 \implies A \text{ fortemente instabile} \\ \text{Tempo discreto}:& \quad|\det(A))|>1 \implies A \text{ fortemente instabile} \end{align}$$
	- So che $\det(A)=\prod_{i=1}^n\lambda_{i}$ e per i $\lambda_{i}$ complessi coniugati $\lambda_{i}\lambda_{i}^*=|\lambda_{i}|^2$
		- (t.c.) → Se $n$ è pari e $\det (A)<0$ c'è un numero dispari di $\lambda_{i}$ reali $<0$ → $\exists \lambda_{k}>0$
		- (t.d.) → È banale, se il prodotto $>1$ esiste un fattore di modulo $>1$

+ 3) Condizione necessaria (rapida) di stabilità a t.c. $$\Delta_{A}(\lambda)=\lambda^n+\alpha_{n-1}\lambda^{n-1}+\dots+\alpha_{0} \,\text{  deve essere tale che }\alpha_{i}>0,\, \forall i$$
	+ Non è una condizione sufficiente, ma non è verificata, il sistema è fortemente instabile $$\alpha_{i}<0 \implies  A \text{ fortemente instabile}$$
	+ Si ricorda una regola pratica per scrivere il polinomio caratteristico per $n=2$: $$\Delta_{A}(\lambda)=\lambda^2-\mathrm{Tr}(A)\lambda+\det(A)$$

- 4) Criteri di Routh-Hurwitz di asintotica stabilità (a t.c.)
	- È un criterio geniale algebrico per determinare il numero di radici instabili di un polinomio
		- Siccome per i polinomi di grado $n\geq5$ non esiste alcuna formula risolutiva, Routh lo scrisse per risolvere problemi di automatica anche di ordine grande con puri giochetti algebrici
	- → Tutto consiste nello scrivere una tabella 
		  ![[scr 2026-06-01 alle 23.52.46.png]]
		- 1) Prime due righe ($r_{0}$ e $r_{1}$)
			- Devo scrivere i cofficienti del polinomio caratteristico partendo dal grado più alto ($\alpha_{0}$ è il coefficiente di $\lambda^n$, poi $\alpha_{1}$ ...) a zig zag ($\downarrow \nearrow \downarrow \nearrow \dots$)
			- Si noti che i coefficienti di indice pari (corrispondenti a $\lambda^k$, dove $k$ ha la stessa parità di $n$) occupano la prima riga, quelli dispari la seconda
		- 2) Righe successive (dalla $r_{2}$ fino alla $r_{n}$)
			- Ogni elemento si ottiene tramite il calcolo di un determinante sugli elementi già calcolati, cambiato di segno e diviso per il "perno" (l'elemento tra i 4 in basso a sinistra) $$r_{ij}=-\frac{1}{r_{i-1, \,0}}\det \begin{pmatrix} r_{i-2,\,0} & r_{i-2,\,j+1} \\ r_{i-1,\,0} & r_{i-1,\,j+1} \end{pmatrix}$$
	- Risultato fondamentale → nella prima colonna $(c_{0})$ il numero di radici instabili (con $\mathrm{Re}(\lambda_{i})>0$) è esattamente il numero di cambi di segno
		- es. $c_{0}: 3, \, 1, \,-2, \, 8, \,7,\, 15$ → ho $2$ radici instabili
	- Ci sono due casi particolari in cui il procedimento si "blocca"
		- a) Se nella prima colonna incontro un elemento $0$
			- Allora posso sostituire tale zero con un elemento $\varepsilon\to0^+$ infinitesimo positivo (a prescindere dal segno sopra)
			- Si dimostra matematicamente che ai fini del criterio (leggere il numero di cambi di segno) questo è totalmente ininfluente
		- b) Se tutta un'intera riga è fatta di $0$
			- Immagino che la riga di zeri sia $c_{i}$ → allora prendo i coefficienti della riga prima ($c_{i-1}$) e scrivo un polinomio ausiliario di grado corrispondente al grado del $\lambda^{n-i}$ associato alla colonna, saltando le potenze di 2 in 2: $$P_{AUS}(s)=r_{i-1,\,0}s^{n-i}+r_{i-1,\,1}s^{n-i-2},\dots$$
			- Dopodichè derivo il polinomio rispetto a $s$ e sostituisco alla riga $c_{i}$ esattamente i coefficienti del polinomio derivato
			- In questo modo dovrei risolvere la riga di tutti zero

+ Esiste un metodo per applicare i criteri (3) e (4) anche a tempo discreto
	+ Voglio trovare un criterio che sia soddisfatto se e solo se il polinomio caratteristico $\Delta_{A}(z)=z^n+\alpha_{1}z^{n-1}+\dots+\alpha_{n}$ abbia radici tutte con $|z_{i}|<1$
		+ Idea → trovare una trasformazione $z=f(s)$ invertibile che metta in corrispondenza le radici $z_{i}$ di $\Delta_{A}(z)$ con le radici $s_{i}$ di un polinomio $P(s)$ a cui poter applicare i criteri a t.c. (Routh)
		+ Alla base di quest'idea sta la volontà di mappare il cerchio unitario nel semipiano destro di $\mathbb{C}$ → applico una trasformazione che fa esattamente questo
	+ → La trasformazione da attuare è $$z \to \frac{s+1}{s-1}$$
		+ Effettuando la trasformazione in $\Delta_{A}(z)$ si ottiene: $$\begin{align} \Delta_{A}\left( \frac{s+1}{s-1} \right)&=\left(\frac{s+1}{s-1}\right)^n+\alpha_{1}\left(\frac{s+1}{s-1}\right)^{n-1}+\dots+\alpha_{n} \\ &=\frac{1}{(s-1)^n}[(s+1)^n+\alpha_{1}(s+1)^{n-1}(s-1)+\dots+\alpha_{n}(s-1)^n] \\ &=\frac{P(s)}{(s-1)^n} \end{align}$$
		+ Il polinomio a cui applicare i criteri a t.c. è proprio $P(s)$
## 7 - Geometria del movimento libero

- È possibile per i sistemi tempo-invarianti rappresentare le *traiettorie* del movimento libero nello spazio di stato
	- Sono curve del tipo $\mathbf{x}(t)$ in $\mathbb{R}^n$ che mostrano l'evoluzione degli stati del sistema
	- Analizziamo prima il caso 2D a tempo continuo
		- Il fulcro del movimento è dato dagli autovettori
		- a) Autovettori reali regolari → formano rette che passano per l'origine
			- Infatti la matrice scala l'autovettore di un certo coefficiente $Av=\lambda v$
			- Dopo aver disegnato gli autovettori, posso dedurre tutte le altre traiettorie (qualitativamente) tramite il principio di sovrapposizione
			- Ci sono alcune casistiche:
				- i) $0$ è un equilibrio stabile → tutti gli autovettori puntano nell'origine 
					  ![[scr 2026-06-02 alle 09.07.04 1.png|400]]
					- In tal caso le orbite saranno tangenti per $t\to 0$ all'autovettore più "lento" (il dominante), mentre per $t\to\pm \infty$ a quello più "veloce"
				- ii) Solo un autovettore punta verso l'infinito → 0 è equilibrio instabile (punto di sella) 
					  ![[scr 2026-06-02 alle 09.13.56.png|400]]
					- In tal caso le orbite tenderanno ad avvicinarsi all'equilibrio ma saranno respinte dall'autovettore divergente
				- iii) Entrambi gli autovettori puntano verso l'infinito → 0 è sempre instabile 
					  ![[scr 2026-06-02 alle 09.15.36.png|400]]
					- In questo caso tutte le orbite si allontanano asintoticamente da 0 pur passandoci vicino
			- Si osservi che se eseguissi la transizione allo spazio di coordinate $z$ dove $TAT^{-1}$ è diagonale, allora gli autovettori coinciderebbero con gli assi cartesiani
		- b) Autovettori complessi regolari
			- In questo caso per ottenere considerazioni geometriche devo muovermi in uno spazio in cui poter disegnare vettori complessi $v\in \mathbb{C}^2$
				- Posso pertanto immaginare se $v_{1}, v_{2}$ sono gli autovettori complessi coniugati di prendere come assi $\mathrm{Re}(v_{2})=\mathrm{Re}(v_{1})$ e $\mathrm{Im}(v_{2})=-\mathrm{Im}(v_{1})$ $$T^{-1}=(\mathrm{Re}(v_{1}), -\mathrm{Im}(v_{1}))$$
					- Il motivo del $-$ è che se $\lambda=\alpha+ j\omega$ è l'autovalore di $v_{1}$, si ha che $$\begin{align} A(\mathrm{Re}(v_{1})+i\mathrm{Im}(v_{1}))&=(\alpha+j\omega)(\mathrm{Re}(v_{1})+i\mathrm{Im}(v_{1})) \\ &=(\alpha \mathrm{Re}(v_{1})-\omega \mathrm{Im}(v_{1}))+i(\omega\mathrm{Re}(v_{1})+\alpha \mathrm{Im}(v_{1})) \end{align}$$di cui prendo la parte reale per il cambio di coordinate
					- La matrice $A$ in questa base è $$A=\begin{pmatrix} a & -\omega  \\ \omega & a \end{pmatrix}$$
					- L'idea sostanzialmente equivale a prendere nelle soluzioni del tipo $$x_{i}(t)=c_{1}v_{1}e^{(\alpha+j\omega)t}+c_{2}v_{1}^*e^{(\alpha-j\omega)t}$$i coefficienti $c_{1},c_{2}$ tale che $x_{i}(t)$ sia reale e formi un'ellisse
			- Anche in questo caso abbiamo alcune casistiche
				- a) $a=0$ → autovalori immaginari puri 
					  ![[scr 2026-06-02 alle 09.45.26.png|400]] ![[scr 2026-06-02 alle 09.46.30.png|400]]
					- In tal caso ho traiettorie circolari, infatti $$\dot{z}=TAT^{-1}z=\begin{pmatrix} 0 & -\omega \\ \omega & 0 \end{pmatrix}\begin{pmatrix} z_{1} \\ z_{2} \end{pmatrix}=\omega\begin{pmatrix} -z_{2} \\ z_{1} \end{pmatrix}\implies ||\dot{z}||=\omega||z||$$ho velocità angolare costante
					- Se ritorniamo nelle variabili in $x$ otteniamo un'ellisse con assi di simmetria dati dagli autovettori di $T^TT$
				- b) $a<0$ → ho una spirale che converge (fuoco stabile) 
					  ![[scr 2026-06-02 alle 09.47.42.png|400]]
				- c) $a>0$ → ho una spirale che diverge (fuoco instabile) 
					  ![[scr 2026-06-02 alle 09.50.02 1.png|400]]
		- c) Autovettori reali degeneri 
			  ![[scr 2026-06-02 alle 09.54.11.png|400]]
			- → L'idea è di considerare un caso "perturbato"
				- Per realizzare il disegno immagino quindi che $\lambda_{1}, \,\,\lambda_{2}$ siano a distanza $\varepsilon>0$ piccola
				- Poi faccio tendere tale distanza a $0$ e ottengo le orbite reali 
			- I modi ovviamente saranno esponenziali + polinomiali
	- Posso disegnare le orbite anche a tempo discreto
		- L'idea è quella di "campionare" le orbite a t.c. a tempi regolari
		- Le uniche casistiche particolari rispetto a t.c. sono:
			- a) Autovalori a parte reale positiva $\mathrm{Re}(\lambda_{i})>0$ 
				  ![[scr 2026-06-02 alle 09.57.36.png|400]]
				- → Devo "campionare" ognuna delle orbite singolarmente con i tempi discreti
				- (Si ricorda che nodo stabile a t.d. significa $|\lambda_{i}|>1$ quindi posso avere $\mathrm{Re}(\lambda_{i})>0$)
			- b) Un autovalore a parte reale negativa $\mathrm{Re}(\lambda_{i})<0$ 
				  ![[scr 2026-06-02 alle 10.03.11.png|400]]
				- In questo caso il segnale compie delle oscillazioni di segno (*ringing*) impossibili a t.c.
					- Infatti siccome lo stato è descritto da $$x(k)=c_{1}\lambda_{1}^kv_{1}+c_{2}\lambda_{2}^kv_{2}$$se ad esempio $\lambda_{2}<0$ lo stato cambia continuamente segno rispetto al vettore $v_{1}$
				- Metodo → disegnare due copie della stessa orbita simmetriche rispetto a $v_{1}$ e alternare i "campionamenti"
			- c) Due autovalori negativi $\mathrm{Re}(\lambda _{i})<0$
				- In questo caso si alterna il segno rispetto allo 0 
					  ![[scr 2026-06-03 alle 09.08.56.png]]
			- d) Segnali *quasi-periodici*
				- Nel caso in cui gli autovalori siano immaginari puri la soluzione è del tipo sinousoidale di argomento $t\theta$
					- → Non sono segnali periodici se $t$ non è multiplo di $\pi$!
	- A dimensione $n>2$ il caso è abbastanza analogo
		- Una volta trovati gli autovalori, si noti che ogni piano da essi individuato è invariante al movimento libero $$x(0)=\alpha_{1}v_{1}+\alpha_{2}v_{2} \implies \dot{x}(0)=Ax(0)=\alpha_{1}\lambda_{1}v_{1}+\alpha_{2}\lambda_{2}v_{2}$$
			- Quindi posso fare le stesse considerazioni fatte fin ora per tutti i piani individuati da 2 autovettori
		- L'unico caso particolare è quando gli autovalori non sono regolari → in questo caso il sottospazio è generato dall'autovettore e tutti gli autovettori generalizzati ad esso associati
## 8 - Sistemi non lineari

- Sono sistemi in generale del tipo $$\begin{cases} px(t)=f(x(t), u(t),t) \\ y(t)=g(x(t), u(t), t) \end{cases}$$
	- Considereremo per questa trattazione sistemi tempo invarianti e autonomi $$\begin{cases} px(t)=f(x(t)) \\ y(t)=g(x(t)) \end{cases}$$
	- Ci sono moltissime differenze con i sistemi lineari
		- 1) Regime asintotico $t\to +\infty$
			- Sistemi lineari → se $x(t)$ non diverge, converge a un equilibrio asintoticamente oppure oscilla in maniera stabile
			- Sistemi non lineari → ci sono 4 possibilità:
				- a) Equilibrio asintoticamente stabile
				- b) Regime periodico (sistemi a t.c. e $n\geq2$)
				- c) Regime quasi-periodico (sistemi non lineari e $n\geq3$ a t.c. e $n\geq2$ a t.d.)
				- d) *Attrattore strano* o regime *caotico* (sistemi non lineari a t.c. con $n\geq 3$)
					- È un sistema in cui c'è "infinita" sensibilità alle condizioni iniziali
					- → Se prendo $x_{0}$ e $x_{0}+\varepsilon$ e lascio evolvere il sistema, le condizioni prima si separeranno (indipendentemente da quanto $\varepsilon$ sia piccolo), poi potrebbero anche ricongiungersi
					- Questo tipo di sistemi è utilizzato soprattutto per simulare variabili aleatorie / stocastiche
		- 2) Attrattori multipli
			- Sistemi lineari → se $A$ è regolare, esiste un unico punto di equilibrio, se non lo è, ci sono o zero equilibri o un sottospazio (da Rouché-Capelli)
			- Sistemi non lineari → possono esserci un numero arbitrario di equilibri isolati (2, 3, 4, 100, $\infty$) 
				  ![[scr 2026-06-03 alle 09.51.15.png|300]]
				- La stabilità non è più un concetto globale, ma locale!
					- L'insieme di condizioni iniziali $x(0)$ che portano ad un attrattore $\bar{x}$ sono dette *bacino di attrazione* $$B(\bar{x})=\left\{ x(0)\in \mathbb{R}^n:x(t) \underset{t\to +\infty}{→}\bar{x}\right\}$$
					- Il sistema è globalmente stabile solo se $$B(\bar{x})=\mathbb{R}^n$$(tranne al più un insieme di misura nulla)
			- Esiste un metodo grafico per studiare l'evoluzione del sistema a t.c. per $n=2$ → metodo delle *isocline* 
				  ![[scr 2026-06-03 alle 10.08.37.png]]
				- 1) Risolvo $$\begin{pmatrix} \dot{x}_{1} \\ \dot{x}_{2} \end{pmatrix} =\begin{pmatrix} f_{1}(x_{1}, x_{2}) \\ f_{2}(x_{1},x_{2}) \end{pmatrix}=\mathbf{0}$$
					- Le equazioni ottenute formano delle curve di livello nel piano $\mathbb{R}^2$
						- $f_{1}=0$ → isocline verticali
							- Sono il luogo dei punti in cui la velocità è tutta lungo $x_{2}$ ($\dot{x}_{1}=0$)
						- $f_{2}=0$ → isocline orizzontali
							- Sono il luogo dei punti in cui la velocità è tutta lungo $x_{1}$ ($\dot{x}_{2}=0$)
					- Le isocline dividono lo spazio $\mathbb{R}^2$ in regioni, in cui il segno della velocità in tale direzione è costante
						- es. Prendo $f_{1}$: allora se in $\left\{ f_{1}=0 \right\}$ la velocità lungo $x$ è nulla, in $\left\{ f_{1}<0 \right\}$ la velocità lungo $x$ è negativa, in $\left\{ f_{1}>0 \right\}$ positiva
				-  2) I punti di incontro delle isocline sono i punti di equilibrio del sistema
					- In base alle informazioni combinate delle due isocline posso individuare le orbite del sistema
			- Esiste anche un metodo analitico per capire se i punti di equilibrio sono stabili → *linearizzazione*
				- L'idea è sviluppare l'andamento di $f(x(t))$ attorno a $\bar{x}$ al primo ordine (se $f$ differenziabile) $$f(x(t))=J_{f}(\bar{x})(x(t)-\bar{x})+\mathcal{  o  } ((x(t)-\bar{x}))$$dove $J_{f}$ è la matrice Jacobiana valutata nell'equilibrio
					- Si osservi che si omette il termine $f(\bar{x})$ perchè $f(\bar{x})=0$
				- Si osservi che nei sistemi lineari gli autospazi di $A$ formavano 3 sottospazi lineari di $\mathbb{R}^n$
					- $E_{S}$ → autospazio associato agli autovalori stabili ($\mathrm{Re}(\lambda_{i})<0$ a t.c. e $|\lambda_{i}|<1$ a t.d.) → convergono all'equilibrio
					- $E_{U}$ → autospazio associato agli autovalori instabili → divergono all'infinito
					- $E_{O}$ → autospazio associato agli autovalori critici
				- La stessa cosa è possibile fare con sistemi non lineari e con la matrice $J_{f}(\bar{x})$
					- La differenza fondamentale è che mentre nel caso lineare gli autospazi erano sottospazi vettoriali, ora abbiamo delle *varietà* (generalizzazione non lineare di sottospazio)
					- Quindi se lo spettro di $J_{f}(\bar{x})$ è composto da $n^-$ autovalori stabili, $n^+$ instabili e $n^0$ critici si hanno le varietà
						- a) $W^S$ → varietà stabile ($\mathrm{dim}(W^S)=n^-$)
						- b) $W^U$ → varietà instabile ($\mathrm{dim}(W^U))=n^+$)
						- c) $W^O$ → varietà centro ($\mathrm{dim}(W^O)=n^0$)
					- Queste varietà hanno diverse proprietà
						- i) Sono invarianti (se $x(0)\in W^k  \implies x(t)\in W^k, \,\,\forall t\geq{0}$)
						- ii) Soni tangenti a $\bar{x}$
						- iii) La dinamica sulle varietà $W^S$ e $W^U$ è identica a quella del sistema linearizzato (ponendo $A=J_{f}(\bar{x})$)
							- Invece la dinamica su $W^O$ per essere studiata richederebbe approssimazioni di ordine successivo → non la studiamo
					- → Se $n^0=0$ (l'equilibrio $\bar{x}$ è detto *iperbolico*) allora il sistema è ben approssimato intorno a $\bar{x}$ dal sistema linearizzato (quindi posso studiarlo in questo modo → altrimenti no)
						- La stabilità asintotica o l'instabilità forte di $\bar{x}$ è quindi la stessa del sistema linearizzato
### 8E - Esempi

- Crescita logistica
	- Sia $x(t)$ la densità di biomassa di una risorsa rinnovabile (es. erba) → $\dot{x}(t)$ è il suo tasso di crescita
	- Vale l'equazione generale $$\dot{x}(t)=b(t)x(t)-d(t)x(t)$$dove $b$ è il tasso di natalità (birth rate) e $d$ quello di morte (death rate)
	- Ipotesi 1 → Malthus nel 1800 suppose $b$ e $d$ costanti
		- Si verifica che il sistema se $b>d$ porta all'esplosione delle nascite, se $b<d$ all'estinzione
	- Ipotesi 2 → per sistemare il comportamento si suppone una relazione lineare per $b$ e $d$ $$\begin{cases} b(t)=b_{0}-b_{1}x(t) \\ d(t)=d_{0}+d_{1}x(t) \end{cases} \implies  \dot{x}=(b_{0}-d_{0})x+(b_{1}+d_{1})x^2=rx\left( 1-\frac{x}{k} \right)$$dove $r:=b_{0}-d_{0}$ è il "flusso" di nascite intrinseco e $k:=\frac{b_{0}-d_{0}}{b_{1}+d_{1}}$ 
		- Risultato → si mostra che ci sono 2 equilibri, $\bar{x}=0$ e $\bar{x}=k$ dove $x(t)\to k$ se $x(0)>0$ (0 eq. instabile, k stabile)
## 9 - Raggiungibiltà e osservabilità

- Nel formulare il modello interno abbiamo notato che possono esistere variabili che:
	- a) Non influenzano l'uscita $y$ → dette non osservabili
		- Non contribuiscono al modello esterno
	- b) Non sono modificabili dall'ingresso $u$ → dette non raggiungibili
		- Contribuiscono al modello esterno ma non alla FdT
	- Come faccio a identificare queste variabili sistematicamente?

+ Raggiungibilità 
	+ Considero un solo ingresso $u$ e solo il movimento forzato ($x(0)=0$)
	+ → Una variabile è raggiungibile $\iff$ ha movimento forzato non nullo $$z \in X_{r}(t)=\left\{ z_{r}(t)=\hat{\Psi}(t)u≠0 \right\}$$dove indichiamo con $X_{r}(t)$ l'insieme di tutte le variabili raggiungibili al tempo $t$
	+ Si noti che anche se nel modello interno $x_{1}, \dots, x_{n}$ sono tutte raggiungibili, possono esserci combinazioni lineari non raggiungibili
		+ es. Con due serbatoi $x_{1}$ e $x_{2}$ e un solo ingresso $u$ diviso a metà, la variabile $z=x_{1}-x_{2}$ è non raggiungibile
	+ → Ha senso determinare il numero di variabili raggiungibili indipendenti di un sistema (cioè $\mathrm{dim}(X_{r}(t))$)
		+ i) A tempo discreto $$\begin{align} x(1)&=Ax(0)+bu(0)=bu(0) \\ x(2)&=Ax(1)+bu(1)=Abu(0)+bu(1) \\ &\,\,\,\vdots \\ x(t)&\in \mathrm{Span}{\left\{ b, Ab, A^2b, \dots, A^{t-1}b \right\}} \end{align}$$quindi $\mathrm{dim}(X_{r}(t))=\mathrm{dim}(\mathrm{Span}({\left\{ b, Ab, A^2b, \dots, A^{t-1}b \right\}}))$
			+ Quanti di tali vettori $b, Ab, \dots, A^{t-1}b$ sono linearmente indipendenti?
				+ Si osservi che se per $t=k$ $A^kb$ è combinazione lineare dei precedenti (non sono l.i.)$$A^kb=\sum_{i=0}^{k-1}\gamma_{i}A^ib$$ allora lo sono tutti i successivi $A^{k+\tau}b$ lo sono $$A^{k+1}b=AA^kb=\gamma_{k+1}A^kb+\sum _{i=0}^{k-2}\gamma_{i}A^{i+1}b$$
				+ Inoltre dal teorema di Carley-Hamilton, raggiunto il passo $t=n$, la matrice è sicuramente combinazione lineare delle precedenti $$A^n+\alpha_{1}A^{n-1}+\dots+\alpha_{n-1}A+\alpha_{n}=0 \implies A^n \in \mathrm{Span}\left\{ A^i \right\}_{i<n}$$
			+ → Esiste sempre un $n_{r} \leq n$ tale che $$\mathrm{dim}(X_{r}(t))=n_{r},\,\forall t\geq n_{r}$$
				+ Il sottospazio aumenta la sua dimensione fino a $n_{r}$
			+ Posso allora definire la matrice di raggiungibilità $$R=\begin{pmatrix} b & Ab & A^2b & \dots & A^{n-1}b \end{pmatrix}$$ che ha rango $\mathrm{rank}(R)=n_{r}$ e tale che $X_{r}=\mathrm{Im}(R)$
			+ → Il sistema si dice *completamente raggiungibile* se $n_{r}=n$, cioè $$\det (R)≠0$$
		+ ii) A tempo continuo
			+ L'unica differenza qui è che lo spazio di raggiungibilità raggiunge immediatamente la sua massima dimensione $$X_{r}(t)=\mathrm{Im}(R), \forall t>0$$
				+ Infatti posso espandere $x(t)$ e $u(t)$ in serie di Taylor $$x(t)=\sum_{k=0}^{+\infty}x^{(k)}(0) \frac{t^k}{k!}  \quad u(t)=\sum_{k=0}^{+\infty}u^{(k)}(0) \frac{t^k}{k!}$$
				+ E notando che dalle derivate di $x$ $$\begin{align} \dot{x}(0)&=Ax(0)+bu(0)=bu(0) \\ \ddot{x}(0)&=A\dot{x}(0)+b\dot{u}(0)=Abu(0)+b\dot{u}(0) \\ &\,\,\,\vdots \\ x^{(k)}(0) &\in \mathrm{Span}\left\{ b, Ab, \dots, A^{k-1}b \right\} \end{align}$$
			+ → Scegliendo opportunamente i coefficienti $u^{(k)}(0)$ posso raggiungere qualsiasi punto di $X_{r}$ per ogni $t>0$
				+ Esistono formule esplicite per il calcolo di tale ingresso $u$
	+ Una volta noto $R$ come trovo i vettori non raggiungibili? (suppongo che $X_{r}$ abbia raggiunto la sua dim. massima)
		+ 1) Calcolo $X_{r}=\mathrm{Im}(R)$ prendendo le colonne linearmente indipendenti di $R$
		+ 2) Completare la base di $X_{r}$
			+ Se $\mathrm{dim}(X_{r})=\mathrm{dim}(\left\{ v_{1}, \dots, v_{n_{r}} \right\})=n_{r}< n$ devo trovare altri $n-n_{r}$ vettori $\left\{ w_{1}, \dots, w_{n-n_{r}} \right\}$, base di $X_{\bar{r}}$ che completino la base di $\mathbb{R}^n$
			+ La tecnica più efficace è
				+ Se i vettori hanno tutti la coordinata $i$-esima nulla uso $e_{i}$
				+ Se sono in dimensione $n=3$ il metodo più semplice è il prodotto vettoriale $w_{1}=v_{1} \times v_{2}$
				+ Altrimenti provo a caso i vettori della base canonica per capire quale rende la matrice con i vettori orlati a determinante non nullo
		+ 3) Pongo $$T^{-1}=(\begin{array}{c|c} \begin{matrix} v_{1} & \dots & v_{n_{r}} \end{matrix} & \begin{matrix} w_{1}  & \dots & w_{n-n_{r}} \end{matrix} \end{array})=\left(\begin{array}{c|c} \text{base di }X_{r} & \text{base di } X_{\bar{r}}  \end{array}\right)$$e calcolo la matrice inversa $T$ 
		+ 4) Calcolo lo stato $$z:=Tx$$che sarà per costruzione diviso in due sotto-vettori, dati da una base di stati raggiungibili (gli $z_{r, \,i}$) e irraggiungibili (gli $z_{\bar{r},\,i}$) $$z=\begin{pmatrix} z_{r, \,1} \\ \vdots \\ z_{r,\, n_{r}} \\ \hline z_{\bar{r}, \,1} \\ \vdots \\ z_{\bar{r},\,n-n_{r}} \end{pmatrix}:=\begin{pmatrix} z_{r} \\\hline z_{\bar{r}} \end{pmatrix}$$
			+ Si osservi che $$\nabla z_{\bar{r}} \perp X_{r} $$
				+ Intuizione analitica → $X_{r}$ è lo spazio degli stati raggiungibili, per cui al variare di $u$ cambia lo stato
				+ Siccome $z_{\bar{r}}$ è costante al variare di $u$, $X_{r}$ è un suo insieme di livello quindi il gradiente è ad esso ortogonale
		+ 5) Calcolando le nuove matrici si ottiene una matrice triangolare a blocchi $$TAT^{-1}=\left(\begin{array}{c|c} A_{r}  & A_{r\bar{r}} \\ \hline 0 & A_{r} \end{array}\right), \quad b=\begin{pmatrix} b_{r}  \\ \hline 0 \end{pmatrix}$$pertanto $$\begin{cases} pz_{r}=A_{r}z_{r}+A_{r\bar{r}}z_{\bar{r}}+b_{r}u \\ pz_{\bar{r}}=A_{\bar{r}}z_{\bar{r}} \end{cases}$$

- Osservabilità
	- Considero una sola uscita $y$ e solo il movimento libero ($u(t)=0$)
	- → Una variabile è non osservabile $\iff$ ha movimento libero nullo $$X_{\bar{o}}:=\left\{ z(0): \hat{\Phi}(t)z(0)=0, \, \forall t>0 \right\}$$
	- Usiamo un procedimento simile alla raggiungibilità per trovare $\mathrm{dim}(X_{\bar{o}})$
		- i) A tempo discreto
			- Essendo $x(0)=0$ e $y(t)=c^TA^tx(0)$ si ottiene che volendo imporre il movimento libero nullo: $$\begin{align} y(0)&=c^Tx(0)=0 \\ y(1)&=c^TAx(0)=0 \\ &\,\,\,\,\vdots \\ y(t)&=c^TA^tx(0)=0 \end{align}$$ottengo che $$X_{\bar{o}}=\mathrm{Ker}\begin{pmatrix} c^T & c^TA & c^TA^2 & \dots & c^TA^{n-1} \end{pmatrix}=:\mathrm{Ker}(\mathcal{  O  } )$$siccome come in precedenza $c^TA^n$ è combinazione lineare dei precedenti
				- $\mathcal{  O  }$ è detta *matrice di osservabilità*
			- Supponendo come in precedenza che solo i primi $n_{o}$ vettori siano linearmente indipendenti, allora $$\mathrm{rank}(\mathcal{  O  } )=n_{o} \implies  \mathrm{dim}(X_{\bar{o}})=n-n_{o}$$dal teorema di nullità+rango
			- Il sistema è detto *completamente osservabile* per $n=n_{o}$ e cioè se $$\det(\mathcal{  O  } )≠0$$
		- ii) A tempo continuo
			- Vale un ragionamento analogo rispetto al caso a tempo continuo della raggiungibilità usando lo sviluppo di Taylor
	- Anche in questo caso per trovare i vettori non osservabili svolgo un processo del tipo 
		- 1) Calcolo $X_{\bar{o}}=\mathrm{Ker}(\mathcal{  O  })$
		- 2) Completo la base di $X_{\bar{o}}$ $\left\{ w_{1}, \dots, w_{n-n_{o}} \right\}$ con vettori $\left\{ v_{1}, \dots, v_{n_{o}} \right\}$, base di $X_{o}$
		- 3) Pongo $$T^{-1}=(\begin{array}{c|c} \begin{matrix} v_{1} & \dots & v_{n_{o}} \end{matrix} & \begin{matrix} w_{1}  & \dots & w_{n-n_{o}} \end{matrix} \end{array})=\left(\begin{array}{c|c} \text{base di }X_{\bar{o}} & \text{base di } X_{o}  \end{array}\right)$$ e calcolo la matrice inversa $T$
		- 4) Calcolo lo stato $$z:=Tx=\begin{pmatrix} z_{o} \\ \hline z_{\bar{o}} \end{pmatrix}$$
		- 5) Calcolo le matrici $$\begin{matrix} TAT^{-1}=\left(\begin{array}{c|c} A_{o}  & 0 \\ \hline A_{o\bar{o}} & A_{\bar{o}} \end{array}\right) & b=\begin{pmatrix} b_{o}  \\ \hline b_{\bar{o}} \end{pmatrix} \\ \\ c^TT^{-1}=(\begin{array}{c|c} c_{o}^T  & 0 \end{array}) \end{matrix}$$per cui $$\begin{cases} pz_{o}=A_{o}z_{o}+b_{o}u \\ pz_{\bar{o}}=A_{o\bar{o}}z_{o}+A_{\bar{o}}z_{\bar{o}}+b_{\bar{o}}u \\ y=c_{o}^Tz_{o}+du \end{cases}$$

- Sommando ciò che sappiamo sulle variabili osservabili e raggiungibili su ogni sistema si può eseguire la *scomposizione di Kalman* $$z=\begin{pmatrix} z_{r\bar{o}} \\ \hline z_{ro} \\ \hline z_{\bar{r}\bar{o}} \\ \hline z_{\bar{r}o} \end{pmatrix} =: \begin{pmatrix} z_{a} \\ \hline z_{b} \\ \hline z_{c}  \\ \hline z_{d} \end{pmatrix}=Tx$$dove la matrice è definita da $$T^{-1}:=\left(\begin{array}{c|c} \text{base di }X_{r\bar{o}} & \text{base di } X_{ro} & \text{base di }X_{\bar{r}\bar{o}} & \text{base di }X_{\bar{r}o} \end{array}\right)$$e con i sottospazi definiti da$$\begin{align} &X_{r\bar{o}}=X_{r} \cap X_{\bar{o}} \\ &X_{ro} → \text{assi che manano a }X_{r\bar{o}}\text{ per completare }X_{r} \\ &X_{\bar{r}\bar{o}} \to \text{assi che mancano a }X_{r\bar{o}}\text{ per completare }X_{\bar{o}} \\ &X_{\bar{r}o} \to \text{assi che mancano per completare }X=\mathbb{R}^n \end{align}$$
	- Quindi $\begin{pmatrix}z_{a}  & z_{b}\end{pmatrix}$ è completamente riproducibile, $\begin{pmatrix}z_{b} & z_{d}\end{pmatrix}$ completamente osservabile
	- Le matrici che si ottengono sono del tipo $$\begin{matrix} TAT^{-1}=\left(\begin{array}{c|c} A_{a}  & A_{12} & A_{13} & A_{14} \\ \hline 0 & A_{b} & 0 & A_{24} \\ \hline 0 & 0 & A_{c} & A_{34} \\ \hline 0 & 0 & 0 & A_{d} \end{array}\right) & b=\begin{pmatrix} b_{a}  \\ \hline b_{b} \\ \hline 0\\ \hline 0 \end{pmatrix} \\ \\ c^TT^{-1}=(\begin{array}{c|c} 0 & c_{b}^T  & 0 & c_{d}^T \end{array}) \end{matrix}$$
		- Si osservi che $A$ è triangolare a blocchi, quindi segue che $$\Delta_{A}(p)=\Delta_{a}(p)\Delta_{b}(p)\Delta_{c}(p)\Delta_{d}(p)$$
	- In base a questa divisione possiamo finalmente comprendere le differenze tra i vari modelli
		- a) Modello interno → vede tutte e 4 le parti $\begin{pmatrix}z_{a} & z_{b} & z_{c} & z_{d}\end{pmatrix}$
		- b) Modello ARMA → vede solo le parti osservabili $\begin{pmatrix}z_{b} & z_{d}\end{pmatrix}$
			- Per questo cancello gli zeri in comune solo se sono non osservabili
		- c) Modello FdT → vede solo le parti osservabili e raggiungibili $\begin{pmatrix}z_{b}\end{pmatrix}$
			- I poli cancellati sono esattamente gli autovalori di $z_{a}, \,z_{c},\,z_{d}$
	- Analizzando le 4 parti singolarmente
		- $(b)$ → è l'unica completamente raggiungibile e osservabile → ha modello ARMA $$\Delta_{b}\,y_{b}=N_{b}\,u$$e funzione di trasferimento  $$D(p)=\Delta_{b}(p),\,\,N(p)=N_{b}(p) \implies G(p)=\frac{N(p)}{D(p)}$$
		- $(d)$ → è autonoma, ha un modello AR (senza MA) del tipo $$\Delta_{d}(p)y_{d}=0$$
		- $(a,\,c)$ → non hanno il modello ARMA perchè non hanno un uscita
	- L'uscita del sistema è quindi data dalla somma delle uscite delle parti osservabili $b$ e $d$ $$y=y_{b}+y_{d} \implies  (\Delta_{b}\Delta_{d}\,)y=\Delta_{d}\,(\Delta_{b}\,y_{b})+\Delta_{b}\,(\Delta_{d}\,y_{d})=(\Delta_{d}\,N_{b}\,)u$$quindi il modello ARMA dl sistema è  $$(\Delta_{b}\Delta_{d})(p)y=(\Delta_{d}N_{b})(p)u$$
	- Per calcolare il numero di variabili delle varie parti posso:
		- a) Calcolo $n_{a}$ come $$n_{a}=\mathrm{dim}(X_{r\bar{o}})=\mathrm{dim}(X_{r} \cap X_{\bar{o}})$$
		- b) Calcolo gli altri coefficienti con banali sottrazioni $$\begin{align} n_{b}&=n_{r}-n_{a} \\ n_{c}&= n_{\bar{o}}-n_{a} \\ n_{d}&=n-n_{a}-n_{b}-n_{c} \end{align}$$

| Proprietà                     | Raggiungibilità ($r$)                                                 | Osservabilità ($o$)                                                                    |
| :---------------------------- | :-------------------------------------------------------------------- | :------------------------------------------------------------------------------------- |
| **Definizione Informale**     | L'ingresso $u$ può pilotare lo stato ovunque?                         | L'uscita $y$ permette di ricostruire lo stato iniziale?                                |
| **Matrice Test**              | $R=\begin{pmatrix} b & Ab & A^2b & \dots & A^{n-1}b \end{pmatrix}$    | $\mathcal{O} = \begin{pmatrix} c^T & c^TA & c^TA^2 & \dots & c^TA^{n-1} \end{pmatrix}$ |
| **Condizione di Completa **   | $\text{rank}(R) = n$ (o $\det(R) \neq 0$)                             | $\text{rank}(\mathcal{O}) = n$ (o $\det(\mathcal{O}) \neq 0$)                          |
| **Sottospazio**               | $X_r = \text{Im}(R)$ (Stati raggiungibili)                            | $X_{\bar{o}} = \text{Ker}(\mathcal{O})$ (Stati inosservabili)                          |
| **Gradiente variabili**       | $\nabla z_{\bar{r}}\perp X_r$                                         | $\nabla z_{o} \perp X_{\bar{o}}$                                                       |
| **Costruzione base $T^{-1}$** | Prima base $X_r$, poi $X_{\bar{r}}$ (completamento)                   | Prima $X_{o}$ (completamento), poi base $X_{\bar{o}}$                                  |
| **Zero in Forma Kalman**      | L'ingresso NON modifica gli stati irraggiungibili ($b_{\bar{r}} = 0$) | Gli stati inosservabili NON si vedono in uscita ($c_{\bar{o}}^T = 0$)                  |
### 9E - Esempi

- Due serbatoi 
	  ![[scr 2026-06-03 alle 11.29.37.png]]
	- Dal determinante di $R$ ricavo che
		- a) $0<\alpha<1\, \land\, k_{1}≠k_{2} \implies \det(R)≠0 \implies$ sistema completamente raggiungibile
		- b) $\alpha =0 \implies$ non è raggiungibile $x_{1}$ $\implies X_{r}=\mathrm{Span}\begin{pmatrix}0\\1\end{pmatrix}$
		- c) $\alpha=1 \implies$ non è raggiungibile $x_{2}$ $\implies X_{r}=\mathrm{Span}\begin{pmatrix}1\\0\end{pmatrix}$
		- d) $0<\alpha<1 \,\land\,k_{1}=k_{2} \implies X_{r}=\mathrm{Span}\begin{pmatrix}\alpha \\ 1-\alpha\end{pmatrix}$
			- Per trovare quali $z$ non sono raggiungibili devo trovare le $z$ ortogonali al sottospazio 
	- ![[scr 2026-06-03 alle 14.48.50.png]]
	- Dal determinante di $\mathcal{  O  }$ ricavo che
		- a) $k_{1}=0  \implies$non è osservabile $x_{1} \implies X_{\bar{o}}=\mathrm{Span}\begin{pmatrix}1\\0\end{pmatrix}$
		- b) $k_{2}=0 \implies$ non è osservabile $x_{2} \implies X_{\bar{o}}=\mathrm{Span}\begin{pmatrix}0\\1\end{pmatrix}$
		- c) $k_{1}>0, \,k_{2}>0, \,k_{1}=k_{2}=k\implies X_{no}=\mathrm{Span}\begin{pmatrix}1\\-1\end{pmatrix}$ 
## 10 - Progetto di sistemi di controllo nel dominio del tempo

- L'obiettivo ora è di progettare il sistema di controllo, che attui i desideri nel sistema
	- Questo viene fatto analizzando le 3 proprietà di un sistema definite raggiungibilità, osservabilità, stabilità 
	- Per questo il progetto del regolatore (sistema di controllo) nel dominio del tempo segue 3 step fondamentali:
		- 1) Raggiungibilità → studio la legge di controllo (retroazione statica dello stato)
		- 2) Osservabilità → ricostruzione asintotica dello stato
		- 3) Regolatore completo = legge di controllo + ricostruttore 
### 10.1 - Legge di controllo

- Obiettivo: studio la *legge di controllo* $u(t)$ per attuare un desiderio nel sistema per trasferire $x$ da $x(0)=x_{0}$ a $x(t)=x^o$ (desiderio) nel tempo $t$
	- Non è necessariamente un equilibrio, è un punto arbitrario che si vuole conoscere

- Soluzione: trovare $u(\bullet)$ in $[0, t)$ tale che $$x^o=x(t)=\hat{\Phi}(t)x_{0}+\hat{\Psi}(t)u$$
	- Per quanto detto sulla raggiungibilità, questo è possibile $\iff$ il desiderio dato dal movimento forzato è raggiungibile $$x_{f}^0(t):=x^0-\hat{\Phi}(t)x_{0}=\hat{\Psi}(t)u\in X_{r}(t)$$
#### 10.1.1 - Legge di controllo in anello aperto

Caso più intuitivo → posso provare con una legge di controllo in anello aperto 

- i) A tempo discreto
	- Suppongo che il sistema sia completamente raggiungibile, quindi $\det(R)≠0$
		- In tal caso, ho dimostrato che entro al massimo $t=n$ il sistema è totalmente raggiungibile ($\mathrm{dim}(X_{r}(n))=n$)
		- Ipotizzo allora di metterci esattamente $n$ passi
	- Se provo a calcolare la forma esplicita di $x_{f}^o(t=n)=\hat{\Psi}(n)u$ ottengo $$\begin{align} x(n)&=A^{n-1}bu(0)+A^{n-2}bu(1)+\dots+Abu(n-2)+bu(n-1) \\ \\ &=\begin{pmatrix} b & Ab & \dots & A^{n-2}b & A^{n-1}b \end{pmatrix}\begin{pmatrix} u(n-1) \\ u(n-2) \\ \vdots \\ u(1) \\ u(0) \end{pmatrix}=RU \end{align}$$dove $U:=(u(0), \dots , u(n-1))$
		- Pertanto $$U=R^{-1}x_{f}^o$$
		- Si osservi che il numero di passi realmente necessario è
			- a) $t=n$ se $u(0)≠0$
			- b) $t<n$ se alcuni valori iniziali di $u$ sono nulli
				- → Potrei spostare $t_{0}>0:\,u(t_{0})≠0$ nel nuovo zero per avere effettivamente meno passi
			- → $t=\text{\# di campioni }u(k)\text{ dal primo non nullo all'ultimo}$
- ii) A tempo continuo
	- È un problema di analisi funzionale
		- Esistono infinite soluzioni, perchè a qualunque soluzione $u$ potrei aggiungere una soluzione $\tilde{u}$ (detta variazione) tale che $\tilde{u}(0)=\tilde{u}(t)=0$ e ottenere un'altra soluzione
	- Si dimostra che la soluzione a "minima energia", quella ortogonale al $\mathrm{Ker}(\hat{\Psi}(t))$ è data da $$u(\tau)=b^Te^{ A(t-\tau) }W_{r}(t)^{-1}x_{f}^o$$dove la matrice $n \times n$ $W_{r}$ è detta *Gramiano di raggiungibilità* ed è data da $$W_{r}(t)=\int_{0}^te^{ At }bb^Te^{ A^T \tau}d\tau$$
		- È una matrice invertibile $\iff \det(R)≠0$
		- Qui $t$ è il tempo entro cui raggiungere l'obiettivo, mentre $\tau$ la variabile tempo che scorre
			- Oss: più $t$ è piccolo, più $W_{r}(t)$ sarà piccolo, pertanto più $u(\tau)$ risulta grande → serve un ingresso più "potente" per raggiungere il desiderio
- Problema → questa tecnica funziona solo se il sistema è noto con esatezza
	- Decidere "a priori" l'ingresso da porre (che in conidizioni ideali raggiunge esattamente il desiderio) non consente nessun disturbo, anche piccolo del sistema
		- Una banale folata di vento o un maggior coefficiente di attrito rendono l'ingresso incapace di raggiungere il desiderio
	- Inoltre se $x^o$ non è un equilibrio stabile il sistema immediatamente dopo aver realizzato il desiderio tenderebbe a ricadere su un altro stato
	- → Per poter tenere in conto di questi fattori, dobbiamo cambiare strategia e concentrarsi su una ad anello chiuso, ovvero dove una retroazione modifica costantemente l'ingresso in base ai valori del sistema
#### 10.1.2 - Legge di controllo in anello chiuso

![[scr 2026-06-05 alle 10.56.10.png]]

- Cerchiamo ora di trovare una legge di controllo del tipo $$u(t)=u^o+k_{p}(y^o-y)$$dove $(u^o, x^o, y^o)$ sono un equilibrio del processo $P$ 
	- → L'ingresso dipende da quanto l'uscita è distante dal desiderio $y^o$
	- Per fissare le idee:
		- $y^o$ → uscita desiderata del sistema (es. angolo di rotazione $\theta=\frac{\pi}{2}$)
		- $x^o$ → variabili di stato del sistema che danno l'uscita $y^o$ (es. lo stesso angolo e la velocità, che è nulla)
		- $u^o$ → ingresso costante che permette la realizzazione del desiderio (es. coppia da assegnare per contrastare la gravità)
	- Ciò vuol dire che per $(x^o, u^o, y^o)$ è soddisfatto il sistema $$ \begin{cases} A x^\circ + b u^\circ = 0 \quad \text{(Legge di equilibrio fisico)} \\ c^T x^\circ + d u^\circ = y^\circ \quad \text{(Richiesta sull'uscita)} \end{cases} \quad \iff \begin{pmatrix} A & b \\ c^T & d \end{pmatrix} \begin{pmatrix} x^\circ \\ u^\circ \end{pmatrix} = \begin{pmatrix} 0 \\ y^\circ \end{pmatrix} $$
		- Si mostra che tale sistema è invertibile $\iff$ la matrice $M$ ($A$ a t.c., $I-A$ a t.d.) è invertibile e il guadagno $\mu≠0$ 
			- In tal caso scelto $y^o$ posso determinare $x^o$ e $u^o$

- Posso ricavare anche un'espressione di $u$ in termini direttamente di $x^o$ e $u^o$ $$u(t)=v+k^Tx$$
	- Dimostrazione: 
		- Siccome $y=c^Tx+du$ si ricava che $$y^o-y=c^T(x^o-x)+d(u^o-u)\implies u(t)=u^o+ k_{p}c^T(x^o-x)+k_{p}d(u^o-u)$$dunque $$(1+k_{p}d)u=(1+k_{p}d)u^o+ k_{p}c^Tx^o-k_{p}c^Tx$$
		- Definendo $k^T:=-\frac{k_{p}c^T}{1+k_{p}d}$ e $v:=u^o-k^Tx^o$ si ottiene la formula mostrata

+ Come valuto raggiungibilità e stabilità del sistema di controllo?
	- L'idea è che se il sistema di controllo è asintoticamente stabile, $x(t)\to x^o$ da ogni $x(0)$
	- Vale che $$px=Ax+bu=Ax+bk^Tx+bv=(A+bk^T)x+bv$$
		- Siccome gli autovalori del sistema di controllo dipendono quindi da quelli della matrice $$A_{C}:=A+bk^T$$che valori possono assumere al variare di $k$?
	- → Teorema di *assegnamento degli autovalori*: scelto un polinomio caratteristico desiderato $\Delta^o(p)$ (monico), $$\exists!k \in \mathbb{R}^n:\,\Delta_{A_{C}}(p)=\Delta^{o}(p) \iff (A, b) \text{ è completamente raggiungibile}$$
		- Quindi scegliendo il $k$ ottimo posso modificare a piacimento gli autovalori del sistema
	- Si osservi che in questa formulazione possiamo apprezzare meglio ciò che avviene nel sistema:
		- a) Il termine $k^Tx$ è simile a una forza elastica
			- Grazie al vettore $k$ ho modificato gli autovalori della matrice $A$ per essere asintoticamente stabile il sistema
		- b) Il valore $v$ è l'ingresso costante da applicare a questo nuovo sistema per raggiungere qualunque desiderio

- Come trovo il $k$ che realizzi gli autovalori desiderati?
	- 1) Controllo che $\det (R)≠0$ nel sistema di partenza (completa realizzabilità)
	- 2) Calcolo $\Delta_{A_{C}}=\det(pI-A_{C})=\lambda^n+\alpha_{1}^{(c)}(k)\lambda^{n-1}+\dots+\alpha_{n}^{(c)}(k)$
	- 3) Impongo la condizione $$\Delta_{A_{c}}(p)=\Delta^o (p)=\lambda^n+\alpha_{1}^o \lambda^{n-1}+\dots+\alpha_{n}^{(c)}$$dove ovviamente gli $\alpha_{i}^o$ sono imposti in base agli autovalori voluti
		- Da questo si ottiene un sistema lineare nelle $n$ incognite del vettore $k=\begin{pmatrix}k_{1} & k_{2} & \dots & k_{n}\end{pmatrix}$: $$\begin{cases} \alpha_{1}^{(c)}(k)=\alpha_{1}^o \\ \vdots \\ \alpha_{n}^{(c)}(k)=\alpha_{n}^o \end{cases}$$da cui determino appunto il $k$ voluto 
		- Di solito la scelta di $\Delta^o (p)$ è fatta a partire dalle costanti di tempo desiderate ($T_{1}^o,1, T_{2}^o, \,\dots, \,T_{n}^o$) → in tal caso banalmente $$\Delta^o(p)=\begin{cases}
		\left( s-\frac{1}{T_{1}^o} \right)\left( s-\frac{1}{T_{2}^o} \right)\dots\left( s-\frac{1}{T_{n}^o} \right) & (\text{a t.c.}) \\
		(z-e^{ -1/T_{1}^o })(z-e^{ -1/T_{2} ^o})\dots(z-e^{ -1/T_{n}^o }) & \text{(a t.d.)}
		\end{cases}$$

- Dopo aver trovato $k$, come determino $v=u^o-k^Tx^o$?
	- a) Calcolo con il sistema già scritto sopra $(x^o, u^o)$ a partire dall'uscita desiderata, e poi determino $v$ banalmente
	- b) (Più veloce!) Calcolo direttamente il guadagno $\mu_{v\to y}$
		- So che $$\begin{cases} u=k^Tx+v \\ px=A_{c}x+bv \\ y=c^Tx+du \end{cases}\implies \begin{cases} px=A_{c}+bv \\ y=(c^T+dk^T)x+dv =c_{c}^Tx+dv \end{cases}$$ con $c_{c}^T:=c^T+dk^T$
		- Da cui all'equilibrio $(x^o, u^o)$ $$\begin{cases} \text{(T.c.)}: x^o=-A_{c}^{-1}bv \\ \text{(T.d.)}:x^o=(I-A_{c})^{-1}bv \end{cases}\implies \begin{cases} \text{(T.c.)}: y=(-c_{c}^TA_{c}^{-1}b+d)v \\ \text{(T.d.)}: y=(c_{c}^T(I-A_{c})^{-1}b+d)v \end{cases}$$perciò $$\mu_{vy}=\begin{cases} -c_{c}^TA_{c}^{-1}b+d  & \text{(t.c.)} \\ c_{c}^T(I-A)^{-1}b+d & \text{(t.d.)} \end{cases}$$
		- Il nostro desiderio è che $$\mu_{y^oy}=1 \implies y^o=\mu_{y^oy}\mu_{vy}v=\mu_{vy}v\implies v=\frac{y^o}{\mu_{vy}}$$pertanto abbiamo ottenuto facilmente $v$ 

+ E se il sistema non è interamente realizzabile?
	- Allora effettuo la trasformazione di stato $z=Tx$ che come visto in precedenza separa gli stati in $z=\begin{pmatrix}z_{r} & z_{\bar{r}}\end{pmatrix}$ 
	- In tal caso progetto la legge di controllo solo sulla parte raggiungibile $$u=v+k_{r}^T z_{r}$$
		- Per cui:
			- Posso scegliere "a piacere" $\Delta_{A_{r}+b_{r}k_{r}^T}(p)$ (polinomio caratteristico del sistema di controllo, basato sulla parte raggiungibile)
			- Non posso modificare $\Delta_{A_{\bar{r}}}(p)$ (polinomio caratteristico della parte non raggiungibile)
	- Anche se il sistema non è completamente raggiungibile, potrebbe essere che comunque si riesca a rendere asintoticamente stabile il sistema
		- Si dice *stabilizzabile* un sistema con la parte $z_{\bar{r}}$ assente oppure asintoticamente stabile
### 10.2 - Ricostruttore dello stato

+ Abbiamo visto che noto il vettore di stato $x\, (\text{o }z_{r})$ si può determinare in ogni istante l'ingresso $u=k^Tx+v$ da dare per avere l'equilibrio desiderato
	+ Il problema ora è un altro → come faccio a conoscere tutte le variabili di stato istante per istante?
	+ → Lo devo stimare, tramite un *ricostruttore* di stato
#### 10.2.1 - Ricostruttore in anello aperto

+ L'unica conoscenza vera che ho del sistema è l'uscita $y$
	+ So che le variabili di stato osservabili $z_{o}$ sono quelle responsabili dell'uscita libera ($z_{o}=0 \implies y_{lib}=0$)
	+ Allo stesso tempo però a partire dall'uscita $y(t)$ posso risalire ai valori delle variabili di stato $z_{o}(\tau)$, $t>\tau$ (posso osservarle!)

+ i) A tempo discreto
	+ So che l'uscita libera è data da $$y(t)=c^T\hat{\Phi}(t)x(0)=c^TA^tx(0)$$da cui $$Y :=\begin{pmatrix} y(0) \\ y(1) \\ \vdots \\ y(n-1) \end{pmatrix}=\begin{pmatrix} c^T \\ c^TA \\ \vdots \\ c^TA^{n-1} \end{pmatrix}x(0)=\mathcal{  O  }x(0) \implies x(0)=\mathcal{  O } ^{-1} Y $$
	+ Se il sistema è completamente osservabile, $\mathcal{  O  }$ è invertibile e posso trovare $x(0)$
	+ Se non lo è ($\det \mathcal{  O  }=0$) indipendentemente dal tempo $t\geq n$ considerato ci saranno alcune variabili di stato a cui è impossibile accedere

+ ii) A tempo continuo
	+ Si ha in questo caso il movimento libero pari a $$y(t)=c^T\hat{\Phi}(t)x(0)=c^Te^{At}x(0)=c^T\left( I+At+\frac{A^2t^2}{2}+\dots \right)x(0)$$
		+ Anche in questo caso l'inversione dell'operatore è un problema di analisi funzionale
	+ Risultato: la soluzione a "minima energia" è data da $$x(0)=W_{o }(t)^{-1}\int_{0}^te^{A^T\tau}cy(\tau)d\tau$$dove è detto *gramiano di osservabilità* la matrice $n \times n$ $$W_{o }(t)=\int_{0}^te^{A^T\tau}cc^Te^{A\tau}d\tau$$

+ Anche in questo caso, il calcolo in anello aperto dello stato non è da solo soddisfacente
	+ 1) Agisce "in ritardo"
		+ Dovrei a partire dall'uscita $y(t)$ calcolare $x(0)$ e poi applicare l'operatore $\hat{\Phi}(t)$ per calcolare $x(t)$ per ogni $t$, infine calcolare $u(t)$
	+ 2) Non comprende nessun errore di misurazione
		+ Se $x(0)$ non è esattamente quella stimata (errore di modello, disturbi ...) allora $x(t)$ non sarà corretto in alcun istante (addirittura diverge se $A$ instabile)
	+ → Serve una nuova metodologia
#### 10.2.2 - Ricostruttore in anello chiuso

+ L'idea è la seguente → creare un ricostruttore (asintotico) delle variabili di stato, detto anche *osservatore di Luenberger*
	+ i) A partire dagli ingressi (noti) stimo il sistema fisico (ideale) nelle variabili $\hat{x}$: $$\hat{x}(t)=\hat{\Phi}(t)\hat{x}(0)+\hat{\Psi}(t)u([0, t))$$dove il valore di $\hat{x}(0)$ è inventato / arbitrario (in maniera sensata)
	+ ii) Supponendo che il sistema fisico sia descritto dal modello interno $(A, b, c^T, d)$ faccio evolvere il sistema simulato come $$\begin{cases} p\hat{x}=A\hat{x}+bu+l(\hat{y}-y) \\ \hat{y}=c^T\hat{x}+du \end{cases}$$con $l \in \mathbb{R}^n$

+ L'errore di ricostruzione del modello sarà pertanto $$e:=\hat{x}-x$$ la cui dinamica è data da $$\begin{align} pe&=p\hat{x}-px \\ &=A\hat{x}+bu+l(c^T\hat{x}+du-c^Tx-du)-Ax-bu \\ &=A(\hat{x}-x)+lc^T(\hat{x}-x) \\ &=(A+lc^T)e \end{align}$$da cui definisco la matrice $$A_{e}:=A+lc^T$$
	+ Dal teorema di assegnamento degli autovalori, so che posso scegliere $l\in \mathbb{R}^n$ per tale che scelto un polinomio caratteristico desiderato $\Delta^o(p)$ si abbia $$\Delta_{A_{e}}(p)=\Delta^o(p) \iff \det(\mathcal{  O  } )≠0$$
		+ → Scelgo $l$ per avere $A_{e}$ asintoticamente stabile
		+ Di solito si scelgono autovalori molto più veloci rispetto a $\Delta_{A_{c}}$ siccome il sistema deve prima conoscere le variabili di stato rispetto all'applicazione dell'ingresso
			+ Inoltre mentre gli autovalori del controllo erano legati a variabili fisiche, in questo caso si parla di autovalori di calcolatori (molto più veloci solitamente)
	+ Allora ci sono due casi:
		+ a) Se il sistema fisico è correttamente descritto dal modello, allora $e(t)\to0, \,\forall e(0)$
		+ b) Se il sistema fisico non è descritto correttamente dal modello, supponendo $u$ e $y$ limitati, allora anche $e$ sarà limitato, e tanto piccolo quanto il modello è accurato

+ Per trovare $l$ uso un metodo analogo a trovare $k$ di raggiungibilità
	+ a) Calcolo $\Delta_{A_{e}}(p)$
	+ b) Impongo le $n$ equazioni da $\Delta_{A_{e}}(p)=\Delta^o(p)$

+ E se il sistema non è completamente osservabile?
	+ → Studio solo le $z_{o}$, modificando "a piacere" $\Delta_{A_{o}+l_{o}c_{o}^T}$
		+ Non posso modificare $\Delta_{A_{\bar{o}}}$
	+ Dico che il sistema è *rilevabile* se la parte non osservabile del sistema è assente o asintoticamente stabile
### 10.3 - Sintesi del regolatore

Costruisco il *regolatore*, l'insieme del ricostruttore e della legge di controllo

+ Posso costruire la legge di controllo dalla stima del ricostruttore $$u=k^T\hat{x}+v$$
	+ La domanda è: funziona? posso ancora scegliere "a piacere" gli autovalori del processo?
		+ L'evoluzione degli stati stimati è data da  $$\begin{align} p\hat{x}&=A\hat{x}+bu+l(\hat{y}-y) \\ &=A\hat{x}+bk^T\hat{x}+bv+l(c^T\hat{x}+du-c^Tx-du) \\ &=(A+bk^T+lc^T)\hat{x}-lc^Tx+bv \end{align}$$che combinata alla solita equazione $$px=Ax+bu=Ax+bk^T\hat{x}+bv$$ produce il sistema lineare di stati e stati stimati $$p\begin{pmatrix} x \\ \hline\hat{x} \end{pmatrix}=\left(\begin{array}{c|c} A  & bk^T \\ \hline -lc^T & A+bk^T+lc^T \end{array}\right)\begin{pmatrix} x \\ \hline \hat{x} \end{pmatrix}+\begin{pmatrix} b \\ \hline b \end{pmatrix}v$$
		+ → Definisco la matrice del regolatore $$A_{REG}:=\left(\begin{array}{c|c} A  & bk^T \\ \hline -lc^T & A+bk^T+lc^T \end{array}\right)$$
		+ Che autovalori ha la matrice del regolatore? 
			+ Idea → anzichè studiare la coppia di variabili $(x, \hat{x})$ studio la coppia $z=(x, e)$ dove $e=\hat{x}-x$ 
			+ Gli errori evolvono come $$\begin{align} pe&=p\hat{x}-px \\ &=(A+bk^T+lc^T)\hat{x}-lc^Tx+bv-Ax-bk^T\hat{x}-bv \\ &=(A+lc^T)(\hat{x}-x) \\ &=(A+lc^T)e \end{align}$$(stessa equazione trovata in precedenza senza legge di controllo)
			+ Riscrivendo $px$ in funzioni di $(x, e)$: $$\begin{align} px&=Ax+bk^T\hat{x}+bv \\ &=Ax+bk^Tx+bk^Te+bv \\ &=(A+bk^T)x+bk^Te+bv \end{align}$$
			+ Pertanto ottengo il sistema $$p \begin{pmatrix} x \\ \hline e \end{pmatrix}=\left(\begin{array}{c|c} A+bk^T  & bk^T \\ \hline 0 & A+lc^T \end{array}\right)\begin{pmatrix} x \\ \hline e \end{pmatrix}+\begin{pmatrix} b \\ \hline 0 \end{pmatrix}v$$dove chiamo $$\tilde{A}_{REG}=\left(\begin{array}{c|c} A+bk^T  & bk^T \\ \hline 0 & A+lc^T \end{array}\right)$$
				+ Si osservi che nelle nuove variabili $\tilde{A}_{REG}$ è triangolare a blocchi! quindi $$\Delta_{A_{REG}}(p)=\Delta_{A_{c}}(p)\Delta_{A_{e}}(p)$$dove essendo $A_{REG}$ e $\tilde{A}_{REG}$ simili hanno lo stesso polinomio caratteristico
				+ → Posso studiare osservabilità e raggiungibilità separatamente
		+ Devo inoltre ricalcolare il guadagno $\mu_{vy}$ utile a trovare $v$
			+ Vale che a regime stazionario (prima riga t.c., seconda riga t.d.) $$\begin{align} p\hat{x}&=\begin{cases} \dot{\hat{x}}=A\hat{x}+bu+l(c^T\hat{x}+du-y) \\ x(t+1)=A\hat{x}(t)+bu(t)+l(c^T\hat{x}(t)+du-y) \end{cases} \\ &=\begin{cases} 0=(A+lc^T)\hat{x}+(b+dl)u-ly \\ \hat{x}(t)=(A+lc^T)\hat{x}(t)+(b+dl)u-ly \end{cases} \\ &=\begin{cases} \hat{x}=-(A+lc^T)^{-1}(b+dl)u+(A+lc^T)^{-1}ly \\ \hat{x}(t)=-(I-A-lc^T)^{-1}(b+dl)u+(I-A-lc^T)^{-1}ly \end{cases} \end{align}$$ed essendo il guadagno stazionario $u=k^T\hat{x}$: $$\begin{align} u_{R}&=\begin{cases}-k^T(A+lc^T)^{-1}(b+dl)u+k^T(A+lc^T)^{-1}ly \\ \hat{x}(t)=-k^T(I-A-lc^T)^{-1}(b+dl)u+k^T(I-A-lc^T)^{-1}ly \end{cases} \\&=\mu_{uu_{R}}u+\mu_{yu_{R}}y \end{align}$$dove ho definito $$\begin{align} \mu_{uu_{R}}&=\begin{cases} -k^T(A+lc^T)^{-1}(b+dl) & \text{(t.c.)} \\ -k^T(I-A-lc^T)^{-1}(b+dl) & \text{(t.d.)} \end{cases} \\ \mu_{yu_{R}}&=\begin{cases} k^T(A+lc^T)^{-1}l & \text{(t.c.)} \\ k^T(I-A-lc^T)^{-1}l & \text{(t.d.)} \end{cases} \end{align}$$
			+ Il guadagno complessivo è pertanto dato da un aggregato di retroazione e parallelo $$\mu_{uv}=\frac{ \frac{1}{1-\mu_{uu_R}} \mu }{ 1 - \frac{1}{1 - \mu_{uu_R}} \mu \mu_{yu_R}}$$
					  ![[scr 2026-06-11 alle 11.20.29.png]]
				+ Dimostrazione:
					+ Siccome dalla legge di controllo $$u=u_{R}+v$$vale che $$u=\mu_{uu_{R}}u+\mu_{yu_{R}}y+v\implies u=\frac{1}{1-\mu_{uu_{R}}}v+\frac{\mu_{yu_{R}}}{1-\mu_{uu_{R}}}y$$
					+ Inoltre sia $\mu$ il guadagno statico del sistema tra ingresso e uscita $y=\mu u \implies$dall'equazione di prima si ricava $$\begin{align} y&=\mu\left(\frac{1}{1-\mu_{uu_{R}}}v+\frac{\mu_{yu_{R}}}{1-\mu_{uu_{R}}}y\right) \\  &y \left( 1 - \frac{\mu M_{yu_R}}{1 - M_{uu_R}} \right) = \frac{\mu}{1 - M_{uu_R}} v \\ &y = \underbrace{\frac{ \frac{1}{1-\mu_{uu_R}} \mu }{ 1 - \frac{1}{1 - \mu_{uu_R}} \mu \mu_{yu_R} }}_{\mu_{vy}} v \end{align}$$
	+ E se fossero presenti dei disturbi?
		+ Sia $\delta_{p}$ un disturbo del processo che altera l'uscita $$y=\mu u+\delta_{p}$$e $\delta_{m}$ un disturbo della misura $$y_{T}=y+\delta_{m}=\mu u+\delta _{p}+\delta_{m}$$
		+ Allora si avrà $$y=\mu_{vy}v+\mu_{\delta_{p}y}\delta_{p}+\mu_{\delta_{m}y}\delta_{m}$$
			+ Per cui $\mu_{yy^o}$ è tanto diverso da 1 tanto quanto il modello è sbagliato
		+ → Il modello è altamente sensibile agli errori!
			+ Per cui basta avere:
				+ a) Errore di modello (es. $A$ è diversa dalla matrice $\tilde{A}$ reale di un certo fattore)
				+ b) Un ingresso costante non modificabile (es. forza di gravità)
				+ c) Un incertezza di misura
			+ e il modello non converge a quanto previsto
#### 10.3.1 - Regolatore con integratore dell'errore

Per gestire i disturbi passiamo ad un modello che considera gli errori

+ Idea → far diventare l'errore una nuova variabile di stato $$z_{n+1}:=\xi\implies z=\begin{pmatrix} x \\ \xi \end{pmatrix}\in \mathbb{R}^{n+1}$$
	  ![[scr 2026-06-11 alle 12.26.53 1.png]]
	+ Questo viene fatto integrando l'errore in ingresso, quindi avremo $$p\xi=e$$
	+ Infatti se il regolatore fa convergere all'equilibrio le variabili di stato allora anche $w$ dovrà tendere a una certa costante, ma allora per forza (essendo $w$ un integratore) $e\to0$

+ i) A tempo continuo
	+ In assenza di disturbi ($\delta=0$) la variabile aggiuntiva $\xi$ evolve come $$\dot{\xi}=y^0-y=y^o-c^Tx-du$$
	+ Per cui il *sistema esteso* (sistema fisico + integratore dell'errore) è (ignorando momentaneamente cosa fa il controllore) 
		  ![[scr 2026-06-11 alle 13.00.37.png]]$$\begin{cases} \dot{x}=Ax+bu, \,\,y=c^Tx+du\\ \dot{\xi}=y^o-c^Tx-du,\,\,w=\xi \end{cases}$$
		+ In rappresentazione matriciale si ottiene che: $$\dot{z}=\tilde{A}z+\tilde{B}\begin{pmatrix} u \\ y^o \end{pmatrix}, \quad w=\tilde{c}^Tz+\tilde{d}\begin{pmatrix} u \\ y^o \end{pmatrix}$$ dove $$\begin{matrix}z=\begin{pmatrix} x \\ \xi \end{pmatrix}  & \tilde{A}=\begin{pmatrix} A & 0 \\ -c^T & 0 \end{pmatrix} & \tilde{B}=\begin{pmatrix} b  & 0\\ -d  & 1\end{pmatrix} \\ \tilde{c}^T=\begin{pmatrix} 0 & 1 \end{pmatrix} & \tilde{d}^T=\begin{pmatrix} 0 & 0 \end{pmatrix}  & \begin{align} \text{ingressi} \quad &\begin{pmatrix} u & y^o \end{pmatrix} \\ \text{uscita} \quad &\begin{pmatrix}w\end{pmatrix} \end{align}\end{matrix}$$
	+ Quando il sistema esteso è raggiungibile? Quando osservabile?
		+ La matrice di raggiungibilità del sistema esteso è (essendo il sistema a dimensione $n+1$) $$\tilde{R}=\begin{pmatrix} \tilde{b} & \tilde{A}\tilde{b} & \dots & \tilde{A}^{n}\tilde{b} \end{pmatrix}=\begin{pmatrix} b & Ab & A^2b & \dots & A^nb \\ -d & -c^Tb & -c^TAb & \dots & -c^TA^{n-1}b \end{pmatrix}$$in quanto $\tilde{A}^k \tilde{b}=\begin{pmatrix} A^kb \\ -c^TA^{k-1}b \end{pmatrix}$
			+ Si mostra che $$\begin{align} \det(\tilde{R})≠0 &\iff \det(R)≠0 \,\land\,d≠c^TA^{-1}b  \\ &\iff \det(R)≠0 \, \land \, \mu≠0 \end{align}$$
				+ In effetti se avessi $\mu=0$ avrei $0$ polo del blocco $p$ (a monte) mentre zero del blocco $\frac{1}{s}$ (a valle) → è un modo non raggiungibile
		+ La matrice di osservabilità del sistema esteso è $$\tilde{\mathcal{  O  }}=\begin{pmatrix} 0 & 1 \\ \mathcal{  O  }  & 0 \end{pmatrix}$$
			+ Per cui $$\det(\tilde{\mathcal{  O  } })≠0 \iff \det(\mathcal{  O  } )≠0$$
	+ Ora reintroduciamo il ricostruttore e il controllore
		+ Se dovessimo introdurre in maniera naturale (secondo l'osservatore di Luenberger) le variabili ricostruite scriveremmo (considerando entrambi gli ingressi $u$ e $y^o$) $$\dot{\hat{z}}=\tilde{A}\hat{z}+\tilde{b}u+\begin{pmatrix} 0 \\ 1 \end{pmatrix}y^o +l(\tilde{c}^T\hat{z}-\tilde{c}^Tz) \quad \text{(ipotesi)}$$INVECE scriviamo $\hat{z}$ senza la dipendenza diretta dal desiderio $y^o$ $$\dot{\hat{z}}=\tilde{A}\hat{z}+\tilde{b}u +l(\tilde{c}^T\hat{z}-\tilde{c}^Tz) \quad \text{(reale)}$$
			+ Questa scelta è di vitale importanza anche se ha alcune conseguenze
			+ "Contro" → ora $\hat{z} \not\to z$
				+ Cioè il sistema non è in grado di misurare precisamente le variabili di stato
					+ In realtà neanche prima lo faceva, solo che ignoravamo l'esistenza dei rumori!
			+ I "pro" di questa scelta sono diversi:
				+ a) Il sistema siccome tende all'equilibrio per la variabile $\xi$ elimina comunque ogni rumore costante e $y\to y^o$ (quello che ci interessa)
					+ Non solo, ma elimino in questo modo tutti i disturbi costanti $\delta$
					+ → Anche se $P$ non è esattamente descritto dal sistema fisico il sistema converge
				+ b) Il calcolo di $\xi$ non è una variabile fisica da osservare, ma è fatto da un computer, quindi abbiamo il suo valore preciso in ogni istante
					+ So in ogni istante il valore del rumore (misurato) e il desiderio, quindi non devo stimare $\xi$ con il ricostruttore
		+ Il controllore sarà quindi dato da $$u=k^T\hat{z}+v$$
	+ Quali sono le criticità del modello?
		+ i) Errori di misura
			+ Se la misura $y_{T}$ ha errori di offset $\delta$ e di guadagno $\mu_{T}$ si ottiene che $$y_{T}=\delta+\mu_{T}y$$
			+ Da cui l'errore che tende a zero è $$e_{T}=y^o-y^T=y^o-\delta-\mu_{T}y\to 0 \iff y^o\to \delta+\mu_{T}y$$
				+ Il nostro desiderio è realizzato a meno degli errori di misura
		+ ii) Disturbi non costanti
			+ Se i disturbi sono polinomiali $\delta(t)$ non basta un singolo integratore
			+ → Posso introdurre $I$ integratori, ognuno con una sua variabile $\xi_{i}, \,i=1,\dots,I$, per cui si hanno in totale $n+I$ variabili di stato $$z^T=\begin{pmatrix} x_{1} & \dots & x_{n} & \xi_{1} & \dots & \xi_{I} \end{pmatrix}$$ di equazioni $$\begin{cases} \dot{\xi_{1}}=y^o-y-\delta(t) \\ \dot{\xi_{2}}=\xi_{1} \\ \vdots \\ \dot{\xi _{I}}=\xi_{I-1} \end{cases}$$
			+ Siccome ciascuna $\xi$ tenderà a un equilibrio (quindi a un valore costante) deve essere che $$\dot{\xi_{i}}=\xi_{1}^{(I)}=e^{(I)}=0$$
				+ Ma la derivata $I$-esima di un polinomio di grado $\leq I-1$ è sempre nulla 
				+ → Annullo tutti i rumori polinomiali di grado $\leq I-1$

+ ii) A tempo discreto
	+ È quasi tutto identico
	+ L'equazione del rumore diventa $$\xi(t+1)=\xi(t)+e(t)$$infatti l'integratore a tempo discreto ha funzione di trasferimento $\frac{1}{z-1}$
	+ Cambiano anche $$\begin{matrix} \tilde{A}=\begin{pmatrix} A & 0 \\ -c^T & 1 \end{pmatrix}\\ \tilde{R}=\begin{pmatrix} b & Ab & \dots & A^nb \\ -d & -(c^Tb+d) & \dots & (c^TA^{n-1}b+\dots+c^Tb+d) \end{pmatrix} \end{matrix}$$
		+ Rimane però invariato il criterio di raggiungibilità (cambia solo la forma di $\mu$) $$\det( \tilde{R})≠0 \iff \det (R)≠0 \,\land\,\mu≠0$$
## 11 - Trasformate 

- Per poter affrontare in maniera matematicamente formale la seconda parte del programma, abbiamo bisogno di alcuni strumenti matematici → 4 *trasformate*
### 11.1 - Trasformata di Fourier a tempo continuo

- Definizione
	+ (studiare da appunti di Analisi 3) Sia $y\in L^1(\mathbb{R})$ (o in $L^2(\mathbb{R})$ per densità, o in $\mathcal{  S  }(\mathbb{R})$) $$\mathcal{F}\,\left[y(t)\right](\omega):=\int_{-\infty}^{+\infty}y(t)e^{-j\omega t}d\omega$$
+ Proprietà da ricordare:
	+ a) Linearità $$\mathcal{F}\,\left[\alpha y+\beta z\right]=\alpha\mathcal{F}\left[y\right]+\beta \mathcal{F}\left[z\right]$$
	+ b) Plancherel: sia $y\in L^2(\mathbb{R})$ e $Y(\omega)=\mathcal{F}\,\left[y\right](\omega):$ $$||y||^2_{2}=\frac{1}{2\pi}||Y||^2_{2}$$
	+ c) Inversione: sia $y\in L^2(\mathbb{R}) \text{ o } \mathcal{  S  }(\mathbb{R}):$ $$\mathcal{F}^{-1}\,\left[Y(\omega)\right]=y(t)=\frac{1}{2\pi}\mathcal{F}\,\left[Y(\omega)\right](-t)=\frac{1}{2\pi}\int_{-\infty}^{+\infty}Y(\omega)e^{ j\omega t }d\omega$$
	+ d) Derivata della trasformata e trasformata della derivata $$\begin{align} \mathcal{F}\,\left[\frac{dy}{dt}\right]&=j\omega \mathcal{F}\left[y\right]=j\omega Y \\ \frac{d}{d\omega}\mathcal{F}\left[y\right] &=\frac{dY}{d\omega}=-i\mathcal{F}\,\left[ty\right] \end{align}$$
	+ e) Prodotto e prodotto di convoluzione $$\begin{align}\mathcal{F}\,\left[f*g\right]&=\mathcal{F}\left[f\right]\mathcal{F}\left[g\right] \\ \mathcal{F}\,\left[fg\right]&=\frac{1}{2\pi}\mathcal{F}\,\left[f\right]*\mathcal{F}\,\left[g\right]  \end{align}$$

+ Trasformata distribuzionale
	+ Sia $y\in \mathcal{  S  }^*(\mathbb{R}):$ $$\langle \mathcal{F}\,\left[y\right], \varphi \rangle :=\langle y, \mathcal{F}\,\left[\varphi\right] \rangle $$
	+ Da cui la trasformata della $\delta_{x_{0}}$ è $$\mathcal{F}\,\left[\delta_{x_{0}}\right]=e^{ -j\omega x_{0} }$$e in particolare $\mathcal{F}\,\left[\delta_{0}\right]=1$
### 11.2 - Trasformata di Fourier a tempo discreto (DTFT)

- Prima di definirla ricordiamo alcuni spazi funzionali
	- a) $L^p_{2\pi}(\mathbb{R})$
		- È lo spazio delle funzioni $L^p([-\pi, \pi])$ estese con periodicità a $\mathbb{R}$
		- La norma sullo spazio è l'integrale sul solo periodo $$||y||_{L^p_{2\pi}(\mathbb{R})}:=||y||_{L^p([-\pi, \pi])}=\left[ \int_{-\pi}^\pi |y(t)|^pdt \right]^{1/p}$$
		- Vale l'inclusione degli spazi $L^p$ per cui se $1<p<q\leq+\infty$: $$L^q_{2\pi}(\mathbb{R})\subset L^p_{2\pi}(\mathbb{R})$$
	- b) $l^p$
		- È lo spazio delle successioni a potenza $p$ sommabile $$l^p:=\left\{ x=\left\{ x_{k} \right\}_{k\in \mathbb{Z}}\subset \mathbb{C}: ||x||_{p}:= \left[ \sum_{k\in \mathbb{Z}}|x_{k}|^p \right]^{1/p}<+\infty \right\}$$
		- Vale l'inclusione inversa: se $1<p<q\leq+\infty$: $$l^p\subset l^q$$

+ Definizione:
	+ La trasformata di Fourier a tempo discreto (*DTFT* o discrete-time Fourier transform) è un operatore tra le successioni e le funzioni continue periodiche di $2\pi$: $$\mathcal{F}_{DT}:l^1\to C_{2\pi}(\mathbb{R}) \quad \mathcal{  F  } _{DT}\,[x](\omega):=X(\omega):=\sum_{k\in \mathbb{Z}} x_{k}e^{ -j\omega k }$$
	+ Come per la trasformata di Fourier a tempo continuo, si può estendere per densità a $l^2$, in modo che $$\mathcal{  F  } _{DT}:l^2\to L^2_{2\pi}(\mathbb{R})$$

- Proprietà
	- a) Linearità
	- b) Plancherel: sia $x \in l^2$ e $X=\mathcal{  F  }_{DT}\,[x]$: $$||x||_{l^2}^2=\frac{1}{2\pi}||X||^2_{L^2_{2\pi}(\mathbb{R})}$$
	- c) Inversione: l'operatore inverso $\mathcal{  F  }_{DT}^{-1}:L^2_{2\pi}(\mathbb{R})\to l^2$ associa ad una funzione periodica i suoi coefficienti di Fourier sulla variabile tempo $$x_{n}=\frac{1}{2\pi}\int_{-\pi}^\pi X(\omega) e^{ j\omega n }d\omega$$
- La relazione della DTFT e la serie di Fourier non è banale
	- Infatti sono circa la stessa cosa ma ragionano in maniera duale:
		- Serie di Fourier → continua nei tempi $t$, discreta nelle frequenze $\omega_{k}$
		- DTFT → discreta nei tempi $t_{k}$, continua nelle frequenze $\omega$
### 11.3 - Trasformata di Laplace

- Definizione 

> [!definition] Trasformata di Laplace unilaterale
> Sia $y\in L^1_{loc}([0, +\infty))$. Si definisce *trasformata di Laplace unilaterale* di $y$ la funzione complessa $Y(s)$ di variabile complessa $s=\sigma+j\omega$ definita dall'integrale: $$Y(s):=\mathcal{L} \left[  y(t)  \right] :=\int_{0}^{+\infty}y(t)e^{ -st }dt $$

- La scelta dell'unilateralità è fondamentale in automatica
	- La trasformata di Fourier copre tutto l'asse dei tempi $t\in\mathbb{R}$ mentre quella di Laplace solo $[0, +\infty)$
	- → Questo traduce il concetto fisico di causalità → il segnale inizia in $t\to0^-$ e ha condizioni iniziali fissate in $t=0$
	- Pertanto dico che una $y\in L^1_{loc}([0, +\infty))$ è *causale* se $$\text{supp}(y) \subseteq[0, +\infty)$$
- Si noti che c'è una forte relazione con la trasformata di Fourier
	- Infatti la trasformata di Laplace è la trasformata di Fourier sulla funzione smorzata esponenzialmente di $e^{ -\sigma t }$ e nulla sui tempi negativi $$\mathcal{L} \left[  y(t)  \right] (\sigma+j\omega)=\mathcal{F}\,\left[y(t)e^{ -\sigma t }H(t)\right](\omega)$$dove $H(t)=\chi_{[0, +\infty)}$ è il gradino di Heaviside

- Dove è definita la trasformata di Laplace, al variare di $s \in\mathbb{C}$? Si definiscono:
	- 1) *Ascissa di convergenza semplice* $\sigma_{c}$ $$\sigma_c = \inf \left\{ \sigma \in \mathbb{R} \ \Big| \exists \omega \in \mathbb{R} :\ \lim_{A \to +\infty} \int_0^A y(t) e^{-(\sigma + j\omega) t} dt \text{ esiste finito}\right\}$$
	- 2) *Ascissa di convergenza assoluta* $\sigma_{a}$ $$\sigma_a = \inf \left\{ \sigma \in \mathbb{R} \ \Big| \ y(t) e^{-\sigma t} \in L^1([0, +\infty)) \right\} = \inf \left\{ \sigma \in \mathbb{R} \ \Big| \ \int_0^{+\infty} |y(t)| e^{-\sigma t} dt < +\infty \right\}$$
	- Esiste un teorema fondamentale: la *regione di convergenza* (*ROC*) della trasformata di Laplace è un semipiano aperto di $\mathbb{C}$ della forma $$\text{ROC} = \{ s \in \mathbb{C} \mid \text{Re}(s) > \sigma_c \}$$
	- Sulla retta di frontiera $\sigma=\sigma_{c}$ ci possono essere diversi comportamenti:
		- a) Divergenza pura 
			- es. Se $y(t)=1$ allora per $\sigma_{c}=0$ l'integrale ovviamente diverge $\forall \omega \in \mathbb{R}$
		- b) Convergenza semplice ma non assoluta
			- es. $y(t) = \frac{e^{j\omega_0 t}}{1+t}$ e $\sigma_{c}=0$ → per $\omega≠\omega_{0}$ l'integrale converge semplicemente, per $\omega_{0}$ diverge
		- c) Convergenza assoluta
			- es. $y(t)=\frac{1}{1+t^2}$ e $\sigma_{c}=\sigma_{a}=0$ ho convergenza assoluta $\forall \omega \in \mathbb{R}$ → $\left\lvert  \frac{e^{ -j\omega t }}{1+t^2}  \right\rvert\in L^1([0, +\infty))$ 
	- Inoltre si mostra che il divario tra le due ascisse è al più 1: $$\sigma_{a}-\sigma _{c}\leq1$$
#### 11.3.1 - Trasformata di Laplace distribuzionale

Come per Fourier, per poter rendere rigorosa la trasformata di Laplace su $\delta$ e impulsi, bisogna definirla per qualche classe di distribuzioni

- Definisco sottospazio delle *distribuzioni causali* $$\mathcal{  D  }^{*}_{+}(\mathbb{R}):=\left\{ u\in \mathcal{  D  } ^* (\mathbb{R}): \text{supp}(u) \subseteq[0, +\infty) \right\}$$
	- Si osservi che su questo sottospazio la convoluzione tra due distribuzioni $u*v$ è sempre ben definita
		- (Vedi quaderno di Analisi 3)
		- Vale inoltre la proprietà fondamentale della convoluzione con la $\delta$ di Dirac: la $\delta$ è l'elemento neutro di convoluzione $$u(x)*\delta_{0}=u  \quad \quad  u*D^\alpha \delta_{0}=D^\alpha u \quad \forall u\in \mathcal{  D  } ^*(\mathbb{R})$$
			- Si osservi che $\delta_{0}\in \mathcal{  D  }^*_{+}$ essendo $\text{supp}(\delta_{0})={0}\subseteq[0, +\infty)$
			- Si ricordi anche che $H^{\prime}(t)=\delta_{0}$ in senso distribuzionale

+ Per poter definire $\mathcal{L}$ su $\mathcal{  D  }^*_{+}$ ho bisogno di 2 passaggi
	+ 1) Una distribuzione $u\in \mathcal{  D  }^*_{+}$ si dice *trasformabile* secondo Laplace se $\exists\sigma_{0}\in \mathbb{R}: \forall\sigma>\sigma_{0}$, la distribuzione pesata $e^{ -\sigma t }u$ è temperata, ovvero $$e^{-\sigma t} u \in \mathcal{S}'(\mathbb{R}) \quad \forall \sigma > \sigma_0$$
	+ 2) Sia $u\in \mathcal{  D  }^*_{+}$ trasformabile con ascissa $\sigma_{0}$. Allora per ogni $s=\sigma+j\omega$, con $\sigma>\sigma_{0}$ definisco $$\mathcal{L} \left[  u  \right](s):=U(s):=\langle e^{ -\sigma t }u, \eta(t)e^{ -j\omega t } \rangle  $$dove $\eta \in C^{\infty}(\mathbb{R})$ è una funzione ausiliaria di "cutoff" cioè tale che $$\eta(t) = \begin{cases} 1 & \text{per } t \ge -\varepsilon \\ 0 & \text{per } t \le -2\varepsilon \end{cases} \quad (\varepsilon > 0)$$
		+ Il cutoff $\eta$ è necessaria, altrimenti $e^{ -\sigma t }$ divergerebbe per $t<0$ 
		+ Inoltre non posso scegliere un banale gradino di Heaviside, altrimenti il membro destro non sarebbe $\mathcal{  S  }(\mathbb{R})$ → serve una funzione liscia che faccia da transizione

#### 11.3.2 - Trasformate notevoli

- 1) Trasformate dei *modi* di movimento libero
	- Questo è il punto fondamentale che permette la transizione della teoria di automatica dal dominio del tempo a quello delle frequenze

> [!proposition] Trasformata dei modi elementari
> a) Modo esponenziale: $\forall\lambda \in \mathbb{C}$ $$\mathcal{L} \left[  e^{ \lambda t }  \right] =\frac{1}{s-\lambda}$$
> b) Modo esponenziale-polinomiale $\forall\lambda \in \mathbb{C}, m \in \mathbb{N}$ $$\mathcal{L} \left[  \frac{t^{m-1}}{(m-1)!} e^{ \lambda t } \right] =\frac{1}{(s-\lambda)^m}$$
> c) Modo trigonometrico reale ($\lambda=\pm j\omega_{0}$): $$\begin{align}
> \mathcal{L} \left[  \cos(\omega_{0} t)  \right]&=\frac{s}{s^2+\omega_{0}^2} \\ \mathcal{L} \left[  \sin(\omega_{0} t)  \right] &=\frac{\omega_{0}}{s^2+\omega_{0}^2}  \end{align}$$

> [!proof]
> a) $$Y(s) = \int_0^{+\infty} e^{\lambda t} e^{-st} dt = \int_0^{+\infty} e^{-(s-\lambda)t} dt = \left[ -\frac{e^{-(s-\lambda)t}}{s-\lambda} \right]_0^{+\infty} = \frac{1}{s-\lambda} \quad (\text{ROC: } \text{Re}(s) > \text{Re}(\lambda))$$
> b) Noioso, integrando per parti
> c) $$\cos(\omega_0 t) = \frac{e^{j\omega_0 t} + e^{-j\omega_0 t}}{2} \leftrightarrow \frac{1}{2}\left(\frac{1}{s-j\omega_0} + \frac{1}{s+j\omega_0}\right) = \frac{s}{s^2 + \omega_0^2}$$
>  $$\sin(\omega_0 t) = \frac{e^{j\omega_0 t} - e^{-j\omega_0 t}}{2i} \leftrightarrow \frac{1}{2i}\left(\frac{1}{s-j\omega_0} - \frac{1}{s+j\omega_0}\right) = \frac{\omega_0}{s^2 + \omega_0^2}$$

- 2) Trasformate degli impulsi

> [!proposition] Trasformata degli impulsi
> a) Delta di Dirac $$\mathcal{L} \left[  \delta(t)  \right] =1$$
> b) Derivate della delta $$\mathcal{L} \left[  \delta^{(k)}(t)  \right] =s^k$$

> [!proof]
> a) Applicando la definizione: $$Y(s) = \langle e^{-\sigma t} \delta(t), \eta(t) e^{-j\omega t} \rangle = \langle \delta(t), e^{-\sigma t} \eta(t) e^{-j\omega t} \rangle=e^0 \cdot \eta(0) \cdot e^0 = 1 \cdot 1 \cdot 1 = 1$$
> b) $$\mathcal{L}[\delta^{(k)}(t)] = \langle \delta^{(k)}(t), e^{-st} \eta(t) \rangle = (-1)^k \langle \delta(t), \frac{d^k}{dt^k}\left( e^{-st} \eta(t) \right) \rangle$$
> siccome $\eta(t)=1$ $\forall t \in[-\varepsilon, +\infty)$, le sue derivate sono tutte nulle in $0$: $$\left. \frac{d^k}{dt^k}\left( e^{-st} \eta(t) \right) \right|_{t=0} = \left. \frac{d^k}{dt^k}\left( e^{-st} \right) \right|_{t=0} = (-s)^k e^0 = (-1)^k s^k$$
> sostituendo: $$\mathcal{L}[\delta^{(k)}(t)] = (-1)^k \left[ (-1)^k s^k \right] = s^k$$

- Si noti una cosa interessante dal punto di vista "fisico" della $\delta$
	- Siccome $Y(s)=1, \,\forall \omega \in \mathbb{R}$ la $\delta$ contiene esattamente tutte le frequenze dello spettro reale, tutte alla stessa intensità
		- Questo è correlato al principio di indeterminazione frequenza-tempo: se la $\delta$ occupa un tempo noto con precisione, la sua incertezza sulle frequenze deve essere necessariamente massima
#### 11.3.3 - Proprietà della trasformata di Laplace

##### 11.3.3.1 - Linearità
$$\mathcal{L}[\alpha_1 y_1(t) + \alpha_2 y_2(t)] = \alpha_1 Y_1(s) + \alpha_2 Y_2(s) \quad \forall \alpha_i \in \mathbb{C}$$
##### 11.3.3.2 - Iniettività

> [!theorem] Teorema di Lerch
> Siano $y_{1}, y_{2}\in L^1_{loc}([0, +\infty))$ le cui trasformate $Y_{1}(s), Y_{2}(s)$ sono entrambe definite in $\mathbb{C}_{\sigma_{0}}=\left\{ \mathrm{Re}(s)>\sigma_{0} \right\}$, allora se $$Y_{1}=Y_{2} \implies y_{1}=y_{2}\text{ q.o.}$$
##### 11.3.3.3 - Olomorfia

> [!theorem] Teorema di olomorfia della trasformata di Laplace
> Sia $y\in L^1_{loc}([0, +\infty)$ con ascissa di convergenza semplice $\sigma_{c}$. Allora la sua trasformata $Y(s)$ è olomorfa in $\mathbb{C}_{\sigma_c} = \{ s \in \mathbb{C} \mid \text{Re}(s) > \sigma_c \}$. Inoltre, per ogni $s \in \mathbb{C}_{\sigma_c}$, la derivata complessa è data da: $$Y'(s) = -\int_0^{+\infty} t \, y(t) e^{-st} dt$$
##### 11.3.3.4 - Invertibilità

- La ricostruzione di $y(t)$ a partire da $Y(s)$ nel piano complesso non si limita alla scomposizione per funzioni razionali
	- La formula generale di inversione è data da un integrale curvilineo lungo una retta verticale parallela all'asse immaginario

> [!theorem] Formula di inversione di Bromwich-Mellin
> Sia $Y(s)$ la trasformata di Laplace di $y(t)$, olomorfa nel semipiano $\text{Re}(s) > \sigma_c$. Sotto l'ipotesi che la funzione $\omega \mapsto Y(\sigma + j\omega)$ appartenga a $L^1(\mathbb{R})$ per un fissato $\sigma > \sigma_c$, allora il segnale causale originale $y(t)$ è dato da: $$y(t) = \text{v.p.} \frac{1}{2\pi i} \int_{\gamma - i\infty}^{\gamma + i\infty} Y(s) e^{st} ds = \lim_{\Omega \to +\infty} \frac{1}{2\pi i} \int_{\gamma - j\omega}^{\gamma + j\omega} Y(s) e^{st} ds \quad (\text{per } t > 0)$$

> [!proof] 
> Ricordiamo la relazione di accoppiamento con Fourier: $Y(\gamma + j\omega) = \mathcal{F}[y(t)e^{-\gamma t} H(t)](\omega)$. Poiché per ipotesi $Y(\gamma + j\omega) \in L^1(\mathbb{R})$, possiamo applicare la formula di inversione classica della trasformata di Fourier continua a $g(t) = y(t)e^{-\gamma t} H(t)$:
$$g(t) = y(t)e^{-\gamma t} H(t) = \frac{1}{2\pi} \int_{-\infty}^{+\infty} Y(\gamma + j\omega) e^{j\omega t} d\omega$$
Moltiplicando ambo i membri per $e^{\gamma t}$ (per $t>0$):
$$y(t) = \frac{1}{2\pi} \int_{-\infty}^{+\infty} Y(\gamma + j\omega) e^{(\gamma + j\omega)t} d\omega$$
Effettuando il cambio di variabile complesso $s = \gamma + j\omega$, per cui $ds = i d\omega \implies d\omega = \frac{ds}{i}$, gli estremi di integrazione $\omega \in (-\infty, +\infty)$ si mappano sulla linea verticale $\text{Re}(s) = \gamma$ da $\gamma - i\infty$ a $\gamma + i\infty$. Otteniamo così:
$$y(t) = \frac{1}{2\pi i} \int_{\gamma - i\infty}^{\gamma + i\infty} Y(s) e^{st} ds$$
che è la formula di Bromwich-Mellin. $\square$

- In realtà esiste un metodo molto più semplice per invertire la trasformata di Laplace nel caso di segnali polinomiali fratti (qualsiasi segnale in automatica) → *scomposizione in fratti semplici* $$Y(s)=\frac{N(s)}{D(s)}  \quad  \text{con deg}(N)<\text{deg}(D)$$
	- Fattorizzo il polinomio $D(s)$ evidenziando le radici distinte $\lambda_{i}$, di molteplicità algebrica $a_{i}$: $$Y(s) = \frac{P_N(s)}{(s-\lambda_1)^{a_1}(s-\lambda_2)^{a_2} \dots (s-\lambda_d)^{a_d}}$$
	- Eseguo poi la composizione in fratti semplici $$Y(s) = \sum_{j=1}^{a_1} \frac{\gamma_{1j}}{(s-\lambda_1)^j} + \dots + \sum_{j=1}^{a_d} \frac{\gamma_{dj}}{(s-\lambda_d)^j}$$dove $\gamma_{i, 1}=\mathrm{Res}(Y(s), \lambda_{i})$ e i $\gamma_{i, j}$ con $j>1$ sono coefficienti ulteriori della serie di Laurent
		- Pertanto anzichè calcolare tutti i coefficienti con le uguaglianze tra polinomi, è molto più veloce calcolarli come coefficienti della serie di Laurent
		- Pertanto, ricordiamo che per poli semplici o il termine di grado massimo dei poli multipli $$\gamma_{i,a_{i}}=\lim_{ s \to \lambda_{i} }(s-\lambda_{i})^{a_{i}} Y(s)$$e per termini di grado $j<a_{i}$ vale la formula $$\gamma_{i, j}=\frac{1}{(a_{i}-j)!}\lim_{ s \to \lambda_{i} } \frac{d^{a_{i}-j}}{ds^{a_{i}-j}} [(s-\lambda_{i})^{a_{i}}Y(s)]$$
		- Oss: i veri residui per ogni polo sono sempre il coefficiente della potenza di grado $j=1$ anche se il polo è multiplo!
			- Nonostante ciò valgono le formule con $j>1$ simili al polo multiplo
	- Sapendo infine che $$\mathcal{L} \left[  \frac{\gamma_{i}}{(s-\lambda_{i})^j}  \right] =\gamma \frac{t^{j-1}e^{ \lambda t }}{(j-1)!}H(t)$$trovo il segnale di partenza
##### 11.3.3.5 - Trasformata della convoluzione

> [!proposition] Trasformata della convoluzione
> Siano $g, u \in L^1_{\text{loc}}([0, +\infty))$, oppure $g, u \in \mathcal{  D  }^*_{+}(\mathbb{R})$, allora vale che $$\mathcal{L} \left[  g*u  \right] =\mathcal{L} \left[  g  \right] \mathcal{L} \left[  u  \right] $$
##### 11.3.3.6 - Trasformata della derivata e dell'integrale

> [!theorem] Trasformata della derivata classica, distribuzionale e dell'integrazione
> a) Sia $u\in \mathcal{  D  }^*_{+}$ trasformabile, allora vale che $$\mathcal{L} \left[  u^{\prime}   \right] =s\mathcal{L} \left[  u  \right] $$
> b) Sia $y$ con ha derivata distribuzionale $y^{\prime}\in L^1_{loc}([0, +\infty))$ e con ascissa di convergenza $\sigma_{0}$, allora vale che $$\mathcal{L} \left[  y^{\prime}   \right] =s\mathcal{L} \left[  y  \right](s) -\lim_{ t \to 0^+ } y(t)$$
> c) Sia $y\in L^1_{loc}([0, +\infty))$ e con ascissa di convergenza $\sigma_{0}$, allora vale che $$\mathcal{L}\left[ \int_0^t y(\tau) d\tau \right] = \frac{Y(s)}{s}$$

> [!proof]
> a) Vale che $$\mathcal{L} \left[  u^{\prime}   \right] (s)=\langle u^{\prime} ,e^{ -st }\eta(t) \rangle=-\langle u,-se^{ -st }\eta(t)+e^{ -st }\dot{\eta}(t)  \rangle  $$
> siccome $u$ ha supporto in $t>0$ e $\dot{\eta}=0, \, \forall t>0$ vale che $$\mathcal{L} \left[  u^{\prime}   \right] =s\langle u, e^{ -st }\eta(t) \rangle =s\mathcal{L} \left[  u  \right] $$
> b) Essendo $y^{\prime}\in L^1_{loc}([0, +\infty))$ vuol dire che $y\in AC([0, T])$ per ogni $T>0$. Pertanto posso integrare per parti $$\int_{0}^Ty(t)(-se^{ -st })dt=[ye^{ -st }]_{0}^{T}-\int_{0}^Ty^{\prime} (t)e^{ -st }dt\implies \int_{0}^Ty^{\prime} (t)e^{ -st }dt=s \int_{0}^Ty(t)e^{ -st }dt+y(T)e^{ -sT }-\lim_{ t \to 0^+ } y(t)$$
> e passando al limite per $T\to+\infty$, dall'ipotesi sulla regione di convergenza vale che $$\mathcal{L} \left[  y^{\prime}   \right] =s\mathcal{L} \left[  y  \right]-\lim_{ t \to 0^+ } y(t) $$

- Si osservi che:
	- a) Se $y$ ha un salto in $0$, allora devo trattarla come distribuzione
		- Allora definisco la distribuzione causale ad essa associata $u_y(t) = y(t) H(t) \in \mathcal{D}'_+(\mathbb{R})$
		- Facendo la derivata distribuzionale: $$u_y' = \dot{y}(t)  H(t) + y(0^+) \delta(t)$$
		- Per cui dalla linearità di $\mathcal{L}$ vale che $$\mathcal{L}[u_y'] =sY(s)= \mathcal{L}[\dot{y}(t)  H(t)] + y(0^+) \mathcal{L}[\delta(t)]=\mathcal{L}[\dot{y}(t)  H(t)] + y(0^+)\implies \mathcal{L}[\dot{y}(t)  H(t)]=sY(s)-y(0^+)$$

+ Questa è la dimostrazione matematica del teorema, ma solitamente si usa una formula "ingegneristica" comoda  $$\mathcal{L} \left[  y^{\prime}   \right] =s\mathcal{L} \left[  y  \right] -y(0^-)$$
	+ Il motivo dello $0^-$ anzichè lo $0^+$ è formalizzato tramite la teoria della misura di Lebesgue-Stijeltes
		+ L'idea è che in un transitorio ho spesso bisogno di conoscere il valore della mia variabile *prima* del movimento forzato

- Nel caso delle distribuzioni inoltre l'integrale (che non è ben definito) equivale a scrivere $$u*H \implies  \mathcal{L} \left[  u*H  \right] =\mathcal{L} \left[  u  \right] \frac{1}{s}=\frac{U(s)}{s}$$
##### 11.3.3.7 - Trasformata della traslazione e dilatazione

> [!proposition] Trasformata di traslazioni e dilatazioni
> Sia $y\in L^1_{loc}([0, +\infty))$. Allora: $$\begin{align}
> &\mathcal{L} \left[  y(t-\tau)H(t-\tau)  \right]=e^{ -s\tau } Y(s) \\
> &\mathcal{L} \left[  y(at)  \right] =\frac{1}{a}Y\left( \frac{s}{a} \right)
> \end{align}$$

> [!proof]
>  Sono entrambe banalmente per sostituzione
>  a) $$\mathcal{L} \left[  y(t-\tau)H(t-\tau)  \right]=\int_{\tau}^{+\infty}y(t-\tau)e^{ -st } dt=\int_{0}^{+\infty}y(\eta)e^{ -s(\eta+\tau) }d\eta=e^{ -s\tau }Y(s)$$
>  b) $$\mathcal{L} \left[  y(at)  \right] =\int_{0}^{+\infty}y(at)e^{ -st }dt=\frac{1}{a}\int_{0}^{+\infty}y(\eta)e^{ -st/a }=\frac{1}{a}Y\left( \frac{s}{a} \right)$$
#### 11.3.4 - Teoremi del valore iniziale e finale

- Suppongo di conoscere il segnale trasformato $Y(s)$ e di voler conoscere $$\lim_{ t \to \infty }y(t) \quad \lim_{ t \to 0^+ } y(t)$$posso farlo senza antitrasformare?
	- Posso farlo tramite due teoremi per cui si associano limiti nel dominio del tempo e limiti nel dominio delle frequenze

> [!theorem] Teorema del valore iniziale
> Sia $y\in L^1_{loc}([0, +\infty))$ causale con derivata debole $y^{\prime}\in L^1_{loc}([0, +\infty))$ e con ascissa di convergenza $\sigma_{0}$. Allora vale che se $s=\sigma+j\omega$ $$\lim_{ t \to 0^+ } y(t)=\lim_{ \sigma \to +\infty } sY(s)$$

> [!proof]
> Siccome valgono le ipotesi del teorema di trasformata della derivata $$\mathcal{L} \left[  y^{\prime}   \right] =sY(s)-\lim_{ t \to 0^+ } y(t)$$
> eseguendo il limite su $\sigma\to+ \infty$ $$\begin{align} \lim_{ t \to 0^+ }y(t) &=\lim_{ \sigma \to \infty }sY(s)- \lim_{ \sigma \to +\infty } \int_{0}^{+\infty}y^{\prime} (t)e^{ -\sigma t }e^{ -j\omega t }dt \\ &=\lim_{ \sigma \to +\infty } sY(s) \end{align}$$
> portando dentro il limite, tramite il teorema di convergenza dominata

- Nel caso in cui $Y(s)=\frac{N(s)}{D(s)}$ sia una funzione razionale fratta, il teorema è valido se viene rispettata la condizione $$r_{y}:=\text{deg}(D)-\text{deg}(N)>0$$
	- Questo perchè nel caso in cui ad esempio $r_{y}=0$ potrei scrivere dividendo i polinomi $$Y(s)=\alpha+\frac{\beta}{d(s)}$$ per alcuni coefficienti $\alpha$, $\beta$
		- Ma allora antitrasformando avrei un termine del tipo $\alpha \delta(t)$ nella funzione $y(t)$, che certamente non è $L^1_{loc}([0, +\infty))$

> [!theorem] Teorema del Valore Finale
> Sotto l'ipotesi aggiuntiva che $\lim_{ t \to +\infty }y(t)$ sia finito (oppure che in alternativa $y^{\prime}\in L^1([0, +\infty))$), il comportamento asintotico di un segnale a regime si calcola con il limite per $\mathrm{Re}(s) \to 0^+$:
> $$ \lim_{t \to +\infty} y(t) = \lim_{\sigma \to 0^+} s Y(s) $$

- L'ipotesi $\lim_{ t \to +\infty }y(t)$, se il segnale ha trasformata $Y(s)$ razionale (quindi in tutti i sistemi LTI studiati in automatica) diventa molto più comoda $$sY(s) \text{ ha poli } \lambda_{i}: \,\,\mathrm{Re}(\lambda_{i})<0$$
### 11.4 - Trasformata Zeta

- Definizione
	- Per discretizzare nel tempo la trasformata di Laplace, utilizziamo dei concetti di analisi complessa
	- So che una qualsiasi funzione olomorfa $f:\Omega\subseteq \mathbb{C} \to \mathbb{C}$ può essere sviluppata in serie di Laurent in un intorno di una singolarità isolata (eliminabile, polo o essenziale) $z_{0}$ $$f(z)=\sum_{k\in \mathbb{Z}}c_{k}(z-z_{0})^2$$dove $c_{k}$ sono i suoi coefficienti di Laurent
	- L'idea è di trasformare nell'integrale di Laplace il termine $e^{ -(\sigma+j\omega)t }$ in una variabile complessa $z^{-t}=(\rho e^{ j\omega  })^{-t}=\rho^{-t}e^{ -j\omega t }$ e l'integrale con una somma finita
		- Sostanzialmente rispetto alla DTFT aggiungo uno smorzamento del tipo $\rho^{-t}$ per permettere anche a segnali campionati non $l^1$ di essere trasformati

> [!definition] Trasformata $\mathcal{Z}$
> Sia $x = \{x_k\}_{k\in \mathbb{Z}}$ una successione complessa a indice bilaterale. Si definisce trasformata Zeta ($\mathcal{  Z  }$) bilaterale di $x_k$ la funzione complessa $X(z)$ della variabile complessa $z=\rho e^{ j\omega } \in \mathbb{C}$ definita dalla serie:
> $$ X(z) = \mathcal{Z}[x_k] = \sum_{k \in \mathbb{Z}} x_k z^{-k}$$

- Si osservi che se $x_{t}$ è causale (cioè $x_{t}=0, \, \forall t<0$) lo sviluppo si riduce a una serie unilaterale $$X(z) = \sum_{k=0}^{+\infty} x_k z^{-t}$$dove indichiamo il parametro con $t$ per distinzione e definiamo $x(t):=x_{t}$
	- Questo corrisponde ad avere una funzione $X(z)$ con solo singolarità isolate (senza poli)

+ Dove converge la trasformata?
	+ Posso spezzare la serie di Laurant in parte regolare e singolare $$X(z) = \sum_{k=0}^{+\infty} x_k z^{-k} + \sum_{k=1}^{+\infty} x_{-k} z^k$$
	+ a) Parte regolare ($\sum_{k=0}^\infty x_k z^{-k}$) (causale)
		+ Ponendo $w = z^{-1}$, questa si riduce a una serie di potenze classica $\sum_{n=0}^\infty x_n w^n$
		+ Per il criterio della radice, essa ha raggio di convergenza $$R_- = \limsup_{n \to +\infty} |x_n|^{1/n}$$per cui converge se $|\omega|< \frac{1}{R_{-}}$ ovvero se $|z| > \frac{1}{R_{-}}$
	+ b) Parte singolare ($\sum_{k=1}^\infty x_{-k} z^k$) 
		+ È una serie di potenze classica
		+ Ha raggio di convergenza $$R_+ = \frac{1}{\limsup_{n \to +\infty} |x_{-n}|^{1/n}}$$e converge per $|z|<R_{+}$
	+ → La sua regione di convergenza (ROC) è una corona circolare in $\mathbb{C}$ $$\text{ROC} = \{ z \in \mathbb{C} \mid R_- < |z| < R_+ \}$$
		+ Si noti che la serie converge solo se $R_{-}<R_{+}$
		+ Se inoltre $x_{k}$ è causale, allora $R_{+}=0$ e $z$ converge al di fuori del disco di raggio $R_{-}$ $$\text{ROC}=\left\{ z\in \mathbb{C} \mid |z|>R_{-} \right\}$$
		- Dalla teoria delle serie di Laurent so che la trasformata di qualsiasi segnale è olomorfa nella sua regione di convergenza

+ C'è una forte connessione tra $\mathcal{  Z  }$ e $\mathcal{  F  }_{DT}$
	+ Si può dimostrare che per segnali causali abbastanza regolari:
		+ a) Se $\left\{ x_{t} \right\}\in l^1$: $$R_{-}=\frac{1}{2} \implies \text{ROC}=\left\{ z\in \mathbb{C} \mid |z|> \frac{1}{2} \right\}$$
		+ b) Se $\left\{ x_{t} \right\}\in l^2:$ $$R_{-}=1 \implies \text{ROC}=\left\{ z\in \mathbb{C} \mid |z|>1 \right\}$$
	+ Pertanto, se $\left\{ x_{t} \right\}$ è causale e $l^1$ o $l^2$, posso calcolare il limite per $\rho\to{1}^+$: $$\lim_{ \rho \to 1^+ } \mathcal{  Z  }\,[x_{t}] =\lim_{ \rho \to 1^+ } X(\rho e^{ j\omega })=X(e^{ j\omega })=\sum_{t=0}^{+\infty}x_{t}e^{ -j\omega t }=\mathcal{F}_{DT}\,\left[x_{t}\right]$$ che è esattamente la trasformata di Fourier a tempo discreto
		+ Alternativamente posso vedere $$\mathcal{  Z  } \,[x_{t}]=\mathcal{F}_{DT}\,\left[x_{t}\rho^{-t}H(t)\right]$$
#### 11.4.1 - Trasformate notevoli

> [!proposition] Trasformata dei modi naturali discreti
> a) Modo esponenziale discreto $x_{t}=\lambda^tH(t)$, $\lambda \in \mathbb{C}$: $$\mathcal{  Z  } \,[\lambda^tH(t)]=\frac{z}{z-\lambda}  \quad (\text{ROC}: |z|>|\lambda|)$$
> b) Modo esponenziale polinomiale $x_{t}=t\lambda^{t-1}H(t)$: $$\mathcal{  Z  } \,[t\lambda^{t-1}H(t)]=\frac{z}{(z-\lambda)^2}$$
> da cui in generale un modo polinomiale di ordine $n$ ha trasformata $$\mathcal{  Z  }[x_{\text{pol}, n}(t)]=\frac{z}{(z-\lambda)^n} $$
> c) Modi trigonometrici discreti $$\begin{align}
> \mathcal{  Z  } \,[\cos(\omega t)H(t)]&=\frac{z(z-\cos(\omega))}{z^2-2\cos \omega z+1} \\
> \mathcal{  Z  } \,[\sin(\omega t)H(t)]&=\frac{z\sin \omega}{z^2-2\cos \omega z+1}
> \end{align}$$

> [!proof]
> a) Dalla definizione $$X(z) = \sum_{n=0}^{+\infty} \lambda^n z^{-n} = \sum_{n=0}^{+\infty} (\lambda z^{-1})^n$$
> che è la serie geometrica di ragione $\lambda z^{-1}$, da cui segue la tesi e la ROC
> b) Si mostra sapendo che $t\lambda^{t-1}=\frac{d}{d\lambda}\lambda ^t$ e invertendo serie e derivata
> c) A partire dai modi discreti complessi coniugati $\lambda=e^{ \pm j\omega }$

- Si noti che nel caso particolare in cui $\lambda=1$, per cui il modo è $$x_{t}=1^tH(t)=H(t)\implies \mathcal{  Z  } \,[H(t)]=\frac{z}{z-1}$$otteniamo la trasformata del gradino

> [!proposition] Trasformazione dell'impulso
> Sia l'impulso a tempo discreto la $\delta$ di Kronecker $$\delta(t)=\begin{cases}
> 1 & \text{se }t=0 \\
> 0 & \text{se }t≠0
> \end{cases}$$
> allora la sua trasformata Zeta è $$\mathcal{  Z  } \,[\delta(t)]=1$$

> [!proof] 
> Banalmente dalla definizione $$\mathcal{  Z  } \,[\delta(k)]=\sum_{k\in \mathbb{Z}}\delta(k)z^{-n}=1 \cdot z^0=1 $$
#### 11.4.2 - Proprietà della trasformata zeta

##### 11.4.2.1 - Linearità
$$\mathcal{  Z  } \,[\alpha x+\beta y]=\alpha \mathcal{  Z  } \,[x]+\beta \mathcal{  Z  } \,[y]$$
##### 11.4.2.2 - Olomorfia

Segue banalmente dalla teoria della serie di Laurent
##### 11.4.2.3 - Trasformata dello shift

> [!theorem] Trasformata dello shift temporale
> Sia $\left\{ x_{t} \right\}$ causale. Allora introducendo gli operatori di shift temporale $$\begin{matrix}
> S_{R}x_{t}:=x_{t-1}H(t-1)=(0, x_{0}, x_{1}, \dots)   \quad &\text{(shift destro)}\\
> S_{L}x_{t}:=x_{t+1}=(x_{1}, x_{2}, x_{3}, \dots)  \quad &\text{(shift sinistro)}
> \end{matrix}$$
> vale che $$\begin{align}
> \mathcal{  Z  } \,[S_{R}x_{t}]&=\mathcal{  Z  } \,[x_{t-1}H(t-1)]=z^{-1}X(z) \\
> \mathcal{  Z  } \,[S_{L}x_{t}]&=\mathcal{  Z  } \,[x_{t+1}]=zX(z)-zx_{0}
> \end{align}$$

> [!proof]
> a) $$\mathcal{Z}[x_{t-1} H(t-1)] = \sum_{t=1}^{+\infty} x_{t-1} z^{-t} = z^{-1} \sum_{k=0}^{+\infty} x_k z^{-k} = z^{-1} X(z)$$
> b) $$\mathcal{Z}[x_{t+1}] = \sum_{t=0}^{+\infty} x_{t+1} z^{-t} = z \sum_{k=1}^{+\infty} x_k z^{-k} = z \left( \sum_{k=0}^{+\infty} x_k z^{-k} - x_0 \right) = z X(z) - z x_0$$

- Si noti la somiglianza con le formule di Laplace della derivata/integrale
	- Infatti abbiamo definito l'operatore shift temporale in avanti a tempo discreto proprio come $z$, analogo della differenziazione $s$ a tempo continuo
	- Posso ricavare quindi la FdT dell'integrale a tempo discreto 
		- È un segnale che soddisfa $$\begin{cases} x(t+1)=x(t)+u(t) \\ y(t)=x(t) \end{cases}$$
		- Siccome studio il movimento forzato $x_{0}=0$: $$\mathcal{  Z  } \,[u(t)]=\mathcal{  Z  } \,[x(t+1)]-\mathcal{  Z  } \,[x(t)]=(z-1)X(z)$$da cui essendo $Y(z)=X(z)$: $$G(z)=\frac{1}{z-1}$$
		- L'integratore a tempo continuo aveva $G(s)=\frac{1}{s}$
			- La differenza è dovuta alla regione critica per gli autovalori (a t.c. $\mathrm{Re}(\lambda)<0$, a t.d. $|\lambda|<1$)
		- Si ricordi inoltre che nei sistemi proprio non esiste legame istantaneo tra ingresso e uscita, quindi l'integratore avrà somma dell'ingresso fino al tempo $t-1$ $$y(t)=\sum_{k=0}^{t-1}u(k)$$
			- Per cui se $u(t)=\delta(t)$ avrò $y≠0$ solo per $t\geq{1}$
##### 11.4.2.4 - Invertibilità

> [!proposition] Formula di inversione di Bromwich Discreta
> Il segnale $x_{k}$ può essere ricavato dalla sua trasformata $X(z)$ come $$x_k = \frac{1}{2\pi i} \oint_{\Gamma} X(z) z^{k-1} dz$$
> dove $\Gamma$ è una qualsiasi curva semplice chiusa, regolare a tratti, orientata in senso antiorario, contenuta nella $\text{ROC}$ e tale che $\left\{ 0 \right\} \not \in \Gamma$ 

> [!proof]
> È banalmente la definizione dei coefficienti di Laurent nel teorema dello sviluppo in serie di Laurent
> 

- Esiste però un metodo che facilita ampiamente l'inversione della $\mathcal{  Z  }$
	- In generale, uso il teorema dei residui
		- Infatti siano $\lambda_{1}, \dots, \lambda_{n}\in\text{ROC}$ le singolarità isolate di $X(z)$ (se $X$ è razionale sono i suoi poli), vale che $$x_{k}=\sum_{i=1}^n\text{Res}(X(z)z^{k-1}, \lambda_{n})$$
		- Al variare di $k$ possono esserci diversi comportamenti nell'origine $\lambda_{0}=0$:
			- a) Se $k>{0}$ l'esponente di $z^{n-1}$ è non negativo 
				- → Il fattore $z^{n-1}$ non introduce alcuna singolarità nell'origine (a meno che $X(z)$ non abbia già un polo in $z=0$)
			- b) Se $k=0$,  l'integranda diventa $X(z) z^{-1} = \frac{X(z)}{z}$
				- → Se $X(z)$ non ha uno zero in $\lambda_{0}=0$, compare un polo semplice (o di ordine superiore) all'origine
			- c) Se $k<0$, il termine $z^{n-1} = z^{-(|n|+1)}$ introduce un polo di ordine elevato nell'origine, il cui residuo va calcolato esplicitamente
	+ Se inoltre $X(z)$ è razionale fratta, il calcolo dei residui è particolarmente facile$$X(z)=\frac{N(z)}{D(z)}=\frac{N(z)}{(z-\lambda_{1})^{a_{1}}\dots(z-\lambda_{n})^{a_{n}}}$$
		+ 1) Definisco una funzione ausiliaria $$F(z)=\frac{X(z)}{z}$$
		+ 2) Scompongo in fratti semplici $$\frac{X(z)}{z}=\frac{B_{0}}{z}+\sum_{i=1}^n \frac{B_{i}}{z-\lambda_{i}}$$dove $B_{i}=\text{Res}(F(z), \lambda_{i})=\text{Res}\left( \frac{X(z)}{z}, \lambda_{i} \right)$
		+ 3) Moltiplicando $$X(z)=B_{0}+\sum_{i=1}^n B_{i}\frac{z}{z-\lambda_{i}}$$
		+ 4) Per cui l'antitrasformata è banale per linearità $$x_{t}=B_{0}\delta(t)+\sum_{i=1}^nB_{i}\lambda_{i}^tH(t)$$
##### 11.4.2.5 - Convoluzione discreta

- Posso definire la convoluzione disceta di due successioni causali $\left\{ x_{t} \right\}$ e $\left\{ y_{t} \right\}$ come $$(x * y)_{t}=\sum_{k=0}^tx_{k}y_{t-k}$$
> [!theorem] Trasformata della convoluzione discreta
> Siano $\left\{ x_{t} \right\}$ e $\left\{ y_{t} \right\}$ successioni causali con raggi di convergenza $\rho_{x}$ e $\rho_{y}$. Allora $$\mathcal{  Z  } \,[(x*y)_{t}]=X(z)Y(z)  \quad \text{in ROC}: |z|>max\left\{ \rho_{x}, \rho_{y} \right\}$$
## 12 - Sistemi lineari nel dominio delle frequenze

### 12.1 - Movimento libero

- Suppongo di avere un sistema LTI
	- Dall'equazione di Lagrange so che la soluzione al sistema è $$x(t)=\hat{\Phi}(t)x(0)+\hat{\Psi}(t)u$$
	- Preoccupiamoci momentaneamente solo del movimento libero → la matrice di transizione $$\hat{\Phi}(t)=\begin{cases} e^{At} & \text{(a t.c.)} \\ A^t & \text{(a t.d.)} \end{cases}$$
		- → Come si converte nel dominio delle frequenze?

> [!proposition] Trasformata della matrice di transizione
> a) A tempo continuo $$\mathcal{L} \left[  e^{At}  \right]=(sI-A)^{-1} $$
> b) A tempo discreto $$\mathcal{  Z  } \,[A^t]=(zI-A)^{-1}$$

> [!proof]
> a) La trasformata di Laplace $\mathcal{L}$ di una matrice è banalmente la trasformata di Laplace di ogni suo componente
> Per cui utilizzando le proprietà della matrice esponenziale $$\begin{align}
> \mathcal{L} \left[  e^{ At }  \right] &=\int_{0}^{+\infty}e^{ At }e^{ -st }dt \\
> &=\int_{0}^{+\infty}e^{-(sI-A)t }dt \\
> &=(sI-A)^{-1}\int_{0}^{+\infty}(sI-A)e^{ -(sI-A)t }dt \\
> &=(sI-A)^{-1}[-e^{ -(sI-A)t }]_{0}^{+\infty}=(sI-A)^{-1}
> \end{align}$$
> b) Vale che dalle proprietà delle serie geometriche di matrici $$\mathcal{  Z  } \,[A^t]=\sum_{t\in \mathbb{Z}}A^tz^{-t}=\sum _{t\in \mathbb{Z}}(Az^{-1})^t=(I-Az^{-1})^{-1}=z(zI-A)^{-1}$$
### 12.2 - Movimento forzato

- In questo caso l'operatore di movimento forzato è $$\hat{\Psi}(t)u=\begin{cases} \int_{0}^{+\infty}e^{ A(t-\tau) }bu(\tau)d\tau=(e^{ A\tau}bH(\tau)*u)(t)  & \text{(a t.c.)} \\ \sum_{k=0}^{t-1}A^{t-1-k}bu(k)=(A^{\tau-1} bH(\tau-1)*u)(t)  & \text{(a t.d.)} \end{cases}$$ usando la convoluzione sia a tempo continuo che a tempo discreto
	- Inoltre so che l'uscita forzata è data da $$y_{f}(t)=c^Tx(t)+du(t)=c^T \hat{\Psi}(t)u+du(t)$$
	- Idea → scrivere $y_{f}$ come un unico prodotto di convoluzione di una funzione $g$ e $u$
		- In tal caso, avrei elegantemente che $$Y(p)=\mathcal{  T  } \,[(g *u)(t)](p)=\mathcal{  T  } [g]\,\mathcal{  T  }[u]=G(p)U(p) $$dove indico con $\mathcal{  T  }$ la trasformazione $\mathcal{L}$ a t.c., $\mathcal{  Z  }$ a t.d.
			- Ciò vale per le proprietà dei prodotti di convoluzione delle due trasformate
		- Devo in qualche modo integrare il termine $du(t)$
			- Allora mi ricordo la proprietà fondamentale della $\delta$ dei prodotti di convoluzione $u * \delta=u,  \, \forall u$
			- Per cui posso scrivere che $$du(t)=(d\delta * u)(t)$$
			- Pertanto $$\begin{align}y_{f}(t)&= \begin{cases} (c^Te^{ A\tau }bH(\tau)*u(\tau))(t)+(d\delta(\tau)*u(\tau))(t ) & \text{(a t.c.)} \\ (c^TA^{\tau-1}bH(\tau -1)*u(\tau))(t)+(d\delta(\tau)*u(\tau))(t) & \text{(a t.d.)} \end{cases} \\ &=\begin{cases} [(c^Te^{A\tau}bH(\tau)+d\delta(\tau ))*u(\tau)](t) & \text{(a t.c.)} \\ [(c^TA^{\tau-1}bH(\tau-1)+d\delta(\tau ))*u(\tau)](t) & \text{(a t.c.)}  \end{cases} \\ &=(g(\tau)*u(\tau))(t)\end{align}$$dove definisco la distribuzione *risposta all'impulso* $$g(t):=\begin{cases} c^Te^{ At }bH(t)+d\delta(t) & \text{(a t.c.)} \\ c^TA^{t-1}bH(t-1)+d\delta(t) & \text{(a t.d.)} \end{cases}$$
		- Ora posso trasformare
			- Chi è la trasformata di Laplace della risposta all'impulso? 
				- i) A tempo continuo $$\begin{align} G(s)&=\mathcal{L} \left[  c^Te^{ At }bH(t)+d\delta(t)  \right]  \\ &=c^T\mathcal{L} \left[  e^{ At } H(t) \right] b+d \\ &= c^T(sI-A)^{-1}b+d \end{align} $$
				- ii) A tempo discreto $$\begin{align} G(z)&=\mathcal{L} \left[  c^TA^{t-1}bH(t-1)+d\delta(t)  \right]  \\ &= c^T\mathcal{L} \left[  A^{t-1}H(t-1)  \right]b+d \\ &=c^Tz^{-1}\mathcal{L} \left[  A^{t-1}H(t-1)  \right] b+d \\ &=c^Tz^{-1}z(zI-A)^{-1}b+d \\ &=c^T(zI-A)^{-1}b+d  \end{align}$$
			- → In entrambi i casi $G(p)$ è la funzione di trasferimento del sistema!
				- La funzione di trasferimento è la trasformata della risposta all'impulso
			- Pertanto $$Y(p)=G(p)U(p) \implies G(p)=\frac{Y(p)}{U(p)}$$
- Cosa rappresenta fisicamente la $g(t)$?
	- Supponiamo che l'ingresso sia un impulso $u(t)=\delta(t)$
		- Allora dalle proprietà delle trasformate $U(t)=1$
		- Pertanto $$Y(p)=G(p)  \quad \text{e}  \quad y(t)=g(t)$$quindi la FdT è effettivamente la risposta del sistema ad un impulso
		- In analisi matematica è detta *funzione di Green* del sistema
	- Una volta nota la $G(p)$ qualsiasi altra risposta del sistema è data da $$G(p)U(p)$$o nel dominio del tempo da $$y(t)=(g*u)(t)$$
	- Come reagisce il sistema all'impulso?
		- i) A tempo continuo
			- Da quanto detto, l'uscita è data da $$y(t)=g(t)=c^Te^{ At }b+d\delta(t)=c^T \hat{\Phi}(t)b+du(t)$$ 
			- Si che per $t>0$ è esattamente la formula che si avrebbe se avessi movimento libero e un ingresso iniziale $x(0)=b$
			- Infatti verifico che $x(t)\to b$ per $t\to{0}^+$ $$x(t)=\hat{\Psi}(t)\delta(t)=(e^{ A\tau }bH(\tau)*\delta(\tau))(t)=e^{ At }bH(t)\xrightarrow{t\to0^+}b$$
			- → La risposta all'impulso si studia come un movimento libero con $x(0)=b$
		- ii) A tempo discreto
			- Il concetto è analogo ma a tempo discreto
			- L'uscita è $$y(t)=g(t)=\begin{cases} d  & t=0 \\ c^TA^{t-1}b =c^T \hat{\Phi}(t)b & t\geq1 \end{cases}$$che è, scalando $t$ di 1 verso sinistra, l'equazione del movimento libero con ingresso $x(1)=b$

### 12.1.E - Esempi

+ es. Si consideri un sistema elementare con una massa $M$ con uno smorzatore $h$ sottoposto a forza $u(t)$
	+ L'uscita è la posizione $y(t)$
	+ Vale che dalla legge di Newton $$\ddot{y}=-\frac{h}{m}\dot{y}+\frac{1}{m}u\implies \begin{cases} D(s)=s^2+\frac{h}{m}s=s\left( s-\frac{h}{m} \right) \\ N(s)=\frac{1}{m} \end{cases}\implies G(s)=\frac{\frac{1}{m}}{s\left( s+\frac{h}{m} \right)}$$
	+ Scomponendo in fratti semplici $$G(s)=\frac{\gamma_{1}}{s}+\frac{\gamma_{2}}{s+\frac{h}{m}}$$dove $$\begin{align} &\begin{cases} \gamma_{1}=\lim_{ s \to 0 } sG(s)=\frac{1}{h} \\ \gamma_{2}=\lim_{ s \to -\frac{h}{m} } \left( s+\frac{h}{m} \right)G(s)=-\frac{1}{h} \end{cases} \\ \implies &g(t)=\left( +\frac{1}{h}-\frac{1}{h}e^{ -ht/m } \right)H(t)=\frac{1}{h}(1-e^{ -ht/m })H(t)=y(t)=x_{1}(t)\end{align}$$
	+ Se avessimo risolto il sistema dal modello interno $$\begin{matrix} A=\begin{pmatrix} 0 & 1 \\ 0& -\frac{h}{m} \end{pmatrix} & b=\begin{pmatrix} 0 \\ \frac{1}{m} \end{pmatrix} \end{matrix}$$quindi $x(0^+)^T=\begin{pmatrix}0 & \frac{1}{m}\end{pmatrix}$ 

- *Ritardatore* ideale in tempo continuo
	- Il sistema è estremamente semplice: per $\tau >0$: $$y(t)=u(t-\tau)$$
	- Abbiamo già visto che $$G(s)=e^{ -st }$$ma come si giustifica?
		- Banalmente, dalle proprietà della trasformata di Laplace! (suppongo $u(t)=0$ per $t<-\tau$) $$Y(s)=\mathcal{L} \left[  u(t-\tau)  \right]=e^{ -st }U(s)\implies G(s)=e^{ -st } $$
	- Siccome avere un polo "infinito" non è comodo possiamo effettuare un'approssimazione in polinomiale fratta, detta *approssimazione di Padè* $$e^{ -s\tau }≈ \frac{1-\frac{\tau}{2}s}{1+\frac{\tau}{2}s}$$
		- L'approssimazione è giustificata dal fatto che sviluppando al II ordine in $s$: $$\begin{align} e^{ -s\tau }&=1-s\tau+\frac{\tau^2}{2}s^2 +\mathcal{  o  } (s^2)\\ \frac{1-\frac{\tau}{2}s}{1+\frac{\tau}{2}s}&=\left( 1-\frac{\tau}{2}s \right)\left( 1-\frac{\tau}{2}s+\frac{\tau^2}{4}s^2 \right)+o(s^2)=1-s\tau+\frac{\tau^2}{2}s^2+o(s^2)  \end{align}$$
		- → È una polinomiale fratta che al secondo ordine ha lo stesso sviluppo dell'esponenziale
			- Tale approssimazione ha un polo in $-\frac{\tau}{2}$, uno zero in $\frac{\tau}{2}$
## 13 - Stabilità interna e risposte canoniche

- L'idea ora è di studiare come risponde il sistema a diversi ingressi particolari, detti *canonici* che contengono molte informazioni utili sul sistema
	- Studieremo prevalentemente il caso a tempo continuo, il caso a tempo discreto è analogo (cambia la forma dei modi e i valori critici per i poli)
### 13.1 - Risposta a un segnale di tipo modo a tempo continuo

- Supponiamo di iniettare al sistema un ingresso libero di tipo modo (a t.c.) $$u(t)=U \frac{t^{m-1}}{(m-1)!}e^{ \lambda t }H(t)$$ e studiarne l'uscita forzata 
	- In questo caso:
		- $U$ è l'ampiezza del modo (fattore costante)
			- Da non confodere con $U(s)=\mathcal{L} \left[  u(t)  \right]$
		- $m$ è la molteplicità della radice $\lambda \in \mathbb{C}$ che genera tale modo 
	- So che la trasformata di tale modo è $$U(s)=\mathcal{L} \left[  u(t)  \right] =\frac{U}{(s-\lambda)^m}$$
	- Per quanto riguarda il valore $\lambda$ scelto, ci sono due casistiche da considerare

+ a) $\lambda$ NON è nè polo nè zero della FdT del sistema $G(s)$
	+ Se lo facessi nel dominio del tempo, avrei un complicato integrale di convoluzione $$y_{f}(t)=(g*u)(t)=\int_{0}^tg(t-\tau)u(\tau)d\tau$$
		+ Invece sfrutto le proprietà della trasformata di Laplace $$Y_{f}(s)=G(s)U(s)=\frac{UG(s)}{(s-\lambda)^m}$$
			+ Suppongo che la $G(s)$ del sistema sia nota e razionale (sistema LTI)
	+ Eseguo poi la scomposizione in fratti semplici, ottenendo una divisione di termini di questo tipo $$ Y_f(s) = \underbrace{\left[ \frac{\gamma_{U,1}}{s - \lambda}  + \dots + \frac{\gamma_{U,m}}{(s - \lambda)^m} \right]}_{\text{modi dovuti all'ingresso}} + \underbrace{\left[ \frac{\gamma_{1,1}}{s - p_1} + \dots + \frac{\gamma_{1,m_1}}{(s - p_1)^{m_1}} + \dots \right]}_{\text{modi tipo del sistema}} $$
		+ a) Poli derivanti dall'ingresso (coefficienti $\gamma_{U, j}$) → sono a $s=\lambda$ autovalore di ingresso 
			+ Posso calcolare rapidamente (dalle regole viste in precedenza) il termine di grado massimo $$\gamma_{U,m}=\lim_{ s \to \lambda }(s-\lambda)^m Y_{f}(s)=\lim_{ s \to \lambda } UG(s)=UG(\lambda)$$(per gli altri servono le derivate)
				+ Noto quindi che se come ipotizzato $G(\lambda)≠0$ tale modo non è nullo
		+ b) Poli tipo del sistema (coefficienti $\gamma_{i,j}$) → il sistema vibra anche secondo i suoi autovalori $\left\{ p_{1},\dots,p_{n} \right\}$ alle relative molteplicità $m_{i}$
	+ Ritorno poi al dominio del tempo tramite le trasformate elementari $$ y_f(t) = \underbrace{G(\lambda) u(t)}_{\text{Copia}} + \underbrace{\sum_{j=1}^{m-1} \mathcal{L}^{-1}\left[\frac{\gamma_{U,j}}{(s-\lambda)^j}\right]}_{\text{Copie distorte}} + \underbrace{\sum \mathcal{L}^{-1}\left[\frac{\gamma_{i,j}}{(s-p_j)^j}\right]}_{\text{Termini tipo modo}} $$
		+ a) Modi derivanti dall'ingresso
			+ i) Il termine di ordine maggiore riprodurrà esattamente una copia del modo in entrata, scalata di un certo fattore (*"modo fotocopia"*) $$\gamma_{U, m}=UG(\lambda)\implies \mathcal{L}^{-1} \left[  \frac{\gamma_{U,m}}{(s-\lambda)^m}  \right]=G(\lambda) U \frac{t^{m-1}}{(m-1)!}e^{ \lambda t } =G(\lambda)u(t)$$
			+ ii) Gli altri modi a ordine $j<m$ minore produrranno *"copie distorte"* del modo principale con polinomi a ordini minori $$\mathcal{L} ^{-1}\left[  \frac{\gamma_{U, j}}{(s-\lambda)^j}  \right] =\gamma_{U,j} \frac{t^{i-1}}{(i-1)!}e^{ \lambda t }$$
				+ Condividono la stessa frequenza ma la loro ampiezza cresce/decresce con potenze del tempo ridotte
		+ b) Modi tipo del sistema
			+ Sono dello stesso tipo dei modi liberi del sistema $$\mathcal{L}^{-1} \left[ \frac{\gamma_{i,j}}{(s-p_{i})^j}   \right]\propto t^{j-1}e^{p_{i}t} $$
	+ Oss: scegliendo accuratamente l'ingresso posso annullare i modi caratteristici del movimento libero del sistema
		+ So che dal principio di sovrapposizione l'uscita totale sarà data da uscita libera + forzata $$Y(s)=Y_{f}(s)+Y_{l}(s)$$
		+ Se scelgo accuratamente l'ingresso in modo da avere i $\gamma_{i,j}$ che annullano perfettamente i modi liberi del sistema posso manipolare il sistema puramente alla frequenza dell'ingresso $$c^T(sI-A)^{-1}x(0)=-\sum_{i,j} \frac{\gamma_{i,j}}{(s-p_{i})^j}$$

- b) $\lambda$ è un polo della FdT del sistema
	- Suppongo che $\lambda=p_{1}$ e che la FdT del sistema sia data da $$G(s)=\frac{N(s)}{(s-p_{1})^{m_{1}}D^{\prime} (s)}$$dove $D^{\prime}(s)=\frac{D(s)}{(s-p_{1})^{m_{1}}}$
	- Allora si avrà un'uscita del tipo $$Y(s)=\frac{UN(s)}{(s-p_{1})^{m+m_{1}}D^{\prime} (s)}$$
		- Scomponendo in fratti semplici avremo un termine di ordine $m+m_{1}$, che, antitrasformato, genera un modo $$\mathcal{L} ^{-1}\left[  \frac{\gamma_{1, m+m_{1}}}{(s-p_{1})^{m+m_{1}}}  \right] =\gamma_{1, m_{1}+m} \frac{t^{m_{1}+m-1}}{(m_{1}+m-1)!}e^{ p_{1}t }$$dove $\gamma_{1, m_{1}+m}≠0$ 
			- Si noti quindi che l'uscita amplifica il modo naturale del sistema, ottenendo un monomio esponenziale di grado maggiore $m_{1}+m>m_{1}$
	- → Definizione di *risonanza* (dal punto di vista della FdT): si ha quando un modo libero del sistema, a causa di un ingresso che condivide il suo autovalore, compare a grado strettamente maggiore in uscita rispetto al grado in ingresso
		- Il segnale "esplode" molto più rapidamente
	- Un caso particolare è se $\lambda=p_{1}=\pm j\omega$ immaginario puro (con il suo coniugato)
		- Suppongo per fissare le idee che $$u(t)=\sin \omega t=\frac{1}{2j}e^{ j\omega t }-\frac{1}{2j}e^{ -j\omega t }$$
			- Allora la molteplicità di $+j\omega$ e di $-j\omega$ è 1
		- Supponendo che il sistema abbia polo (semplice) in $\pm j\omega$ si ha $$m+m_{1}=2\implies y_{f}(t)\propto t\sin(\omega t)$$
			- Di conseguenza, un'uscita che prima era limitata cresce linearmente nel tempo (diverge)!

+ c) $\lambda$ è uno zero della FdT del sistema
	+ In tal caso vale che per $\lambda=z_{1}$ $$G(s)=\frac{(s-z_{1})^{m_{1}}N^{\prime} (s)}{D(s)}$$
	+ L'uscita forzata risulta quindi $$ Y_{forzata}(s) = G(s) U(s) = \left( \frac{(s - z_1)^{m_1} \tilde{n}(s)}{d(s)} \right) \cdot \left( \frac{U_0}{(s - z_1)^m} \right) $$
		+ a) Cancellazione totale ($m_{1}\geq m$) → si elimina completamente il modo legato al polo di ingresso
			+ Non ci sono più i termini di modo copia/distorto, vengono *filtrati* dalla funzione di trasferimento
				+ → Esistono stati non osservabili → sistema non completamente osservabile
			+ → Gli unici modi del sistema sono quelli generati dai poli della FdT
				+ Ma allora dal principio di sovrapposizione esisterà sempre una condizione iniziale $x(0)$ particolare che produca una risposta libera opposta a quella forzata $$y(t)=y_{l}(t)+y_{f}(t)=0,\,\forall t>0$$
		+ b) Cancellazione parziale ($1<m_{1}<m$) → il modo legato al polo di ingresso viene abbassato di grado
			+ L'unico modo generato dal polo d'ingresso sarà del tipo "copia distorta"
			+ L'effetto bloccante c'è stato, ma è solo parziale

- Sono qui riportati i grafici della risposta nel caso si abbia una FdT del primo o del secondo ordine
	  ![[risposta_gradino_primo_ordine.png]]![[risposta_gradino_secondo_ordine.png]]
### 13.2 - Stabilità esterna (BIBO)

- Abbiamo definito nel capitolo 6 il concetto di stabilità interna di un sistema
	- Esiste però un altro concetto fondamentale (del tutto nuovo) di stabilità
	- Un sistema dinamico LTI si definisce *esternamente stabile* se una qualsiasi sollecitazione in ingresso $u$ limitata nel tempo produce un'uscita forzata $y_{f}$ anch'essa limitata in ampiezza $$ \text{Se } \exists M_u > 0 : |u(t)| \le M_u \;\forall t \implies \exists M_y > 0 : |y_{f}(t)| \le M_y \;\forall t $$
		- Questo tipo di stabilità è anche detto *BIBO* (*balanced-input → balanced-output*)
		- Oss: la definizione coinvolge solo l'uscita forzata, non l'uscita libera
	- Esiste una caratterizzazione importante di questa condizione

> [!theorem] Teorema dei Poli
> Un sistema LTI è esternamente stabile se e e solo se tutti i poli $p_{i}$ della sua FdT $G(s)$ sono stabili $$\begin{cases}
> \text{A t.c.} \implies \mathrm{Re}(p_{i})<0, \,\forall i \\
> \text{A t.d.} \implies |p_{i}|<1,  \,\forall i 
> \end{cases}$$

> [!proof] (A tempo continuo)
> a) Siccome l'uscita forzata è definita dall'integrale di convoluzione $y_{f}=g *u$, mostro inizialmente che posto un ingresso limitato, $$(||u||_{\infty}<+\infty \implies ||y_{f}||_{\infty}<+\infty) \iff ||g||_{1}<+\infty$$
> ($\impliedby$) È facile, segue dalla disuguaglianza di Young per il prodotto di convoluzione $$||y_{f}||_{\infty}\leq||u||_{\infty}||g||_{1}<+\infty$$
> siccome $u$ è limitato
> ($\implies$) Per assurdo, cioè suppongo che per ogni ingresso limitato, $y_{f}$ sia limitato ma $||g||_{\infty}=+\infty$. Considero allora l'ingresso $$u(-t)=\text{sign}(g(t))$$
> Vale per tale ingresso che $$y(t)=\int_{0}^{+\infty}g(\tau)\text{sign}(g(\tau-t))d\tau$$
> e valutando in $t=0$: $$y(0)=\int_{0}^{+\infty}g(\tau)\text{sign}(g(\tau))d\tau=\int_{0}^{+\infty}|g(\tau)|d\tau=||g||_{1}=+\infty$$
> → Assurdo 
> b) Mostro la tesi
> Si espande in fratti semplici $G(s)$ sui propri $N$ poli $p_k = \sigma_k + i\omega_k$ di molteplicità $m_k$ Antitrasformando, $g(t)$ è descrivibile mediante l'espansione modale esatta: $$ g(t) = \sum_{k=1}^N \sum_{j=0}^{m_k-1} c_{k,j} \, t^j \, e^{(\sigma_k + i\omega_k)t} $$
> Il cui modulo del termine $k,j$-esimo per tempi positivi scala come $|c_{k,j}| \, t^j e^{\sigma_k t}$
> Per cui $g$ può essere $L^1$ se e solo se i termini decadono esponenzialmente cioè $\mathrm{Re}(p_{k})<0, \,\forall k$
> 

- Che relazione c'è tra stabilità interna ed esterna? Vale che $$\text{Asintotica stabilità interna} \implies  \text{Stabilità Esterna}$$
	- Infatti ho:
		- Stabilità interna $\iff$ ho solo autovalori stabili
		- Stabilità esterna $\iff$ ho solo poli della FdT stabili
	- Siccome so che l'insieme dei poli è contenuto nell'insieme degli autovalori $$\left\{ p_{i} \right\}\subseteq \left\{ \lambda_{i} \right\}$$ma non viceversa, la stabilità interna è più forte
		- Ho stabilità esterna ma non interna nel caso siano critici degli autovalori che sono zeri comuni di $N(p)$ e $D(p)$ → ovvero non osservabili o non raggiungibili
	- Siccome nel resto del corso studieremo solo $G(p)$ (quindi useremo la stabilità esterna) introduciamo un'ipotesi
		- Assumo la *realizzazione minima*, cioè che i poli di $G(p)$ equivalgano esattamente agli autovalori di $A$
		- → Non esistono modi irraggiungibili/inosservabili
			- Immagino di effettuare quindi la scomposizione di Kalman e selezionare solo il sistema $z_{ro}$
### 13.3 - Transitorio per $t \to 0^+$

- Grazie ad un'analisi dei limiti della funzione $Y(s)$ posso ricavare alcune importanti transizioni sul comportamento iniziale di $y(t)$
	- Dalle proprietà della trasformata di Laplace, nel caso in cui $Y$ abbia grado relativo $r_{y}>0$, so che $$\lim_{ t \to 0^+ } y(t)=\lim_{ \sigma \to +\infty }sY(s) $$
	- In questo caso, vale chiaramente dalle proprietà dei limiti che
		- a) $r_{y}=1\implies \lim_{ t \to 0^+ }y(t)≠0$
			- Infatti sarà uguale al coefficiente $\beta_{r}$ del grado più alto del numeratore (siccome il denominatore è monico)
		- b) $r_{y}>1\implies \lim_{ t \to 0^+ }y(t)=0$
	+ Posso estendere questo studio anche alle derivate successive di $Y(s)$
		+ Si dimostra per induzione la seguente generalizzazione del TVI 

> [!theorem] Teorema del valore iniziale per funzioni razionali fratte 
> Sia $Y(s)$ una funzione razionale strettamente propria caratterizzata da un grado relativo $r_y \ge 1$
> Allora, vale che $$\begin{cases}
>  y^{(k)}(0) = 0 \quad \forall k < r_y - 1  \\
> y^{(r_y - 1)}(0) =\beta_{r}≠0
> \end{cases}$$

> [!proof]
> Per induzione. Abbiamo mostrato sopra il caso $k=0$. 
> Suppongo ora che la proprietà valga per un $k>0$, con $r_{y}-1>k$.  In tal caso vale che $$ \mathcal{L}[y^{(k+1)}(t)] = s^{k+1} Y(s) - s^{k}y(0) - s^{k}\dot{y}(0) - \dots - y^{(k)}(0) =s^{k+1}Y(s)$$
> siccome tutte le derivate precedenti sono nulle. Applicando allora il TVI a tale derivata: $$ y^{(k+1)}(0) = \lim_{s \to \infty} s \left[ s^{k+1} Y(s) \right] = \lim_{s \to \infty} s^{k+2} \left( \frac{\beta_{r}}{s^{r_y}} \right) = \lim_{s \to \infty} \frac{\beta_{r}}{s^{r_y - (k+2)}} $$
> Poiché $k < r_y - 2$, si ha che $r_y - (k+2) > 0$. Il denominatore domina. $$ \implies y^{(k+1)}(0) = 0 $$
> Pertanto la prima proprietà è mostrata. Se invece $k=r_{y}-1$, vale che alla derivata $k$-esima il limite produrrà il termine costante del grado maggiore del numeratore, ovvero $\beta_{r}$ .

+ Ora consideriamo la relazione $$Y(s)=G(s)U(s)$$ riguardo al grado relativo di $Y$
	+ Per ogni ingresso $U(s)$ che applicherò, modificherò il grado relativo della FdT, scritta per semplicità come: $$ G(s) = \frac{\beta_r s^{n-r} + \dots + \beta_n}{s^n + \alpha_1 s^{n-1} + \dots + \alpha_n} $$
		+ Se applico un ingresso canonico ad ampiezza unitaria ($U(s)=s^{-k}$) il valore della prima derivata non nulla di $y$ sarà $\beta_{r}$
	+ Posso scrivere la FdT anche con la *convenzione di Bode* in cui sono esplicitati il guadagno e le costanti di tempo $$ G(s) = \frac{\mu}{s^g} \cdot \frac{ \prod_{i} (1 + s\tau_i) \prod_{k} \left( 1 + \frac{2\xi_{z,k}}{\omega_{nz,k}}s + \frac{s^2}{\omega_{nz,k}^2} \right) }{ \prod_{j} (1 + sT_j) \prod_{m} \left( 1 + \frac{2\xi_{p,m}}{\omega_{np,m}}s + \frac{s^2}{\omega_{np,m}^2} \right) } $$
		+ In questa convenzione abbiamo:
			+ a) $\mu=G(0)$ guadagno del sistema
			+ b) $g$ → numero di "integratori puri" (poli o zeri di $\lambda=0$, a seconda del segno di $g$)
			+ c) Poli/zeri reali si possono ricavare da $$z_{i}=-\frac{1}{\tau_{i}} \quad \quad  p_{i}=-\frac{1}{T_{i}}$$
				+ $\tau_{i}$ e $T_{i}$ → costanti di tempo di zeri e poli (reali)
			+ d) Poli/zeri complessi coniugati espressi si possono ricavare da: $$\lambda_{1,2}=-\xi \omega_{n} \pm j\omega_{n} \sqrt{ 1-\xi^2 }$$il cui modo associato è $$e^{ -\xi \omega_{n} t}[\cos(t\omega _{n}\sqrt{ 1-\xi^2 })+i\sin(t\omega_{n} \sqrt{ 1-\xi^2 })]$$ e la cui costante di tempo è $$T=\frac{1}{\xi \omega_{n}}$$
				+ i) $\omega_{n}$ → pulsazione naturale del polo
				+ ii) $\xi$ → smorzamento del polo
					+ È un parametro adimensionale ($0<ξ<1$) che quantifica quanto viene soppressa l’oscillazione
					+ Se $\xi\to{0}$ il polo è puramente immaginario (non ho smorzamento)
					+ Se $\xi\to 1$ il polo tende a smorzarsi immediatamente (costante di tempo molto piccola)
		+ In tal caso il termine $\beta_{r}$ si ricava con la formula chiusa: $$ \beta_r = \mu \frac{\prod \tau_i \prod \frac{1}{\omega_{z_i}^2}}{\prod T_i \prod \frac{1}{\omega_{p_i}^2}} $$
			+ Si ottiene raccogliendo il termine di grado maggiore, $s^{n-r}$ a numeratore e $s^n$ a denominatore

| Ingresso Forzante $u(t)$            | Trasformata $U(s)$  | Grado Relativo Uscita $r_y$ | Ordine della Prima Derivata Non Nulla ($r_y - 1$) |
| ----------------------------------- | ------------------- | --------------------------- | ------------------------------------------------- |
| **Impulso di Dirac**                | $1$                 | $r$                         | **$r - 1$**                                       |
| **Gradino unitario**                | $\frac{1}{s}$       | $r + 1$                     | **$r$**                                           |
| **Rampa unitaria**                  | $\frac{1}{s^2}$     | $r + 2$                     | **$r + 1$**                                       |
| **Polinomio unitario di grado $k$** | $\frac{1}{s^{k+1}}$ | $r+k+1$                     | **$r+k$**                                         |
### 13.4 - Transitorio per $t \to +\infty$

- Per il limite per $t\to +\infty$ uso chiaramente il teorema del valore finale (TVF) $$\lim_{t \to +\infty} y(t) = \lim_{s \to 0} s Y(s)$$
	- Questo può essere applicato SOLO se i poli di $sY(s)$ sono stabili (cioè se ho stabilità BIBO)
		- Anche nei casi in cui ci sia un $\lambda_{i}$ con $\mathrm{Re}(\lambda_{i})>0$ il risultato del lato destro dell'equazione viene un numero finito MA non ha nessun senso fisico (non vale il teorema)
	- Analizziamo in funzione del teorema le risposte agli ingressi canonici

+ a) Risposta all'impulso $$u(t)=\delta(t) \implies U(t)=1\implies Y(s)=G(s)$$
	+ i) $G(s)$ esternamente stabile → ottengo limite nullo (applicando il TVF) $$\lim_{t \to +\infty} y(t) = \lim_{s \to 0} s G(s) = \lim_{s \to 0} s \sum_i \frac{\gamma_i}{s - p_i} = 0$$
	+ ii) Caso particolare: $G(s)$ ha un polo singolo nell'origine → il TVF è ancora applicabile!
		+ Infatti se calcolo $sG(s)$ non ha più poli critici $$sG(s)=s\left( \frac{\gamma_{1}}{s} +\sum_i \frac{\gamma_i}{s - p_i} \right)=\gamma_{1}+\sum_i \frac{\gamma_is}{s - p_i} $$
		+ Per cui il limite è costante $$\lim_{t \to +\infty} y(t) = \lim_{s \to 0} s G(s) = \gamma_{1}$$
	+ iii) Altri casi → non posso applicare TVF
		+ Se $G(s)$ ha poli immaginari puri → il limite non essite
		+ Se $G(s)$ ha poli instabili → il limite è infinito

- b) Risposta al gradino $$u(t)=H(t)\implies U(s)=\frac{1}{s}\implies Y(s)=\frac{G(s)}{s}$$
	- i) $G(s)$ esternamente stabile → ottengo limite pari al guadagno statico $\mu$ $$\lim_{t \to +\infty} y(t) = \lim_{s \to 0} s \frac{G(s)}{s}  = G(0)=\mu$$
		- Caso particolare: $G(s)$ ha uno zero nell'origine $\implies \mu=0\implies \lim_{ t \to +\infty }y(t)=0$
			- Il sistema contrappone il polo in zero dell'integratore (a monte) ad uno zero nell'origine a valle
	- ii) Altri casi → non posso applicare TVF

+ c) Generico ingresso polinomiale $$u(t) = c_0 + c_1 t + \dots + c_k t^k \implies  U(s) = \frac{\gamma_{u,1}}{s} + \frac{\gamma_{u,2}}{s^2} + \dots + \frac{\gamma_{u,k+1}}{s^{k+1}}$$
	+ Espandendo in fratti semplici: $$Y(s) = G(s) U(s) = \underbrace{\left[ \sum_{j=1}^{k+1} \frac{A_j}{s^j} \right]}_{\text{Termini Fotocopia}} + \underbrace{\left[ \sum_i \frac{B_i}{s - p_i} \right]}_{\text{Termini Transitori}}$$
	+ i) $G(s)$ esternamente stabile → per $t\to +\infty$ i termini transitori tendono a $0$
		+ Ci sono diverse casistiche per i "termini fotocopia"
		+ a) Nessuno zero nell'origine → non posso usare TVF, il limite diverge come un polinomio di grado $k$
		+ b) $m$ zeri nell'origine → la massima potenza di $\left( \frac{1}{s} \right)$ diventa $(k+1)-m$
			+ Se $m\geq k+1$ → $sG(s)$ non ha poli critici → posso applicare TVF → il limite non diverge
			+ Se $m <k+1$ → non posso applicare TVF, il limite diverge come un polinomio di grado $k-m$
	+ ii) Ho $m$ poli nell'origine → il limite diverge come un polinomio di grado $k+m$
### 13.5 - Tempo di assestamento e raccordo della risposta

#### 13.5.1 - Numero di oscillazioni

- Abbiamo già studiato che a tempo continuo la costante di tempo di un polo $\lambda$ è data da $$T=-\frac{1}{\lambda}$$
	- Suppongo allora di avere un polo reale e due poli complessi coniugati asintoticamente stabili
		- Polo reale $\implies \lambda \in \mathbb{R}\implies T=-\frac{1}{\lambda}:=T_{R}$
		- Poli complessi coniugati (notazione Bode) $\implies \lambda_{12}=-\xi \omega_{n}\pm \omega_{n}\sqrt{ 1-\xi^2 }\implies T=\frac{1}{\xi \omega_{n}}:=T_{C}$
		- In entrambi i casi il tempo di assestamento è $t_{a}=5T$
	- Ci sono due casistiche da considerare
		- a) Polo reale dominante $T_{R}>T_{C}$
			- Allora supponendo la sinusoide esaurita dopo il tempo di assestamento $5T_{C}$ avremo un numero di *oscillazioni finite* nel transitorio
				- Rigorosamente sono infinite, ma passato il tempo di assestamento sono totalmente irrilevanti, quindi non le consideriamo
			- Per i tempi vicini al tempo di assestamento gli unici contributi apprezzabili sono quelli dell'esponenziale
				- Quindi la derivata dell'uscita non oscilla
		- b) Polo complesso dominante
			- In questo caso per i tempi vicini al tempo di assestamento, e oltre, il contributo apprezzabile è quello della sinusoide
				- Quindi nonostante le oscillazioni tendano a 0 in ampiezza, la derivata complessiva continuerà ad oscillare → *oscillazioni infinite*
#### 13.5.2 - Sottoelongazioni

- Supponiamo di avere un ingresso a gradino $U(s)=\frac{1}{s}$ e che voglia studiare l'andamento dei primi istanti del sistema
	- Suppongo che il sistema sia esternamente stabile 
		- → So che la prima derivata non nulla iniziale è $y^{(r)}(0^+)=\beta_{r}$ e che per tempi lunghi $y(+\infty)=\mu$
	- Allora posso studiare la direzione dei primi istanti del sistema con la concordanza dei segni di $\mu$ e $\beta_{r}$
		- a) $\beta_{r}$ e $\mu$ concordi → la risposta va esattamente nella direzione aspettata
		- b) $\beta_{r}$ e $\mu$ discordi → caso di *sottoelongazione* → il sistema inizialmente ha "direzione" (= pendenza / concavità / derivate successive) opposta all'asintoto per $t\to+\infty$
			- es. Giro la manopola dell'acqua calda per riscaldarla e per i primi istanti esce acqua ancora più fredda, per poi riscaldarsi e arrivare a regime
	- Come si calcola rapidamente questa concordanza?
		- Riprendo la formula di prima $$ \beta_r = \mu \frac{\prod \tau_i \prod \frac{1}{\omega_{z_i}^2}}{\prod T_i \prod \frac{1}{\omega_{p_i}^2}} $$
		- Dall'ipotesi di BIBO, $T_{i}>0$
		- → $\beta _r$ e $\mu$ sono concordi $\iff$ il numero di zeri con $\tau_{i}<0$ è pari
			- Allora definisco gli zeri *stabili* se $\tau_{i}>0$ e *instabili* se $\tau_{i}<0$ (come per i poli)
		- Se un sistema ha solo zeri stabili viene detto a *sfasamento minimo* $$\text{Sfasamento minimo} \iff \mathrm{Re}(z_{i})<0 \,\,\forall i \iff \tau_{i}>0 \,\,\forall i$$
## 14 - Risposta in frequenza

- In questo capitolo studiamo come si comporta la FdT di un sistema se consideriamo un ingresso di tipo periodico
	- Faremo sempre l'ipotesi di avere una $G(s)$ esternamente stabile, se non esplicitato
### 14.1 - Risposta al regime armonico

- Supponiamo di avere un ingresso sinusoidale del tipo $$u(t)=U\sin(\omega t+\alpha)=\frac{U}{2j}e^{ j(\omega t+\alpha) }-\frac{U}{2j}e^{ -j (\omega t+\alpha)}=U_{\alpha}e^{ j\omega t }+U_{\alpha}^*e^{ -j\omega t }\implies U(s)=\frac{U_{\alpha}}{s-j\omega}+\frac{U_{\alpha}^*}{s+j\omega}$$ dove definisco $U_{\varphi}:=\frac{U}{2j}e^{ j\varphi }$
	- Pertanto si avrà, scomponendo al solito in fratti semplici $$Y(s)=G(s)\left[\frac{U_{\alpha}}{s-j\omega}+\frac{U_{\alpha}^*}{s+j\omega}\right]= \underbrace{\frac{\gamma}{s - i\omega} + \frac{\gamma^*}{s + i\omega}}_{\text{Poli dell'ingresso (regime)}} + \underbrace{\sum_j \frac{C_j}{s - p_j}}_{\text{Poli di } G(s) \text{ (transitori)}} $$
		- Si noti che i termini transitori, dovuti ai poli della FdT del sistema, dall'ipotesi di stabilità, decadono rapidamente
			- → Per tempi grandi l'unica parte dominante dell'uscita è data dai nodi "fotocopia" dell'ingresso
		- Calcolando i residui $$\gamma=U_{\alpha}G(j\omega)  \quad \gamma^*=U_{\alpha}^*G(-j\omega)$$supponendo che $\pm j\omega$ non siano poli del sistema
			- Se fossero zeri, avrei $\gamma=0$ per cui l'armonica verrebbe "totalmente assorbita"
			- Si mostra inoltre la proprietà della FdT $$G(j\omega)=G(-j\omega)^*$$
				- Infatti essendo $G(s)$ un rapporto di polinomi a coefficienti reali, l'unica azione di coniugato ricade sulla variabile $s$
				- Passando per $G(j\omega)$ alla notazione esponenziale: $$\begin{cases} R(\omega)=|G(j\omega)| \\ \varphi(\omega)=arg(G(j\omega)) \end{cases}\implies G(j\omega)=R(\omega)e^{ i\varphi(\omega) }$$ottengo che $$ \gamma = \left( \frac{U}{2i} e^{i\alpha} \right) \left( R(\omega) e^{i\varphi(\omega)} \right) = \frac{U R(\omega)}{2i} e^{i(\alpha + \varphi(\omega))} $$
	- Antitrasformando i modi "fotocopia": $$ y_{ss}(t) = \frac{U R(\omega)}{2i} \left[ e^{i(\omega t + \alpha + \varphi(\omega))} - e^{-i(\omega t + \alpha + \varphi(\omega))} \right]  = U \cdot R(\omega) \cdot \sin(\omega t + \alpha + \varphi(\omega)) $$ 
		- a) L'ampiezza del modo è moltiplicata per il guadagno armonico $R(\omega)$
		- b) La fase viene traslata di $\varphi(\omega)$

+ Il numero complesso $$G(j\omega)$$ è definito *risposta in frequenza* del sistema
	+ Il suo modulo $|G(j\omega)|=R(\omega)$ è la modulazione del modo in uscita rispetto all'entrata
		+ $R(\omega)>1\implies$ amplificazione, $R(\omega)<1\implies$ attenuazione
	+ La sua fase $arg(G(j\omega))=\varphi(\omega)$ è lo sfasamento del modo in uscita rispetto all'entrata 
		+ $\varphi(\omega)>0\implies$ l'uscita è in anticipo di fase, $\varphi(\omega)<0\implies$ l'uscita è in ritardo di fase

- Si osservi che dalla teoria di Fourier quanto detto vale in realtà per qualsiasi entrata $u(t)$
	- Infatti posso sempre:
		- a) Se $u(t)$ è periodica scomporlo con la serie di Fourier
		- b) Se $u(t)$ non è periodica utilizzare la trasformata di Fourier
	- Passo dall'analizzare il comportamento complessivo nei tempi all'analizzare la risposta ad ogni frequenza dello spettro
### 14.2 - Risonanza e antirisonanza

- Definisco due punti stazionari nel grafico di funzione di $R(\omega)$:
	- a) *Risonanza* del sistema un punto di massimo locale $\omega$ per $R(\omega)$
		- L'abbiamo già definita nell'analisi della risposta al modo generico, ma ora la vediamo dal punto di vista della frequenza
	- b) *Antirisonanza* del sistema un punto di minimo locale $\omega$ per $R(\omega)$
		- Ad esempio si consideri una FdT con due poli al numeratore complessi coniugati, di pulsazione $\omega_{n}$ $$ G(s) = \mu \frac{1 + \frac{2\xi}{\omega_n}s + \frac{s^2}{\omega_n^2}}{(1 + sT)^2} \implies  G(j\omega) = \mu \frac{\left(1 - \frac{\omega^2}{\omega_n^2}\right) + j \frac{2\xi\omega}{\omega_n}}{(1 + j\omega T)^2} $$
		- Assumiamo inoltre che $\frac{1}{T}\gg \omega_{n}$ 
			- Infatti per osservare l'antirisonanza in $\omega_{n}$ ho bisogno che le frequenze attorno non siano particolarmente attenuate ($\frac{1}{T}$ è proprio la frequenza di taglio del filtro passa-basso)
		- Facendone il modulo, noto che $|1+j\omega T|^2=1+\omega^2T^2≈1$ sotto tale ipotesi, per cui $$R(\omega)=|G(j\omega)| \approx \mu \sqrt{\left(1 - \frac{\omega^2}{\omega_n^2}\right)^2 + \frac{4\xi^2\omega^2}{\omega_n^2}} \quad \text{per } \omega \ll \frac{1}{T} $$
			- Si può mostrare analiticamente che $\omega_{n}$ è un punto di minimo locale per la funzione $\iff \xi < \frac{1}{\sqrt{ 2 }}$
				- Infatti il termine nella parentesi è nullo per $\omega=\omega_{n}$, mentre l'altro termine è quadratico
				- Banalmente, a $\omega=\omega_{n}$ il polo in ingresso viene filtrato (parzialmente o totalmente) dalla parte immaginaria dello zero al numeratore
			- Se si avessero invece zeri complessi immaginari puri ($\xi=0$) lo zero al numeratore filtra totalmente $\omega_{n} \implies R(\omega_{n})=0$ 
		- Se analizziamo invece la fase $\varphi(\omega)$, il suo grafico passa per ($\forall \xi$):
			- a) $\varphi(0)=0$
			- b) $\varphi(\omega_{n})=\frac{\pi}{2}$
				- Al diminuire di $\xi$ la variazione di fase diventa sempre più ripida → nel caso limite ho un gradino netto
			- c) $\varphi(+\infty)=\pi$


![[antirisonanza_fase_zeri.png]]

### 14.3 - Filtri notevoli

- In base alla riposta in frequenza $G(j\omega)$ posso definire 4 comportamenti prevalenti che può avere un sistema al variare di $\omega \in \mathbb{R}$
	- a) *Filtro passa-basso* (low-pass filter) 
		- Frequenze basse → applico un guadagno piatto del tipo $R(0)=\mu$
		- Frequenze alte → sono fortemente attenuate ($R\to0$ per $\omega\to \infty$)
	- b) *Filtro passa-alto* (high-pass filter)
		- Frequenze basse → sono fortemente attenuate, è rimosso qualsiasi ingresso costante 
		- Frequenze alte → sono inalterate / guadagno piatto
	- c) *FIltro passa-banda* (band-pass filter) o *risonatore*
		- Tutte le frequenze al di fuori di una finestra molto stretta di frequenze sono eliminate
		- → Salvo solo l'interno di una frequenza $\omega_{B}$ detta *portante* (o carrier)
			- Così funziona ad esempio la modulazione analogica della radio FM 
				- La radio legge solo le frequenze in uno strettissimo intervallo attorno ad una certa portante, filtrando tutte le altre
	- d) *Filtro elimina-banda* (band-stop) o filtro *a "spillo"* (o notch)
		- È il complementare del passa-banda → elimina solo una stretta finestra di frequenze
		- Questo si ottiene banalmente ponendo $G(j\omega)=0$ nella frequenza che si vuole eliminare


![[filtri_risposta.png]]
### 14.E - Esempi

#### 14.E.1 - Filtro passa-basso del I ordine

- Ha una FdT del tipo $$G(s)=\frac{\mu}{1+sT}\implies G(j\omega)= \frac{\mu}{1+j\omega T}$$
	- Ha un guadagno statico $\mu$, nessuno zero, e un singolo polo asintoticamente stabile in $-\frac{1}{T}$, dove $T$ è la costante di tempo caratteristica
	-  a) Il modulo è $$R(\omega) = |G(j\omega)| = \frac{|\mu|}{|1 + j\omega T|} = \frac{|\mu|}{\sqrt{1 + \omega^2 T^2}}$$per cui al variare di $\omega$:
		- a) $\omega\to0$
			- $R(0)=|\mu|$
			- La derivata di $R$ è $$  \frac{d R(\omega)}{d\omega}  = -\frac{|\mu| \omega T^2}{(1 + \omega^2 T^2)^{\frac{3}{2}}}$$
			- Per cui $R^{\prime}(0)=0$ → punto stazionario
			- Si verifica che $R^{\prime\prime}(0)<0$ → concavità verso il basso
		- b) $\omega\to +\infty$
			- È asintotico a un ramo di iperbole equilatera $$R(\omega) \sim \frac{|\mu|}{\sqrt{\omega^2 T^2}} = \frac{|\mu|}{\omega T}$$
		- Si definisce *banda passante* l'insieme delle pulsazioni per cui $|R(\omega)|^2$ è attenuato al più della metà $$B_p = \left\{ \omega \geq 0 \ \Big| \ \frac{R_{max}}{\sqrt{2}} \leq R(\omega) \leq R_{max} \right\}$$
			- La frequenza in cui si ottiene tale attenuazione limite per la banda è detta *frequenza di taglio* $$  R(\omega_c) = \frac{|\mu|}{\sqrt{2}}$$
				- Per il filtro del primo ordine la frequenza di taglio si ottiene in $$\frac{|\mu|}{\sqrt{1 + \omega_c^2 T^2}} = \frac{|\mu|}{\sqrt{2}} \implies 1 + \omega_c^2 T^2 = 2 \implies \omega_c^2 T^2 = 1 \implies \omega_c = \frac{1}{T}$$
					- Quindi il limite della banda coincide con il modulo del polo del sistema
	- b) La fase è $$\varphi(\omega) = \arg(G(j\omega)) = \arg(\mu) - \arg(1 + j\omega T)$$
		- Quanto valgono gli addendi?
			- Siccome $\mu \in \mathbb{R}$, la sua fase è ovviamente $$arg(\mu)=\begin{cases} \pi & \mu>0 \\ 0 & \mu=0\\ -\pi & \mu<0 \end{cases}$$
			- Inoltre essendo $\omega, T>0$ vale che $arg(1+j\omega T)\in\left[ 0, \frac{\pi}{2} \right]$ e $$arg(1+j\omega T)=\arctan(\omega T)$$
			- → Assumendo $\mu>0$ ho che $$  \varphi(\omega) = -\arctan(\omega T)  $$
		- a) $\varphi(0)=0$ con pendenza iniziale $$\varphi^{\prime} (\omega)=-\frac{T}{1+\omega^2T^2}\xrightarrow{\omega\to0}-T$$
		- b) Per $\omega=\omega_{c}=\frac{1}{T}$: $$    \varphi\left(\frac{1}{T}\right) = -\arctan(1) = -\frac{\pi}{4} $$
		- c) Per $\omega\to+\infty$ $$    \lim_{\omega \to \infty} \varphi(\omega) = -\frac{\pi}{2} $$

![[bode_passabasso_primo_ordine.png]]

#### 14.E.2 - Ritardatore in Frequenza

- La funzione di trasferimento è data da $$G(s)=e^{ -s\tau }\implies G(j\omega)=e^{ -j\omega \tau }=\cos \omega \tau-j\sin \omega \tau$$
	- a) Modulo $$R(\omega)=|G(j\omega)|=1,  \quad \forall \omega$$
	- b) Fase $$  \varphi(\omega) = -\omega\tau$$

![[bode_ritardatore.png]]

#### 14.E.3 - Sistema del secondo ordine a poli complessi

- Considero un sistema di questo tipo $$G(s) = \frac{\mu}{1 + \frac{2\xi}{\omega_n}s + \frac{s^2}{\omega_n^2}} \implies  G(j\omega) = \frac{\mu}{\left(1 - \frac{\omega^2}{\omega_n^2}\right) + j\frac{2\xi\omega}{\omega_n}}$$
	- Non ci sono zeri, ho guadagno statico $\mu$, ho due poli complessi coniugati $p_{12}=-\xi \omega_{n}\pm \omega _n \sqrt{ 1-\xi^2 }$
		- Supponiamo le ipotesi di lavoro $\mu>0$ e $\xi>0$ (stabilità asintotica ed esterna)
	- a) Modulo $$R(\omega) = \frac{\mu}{\sqrt{\left(1 - \frac{\omega^2}{\omega_n^2}\right)^2 + 4\xi^2\frac{\omega^2}{\omega_n^2}}}$$
		- a) $\omega=0 \implies R(0)=0$ con pendenza $$R^{\prime} (\omega)=\frac{\mu}{2}\left[ \left( 1-\frac{\omega^2}{\omega_{n}^2} \right)^2+4\xi^2 \frac{\omega^2}{\omega_{n}^2} \right]^{-3/2}\left[ \frac{4\omega}{\omega_{n}^2} \left( 1-\frac{\omega^2}{\omega_{n}^2} \right) -8\xi^2 \frac{\omega}{\omega_{n}^2} \right] \xrightarrow{\omega\to0}0$$
		- b) $\omega\to +\infty \implies$ il sistema è asintotico a $$R(\omega) \sim \mu \frac{ \omega_{n}^2}{\omega^2}$$
		- Ho un punto stazionario (oltre allo zero) in $$\omega_r = \omega_n \sqrt{1 - 2\xi^2}$$che è la pulsazione di risonanza
			- Questo è ben definito ovviamente solo se $1-2\xi^2>0 \iff \xi <\frac{1}{\sqrt{ 2 }}$ (curva verde)
			- L'entità del picco è data da $$R_{max} = \frac{\mu}{2\xi\sqrt{1 - \xi^2}}$$per cui $R_{max} \xrightarrow{\xi\to0^+}+\infty$
				- Il fenomeno è la risonanza perfetta
	- b) Fase $$\phi(\omega) = \arg(G(j\omega)) = \arg(\mu) - \arg(D(j\omega)) = -\arg(D(j\omega))$$dove il polinomio a denominatore vale $D(j\omega) = \left(1 - \frac{\omega^2}{\omega_n^2}\right) + j\frac{2\xi\omega}{\omega_n}$
		- Studiando l'andamento di $D(j\omega)$:
			- a) $D(0)=1 \implies \varphi(0)=0$
			- b) $D(\omega_{n})=2\xi j \implies \varphi(\omega_{n})=\frac{\pi}{2}$
			- c) $D(+ \infty)\sim -\frac{\omega^2}{\omega_{n}^2}+\frac{j\xi \omega}{\omega_{n}} \implies \varphi(\omega) \to \pi$
		- Al variare di $\xi$ si nota che 
			- a) $\xi \nearrow \implies$ $\varphi$ si avvicina all'asintoto
			- b) $\xi \searrow \implies \varphi$ ai avvicina all'asse reale
			- c) $\xi=0 \implies \varphi = \begin{cases}0 & \omega<\omega_{n} \\ \pi  & \omega>\omega_{n} \end{cases}$  è a tratti

![[bode_risonanza_secondo_ordine.png]]


- Questi sistemi sono risolvibili analiticamente, ma esiste un modo più efficace per studiare questi sistemi intuitivamente

### 14.4 - Diagrammi di Bode

- A partire dall'analisi della risposta armonica e dal legame tra poli complessi coniugati (risonanza) e zeri complessi coniugati (antirisonanza), l'obiettivo è ora tracciare l'andamento della risposta in frequenza $G(j\omega)$ in modo sistematico. 
	- *Metodo di Bode* → definisce un set di regole per tracciare i diagrammi cartesiani del modulo $R$ e della fase $\varphi$.
		- È stato introdotto da Hendrik Wade Bode negli anni '30 ai Bell Labs per l'analisi dei circuiti telefonici a reazione, 

+ È basato su tre scelte fondamentali → due di natura grafica e uno di natura analitica:
	- 1) Asse orizzontale logaritmico per la pulsazione $\omega$
		- Questo permette di visualizzare $\omega$ a diverse scale
		- Viene inoltre utilizzato il concetto di *decade*, definita come l'intervallo tra due potenze di 10 adiacenti
			- Ovviamente essendo il grafico logaritmico lo spazio tra le unità è diviso in maniera non omogenea (es. lo spazio tra 1 e 2 occupa circa il $30\%$ della decade)
			- Regola pratica → sulla carta semilogaritmica la decade inizia sempre prima dello spazio tra 1 e 2
			- Il numero di decadi tra $\omega_{1}$ e $\omega_{2}$ è pari banalmente a $$D=\log_{10}\left( \frac{\omega_{2}}{\omega_{1}} \right)$$ 
	- 2) Asse verticale espresso in decibel per il modulo $R$
		- Si osservi che per una convenzione puramente storica la convenzione usata in automatica per tutti i tipi di grandezze (non solo tensioni e correnti) è con il 20 $$1 dB=20\log_{10}\left( \frac{x_{A}}{x_{B}} \right)$$
	- 3) Approssimazioni asintotiche per la semplificazione geometrica dei termini binomi e trinomi della $G(j\omega)$
		- Se ho una coppia di poli complessi coniugati si effettuano le approssimazioni:
		- a) Smorzamento massimo $$\xi≈1 \implies G(s)=\frac{\mu}{1+\frac{2s}{\omega_{n}}+\frac{s^2}{\omega_{n}^2}}=\frac{\mu}{\left( 1+\frac{s}{\omega_{{n}}} \right)^2}=\frac{\mu}{(1+sT)^2}\implies G(j\omega)=\frac{\mu}{(1+j\omega T)^2}$$
			- → Approssimo i due poli complessi coniugati in poli reali di costante di tempo $T=\frac{1}{\omega_{n}}$
			- Questa perdita di dinamica è soltanto per costruire uno scheletro della risposta in frequenza
				- Se $\xi \ll{1}$ devo affinare questa approssimazione brutale
		- b) Il modulo è approssimato ai suoi asintoti, formando una funzione continua ma con punto angoloso $$R(\omega)_{dB}=|G(j\omega)|_{dB}=20\log_{10}(\mu)-40\log_{10}\left( 1+\frac{\omega ^2}{\omega_{n}^2} \right)≈\begin{cases} 20\log_{10}(\mu) & \omega\leq \omega_{n} \\ -40\log_{10}\omega+20\log_{10}(\mu)-40\log_{10}(\omega_{n}) & \omega>\omega_{n} \end{cases}$$
			- Per cui per $\omega\leq \omega_{n}$ ho una retta costante a $20 \log_{10}(\mu)$
			- Per $\omega> \omega_{n}$ ho una retta a pendenza $-40\frac{dB}{\text{decade}}$ 
		- c) La fase è approssimata a un'altra spezzata con due punti angolosi $$\varphi(\omega) \approx \begin{cases} 0 & \text{per } \omega \le 0.1\omega_n \\ - \frac{\pi}{2} \log_{10}\left(\frac{\omega}{0.1\omega_n}\right) & \text{per } 0.1\omega_n < \omega < 10\omega_n \\ - \pi & \text{per } \omega \ge 10\omega_n \end{cases}$$ 

![[bode_due_approssimazioni.png]]

#### 14.4.1 - Diagramma di Bode del Modulo

- Giustificazione del metodo:
	- Inizio scrivendo la FdT nella convenzione di Bode (o forma "1+") $$ G(s) = \frac{\mu}{s^h} \frac{\prod_{i} (1 + s\tau_i)}{\prod_{k} (1 + sT_k)} \implies G(j\omega)=\frac{\mu}{s^h} \frac{\prod_{i} (1 + j\omega\tau_i)}{\prod_{k} (1 + j\omega T_k)}$$
		- Ho applicato l'approssimazione di Bode di smorzamento unitario $\xi=1$ per tutti gli zeri/poli complessi → ho solo zeri/poli reali
	- Il suo modulo è pertanto $$ R(\omega) = |G(j\omega)| = \frac{|\mu|}{\omega^h} \frac{\prod_{i} \sqrt{1 + \omega^2 \tau_i^2}}{\prod_{k} \sqrt{1 + \omega^2 T_k^2}} $$
		- Oss: tracciare questa funzione in scala lineare è difficile, siccome è il prodotto di tanti termini radici → per questo è più sensata la scala logaritmica
	- Passo ai logaritmi (misura in $dB$) $$ 20 \log_{10} R(\omega) = 20 \log_{10} |\mu| - 20h \log_{10}(\omega) + \sum_{i} 20 \log_{10} \sqrt{1 + \omega^2 \tau_i^2} - \sum_{k} 20 \log_{10} \sqrt{1 + \omega^2 T_k^2} $$
		- → La produttoria diventa una sommatoria → posso tracciare i vari componenti isolati e poi sommarli
	- Uso l'approssimazione di Bode per ogni singolo contributo $$20\log_{10}\sqrt{ 1+\omega^2T^2 }≈\begin{cases} 0 & \omega\leq \frac{1}{|T|} \\ -20\log_{10}\omega+20\log_{10}(|T|) & \omega>\frac{1}{|T|} \end{cases}$$che è una retta a pendenza $-20 \frac{dB}{\text{dec}}$
		- → A basse frequenze l'unico termine che rimane è $$R(\omega)_{dB}\xrightarrow{\omega\to0}20\log_{10}\left( \frac{|\mu|}{\omega^h} \right)=20\log_{10}|\mu|-20h\log_{10}(\omega)$$
			- È una retta con pendenza $-20h \frac{dB}{\text{dec}}$ 
	- Sotto queste approssimazioni, vale il seguente

+ → Metodo algoritmico:
	- 1) Scrivo la $G(s)$ nella forma di Bode e la valuto in $s=j\omega$, applicando l'approssimazione $\xi=1$ per i poli complessi coniugati
	- 2) Identifico le pulsazioni $\omega$ associate a zeri e poli e le segno sull'asse reale → convenzione: 
		- $\circ$ per le pulsazioni degli zeri ($\omega_z = \frac{1}{|\tau_i|}$)
		- $\times$ per le pulsazioni dei poli ($\omega_p = \frac{1}{|T_k|}$)
		- Se sono multipli, segnare la molteplicità $\nu$ vicino al simbolo (per i complessi è sempre $2$
	- 3) Scorro l'asse delle frequenze da sinistra a destra
		- a) Prima del primo polo/zero disegno il termine asintotico $|\mu|/\omega^h$ (retta $-20h \frac{dB}{\text{dec}}$ che passa per $+20\log_{10}|\mu|$)
		- b) Modifico la pendenza in maniera continua ogni volta che $\omega$ è uno zero o un polo
			- Se incontro uno zero $(\circ)$ → aumento la pendenza di $+20\nu \frac{dB}{\text{dec}}$
			- Se incontro un polo ($\times$) → diminuisco la pendenza di $-20\nu \frac{dB}{\text{dec}}$
		- → Il risultato è una linea spezzata continua con punti angolosi in ogni frequenza di zero/polo
	- 4) In funzione dei reali smorzamenti $\xi$ valutare le ipotesi fatte e fare un grafico qualitativo della funzione reale
		- Se ho poli immaginari puri $\xi=0$ ho un asintoto verticale

+ Esempio:
	+ Si consideri la FdT $$ G(s) = \frac{100(s + 0.1)}{s(1 + 2\xi s + s^2)} \quad (\text{con } \xi \ll 1) $$
	+ 1) Scrivo $G(j\omega)$ con la notazione di Bode e l'approssimazione per $\xi$ $$G(s)=\frac{10}{s} \frac{1+10s}{(1+s)^2} \implies G(j\omega)=\frac{10}{j\omega} \frac{1+10j\omega}{(1+j\omega)^2}$$
	+ 2) Identifico zeri/poli
		+ Uno zero $(\circ)$: $\omega=\frac{1}{10}=0.1$
		+ Un polo doppio ($\times \times$): $\omega=1$
	+ 3) La funzione disegnata sarà una spezzata $$R(\omega)=\begin{cases} 20 -20\log_{10}(\omega)  & \omega\leq 0.1 \\ 20 & 0.1<\omega<1 \\ 20-40\log_{10}(\omega) & \omega\geq1 \end{cases}$$
	+ 4) Valuto l'approssimazione
		+ Siccome $\xi\ll{1}$ avremo un caso di risonanza → devo estendere il grafico reale al di sopra della curva approssimata con un punto di massimo evidenziato

![[bode_esempio_modulo 1.png]]

#### 14.4.2 - Diagramma di Bode della Fase

- Per la fase, si può eseguire un calcolo analitico
	- Si consideri la FdT in forma di Bode, valutata in $j\omega$ $$G(j\omega) = \frac{\mu}{(j\omega)^h} \frac{\prod_{i=1}^{m} (1+j\omega\tau_i) \prod_{k=1}^{q} \left( 1 - \frac{\omega^2}{\omega_{n,z_k}^2} + j 2\xi_{z_k} \frac{\omega}{\omega_{n,z_k}} \right)}{\prod_{l=1}^{p} (1+j\omega T_l) \prod_{r=1}^{v} \left( 1 - \frac{\omega^2}{\omega_{n,p_r}^2} + j 2\xi_{p_r} \frac{\omega}{\omega_{n,p_r}} \right)}$$
	- Applico l'operatore argomento $\text{arg}[\cdot]$ $$\varphi(\omega)=\text{arg}[\mu]-\frac{h\pi}{2}+\sum_{i}\text{arg}[\omega \tau_{i}]-\sum_{j}\text{arg}[\omega T_{l}]+\sum_{k}\text{arg}\left[ 1- \frac{\omega^2}{\omega_{n}^2} +2\xi \frac{\omega}{\omega_{n}} j\right]-\sum_{r}\text{arg}\left[ 1- \frac{\omega^2}{\omega_{n, r}^2} +2\xi \frac{\omega}{\omega_{n, r}}j \right]$$
		- Dalle proprietà dell'esponenziale ($e^{ j\theta }e^{ j\varphi }=e^{ j(\theta+\varphi) }$) l'operatore converte prodotti in somme
		- Inoltre essendo $\omega>0$, $\text{arg}[j\omega]=\frac{\pi}{2}$
		- (Per calcolare correttamente le fasi bisogna utilizzare la funzione $\text{arc}\tan_{2}$)
	- Si noti inoltre che se ho un polo immaginario puro, la transizione di fase è istantanea (gradino)

+ Per tracciare un grafico si può eseguirne uno qualitativo sapendo l'andamento asintotico dell'arcotangente
	+ Poi correggerlo calcolandolo nei punti
	+ Si può utilizzare il criterio del *residuo asintotico* → se due frequenze distano tra loro meno di una decade, gli asintoti non sono mai "toccati"

- Nell'esempio di prima

![[bode_fase_g.png]]

#### 14.4.3 - Diagrammi polari

- Disegno la FdT mediante il diagramma polare (diagrammi di Nyquist) $$G(j\omega)=R(\omega)e^{ i\varphi(\omega) }$$
	- Come si disegna?
		- 1) Traccio singolarmente i grafici di $R(\omega)$ e $\varphi(\omega)$
		- 2) Leggo simultaneamente i due grafici muovendoci da sinistra $\omega\to 0$ a destra $\omega\to+\infty$
		- 3) Al variare della fase disegno il corrispondente modulo

+ Esempio di prima
	+ Si osservi come per $\varphi\to \frac{\pi}{2}$ il diagramma non segue l'asse $y$
		+ Infatti posso avere qualsiasi $\mathrm{Re}(G(s))\in \mathbb{R}$ e far divergere comunque la fase
 
![[bode_polare_g.png]]
#### 14.4.3 - Diagrammi di Bode di aggregati di sottosistemi

- 1) Aggregati in Serie $$G(s)=G_{1}(s)G_{2}(s)\implies |G(j\omega)|=|G_{1}(j\omega)||G_{2}(j\omega)|$$
	- Dalle proprietà dei logaritmi, passando ai $dB$ $$R(\omega)_{dB}=R_{1}(\omega)_{dB}+R_{2}(\omega)_{dB}$$
	- → Ottengo il diagramma di Bode del modulo come sovrapposizione lineare dei due
		- a) La pendenza della retta iniziale sarà ora data da $-20 (h_{1}+h_{2}) \frac{dB}{\text{dec}}$
		- b) Considero contemporaneamente zeri e poli di entrambi gli aggregati, e procedo normalmente con le somme di pendenze

+ 2) Aggregati in parallelo $$G(s)=G_{1}(s)+G_{2}(s)\implies |G(j\omega)|=|G_{1}(j\omega)+G_{2}(j\omega)|$$
	+ In questo caso il modulo non è facile da calcolare → presupporrebbe la conoscenza di moduli e fasi esatti di entrambi i sottosistemi
	+ Approssimazione di Bode → se per un determinato intervallo appare che $$|G_1(j\omega)| \gg |G_2(j\omega)|$$allora posso brutalmente approssimare $$R(\omega) \approx |G_1(j\omega)|$$
		+ Per cui in generale supponendo che i grafici non si intersechino / rimangano distanti posso dire che $$        R_{dB}(\omega) \approx \max\Big( R_{1,dB}(\omega), \,\, R_{2,dB}(\omega) \Big)$$
		+ L'approssimazione fallisce se i due moduli sono simili e le due fasi opposte
			+ Il vettore somma sarebbe molto piccolo (nullo eventualmente) → questa risonanza distruttiva non viene vista in nessun modo dall'approssimazione

- 3) Aggregati in retroazione $$      G(s) = \frac{G_1(s)}{1 \mp G_1(s)G_2(s)}\implies |G(j\omega)|= \frac{|G_{1}(j\omega)|}{|1\mp G_{1}(s)G_{2}(s)|}$$
	- Anche in questo posso fare delle approssimazioni:
		- a) Se la FdT dell'anello è debole $$      |G_1 G_2| \ll 1 \implies |1 \mp G_1 G_2| \approx 1$$avrei banalmente che $$ R(\omega) \approx |G_1(j\omega)|$$
		- b) Se la FdT dell'anello è forte $$  |G_1 G_2| \gg 1 \implies |1 \mp G_1 G_2| \approx |G_1 G_2|$$ottengo che $$      R(\omega) \approx \frac{1}{|G_2(j\omega)|}$$
		- → Posso anche in questo caso dire che in generale se se le due FdT hanno entità diverse $$ R_{dB}(\omega) \approx \min\Big( R_{1,dB}(\omega), \,\, -R_{2,dB}(\omega) \Big)$$
## 15 - Criteri di stabilità in retroazione

### 15.1 - Poli della retroazione

- Il nostro obiettivo è ora studiare come poter determinare se un sistema retroazionato sia stabile o meno nel dominio della frequenza
	- Per questo motivo ci serviranno dei criteri ingegnosi per progettare sistemi di controllo nel dominio delle frequenze

+ Supponiamo di avere un sistema retroazionato negativamente del tipo $$G_{CL}(s)= \frac{G_{1}(s)}{1+G_{1}(s)G_{2}(s)}$$
	+ Convenzione → considereremo sempre da ora in poi una retroazione negativa (segno $+$ prima della FdT dell'anello)
	+ Definisco *funzione di trasferimento dell'anello* (loop) $$L(s)=G_{1}(s)G_{2}(s):= \frac{N(s)}{D(s)}$$
		+ Si esclude rigorosamente il segno meno dalla scrittura di $L(s)$
	+ Quali sono i poli del sistema retroazionato?
		+ Svolgendo dei calcoli: $$\begin{align} G_{1}(s)&=\frac{N_{1}(s)}{D_{1}(s)}  \quad  G_{2}(s)=\frac{N_{2}(s)}{D_{2}(s)} \\\\ \implies G_{CL}(s)&= \frac{\frac{N_{1}(s)}{D_{1}(s)}}{1+ \frac{N_{1}(s)N_{2}(s)}{D_{1}(s)D_{2}(s)}}\\&=\frac{N_{1}(s)}{D_{1}(s)} \cdot \frac{D_{1}(s)D_{2}(s)}{D_{1}(s)D_{2}(s)+N_{1}(s)N_{2}(s)}\\&= \frac{N_{1}(s)D_{2}(s)}{D_{1}(s)D_{2}(s)+N_{1}(s)N_{2}(s)} \end{align}$$
		+ → I poli del sistema retroazionato sono le radici dell'equazione $$D(s)+N(s)=0$$dove indichiamo con $D$ e $N$ denominatore e numeratore dell'anello $L(s)$
			+ Questo vale indipendentemente da quale funzione stia della linea di andata!
			+ Se anche avessi scelto $G_{2}(s)$ sulla linea di andata, avrei avuto diversi zeri (il numeratore di $G_{CL}(s)$ sarebbe stato $N_{2}(s)D_{1}(s)$) ma comunque gli stessi poli
				+ Lo stesso vale se avessi posto tutti e due i blocchi in andata
			+ → La distribuzione dei blocchi nell'anello modifica solamente gli zeri del sistema, e non i poli
				+ Pertanto la stabilità della retroazione dipende solo dalla funzione anello $L(s)$
		+ Convenzione → siccome ai fini della stabilità non importa dove posizioniamo i blocchi nell'anello, scelgo di porre tutti i blocchi nella linea di andata (*linea di ritorno unitaria*) $$G_{CL}(s)= \frac{L(s)}{1+L(s)}:=F(s)$$
	+ Nei classici sistemi di controllo, la linea di andata comprende controllore $C(s)$ e processo $P(s)$, mentre quella di ritorno il sensore $S(s)$ $$G_{1}(s)=C(s)P(s) \quad  \quad G_{2}(s)=S(s)$$
		+ Per cui $$F(s)= \frac{C(s)P(s)S(s)}{1+C(s)P(s)S(s)}  \quad  \quad L(s)=C(s)P(s)S(s)$$
### 15.2 - Criterio di Nyquist

- Il criterio di Nyquist è un criterio di natura grafica che permette di studiare la stabilità esterna di $F(s)$ (della retroazione)
	- Le peculiarità di questo metodo sono che:
	- a) Permette non solo di capire la stabilità (come già faceva Routh) ma ci da delle linee guida su come progettare il controllore ($L(s)=C(s)S(s)P(s)$)
	- b) È puramente di natura grafica, basato sulla risposta in frequenza di $L(j\omega)$
		- Per comprendere il criterio dobbiamo prima definire un particolare diagramma polare, il diagramma di Nyquist

+ Il *diagramma di Nyquist* è un diagramma polare di $L(j\omega)$ unito al suo ribaltamento speculare rispetto all'asse reale
	+ Si ottiene dall'immagine di $L(s)$ lungo una curva chiusa $\Gamma _s$ nel piano complesso $\mathbb{C}$, composta da $$\Gamma _{s}=\gamma_{1} \cup \gamma_{2} \cup \gamma_{3}$$
		+ a) Primo tratto → percorro l'asse immaginario positivo $$\gamma_{1}=\left\{ s \in \mathbb{C}: s=j\omega , \,\omega  \in[0, +\infty) \right\}$$
		+ b) Secondo tratto → un arco nel semipiano destro $\mathrm{Re}(s)>0$ a raggio infinito che chiude il percorso, connettendo i due estremi dell'asse immaginario
		+ c) Terzo tratto → percorro l'asse immaginario negativo (salendo) $$\gamma_{1}=\left\{ s \in \mathbb{C}: s=j\omega , \,\omega  \in(-\infty, 0) \right\}$$
		+ DOVE se $L(s)$ possiede un polo sull'asse immaginario, $\Gamma_{s}$ compierà una semicirconferenza di raggio $\varepsilon\to{0}^+$ per aggirarlo 
			+ È esattamente lo stesso percorso utilizzato nel calcolo degli integrali reali tramite il teorema dei residui, solo sull'asse immaginario anziché reale 
	+ Per cui il diagramma di Nyquist (sul piano $L(\mathbb{C})$) è dato da $$L(\Gamma_{s})$$
		+ Siccome per quanto già detto in precedenza una FdT generica gode della proprietà $L(-j\omega)=L(j\omega)^*$ allora vale che $$L(\gamma_{3})=L(\gamma_{1})^*$$
			+ → Basta disegnare $L(\gamma_{1})$, che è (a meno delle deviazioni per i poli) identico al diagramma polare, ribaltarlo e collegare gli estremi
		+ Regola pratica → nel caso in cui $L$ abbia un polo dell'origine, iniziare calcolando l'immagine del quarto di circonferenza che va dall'asse reale all'asse immaginario, che aggiri lo zero $$\begin{align} A&=\lim_{ \varepsilon \to 0^+ } L(\varepsilon)  & \text{(punto della semicirconferenza di angolo 0)} \\ B&=\lim_{ \omega \to 0^+ }L(j\omega)  & \text{(punto della semicirconferenza di angolo }\pi/2)\end{align}$$
			+ → L'arco di circonferenza per aggirare il polo in zero è mappato da $L$ in $A \to B$


![[nyquist_contour_gamma.png|447]]

> [!theorem] Teorema di Nyquist
> Si consideri un sistema a tempo continuo con funzione di trasferimento in anello chiuso $$F(s)=\frac{L(s)}{1+L(s)}$$
> Allora $F(s)$ è esternamente stabile $\iff$ valgono entrambe le condizioni:
> a) *Condizione di non attraversamento* → il diagramma di Nyquist $L(\Gamma_{s})$ non passa per $-1$
> b) *Condizione sulle rotazioni* → il numero di rotazioni complete $N$ attorno a $-1$ deve essere pari al numero $P_{L}^+$ di poli ad anello aperto con parte reale positiva di $L(s)$: $$N:=\text{Ind}(L(\Gamma_{s}), -1)=\#\left\{ p \in \mathbb{C}: p \text{ polo per } L(s) \land \mathrm{Re}(p)>0  \right\}:=P_{L^+}$$

Premettiamo alla dimostrazione un'importante risultato di analisi complessa

> [!proposition] Principio dell'Argomento di Cauchy
> Sia $f:\Omega\setminus S \subseteq \mathbb{C}\to \mathbb{C}$ una funzione olomorfa tranne al più un numero finito di singolarità isolate $z_{i}\in S$
> Se $\Gamma \subseteq \Omega\setminus S$ è una curva di Jordan nel piano complesso che non passa per le singolarità di $f$ vale che $$\text{Ind}(f(\Gamma), 0)=Z-P$$
> dove $Z$ e $P$ sono rispettivamente il numero di zeri e poli di $f$ nella regione interna di $\Gamma$, contati con le rispettive molteplicità

> [!proof] Principio dell'Argomento di Cauchy
> L'indice di avvolgimento attorno all'origine per la curva $\gamma$ è definito come $$\text{Ind}(\gamma, 0)=\frac{1}{2\pi j} \oint_{\gamma} \frac{1}{z}dz $$
> per cui con il cambio di variabile $z \to f(z)$ si ottiene $$\text{Ind}(f(\Gamma),0)=\frac{1}{2\pi j} \oint_{f(\Gamma)} \frac{f^{\prime}(z)}{f(z)}dz$$
> Dal teorema dei residui $$\frac{1}{2\pi j}\oint_{f(\Gamma)} \frac{f^{\prime}(z)}{f(z)}dz=\sum_{z_{i}\in f(\Gamma)} \mathrm{Res}\left( \frac{f^{\prime}}{f}, z_{i} \right)$$
> Se $z_{i}$ è uno zero per $f$ di molteplicità $m_{i}$ vale che $$f(z)=(z-z_{i})^m_{i}g(z)$$
> con $g$ olomorfa in un intorno di $z_{i}$. Derivando: $$\frac{f'(z)}{f(z)} = \frac{m}{z - z_i} + \frac{g'(z)}{g(z)}\implies \mathrm{Res}\left( \frac{f^{\prime}}{f} ,z_{i} \right)=m$$
> Se $z_{i}$ è un polo per $f$ con molteplicità $p_{i}$ vale che $$f(z)=\frac{h(z)}{(z-z_{i})^p_{i}}$$
> con $h$ olomorfa in un intorno, per cui derivando $$\frac{f'(z)}{f(z)} = \frac{-p}{z - z_0} + \frac{h'(z)}{h(z)}\implies \text{Res}\left( \frac{f^{\prime}}{f} , z_{i}\right)=-p_{i}$$
> Da cui ponendo $$Z=\sum_{i}m_{i} \quad P=\sum_{i}p_{i}\implies \text{Ind}(f(\Gamma),0)=Z-P$$

La dimostrazione del teorema è banale

> [!proof]
> Ponendo $$f(s)=1+L(s)$$
> mi accorgo che:
> a) I poli di $f$ sono i poli di $L(s)$, quindi gli zeri di $F(s)$
> b) Gli zeri di $f$ sono i poli di $F(s)$
> Applicando il principio dell'argomento a $f$ sul percorso di Nyquist $\Gamma_{s}$, siccome la sua regione interna è $\left\{ \mathrm{Re}(s)>0 \right\}$: $$\text{Ind}(f(\Gamma_{s}),0)=\#\left\{ z_{i}\in \mathbb{C}:  \text{è polo di  }L(s) \,\land \, \mathrm{Re}(z_{i})>0\right\}-\#\left\{ p_{i}\in \mathbb{C}:  \text{è polo di  }F(s) \,\land \, \mathrm{Re}(p_{i})>0 \right\}$$
> Ovviamente $f(s)$ trasla tutto il piano complesso $L(s)$ di $+1$ quindi $$\text{Ind}(L(\Gamma _{s}), -1)=\text{Ind}(f(\Gamma_{s}), 0)$$
> La tesi segue dalla definizione di stabilità esterna di $F(s)$ $$\begin{align}
> F(s) \text{ esternamente stabile} &\iff\begin{cases} \#\left\{ p_{i}\in \mathbb{C}:  \text{è polo di  }F(s) \,\land \, \mathrm{Re}(p_{i})>0 \right\}=:P_F=0 \\ -1 \not \in L(\Gamma_{s})\end{cases} \\ & \iff \begin{cases} N=\text{Ind}(L(\Gamma _{s}), -1)=\#\left\{ z_{i}\in \mathbb{C}:  \text{è polo di  }L(s) \,\land \, \mathrm{Re}(z_{i})>0\right\}=P_{L}^+ \\ -1 \not \in L(\Gamma_{s})\end{cases} \end{align}$$
> infatti $-1 \not \in L(\Gamma_{s}) \iff F$ non ha poli sull'asse immaginario
> 

- Come calcolo operativamente $N$?
	- È difficile ottenerlo esattamente soltanto guardando il grafico, siccome il grafico diverge rapidamente 
	- Posso usare il *metodo del raggio*: $$ N = \sum (\text{intersezioni antiorarie}) - \sum (\text{intersezioni orarie}) $$
		- a) Traccio una semiretta (raggio) che parte da $-1$ e arriva all'infinito in una generica direzione
		- b) Determino tutte le intersezioni con il diagramma di Nyquist $L(\Gamma _{s})$
		- c) Ad ogni intersezione aggiungo $\pm 1$ a $N$ a seconda del verso di attraversamento
		- $N$ non dipenderà dalla direzione scelta → scelgo la semiretta con minori intersezioni per comodità

### 15.3 - Criterio di Bode

- È un caso particolare del Teorema di Nyquist, semplificato
	- Non si può applicare in generale ma sotto specifiche condizioni

> [!proposition] Criterio di Bode
> Siano $L(s), \,F(s),\,\Gamma_{s}$ come nel criterio di Nyquist con le ipotesi aggiunte:
> a) $L(s)$ non possiede poli a parte reale strettamente positiva ($P_{L}^+=0$)
> b) Esiste un'unica intersezione di $L(\Gamma_{s})$ con la circonferenza unitaria $$\exists !\,\omega_{c}\in \mathbb{R}:\,|L(j\omega_{c})|=1 \iff |L(j\omega_{c})|_{dB}=0dB$$
> Allora $F(s)$ è esternamente stabile $\iff$ valgono le condizioni:
> 1) $L(0)=\mu_{L}>0 \, \lor \, L(0)=\mu_{L}\to +\infty$
> 2) Il margine di fase, definito come $\varphi_{m}:=\varphi(\omega_{c})+\pi$ deve essere positivo

> [!proof]
> La condizione a) impone dal teorema di Nyquist che la stabilità è equivalente a $N=0$, condizione che è equivalenti alle richieste 1) e 2) (infatti $L(\Gamma_{s})$ parte da $\mathrm{Re}(s)>0$, ed entra nella circonferenza unitaria una sola volta → non gira attorno a $-1$)

- Si osservi che le due condizioni richieste per la stabilità (qualora le ipotesi siano soddisfatte) sono in realtà abbastanza tipiche
	- a) Il guadagno $\mu_{L}$ è dato da $$\mu_{L}=\mu_{C}\mu_{P}$$per cui per ottenerlo positivo basta porre $\mu_{C}$ concorde a $\mu_{P}$
	- b) Ottenere una fase "non troppo negativa" è comune siccome:
		- a) Per avere intersezione con $0dB$ in $\omega_{c}$ devo avere prima di $\omega_{c}$ più poli che zeri sul diagramma di Bode del modulo
		- b) Siccome i poli danno una fase positiva, mentre gli zeri una negativa (asintoticamente) in media la fase sarà positiva
		- c) In ogni caso io richiedo solo che $\varphi(\omega_{c})>-\pi$

+ Il calcolo del margine di fase $\varphi_{m}$ in realtà ci da molte informazioni sulla FdT della retroazione $F(s)$
	+ In base al segno di $\varphi_{m}$ (valide tutte le ipotesi dei teoremi di Nyquist) determino la stabilità di $F(s)$
		+ a) $\varphi_{m}=0 \implies$ $\varphi(\omega_{c})=-\pi \implies L(j\omega_{c})=1e^{ -j\pi }=-1\implies F(j\omega_{c})=\frac{L(j\omega_{c})}{1+L(j\omega _{c})}=\to-\infty$
			+ → $F(s)$ ha poli immaginari puri in $\pm j\omega_{c}$
		+ b) $\varphi_{m}>0$ limitato $\implies$ i due poli dominanti di $F(s)$ sono nel semipiano sinistro $\implies$ $F(s)$ è esternamente stabile
		+ c) $\varphi_{m}<0$ limitato $\implies$ i due poli dominanti di $F(s)$ sono nel semipiano destro $\implies$ $F(s)$ è instabile
	+ In ogni caso la pulsazione naturale $\omega_{n}$ di questi poli dominanti complessi è sempre $$\omega_{n}≈\omega_{c}$$
		+ Posso determinarne anche lo smorzamento $\xi$
			+ Scrivendo $F(s)$ esplicitando tali poli $$ F(s) \approx \frac{Z(s) \cdot P_{\text{non-dom}}(s)}{1 + \frac{2\xi}{\omega_c}s + \frac{s^2}{\omega_c^2}} $$
				+ Infatti per $s≈\pm j\omega_{c}$ posso tenere in considerazione sontanto il modo dei due complessi coniugati se gli altri poli sono stabili e gli zeri sono a parte reale fortemente negativa
				+ Valutando il trinomio per $s=j\omega_{c}$: $$ 1 + \frac{2\xi}{\omega_c}(j\omega_c) + \frac{(j\omega_c)^2}{\omega_c^2} = 1 + j2\xi - 1 = j2\xi $$
				+ Per cui approssimativamente il picco di risonanza è dato da $$ |F(j\omega_c)| \approx \frac{1}{|j2\xi|} = \frac{1}{2\xi} $$
			+ Posso relazionare tale stima sullo smorzamento con $\varphi_{m}$
				+ Sapendo infatti che $|L(j\omega_{c})|=1 \implies L(j\omega_{c})=e^{ j\varphi(\omega_{c})) }=e^{ j(\varphi_{m}-\pi) }=-e^{ j\varphi_{m} }$ vale che $$|1+L(j\omega_{c})|= \sqrt{ (1-e^{ j\varphi_{m} })(1-e^{ -j\varphi_{m} } ) }=\sqrt{ 1-e^{ -j\varphi_{m} }-e^{ j\varphi_{m} } }=\sqrt{ 2-2\cos \varphi_{m} }=2\sin\left( \frac{\varphi_{m}}{2} \right)$$
				+ Facendo una stima asintotica per $\varphi_{m}$ piccolo (cioè poli vicini all'asse immaginario) $$|1+L(j\omega _{c})|\overset{\varphi_{m\to0}}{\sim}\varphi_{m}\implies |F(j\omega_{c})|\sim\frac{1}{\varphi_{m}}$$
				+ Per cui $$\frac{1}{2\xi}≈ \frac{1}{\varphi_{m}}\implies \xi=\sin\left( \frac{\varphi_{m }}{2} \right)≈ \frac{\varphi_{m}}{2}  \quad \text{(in rad)}$$

- Una volta determinata la stabilità di un sistema ci sono altre informazioni che possono essere dedotte
	- In base a "quanto è abbondante" la fase posso approssimare diversamente la dinamica del sistema
	- a) Margine di fase abbondante $(\varphi_{m}\geq 70^o)$ → approssimazione a poli reali dominanti
		- Giustificazione → lo smorzamento è dato dalla stima euristica $$\xi≈0.7 ≈ \frac{1}{\sqrt{ 2 }}$$ per cui si scongiura la presenta di un picco di risonanza
			- Siccome $\xi$ è vicino a $1$ ha senso l'approssimazione a poli reali
		- Le loro costanti di tempo sono stimate da: $$\tau≈\frac{1}{\omega_{c}}\implies T_{a}≈ \frac{5}{\omega_{c}}$$dove $T_{a}$ è il tempo di assestamento
		- Inoltre siccome prima di $\omega_{c}$ si ha che $|L(j\omega)|\gg1$ posso dire che la banda "utile" del sistema (non attenuata) è $$\mathcal{  B  } =[0, \omega_{c}]$$per cui la funzione $|F(j\omega)|$ ha un comportamento praticamente unitario in tali pulsazioni
			- Tutto lo spettro del "desiderio" rimane inalterato in modulo
	- b) Margine di fase appena sufficiente $(0<\varphi_{m}<70^o)$ → approssimazione a poli complessi coniugati
		- Lo smorzamento è basso ($\xi<0.7$) quindi riscontro risonanza
		- La banda utile si riduce, non arriva a $\omega_{c}$
		- Siccome il sistema si comporta sempre come due poli complessi coniugati di pulsazione naturale $\omega_{n}≈\omega_{c}$ la costante di tempo sarà data ora da $$\tau≈\frac{1}{\xi \omega_{c}}$$→ il sistema è più lento
			- L'assestamento è più lungo e ci sono più oscillazioni "fastidiose"

+ Un'altra grandezza di valore per poter progettare il sistema di controllo è legata al guadagno
	+ Se considerassi infatti il solo margine di fase nella progettazione del sistema di controllo potrei andare incontro a sistemi molto vicini all'instabilità
		+ Infatti non solo voglio che $\varphi_{m}>0$ con un certo margine, ma voglio anche che, una volta entrato nel cerchio unitario, $L(\Gamma_{s})$ rimanga abbastanza lontano da $-1$
			+ Questo NON lo posso garantire a partire dalla sola fase
			+ Infatti una volta entrato nel cerchio unitario con un margine di fase positivo il vettore potrebbe passare arbitrariamente vicino a $-1$ (instabilità)
	+ → Definisco il *margine di guadagno* come il rapporto tra il massimo guadagno che può avere la funzione di anello $L(s)$ per non essere critica, e il suo guadagno nominale $$ k_m = \frac{\mu_{\text{crit}}}{\mu_{\text{nom}}} $$
		+ Ovvero è quanto dovrei amplificare $L(s)$ per renderla critica
	+ Per ricavare il guadagno critico (e quindi il margine di guadagno) posso utilizzare due strategie:
		+ 1) Calcolo la tabella di Routh
			+ Infatti applico il criterio di Routh per i poli di $F(s)$, cioè utilizzando il polinomio $1+L(s)$, applicando a $L$ un guadagno incognito $k$
			+ Poi nella tablla di Routh cerco gli elementi della prima colonna che contengono $k$ e li pongo uguali a zero → ottengo così il $k$ critico
		+ 2) Metodo grafico
			+ Cerco le intersezioni di $L(j\omega)$ con l'asse reale negativo, cioè determino la pulsazione $\omega_{\pi}:$ $$\text{arg}[L(j\omega_{\pi})]=-\pi$$
			+ Se il sistema è stabile secondo Bode deve essere che $$|L(j\omega_{\pi})|<1$$ 
			+ → Il margine di guadagno è quindi dato dal suo reciproco $$ K_m = \frac{1}{|L(j\omega_\pi)|} $$
	+ Ci sono quindi due casistiche possibili:
		+ a) $K_{m}$ finito
			+ È necessario progettare il sistema di controllo con un margine cautelativo per evitare che errori di guadagno rendano il sistema instabile
		+ b) $K_{m}$ infinito → il sistema è stabile per qualsiasi guadagno applicato

## 16 - Progetto di sistemi di controllo nel dominio delle frequenze 

### 16.1 - Definizioni e definizione delle richieste

- Solitamente il progetto di sistemi nel dominio della frequenza viene fatto sfruttando il criterio di Bode 
	- Per cui tutte le ipotesi devono essere soddisfatte:
		- a) Processo $P(s)$  esternamente stabile → no autovalori critici
		- b) Esistenza di un'unica frequenza $\omega_{c}$: $|L(j\omega_{c})|=0$
		- c) Guadagno positivo $\mu_{L}>0$

+ Quali sono i componenti del sistema di controllo?
	+ a) Regolatore in anello chiuso $C_{CL}(s):=R(s)$ → processa l'errore e raddrizza il sistema per l'asintotica stabilità
	+ b) Compensatore $C(s)$ → è un componente aggiuntivo utilizzato per diminuire gli errori legati ai disturbi senza alterare i poli dell'anello chiuso
	+ c) Regolatore in anello aperto $C_{OL}(s)$ → pre-compensa il riferimento per trasferimento ideale

- Le funzioni di trasferimento fondamentali da considerare sono 4 (anche note come "*gang of four*")
	- 1) Funzione di *sensitività complementare* $$F(s):= \frac{L(s)}{1+L(s)}$$
		- È la funzione di trasferimento complessiva della retroazione
		- Ingresso: $y^o$ (desiderio), uscita: $y+\delta$ (disturbi) $$Y=F(s)Y^o$$
	- 2) Funzione di *sensitività* $$S(s):= \frac{1}{1+L(s)}$$
		- Descrive la sensibilità all'errore del riferimento
		- Ingresso: $y^o$, uscita: $e(t)=y^o-y$ $$E(s)=S(s)Y^o$$
		- Derivazione analitica:
			- Basta calcolare $$E(s)=Y^o-Y=(1-F(s))Y^o=\frac{1}{1+L(s)}Y^o=S(s)Y^o$$
			- Oss: Nel caso di disturbi l'errore è calcolato come $E(s)=Y^o-Y-\Delta$ (trasformata dei rumori di misura e processo) ma la forma di $S$ rimane la stessa
	- 3) Funzione di *sensitività del controllo* $$Q(s) = \frac{R(s)}{1 + L(s)}$$
		- Descrive la sensibilità dell'ingresso $u(t)$ del processo (legge di controllo)  al rumore 
		- Ingresso: $y^o$, uscita: $u$ $$U(s)=Q(s)Y^o$$
		- Derivazione analitica:
			- $Q$ è banalmente la serie del regolatore CL e della sensibilità $S$ $$Q(s)=R(s)E(s)=R(s)S(s)Y^o=\frac{R(s)}{1+L(s)}Y^o$$
	- 4) Funzione di *sensitività al disturbo* $$P_{PS}(s) = \frac{P(s)}{1 + L(s)}$$
		- Descrive la sensibilità dell'uscita ai disturbi del processo $\delta$
		- Ingresso: $\delta$, uscita: $y$ $$Y(s)=P_{PS}(s)\Delta(s)$$
- Come si propaga un disturbo in anello chiuso?
	- 1) Disturbi di misura $\delta_{m}$
		- L'errore misurato, comprensivo di disturbi di misura e di processo è dato da $$ e_m(t) = y^\circ(t) - \Big(y(t) + d_m(t)\Big) = e(t) - d_m(t) $$
		- Si osservi il trasferimento dall'disturbo di misura sull'errore totale è dato dalla sensibilità complementare $F$ $$E(s)=F(s)\Delta_{m}(s)$$
			- Infatti siccome $$E_{m}(s)=Y^o(s)-Y(s)-\Delta_{m}(s)$$e l'uscita è data da $$Y(s)=P(s)R(s)E_{m}(s)=L(s)E_{m}(s)=L(s)E(s)-L(s)\Delta_{m}(s)$$
			- Ponendo il riferimento a $Y^o=0$ (per studiare il guadagno del disturbo) $$(1+L(s))E(s)=L(s)\Delta_{m}(s)\implies E(s)=F(s)\Delta_{m}(s)$$
		- Pertanto si noti che al variare della frequenza:
			- a) $\omega \in \mathcal{  B  }=[0, \omega_{c}]$ banda passante
				- Come è noto per tali frequenze $|F(j\omega_{c})|≈1$ per cui il disturbo di misura è inalterato! $$ |E(j\omega)| \approx |D_m(j\omega)| $$
				- → L'errore reale copia asintoticamente il disturbo di misura (e non va a 0)
			- b) $\omega>\omega_{c}$
				- In tal caso so che $|F(j\omega)|\to0$ per cui $$ |E(j\omega)| \to 0$$
			- → I disturbi di misura sono significativi a pulsazione bassa
		- Potremmo anche considerare un sensore non ideale, quindi con funzione di trasferimento $H(s)$
			- Lo modello con guadagno unitario $\mu_{H}=1$ ma con costanti di tempo non nulle (es. un polo dominante)
			- Se la costante di tempo del sensore $\tau_{H}$ è molto piccola, la pulsazione sarà molto più a destra di $\omega_{c}$ 
			- Utilizzando la regola approssimativa della retroazione $$|F(j\omega)|_{dB}≈\text{min}(|L(j\omega)|_{dB}, -|H(\omega)|_{dB})$$vale che l'effetto del sensore è trascurabile in banda passante
	- b) Disturbi di processo $\delta_{p}$
		- Sono quelli che posso eliminare ponendo dei requisiti statici (vedi dopo)
		- Il trasferimento dei disturbi di processo è invece dato dalla funzione sensibilità $$E(s)=-S(s)\Delta_{p}(s)$$
			- Infatti gli errori di processo si posizionano dopo il regolatore, per cui 
		- In questo caso l'analisi in frequenza è opposta a quella dei disturbi di misura $\delta_{m}$
			- → I disturbi di misura non possono essere rimossi a pulsazione alta
			- Infatti oltre la banda passante $[\omega, \omega_{c}]$ le frequenze subiscono tutte una fortissima attenuazione $|L(j\omega)|\ll1$, per cui $$S(j\omega)= \frac{1}{1+L(j\omega)}≈1 \implies  \text{non ho reiezione su disturbi ad alta } \omega$$

- Quali possono essere le richieste quando progetto un sistema di controllo?
	- Nel dominio del tempo avevamo la scelta esatta degli autovalori del sistema, e la reiezione dei rumori
		- Nel dominio della frequenza le richieste sono sempre di due tipi:
	- s) *Requisiti statici* → riguardano la gestione degli errori, in particolare ad esempio:
		- s1) Errore nullo o limitato per ingressi costanti o polinomiali
			- Per gestire questa richiesta ci sono due alternative:
			- i) Inserisco 1 singolo integratore in $R$ ($h_{R}=1$)
				- Si avrà che $|L(j\omega)| \xrightarrow{\omega\to 0}0$ per cui dal TVF l'errore a transitorio esaurito sarà rigorosamente zero per qualsiasi errore costsante $$\lim_{ t \to +\infty }e(t)=\lim_{ s \to 0^+ } sE(s)=\lim_{ s \to 0^+ } \frac{s}{1+L(s)} Y^o =0$$
				- Oss: è ridondante aggiungere un polo al regolatore se il processo ha già un polo nell'origine
			- ii) Inserisco 2 o più integratori in $R$ ($h_{R}=2$)
				- Si riuscirà ad avere reiezione totale su errori costanti ma anche su errori polinomiali di primo grado (rampa)
				- Problema → ogni polo nell'origine contribuisce asintoticamente ad una fase di $- \frac{\pi}{2}$ 
					- Per cui con $h_{R}=2$ parto già con una fase di $-\pi$ (limite per il margine di fase)
				- → Gli integratori distruggono il margine di fase (quindi la stabilità)
					- Per mantenere il sistema stabile devo aggiungere una rete di poli e di zeri che mi riportino la fase nei limiti della stabilità
			- iii) Non aggiungo nessun integratore, gestisco il guadagno d'anello ($h_{R}=0$)
				- Non avrò totale reiezione ai rumori costanti
				- Posso però imporre una condizione sulla massima amplifiazione del rumore $$|S(0)|<M_{d}$$
				- Dalla definizione di $S$ avrò che $$L(0)> \frac{1}{M_{d}}-1≈ \frac{1}{M_{d}}$$→ ho una condizione sul guadagno $\mu_{L}$
			- iv) Utilizzo un compensatore in anello aperto (vedi dopo)
		- s2) Errore nullo o limitato per ingressi sinusoidali
			- Se ho un disturbo alla pulsazione $\omega_{d}$ la mia condizione sarà del tipo $$|S(j\omega_{d})|<M_{d}\implies |L(j\omega_{d})| > \frac{1}{M_{d}}$$dove $M_{d}$ è l'amplificazione massima del rumore accettata
				- Graficamente, questo è rappresentato da una retta orizzontale sul valore di Bode che deve essere superata in $\omega_{d}$
			- Nel caso ideale avrei $M_{d}\to0^+$
				- Questo si ottiene se nel regolatore ho due zeri immaginari puri a $\pm j\omega_{d}$
				- Problema → se il rumore ha frequenza diversa (anche di poco) da $\omega_{d}$ questo metodo non è ideale
					- Si crea infatti un battimento tra il polo e lo zero e permane un disturbo
			- Se la frequenza è molto alta $\omega \not \in \mathcal{  B  }$ NON posso usare metodi di reiezione per quanto detto sopra
				- → L'unica alternativa è aumentare molto $\omega_{c}$ per aumentare la banda
				- Ma allora i miei transitori dovranno essere molto più veloci
		- s3) Errore limitato per un intero spettro di banda 
			- Voglio eliminare tutti i rumori in $[\omega_{MIN}, \omega_{MAX}]$
				- Devo porre la stessa condizione di s2) ma per ogni frequenza in tale intervallo
			- → Uso un filtro a spillo
	- d) *Requisiti dinamici* → riguardano l'evoluzione del sistema
		- d1) Stabilità esterna e robustezza
			- Chiedo almeno che il sistema sia esternamente stabile $(\varphi_{m}>0)$
			- Posso anche però decidere di volere un certo margine, espresso in margine di fase $\varphi_{m}$ e di guadagno $k_{m}$
				- Infatti il modello matematico è sempre un approssimazione del sistema fisico → se ho un sistema lievemente diverso da quanto modellato, la fase potrebbe cambiare
					- Il caso più frequente è quello di uno sfasamento ($e^{ -j\omega \tau }$) che riduce la fase linearmente
				- → È sempre prudente rimanere ampiamente nei margini
		- d2) Costanti di tempo e tempo di assestamento
			- Come mostrato in precedenza, la costante di tempo è legata alla pulsazione critica  $$\begin{cases}
			T_{a}≈ \frac{1}{\omega_{c}}  & \text{(poli reali, margine di fase abbondante)} \\
			T_{a}≈ \frac{1}{\xi \omega_{c}} & \text{(poli complessi, margine di fase piccolo)}
			\end{cases}$$
		- d3) Assenza di forti oscillazioni
			- Posso anche richiedere direttamente un certo smorzamento $\xi$ dei poli complessi dominanti
			- Se ho $\xi$ piccolo ricado nel fenomeno delle *sovraelongazioni* → ho infinite oscillazioni (che si smorzano se $\xi>0$) che non mi fanno raggiungere precisamente il desiderio (eccedono)
		- d4) Moderazione della variabile di controllo
			- Ovviamente ci sono limiti fisici che la variabile $u$ può assumere → bisogna porre condizioni sul modulo della sensibilità di controllo $|Q(j\omega)|$
			- Questo si può fare utilizzando la regola approssimativa della retroazione $$ |Q(j\omega)|_{\text{dB}} \approx \min\Big(|C(j\omega)|_{\text{dB}}, -|P(j\omega)|_{\text{dB}}\Big) $$per cui al variare di $\omega$:
				- i) A bassa frequenza $\omega<\omega_{c}$
					- Se il regolatore possiede un integratore $|C(j\omega)|$ è molto grande per $\omega \to0$
					- Invece il processo avrà il valore in $\omega$ piccolo dovuto al suo guadagno statico → $-|P(j\omega)|_{dB}$ è più piccolo quello del regolatore
					- → $|Q(j\omega)|_{\text{dB}} \approx -|P(j\omega)|_{\text{dB}}$
				- ii) Ad alta frequenza $\omega > \omega_{c}$
					- Siccome sia il processo che il controllore hanno FdT con grado relativo $r\geq1$ (sistemi propri) si avrà per $\omega \to \infty$ che $$|P(j\omega)|, |C(j\omega)|\to0 \implies -|P(j\omega)|_{dB}\gg|C(j\omega)|_{dB}$$
					- → $|Q(j\omega)|_{\text{dB}} \approx |C(j\omega)|_{\text{dB}}$

### 16.2 - Sintesi del regolatore

- Condizioni generali sul regolatore $R(s)$
	- 1) ll regolatore deve essere un sistema *proprio*  ($r_{c}\geq 1$)
		- Questo è necessario per generare un sistema fisico sensato e causale
	- 2) Non posso inserire poli instabili
		- L'idea di cancellare zeri instabili con poli instabili è pessima perchè genera delle dinamiche instabili non osservabili
	- 3) Semplificazione → usare solo poli reali (raramente complessi coniugati) in numero parsimonioso $$R(s)=\mu_{R} \frac{\sum_{i}(1+s\tau_{i})}{\sum_{j}(1+sT_{j})}$$con $\tau_{i}, T_{j}$ a parte reale positiva

+ Quando scelgo poli e zeri cosa devo considerare? → 3 elementi essenziali
	+ a) Tutti i poli a bassa frequenza diminuiscono il margine di fase
		+ Infatti la fase data da un polo è $$ \Delta\varphi(\omega_c) = -\arctan(\omega_c \tau_p) $$che asintoticamente ($\omega_{c}\gg \tau_{p}$) è $-\frac{\pi}{2}$
			+ Siccome voglio avere un buon margine di fase $\varphi_{m}$ a $\omega _c$ devo provvedere
		+ → Inserisco un certo numero di zeri collocati esattamente alle pulsazioni dei poli lenti (cancellazione polo-zero)
			+ Per mantenere il regolatore proprio dopo l'aggiunta di zeri ($r_{R}>1$) devo aggiungere dei poli molto veloci $\omega_{c}\ll \frac{1}{\tau}$ che non influenzino il margine di fase
		+ Per questo motivo il regolatore è fatto di di *reti anticipatrici* e *ritardatrici*
	+ b) La pendenza in un intorno di $\omega_{c}$ deve essere $-20 \frac{dB}{\text{dec}}$
		+ Il motivo è che dalle approssimazioni di Bode se la pendenza è tale la fase è approssimata da $$\varphi(\omega_{c})≈-\frac{\pi}{2}\implies \varphi_{m}≈ \frac{\pi}{2}$$
		+ Per cui se tale pendenza è mantenuta posso già stimare un margine di fase abbondante
	+ c) Non posso spostare $\omega_{c}$ troppo in avanti per rendere il sistema più veloce
		+ → Ci sono due "limiti fisici"
		+ 1) Zeri instabili
			+ Infatti posizionare $\omega_{c}$ vicina ad uno zero instabile significherebbe la distruzione del margine di fase e l'aumento del guadagno 
				+ (Il contrario della richiesta di modulo nullo e margine di fase positivo)
			+ → Devo posizionare $\omega_{c}$ prima degli zeri instabili $$\omega_{c}\leq \frac{1}{|\tau_{INST}|}$$
		+ 2) Ritardi
			+ Se il sistema comprende un ritardatore $e^{ -s\tau }$ allora la fase da esso introdotta sarebbe $$\text{arg}(e^{ -j\omega \tau })=-\omega \tau$$che è lineare con $\omega$!
			+ Per cui posizionare una pulsazione critica anche solo nelle vicinanze di $\tau$  ($\omega_{c}≈\frac{1}{\tau}$) significherebbe una diminuzione di fase di $1 \text{rad}≈57^o$
			+ → Anche in questo caso devo limitare $\omega_{c}$ $$\omega_{c}\ll \frac{1}{\tau_{RIT}}$$
### 16.3 - Sintesi del compensatore

- 1) Compensatore sui disturbi
	- L'idea del compensatore è di eliminare i disturbi in anello aperto senza aggiungere poli al regolatore
	- → Agisce prima che il suo effetto si propaghi sulla $y$, eliminandolo "alla fonte"
		- Il disturbo in entrata al regolatore sarà già moltiplicato per la FdT del compensatore
	- Aggiunto il compensatore, il trasferimento del disturbo di processo non segue più $-S$, ma $$ E(s)- \frac{1 + P(s)C_d(s)}{1 + L(s)} D(s)$$
		- Dimostrazione: 
			- Con l'azione del compensatore sul disturbo formula della legge di controllo diventa $$ U(s) = R(s)E(s) + C_d(s)D(s) $$
			- Per cui l'uscita dal processo sarà data da $$\begin{align} Y(s) &= P(s)[R(s)E(s) + C_d(s)D(s)] + D(s)  \\ &= L(s)E(s) + [P(s)C_d(s) + 1]D(s)  \end{align}$$
			- Ponendo $Y^o=0$ per studiare unicamente l'effetto sul disturbo vale che $E(s)=-Y(s)$ da cui segue che     $$\begin{align} E(s) &= -L(s)E(s) - [1 + P(s)C_d(s)]D(s)  \\ \implies E(s)[1 + L(s)] &= - [1 + P(s)C_d(s)]D(s)  \\ \implies E(s)&=- \frac{1+P(s)C_{d}(s)}{1+L(s)}D(s) \end{align}$$
	- In via del tutto teorica potrei allora porre la FdT del compensatore ottima $$C_{d}(s)=- \frac{1}{P(s)}$$per eliminare completamente il disturbo
		- Ci sono però alcuni casi in cui non è possibile
		- a) Ho zeri instabili in $P(s)$ → non posso porre poli instabili in $C_{d}(s)$ 
		- b) Irrealizzabilità causale → siccome $P(s)$ è proprio, il suo inverso è improprio
			- Per cui dovrei aggiungere poli molto veloci per rendere il sistema causale
	- Analizzando gli specifici disturbi in ingresso:
		- a) Disturbo costante → pongo banalmente $$C_{d}(0)= - \frac{1}{P(0)}$$
		- b) Disturbi sinusoidali o a banda larga → pongo una condizione sull'ampiezza massima di amplificazione
			- In questo caso sarà del tipo $$\left\lvert  \frac{1+P(j\omega)C_{d}(j\omega)}{L(j\omega)}  \right\rvert \leq M_{d}$$

+ 2) Compensatore sul desiderio
	+ Noto che se non inserisco poli nell'origine il sistema non tende ad assumere il desiderio
		+ Infatti il guadagno che assume $Y^o$ quando diventa $Y$ è $$\mu_{YY^o}=|F(0)|=\left\lvert   \frac{L(0)}{1+L(0)}   \right\rvert ≠1$$
			+ Soltanto i poli $\frac{1}{s^h}$ facevano convergere $|F(\omega)|≈1$ a basse frequenze
		+ Come agisco? → con un altro compensatore
	+ Inserito un compensatore sul desiderio ottengo il guadagno $$ E(s) = \frac{1 - P(s)C_r(s)}{1 + L(s)}{Y^\circ(s)} $$
		+ Dimostrazione: 
			+ Siccome l'entrata con il compensatore è $$ U(s) = R(s)E(s) + C_r(s)Y^\circ(s) $$l'uscita diventa $$ Y(s) = Y^o(s)-E(s)=P(s)U(s) = P(s)[R(s)E(s) + C_r(s)Y^\circ(s)] $$
			+ Per cui $$ E(s)[1 + L(s)] = Y^\circ(s)[1 - P(s)C_r(s)] $$e segue la tesi
	+ Il compensatore è ottimale pertanto ponendo $$ 1 - P(0)C_r(0) = 0 \implies C_r(0) = \frac{1}{P(0)} $$

		



 


