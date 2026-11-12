---
title: "Scienza e tecnologia dei materiali"
domain: "physics/materials-science"
source_course: "Scienza e Tecnologia dei Materiali"
tags:
  - physics/materials-science
  - physics/quantum/molecular
  - physics/solid-state
---

# 1. Legame Chimico e Fondamenti

- Oggi la teoria dei legami chimici è stata formalizzata tramite la meccanica quantistica
	- Metodi computazionali permettono di studiare le proprietà di materiali esistenti e teorici senza misurarli

+ Due concetti fondamentali:
	+ a) Stabilità → alcune molecole sono stabili in particolari condizioni ambientali
	+ b) Reattività

## 1.1 Trattazione Semiclassica (Pimentel e Teorema del Viriale)

- Approccio semiclassico → approccio di Pimentel
	- Dal punto di vista entropico, nel sistema, le molecole sono solitamente sfavorite (es. $F + F \to F_{2}$ rispetto ad $F$)
		- Se le molecole si formano necessariamente l'entropia dell'universo deve aumentare
		- → L'oggetto che si forma ha un'agitazione termica maggiore → la reazione deve essere esoterma
			- La reazione deve produrre una molecola che abbassa l'energia interna del sistema
	- Dal teorema del viriale, $$\langle \hat { E }\rangle = \langle \hat{T} \rangle+\langle \hat{V} \rangle = \frac{1}{2} \langle \hat{V} \rangle \implies \langle \Delta E \rangle =\frac{1}{2} \left\langle \Delta V \right\rangle$$
		- → Il legame si forma se l'energia totale complessiva delle particelle diminuisce rispetto alla situazione "ad atomi separati"
			- La soluzione della molecola sarà quindi quella che minimizza l'energia potenziale media del sistema
	- Consideriamo la molecola di $H_{2}$
		- Interazione nucleo-elettrone: $$f_{A \to e}=-k \frac{e^2}{(R_{A}-r_{e})^2} \frac{R_{A}-r_{e}}{||R_{A}-r_{e}||}$$
		- Interazione nucleo-nucleo: $$f_{A\to B}=k \frac{e^2}{(R_{A}-R_{B})^2} \frac{R_{A}-R_{B}}{||R_{A}-R_{B}||}=-f_{B \to A}$$
		- Per ragionare correttamente dobbiamo introdurre la meccanica quantistica
			- L'$e^-$ è descritto dalla funzione d'onda $\psi(\mathbf{x},t)$ e la sua carica da $$\rho(\mathbf{x})=-e||\psi(\mathbf{x})||^2\implies f_{A\to e}=- e^2  \int_{\Omega} \frac{||\psi(\mathbf{x})||^2}{||\mathbf{x}-\mathbf{R_{A}}||^2}d\mathbf{x}$$
			- Problema → anche i nuclei sono quantistici e rappresentati da funzioni d'onda
				- *Approssimazione* → si considerano i nuclei classici e fissi, e si studia solo la distribuzione quantistica degli elettroni
			- Ci sono alcuni invarianti → la rotazione attorno all'asse della molecola, le traslazioni, ecc... 
				- L'aspetto fondamentale è la distanza tra i nuclei
				- → Posso eseguire la sostituzione $(\mathbf{R_{A}}, \mathbf{R_{B}}) \to (\mathbf{R}, \mathbf{R_{CM}})$
			- Per cui la forza tra i nuclei si può scrivere come:
				$$\begin{align} \mathbf{f}_{A}&=-\nabla_{R_{A}} V_{AB} \\ &=-\nabla_{R_{A}}\left( \frac{e^2}{4\pi \varepsilon_{0}} \frac{1}{||\mathbf{R_{A}} -\mathbf{R_{B}}||} \right) \\ &=-\nabla_{R_{A}}\left( \frac{e^2}{4\pi \varepsilon_{0}} \frac{1}{R} \right) \\ &= -\frac{ \partial V_{AB} }{ \partial R } \hat{u}_{X} \\ &=-\frac{e^2}{4\pi \varepsilon_{0}} \frac{1}{R^2} \end{align}$$mentre la forza nucleo-elettrone: $$\mathbf{f}_{A\to e}=- \frac{e}{4\pi \varepsilon_{0}}\int_{\mathbb{R}^3} \frac{e||\psi (\mathbf{x})||^2}{||\mathbf{x}-\mathbf{R_{A}}||^2} \frac{\mathbf{x}-\mathbf{R_{A}}}{||\mathbf{x}-\mathbf{R_{A}}||}d\mathbf{x}$$

## 1.2 Trattazione Quantistica (Born-Oppenheimer ed Hellmann-Feynman)

+ Approccio Quantistico 
	+ Come ricavare la $\psi$?
		- Devo risolvere l'equazione di Schrödinger del sistema con i potenziali Coulombiani
	+ L'Hamiltoniana del sistema è data da: $$\hat{H}=\hat{T}+\hat{V}$$
		+ Cerchiamo dei suoi autovalori $$\hat{H}\Psi=E\Psi$$ dove la funzione d'onda ha come variabili le coordinate $$\Psi=\Psi(\left\{ \mathbf{r}_{i} \right\}, \left\{ \mathbf{R} \right\}_{i})$$
	- Gli $N=\sum Z_{i}$ elettroni sono tra loro indistinguibili
	- L'energia cinetica è data dalla somma dei contributi degli elettroni e dei nucleoni $$\hat{T}=-\frac{\hbar^2}{2}\left( \frac{1}{m_{e}}\sum_{i}\nabla_{i}^2 + \sum_{i} \frac{\nabla_{I}^2}{M_{I}} \right)$$
		- I singoli addendi sono anche detti *operatori a un corpo*
	- Il potenziale è invece dato da $$\hat{V}=\hat{V}_{ee}+\hat{V}_{en}+\hat{V}_{nn}$$
		- a) Interazione elettrone-elettrone $$\hat{V}_{ee}=\frac{e^2}{4\pi \varepsilon_{0}}\sum_{i<j} \frac{1}{||\mathbf{r}_{i}-\mathbf{r}_{j}||}$$
			- Non si può scrivere come somma di operatori a un corpo
		- b) Interazione nucleo-nucleo $$\hat{V}_{nn}=\frac{e^2}{4\pi \varepsilon_{0}} \sum _{i<j} \frac{Z_{i}Z_{j}}{||\mathbf{R}_{i}-\mathbf{R}_{j}||}$$
		- c) Interazione nucleo-elettrone $$\hat{V}_{en}=\frac{e^2}{4\pi \varepsilon_{0}} \sum_{i<j} \frac{Z_{i}}{||\mathbf{R}_{i}-\mathbf{r}_{i}||}$$
	- → L'hamiltoniana è decisamente più complicata dell'atomo di idrogeno $$\begin{align}
	\hat{H}&=\hat{T}+\hat{V}\\
	&=-\frac{\hbar^2}{2}\left( \frac{1}{m_{e}}\sum_{i}\nabla_{i}^2 + \sum_{i} \frac{\nabla_{I}^2}{M_{I}} \right)+\frac{e^2}{4\pi \varepsilon_{0}}\sum_{i<j} \frac{1}{||\mathbf{r}_{i}-\mathbf{r}_{j}||}+\frac{e^2}{4\pi \varepsilon_{0}} \sum _{i<j} \frac{Z_{i}Z_{j}}{||\mathbf{R}_{i}-\mathbf{R}_{j}||}+\frac{e^2}{4\pi \varepsilon_{0}} \sum_{i<j} \frac{Z_{i}}{||\mathbf{R}_{i}-\mathbf{r}_{i}||}
	\end{align}$$
	- Non si può risolvere analiticamente → *approssimazione Born-Oppenheimer*
		- Si noti che il rapporto delle masse tra il protone e l'elettrone è del tipo $\frac{m_{p}}{m_{e}}≈1800$ → il protone è quasi trascurabile a questi fini
		- → Esprimo la funzione d'onda elettronica separando i nuclei e gli elettroni $$\Psi=\varphi_{n}(\left\{ \mathbf{R}_{i} \right\})\psi_{e}(\left\{ \mathbf{r} _{i}\right\}, \left\{ \mathbf{R}_{i} \right\})$$
			- Nasce un problema per la funzione d'onda nucleare $\varphi_{n}$ e una per quella elettronica $\psi_{e}$ $$\begin{align}\hat{H}_{e}\psi_{e}(\left\{ \mathbf{r} _{i}\right\}, \left\{ \mathbf{R}_{i} \right\})=E_{e}\psi_{e}(\left\{ \mathbf{r} _{i}\right\}, \left\{ \mathbf{R}_{i} \right\}) \\ \hat{H}_{n}\varphi_{n}(\left\{ \mathbf{R}_{i} \right\})=E_{n}\varphi_{n}(\left\{ \mathbf{R}_{i} \right\})\end{align}$$
		- L'approssimazione consiste nell'assumere che esista una tale $\varphi_{n}$ che soddisfa tale equazione e concentrarsi solo sulla $\psi_{e}$ $$\begin{align}\hat{H}\psi_{e}\varphi_{n}&=[\hat{T}_{n}+\hat{T}_{e}+\hat{V}_{ee}+\hat{V}_{en}+\hat{V}_{nn}]\psi_{e}\varphi_{n} \\  &=[\hat{T}_{n}+\hat{H}_{e}+\hat{V}_{nn}]\psi_{e}\varphi_{n} \\  &=(\hat{T}_{n}+\hat{V}_{nn})\psi_{e}\varphi_{n}+\hat{H}_{e}\psi_{e}\varphi_{n} \\  &=E\psi_{e}\varphi_{n} \\\end{align}$$
			- Moltiplicando tutto per $\bra{\psi_{e}}$: $$\begin{align}&\bra{\psi_{e}} \hat{V}_{nn}\ket{\psi_{e}\varphi_{n}} +\bra{\psi_{e}} \hat{T}_{n}\ket{\psi_{e}\varphi_{n}} +\bra{\psi_{e}} \hat{H}_{e} \ket{\psi_{e}\varphi_{n}} = \\  &=\hat{V}_{nn}\varphi_{n}+\bra{\psi_{e}} \hat{T}_{n}\ket{\psi_{e}\varphi_{n}} +E_{e}\psi_{e}\varphi_{n}=(E_{e}+E_{n})\psi_{e}\varphi_{n} \end{align}$$
			- Il prodotto $\bra{\psi_{e}}\hat{T}_{n}\ket{\psi_{e}\varphi_{n}}=-\frac{\hbar^2}{2}\sum_{i} \frac{1}{M_{i}} \int_{\mathbb{R}^d}\psi_{e}^*\nabla^2(\psi_{e}\varphi_{n})$?
				- Si è dimostrato che al primo ordine di approssimazione il termine $\psi_{e}$ è trascurabile (*approssimazione adiabatica*)$$\nabla^2\psi_{e}\varphi_{n}=\varphi_{n}\nabla^2\psi_{e}+\psi_{e}\nabla^2\varphi_{n}+2\nabla \psi_{e} \cdot \nabla \varphi_{n}≈\psi_{e}\nabla^2\varphi_{n}$$
				- → $\bra{\psi_{e}}\hat{T}_{n}\ket{\psi_{e}\varphi_{n}}≈\hat{T}_{n}\varphi_{n}$
		- Abbiamo effettivamente separato le variabili → ecco la forma finale: $$\begin{cases}\hat{H}_{e}\psi_{e}=E_{e}\psi_{e} \\  [\hat{T}_{n}+\hat{V}_{nn}+E_{e}]\varphi_{n}=E\varphi_{n}\end{cases}$$dove ricordiamo $\psi_{e}(\left\{ \mathbf{r} _{i}\right\}, \left\{ \mathbf{R}_{i} \right\})$ e $\varphi_{m}(\left\{ \mathbf{R}_{i} \right\})$
			- Nel caso di due nuclei, $\hat{V}_{nn}$ e $E_{e}$ dipendono solo da $R$ (distanza tra i due nuclei) e il termine $\hat{V}(\mathbf{R})=\hat{V}_{nn}(\mathbf{R})+E_{e}(\mathbf{R})$ è detto *potenziale interatomico* 
				- Si noti che $E_{e}(\mathbf{R})$ si ottiene risolvendo l'equazione $\hat{H}_{e}\psi_{e}=E_{e}\psi_{e}$ per i diversi valori di $\mathbf{R}$ 
				- I contributi del potenziale sono:
					- a) Contributo repulsivo → dato dagli elettroni di core
					- b) Contributo attrattivo → dato dagli elettroni di valenza condivisi
				- L'interazione è a "corto raggio" → si attiva solo se i nuclei si avvicinano molto tra loro
					- Spingo gli $e^-$ a occupare lo stesso stato, che è vietato da principio di Pauli 
				- I legami che si possono generare in molecole biatomiche sono:
					- a) Ionici → legame dipolare
					- b) Covalenti → legame di condivisone elettronica
					- c) Forze di Van der Waals → es. molecole di gas nobili
					- → Vedremo che si può generalizzare il potenziale interatomico per adattarsi a tutti questi casi
						- In realtà, si adatta anche a casi più complessi e multi atomici
				- Caratteristiche del potenziale:
					+ a) $\frac{dV}{dR}|_{R=R_{0}}=0$ → esiste un punto stazionario $R=R_{0}$
					+ b) $W=\lim_{ R \to +\infty }[V(R)-V(R_{0})]=D_{0}$ → è il lavoro per portare a distanza infinita i due atomi, anche detto *energia di dissociazione*
					+ c) $\frac{d^2V}{dR^2}|_{R=R_{0}}=:k$ → è detta *costante di forza* 
						+ È la curvatura di $V(R)$ sul punto stazionario
					+ d) È *anarmonico* → non è simmetrico rispetto a $R_{0}$
						+ Ciò spiega la dilatazione termica dei materiali 
							+ Se fornisco energia termica, il punto medio del segmento che intercetta la curva di $V(R)$ si sposta verso destra → la distanza media aumenta
				+ Se però voglio studiare il potenziale attorno al punto $R_{0}$, posso introdurre l'*approssimazione armonica*
					+ Faccio un'espansione di Taylor al secondo ordine del potenziale $$\begin{align}  V(R)&=V(R_{0})+ \frac{dV}{dR}(R_{0})[R-R_{0}]+\frac{1}{2} \frac{d^2V}{dR^2}(R_{0})[R-R_{0}]^2+o([R-R_{0}]^2)   \\  &=\frac{1}{2}k[R-R_{0}]^2+o([R-R_{0}]^2) \end{align}$$che è esattamente un potenziale armonico $$V_{A}(R):=\frac{1}{2}k(R-R_{0})^2$$
					+ Si possono anche definire $$\begin{matrix}  \text{Pulsazione di vibrazione} & \omega:=\sqrt{ \frac{k}{\mu} } & \text{dove}  &  \mu=\frac{m_{1}m_{2}}{m_{1}+m_{2}}   \\ \text{} \text{Frequenza di vibrazione} & \nu:=\frac{\omega}{2\pi}  \\  \text{Numero d'onda di vibrazione} &  \tilde{\nu}:=\frac{\nu}{c}\end{matrix}$$
	- Una volta trovato il potenziale di Born-Oppenheimer, si può definire da esso una forza?
		- Ho che per i nuclei il potenziale è dato da $\hat{V}(\left\{ \mathbf{R}_{i} \right\})=\hat{V}_{nn}(\left\{ \mathbf{R}_{i} \right\})+E_{e}(\left\{ \mathbf{R}_{i} \right\})$
			- Posso allora calcolare $\nabla_{I}V=\frac{ \partial V }{ \partial \mathbf{R}_{i} }$?
		- So che il valore di aspettazione di $\hat{H}_{e}$ è $E_{e}$
			- Posso definire una certa coordinata generica $\lambda$ legata alla posizione dei nuclei
			- Allora segue che $$\begin{align}\braket{  \hat{H_{e}} (\lambda) }&=E_{e}(\lambda) \implies \frac{ \partial E_{e} }{ \partial \lambda} =\frac{ \partial  }{ \partial \lambda } \braket{  \hat{H}_{e}  } \\  &= \frac{ \partial \bra{\psi_{e}}  }{ \partial \lambda } \hat{H}_{e}\ket{\psi_{e}}+\bra{\psi_{e}} \frac{ \partial \hat{H}_{e} }{ \partial \lambda }\ket{\psi_{e}}+\bra{\psi_{e}} \hat{H}_{e} \frac{ \partial \ket{\psi_{e}}  }{ \partial \lambda}    \\  &= \frac{ \partial \bra{\psi_{e}}  }{ \partial \lambda }  E_{e}\ket{\psi_{e}}+\braket{  \frac{ \partial \hat{H}_{e} }{ \partial \lambda }   }+E_{e}\bra{\psi_{e}} \hat{H}_{e} \frac{ \partial \ket{\psi_{e}}  }{ \partial \lambda }  \\  &=   \braket{  \frac{ \partial \hat{H}_{e} }{ \partial \lambda }      } +E_{e} \frac{ \partial  }{ \partial \lambda } \braket{ \psi_{e} | \psi_{e} } \\  &=\braket{  \frac{ \partial \hat{H}_{e} }{ \partial \lambda }      }  \end{align}$$siccome $\hat{H}_{e}$ è autoaggiunto, e $\psi_{e}$ normalizzata ($\frac{ \partial  }{ \partial \lambda }1=0$)
			- Per cui si ottiene il seguente risultato: (**teorema di Hellman-Feynman**) $$\frac{ \partial E_{e} }{ \partial \mathbf{R}_{I} }=\braket{  \frac{ \partial \hat{H}_{e} }{ \partial \mathbf{R}_{I} }   }  $$
				- Oss: il termine $\frac{ \partial \hat{H}_{e} }{ \partial \mathbf{R}_{I} }$ NON riguarda la posizione degli elettroni! 
				- Pertanto essendo $\hat{H}_{e}=\hat{T}_{e}+\hat{V}_{ee}+\hat{V}_{en}$ vale che $$\begin{align}\frac{ \partial \hat{H}_{e} }{ \partial \mathbf{R}_{I} }&=\frac{ \partial \hat{V}_{en} }{ \partial \mathbf{R}_{i} } \\  &=- \frac{e^2}{4\pi \varepsilon_{0}} \sum_{i, I} \frac{ \partial  }{ \partial \mathbf{R}_{i}}  \frac{Z_{I}}{||\mathbf{r}_{i}-\mathbf{R}_{i}||} \\  &:=- \frac{e^2}{4\pi \varepsilon_{0}}  \sum_{i} \frac{ \partial  }{ \partial \mathbf{R}_{i}} v_{en}(\left\{ \mathbf{r} _{i}\right\}, \left\{ \mathbf{R}_{i} \right\}) \end{align}$$
				- Feynman dimostrò questo risultato fondamentale → se $\hat{H}_{e}=\sum_{i}v_{en}$ monoelettronici (identici, data l'indistinguibilità), vale che $$\braket{ \hat{H}_{e}  } =\braket{   \sum_{i}v_{en} } = \int_{\mathbb{R}^3} \rho(\mathbf{x})v_{en}(\mathbf{x})d\mathbf{x}$$
				- Di conseguenza (in particolare per l'$H_{2}^+$): $$\begin{align}\frac{ \partial  }{ \partial \mathbf{R}_{A} }E_{e}&= \braket{  \frac{ \partial \hat{H}_{e} }{ \partial \mathbf{R}_{a} }   } \\  &=\int_{\mathbb{R}^3} \psi_{e}^*(\mathbf{r}, \mathbf{R}_{A}, \mathbf{R}_{B}) \frac{ \partial  }{ \partial \mathbf{R}_{A} }  \left[ -\frac{e^2}{4\pi \varepsilon_{0}} \frac{1}{||\mathbf{r}-\mathbf{R}_{A}||} \right] \psi_{e}(\mathbf{r}, \mathbf{R}_{A}, \mathbf{R}_{B}) d\mathbf{r}  \\  &=\int_{\mathbb{R}^3} \rho_{e}(\mathbf{r}) \frac{ \partial  }{ \partial \mathbf{R}_{A} } \left[ -\frac{e^2}{4\pi \varepsilon_{0}} \frac{1}{||\mathbf{r}-\mathbf{R}_{A}||} \right]  d\mathbf{r}\end{align}$$ essendo $\rho_{e}(\mathbf{r})=\psi_{e}^*(\mathbf{r})\psi_{e}(\mathbf{r})=||\psi_{e}||^2$
					- Si usa la convenzione in chimica dove $\rho_{e}$ è la densità di numero di elettroni, non la densità di carica di elettroni
				- Siccome vale l'identità $$\frac{ \partial  }{ \partial \mathbf{x} } \frac{1}{||\mathbf{x}-\mathbf{a}||} =- \frac{1}{||\mathbf{x-a}||^2} \frac{\mathbf{x}-\mathbf{a}}{||\mathbf{x}-\mathbf{a}||}$$ segue che $$\frac{ \partial  }{ \partial \mathbf{R}_{A} }E_{e}=\frac{e^2}{4\pi \varepsilon_{0}} \int_{\mathbb{R}^3} \rho_{e}(\mathbf{r}) \frac{1}{||\mathbf{r}-\mathbf{R}_{A}||^2} \frac{\mathbf{r}-\mathbf{R}_{A}}{||\mathbf{r}-\mathbf{R}_{A}||}d\mathbf{r}$$
				- Pertanto otteniamo la *forza coulombiana* esatta $$\mathbf{F}_{Ae}=\frac{e^2}{4\pi \varepsilon_{0}} \int_{\mathbb{R}^3} \rho_{e}(\mathbf{r}) \frac{1}{||\mathbf{r}-\mathbf{R}_{A}||^2} \frac{\mathbf{r}-\mathbf{R}_{A}}{||\mathbf{r}-\mathbf{R}_{A}||}d\mathbf{r}$$
					- Feynman mostrò che questo vale anche per sistemi a più elettroni

## 1.3 Oscillatore Armonico Quantistico

+ Oscillatore armonico quantistico
	+ (Lo sappiamo già fare x quanti)
	+ Abbiamo trattato la molecola in maniera classica (vedi esercitazione 1) → serve ora una trattazione quantistica
		+ Si è posto $r:=R-R_{0}=x_{1}-x_{2}-x_{1}^o+x_{2}^o$
	+ L'hamiltoniana del sistema è data da $$\hat{H}=\hat{T}+\hat{V}= \frac{\hat{P}_{r}^2}{2\mu}+\frac{1}{2}kr^2=-\frac{\hbar^2}{2\mu}\frac{ \partial ^2 }{ \partial r^2 } +\frac{1}{2}kr^2$$
		+ Ovviamente qui $\omega:=\sqrt{ \frac{k}{\mu} }$
		+ Posso introdurre ora, per rimuovere le masse dal conto, le *coordinate normali*: $$q:=\sqrt{ \mu }r \implies \frac{ \partial  }{ \partial r }=\frac{ \partial  }{ \partial q } \frac{ \partial q }{ \partial r } =\sqrt{ \mu }\frac{ \partial  }{ \partial q } $$da cui $$\hat{H}=- \frac{\hbar^2}{2}\frac{ \partial ^2 }{ \partial q^2 }+ \frac{1}{2}\omega^2q^2$$
	+ Lo spettro di $\hat{H}$ è dato da: $$E_{n}=\hbar \omega\left( n+\frac{1}{2} \right)$$
# 2. Potenziali Interatomici Biatomici

## 2.1 Potenziali Empirici (Morse, Ionico, Lennard-Jones)

- Potenziali chimici per molecole biatomiche
	- Sono potenziali di tipo empirico → evitano di risolvere l'equazione di Schrödinger e permettono di fare delle valutazioni approssimate
		- Sono dei modelli, con le loro regioni di validità
		- Ci sono due strategie con cui si scrivono questi potenziali:
			- a) Usare leggi fisiche classiche (ex. elettrostatica)
				- Utilizziamo il metodo di Feynman del convertire in distribuzione di carica le informazioni del sistema
			- b) Funzioni con parametri, fit da dati sperimentali
				- La forma analitica è scelta per ottenere una buona descrizione dell'andamento della curva di potenziale
		- In tutti i casi: contengono un *ramo attrattivo*, un *ramo repulsivo* (+ costante)
			- Il potenziale ha sempre un punto di minimo in $R=R_{0}$ e un asinstoto per $R\to +\infty$
	- 1) *Potenziale di Morse*  → interazioni di Morse $$V_{M}(R)=D_{0}[1- e^{ -a (R-R_{0}) }]^2$$![[morse.png]] 
		- Viene determinato studiando una serie di molecole biatomiche
			- Nel suo articolo ha un approccio deduttivo → fa un guess, e poi verifica che le proprietà sono quelle desiderate
		- Gli autovalori dell'hamiltoniana sono dati da $$E_{n}=\hbar \omega\left( n+\frac{1}{2} \right)-\frac{\hbar^2a^2}{2\mu}\left( n+\frac{1}{2} \right)^2$$
			- Nelle regioni ad alta energia, l'approssimazione non è buona (il potenziale non va a infinito per $R\to0$)
			- Oss: il parametro $a$ ha le dimensioni di un Laplaciano → il secondo termine ha le dimensioni di un'energia cinetica
				- Rappresenta la *deviazione armonica* → rappresenta quanto si distacca il modello dal potenziale armonico
		- Validazione
			- 1) È stato fatto di recente un fit sperimentale dei valori di $V(R)$ per $H_{2}^+$ e combacia quasi perfettamente con il potenziale di Morse (tranne nella zona ad alte energie)
			- 2) Approccio analitico → nel 2025 è stata fatta una derivazione analitica del potenziale di Morse 
				- Il modello è a carica schermata → si tiene in conto di come la densità elettronica scherma la carica del nucleo
		- Non vale solo per atomi biatomici!
			- Se fissiamo un singolo grado di libertà per legame in termini di distanze, si possono utilizzare i potenziali di Morse per descrivere anche molecole poliatomiche
		- Mostriamo che $D_{0}, a, R_{0}$ siano esattamente i parametri che conosciamo $$V_{M}=D_{0}[1+e^{ -2a(R-R_{0}) }-2e^{ -a(R-R_{0}) }]$$
			- Si noti che $D_{0}e^{ -2a(R-R_{0}) }$ è un termine di tipo attrattivo, mentre $2D_{0}e^{ -a(R-R_{0}) }$ è un termine di tipo repulsivo
			- Oss: 
				- a) Per $R\to{0}$: $$\lim_{ R \to 0 } V_{M}(R)=\lim_{ R \to 0 } D_{0}[1+e^{ -2a(R-R_{0}) }-2e^{ -a(R-R_{0}) }]≠+\infty$$
				- b) Per $R\to R_{0}$: $$V_{M}(R_{0})=D_{0}[1+1-2]=0=\text{min}(V_{M})$$
				- c) $$\frac{dV_{M}}{dR}(R)=D_{0}[-2ae^{ -2a(R-R_{0}) }+2ae^{ -a(R-R_{0}) }]=2aD_{0}[e^{ -a(R-R_{0}) }-e^{ -2a(R-R_{0}) }]$$
					- Per cui $$\frac{dV_{M}}{dR}(R)=0 \iff R=R_{0}$$
				- d) $$\lim_{ R \to +\infty } [V_{M}(R)-V(R_{0})]=D_{0}-0=D_{0}$$
					- → $D_{0}$ è l'energia di dissociazione
				- e) La derivata seconda: $$\frac{d^2V_{M}}{dR^2}(R)=D_{0}[4a^2e^{ -2a(R-R_{0}) }-2a^2e^{ -a(R-R_{0}) }]=2a^2D_{0}[2e^{ -2a(R-R_{0}) }-e^{ -a(R-R_{0}) }]$$
					- Per cui la curvatura del potenziale è $$\frac{d^2V_{M}}{dR^2}(R_{0})=2a^2D_{0}=:k\implies a= \sqrt{ \frac{k}{2D_{0}} }$$
	- 2) *Potenziale ionico* $$V(R)=-\frac{kq^2}{R}+\frac{A}{R^n}+\varepsilon_{\text{ion}}$$![[ionico.png]]
		- Partiamo da una coppia di atomi neutri all'infinito (es. $K$ e $Cl$)
			- L'energia di prima ionizzazione di $K$ è $E_{K, \text{ion}}=4.34eV$ mentre l'energia di affinità elettronica di $Cl$ è $E_{Cl, \text{ae}}=-3.62eV$
				- → Il bilancio netto è $$E_{K,\text{ion}}+E_{Cl,\text{ae}}=0.72eV$$
				- È positivo ma molto minore (vedremo) dell'energia di legame
			- Che interazioni hanno?
				- a) A grande distanza → attrattiva di tipo coulombiano $$-\frac{kq^2}{R}$$
				- b) A piccola distanza → repulsione elettrone-elettrone
					- Assumiamo sia una legge di potenza del tipo $$\frac{A}{R^n}$$
		- Studio di funzione:
			+ a) Derivata prima $$\frac{dV}{dR}=\frac{kq^2}{R^2}-\frac{nA}{R^{n+1}}\implies \frac{dV}{dR}(R_{0})=\frac{kq^2}{R_{0}^2}-\frac{nA}{R_{0}^{n+1}}=0$$(punto di equilibrio) da cui $$A=\frac{1}{n} {kq^2}R_{0}^{n-1}$$e pertanto $$V(R)=-\frac{kq^2}{R}+\frac{1}{n} \frac{kq^2R_{0}^{n-1}}{R^{n}}+\varepsilon_{\text{ion}}=\varepsilon_{ion}-\frac{kq^2}{R_{0}}\left[ \left( \frac{R_{0}}{R}\right) -\frac{1}{n}\left( \frac{R_{0}}{R} \right)^n \right]$$
			+ b) L'energia necessaria a portare a distanza infinita i due ioni è $$\lim_{ R \to +\infty } V(R)-V(R_{0})=\varepsilon_{\text{ion}}+\frac{kq^2}{R_{0}}\left( 1-\frac{1}{n} \right)-\varepsilon_{\text{ion}}=\frac{kq^2}{R_{0}}\left( 1-\frac{1}{n} \right)=D_{0, \text{ion}}$$
				+ Oss: Se consideriamo invece la distanza per separare gli atomi neutri: $$D_{0,\text{atomi}}+\varepsilon_{\text{ion}}=D_{0,\text{ion}}=\frac{kq^2}{R_{0}}\left( 1-\frac{1}{n} \right)$$e pertanto $$n=\frac{\frac{kq^2}{R_{0}}}{\frac{kq^2}{R_{0}}-(D_{0, \text{atomi}}+\varepsilon_{\text{ion}})}$$
		+ Oss: non esiste soltando il legame ionico per rappresentare il legame dei cristalli (es. $NaCl$)
			+ Si può ipotizzare anche un cristallo di $NaCl$ con legame covalente, ma la sua curva $V(R)$:
				+ a) Ha un minimo trascurabile e poco profondo
				+ b) Esiste una regione di sovrapposizione tra la curva ionica e in essa non vale l'approssimazione BO
				+ → È impossibile
	+ 3) *Potenziale di Lennard-Johnes* → interazioni deboli (di Van Der Walls / London) $$V_{LJ}(R)=\frac{A}{R^{12}}-\frac{B}{R^6}$$![[lennard_jones.png]]
		+ Anche in questo caso otteniamo due termini dove:
			+ a) $\frac{A}{R^{12}}$ → termine repulsivo short-range
			+ b) $\frac{B}{R^6}$ → termine attrattivo long-range
			+ I nuclei sono totalmente schermati dall'ottetto elettronico → le interazioni sono estremamente deboli
				+ Non c'è una vera interazione elettrostatica
		+ Avviene sia tra atomi (es. gas nobili) che tra molecole (es. metano)
			+ Anche le molecole sono assimilabili ad atomi che hanno completato l'ottetto, hanno una shell completa
			+ → Si scopre via teoria MO
		+ I parametri sono fittati dai dati sperimentali
			+ Risolvere l'equazione di Schrödinger è piuttosto oneroso
		+ Studio di funzione:
			+ a) Calcolo la derivata prima $$\frac{dV_{LJ}}{dR}(R_{0})=-12 \frac{A}{R_{0}^{13}}+6 \frac{B}{R_{0}^7}=0\implies R_{0}=\left( \frac{2A}{B} \right)^{\frac{1}{6}}$$
				+ Segue quindi che $$B=\frac{2A}{R_{0}^6}$$
			+ b) L'energia di dissociazione è $$\lim_{ R \to +\infty }[V_{LJ}(R)-V_{LJ}(R_{0})] =0-V(R_{0})=D_{0}\implies D_{0}= - \frac{A}{R_{0}^{12}}+ \frac{2A}{R_{0}^{12}}=\frac{A}{R_{0}^{12}} $$da cui $$A=D_{0}R_{0}^{12}$$
			+ → Si possono esplicitare anche i parametri $D_{0}$ e $R_{0}$: $$V_{LJ}(R)=D_{0}\left[ \left( \frac{R_{0}}{R} \right)^{12}-2\left( \frac{R_{0}}{R} \right)^6 \right]$$
			+ c) Calcolo la costante di forza del potenziale $$\frac{d^2V_{LJ}}{dR^2}(R_{0})=156 \frac{A}{R_{0}^{14}}-42 \frac{B}{R_{0}^8}=:k$$e utilizzando le espressioni scritte per $A$ e $B$: $$k=72 \frac{D_{0}}{R_{0}^2}$$
		+ Si può usare anche un altro riferimento per descrivere l'interazione
			+ Cerco il raggio $$\sigma: V_{LJ}(\sigma)=0$$imponendo $$D_{0}\left[ \left( \frac{R_{0}}{\sigma} \right)^{12}-2\left( \frac{R_{0}}{\sigma} \right)^6 \right]=0 \implies R_{0}=2^{\frac{1}{6}}\sigma$$
			+ Da cui il potenziale diventa $$V_{LJ}(R)=4D_{0}\left[ \left( \frac{\sigma}{R} \right)^{12}- \left( \frac{\sigma}{R} \right) ^6\right]$$
				+ Spesso $D_{0}$ si indica con $\varepsilon$ per qualche motivo
		+ Come avviene questo legame microscopicamente?
			+ La fluttuazione dei centri di carica negli atomi stabili non è costante → ha delle fluttuazioni statistiche
				+ → Può accadere pertanto che si generi un dipolo istantaneo di carica per fluttuazione
			+ Immaginando che si formi un dipolo istantaneo $\mathbf{p}_{}{A}$ nella molecola $A$, questo causerà un campo elettrico che coinvolga la molecola $B$ 
				+ → La distribuzione elettronica della molecola $B$ viene alterata da questo campo elettrico 
				+ Si genera un dipolo indotto $\mathbf{p}_{B}$ e pertanto un'interazione tra i due dipoli
			+ Il campo elettrico di dipolo generato da $A$ è del tipo $$\mathbf{E} \sim \frac{\mathbf{p}_{A}}{R^3}$$
				+ Per cui il potenziale di interazione risulta essere $$V_{dip-dip}=\frac{\mu_{1}\mu_{2}}{R_{12}^3} \sim \frac{\mathbf{P}_{A} \alpha_{B} \frac{\mathbf{P}_{B}}{R^3}}{R^3} \sim$$
				+ Perchè proprio $6$ e $12$?
					+ In realtà anche per una questione computazionale
					+ Calcolato $\frac{1}{R^6}$ basta elevarlo al quadrato e si ottiene il termine $\frac{1}{R^{12}}$
				+ Oss: la polarizzabilità $\mathbf{\alpha}$ dovrebbe in generale essere un tensore
					+ Ma siccome consideriamo il caso assiale, il tensore risulta essere diagonale, per cui possiamo considerare solo lo scalare associato all'interazione lungo gli assi
			+ Costituiscono il cuore di due classi di materiali:
				+ a) Materiali *esfoliabii* → sono i materiali dove ci sono singoli strati (dove gli atomi sono legati da interazioni forti), ma tenuti insieme da interazioni di VDW
					+ es. Grafene
				+ b) Solidi di VDW → sono costituiti solo da interazioni deboli
					+ es. $He$ solido
					+ Hanno solitamente temperature di fusione piuttosto basse → la buca di potenziale è troppo poco profonda rispetto alle agitazioni termiche
						+ La temperatura di fusione cresce però al crescere del raggio atomico (es. $T_{F, He}=0.95K, \,T_{F, Rn}=202K$)
							+ Questo è dovuto anche alla maggiore polarizzabilità al crescere del raggio atomico
			+ Si può definire anche un parametro detto *raggio di Van der Waals*
				+ Siccome la profondità della buca è piccola, come anche il ramo attrattivo, consideriamo solo il ramo repulsivo dell'interazione
				+ → Possiamo approssimare $V_{LJ}$ come un gradino di altezza infinita $$V_{LJ}(R)=\begin{cases}  0  & R\geq R_{0} \\  +\infty & R<R_{0}  \end{cases}$$
				+ La conseguenza fisica è che l'atomo è approssimato da una sfera "rigida" (non possono compenetrarsi per via del potenziale infinito), con raggio pari al raggio di Van Der Waals $R_{VDW}$ 
					+ Questo valore si ottiene misurando la lunghezza del reticolo cristallino 
				+ Oss: il raggio del punto stazionario $R_{0}$ si può identificare la somma dei raggi di VDW dei due atomi $$R_{0}=R_{1}^{VDW}+R_{2}^{VDW}$$→ l'equilibrio è raggiunto quando si toccano le due sfere

## 2.E Esercitazioni

### 2.E.1 Esercitazione 1 (Dinamica Classica HCl)

- es. HCl
	- $m_{H}=1.008\text{uma}$, $m_{Cl}=34.969\text{uma}$ $\implies \mu=\frac{m_{H}m_{Cl}}{m_{H}+m_{Cl}}≈0.16\times 10^{-26}kg$
	- $\nu=\frac{1}{2\pi} \sqrt{ \frac{k}{\mu} }≈2894\text{cm}^-1$

+ es. Trattazione classica → moto vibrazionale di una molecola biatomica
	+ Immagino che la molecola sia ben approssimata dall'energia potenziale armonica $$V_{A}(R)=\frac{1}{2}k(R-R_{0})^2=\frac{1}{2}k(x_{1}-x_{2}-R_{0})^2$$
		+ Se le posizioni delle due molecole sono $x_{1}, x_{2}$ e all'equilibrio $x_{1}^o, x_{2}^o$ ho che $x_{1}-x_{2}:=R$ e $x_{1}^o-x_{2}^o :=R_{0}$
	+ Scrivendo le equazioni del moto classiche: $$\begin{cases}  \ddot{x_{1}} = -\frac{1}{m}\frac{ \partial V }{ \partial x_{1} } =\frac{k}{m_{1}}(x_{2}-x_{1}-R_{0}) \\  \ddot{x_{2}}=-\frac{1}{m}\frac{ \partial V }{ \partial x_{2} }=\frac{k}{m_{2}}(x_{2}-x_{1}-R_{0})  \end{cases}$$quindi $$\begin{align} (\ddot{x_{2}}-\ddot{x_{1}})&=(x_{2}-x_{1}-R_{0})(-k)\left( \frac{1}{m_{2}}+\frac{1}{m_{1}} \right)  \\  &= (x_{2}-x_{1}-R_{0})(-k) \frac{1}{\mu} \\  &=-\frac{k}{\mu}(x_{2}-x_{1}-R_{0})\end{align}$$
	+ Di conseguenza $$\ddot{R}(t)=-\frac{k}{\mu}(R-R_{0})\implies R(t)=R_{0}+A\sin(\omega t+\varphi)$$
	+ È anche utile definire una nuova coordinata, detta di *spaziamento* $$r:=R-R_{0}\implies \ddot{r}(t)=-\frac{k}{\mu}r\implies r(t)=A\sin(\omega t+\varphi)$$
### 2.E.2 Esercitazione 2 

Studiamo alcuni potenziali interatomici.

es. $H_{2}$, $D_{0}=432 \frac{kJ}{mol}$, $\tilde{\nu}=4400 \text{cm}^{-1}$, $R_{0}=0.74138 Å$, $\Delta R=0.1Å$
- Potenziale di Morse $V_{M}(R)=D_{0}[1-e^{ -a(R-R_{0}) }]^2$
	- Devo trovare $a$: $$a=\sqrt{ \frac{k}{2D_{0}} }=\sqrt{ \frac{\omega^2\mu}{2D_{0}} }=\sqrt{ \frac{(2\pi c \tilde{\nu})^2\mu}{2D_{0}} }=\sqrt{ \frac{2\pi^2c^2 \tilde{\nu}^2\mu}{D_{0}} }≈1.993\times 10^{10} \text{m}^{-1}$$ essendo $\mu=\frac{m_{H}^2}{2m_{H}}=\frac{m_{H}}{2}=0.504 \text{amu}=0.504 \frac{g}{mol} \frac{10^-3 \frac{kg}{g}}{6.022\times 10^{23} \text{mol}^{-1}}=8-367\times 10^{-28}kg$
	- Il lavoro per unità di mole per portare la molecola da distanza $R_{0}$ a $R_{0}+\Delta R$ è quindi $$W_{M}=V_{M}(R+\Delta R)-V_{M}(R)=D_{0} [1-e^{ -a(R_{0}+\Delta R-R_{0}) }]^2 ≈14.105 \frac{kJ}{mol}$$
- E in approssimazione armonica? $$W_{A}=V_{A}(R_{0}+\Delta R)-V_{A}(R_{0})=\frac{1}{2}k\Delta R^2≈17.173 \frac{kJ}{mol}>W_{M}$$
	- Infatti per $R>R_{0}$ l'approssimazione armonica vale per eccesso
	- La differenza $W_{A}-W_{M}=3 \frac{kJ}{mol}<k_{B}T$ per temperature standard → è un'ottima approssimazione

es. Studiare il legame dell'etano $CH_{3} - CH_{3}$ trattando le due molecole $CH_{3}$ come un singolo atomo
- Dati → $D_{0}=368 \frac{kJ}{mol}$, $R_{0}=1.54Å$, $\tilde{\nu}=1000 \text{cm}^{-1}$
	- → Posso ricavare $a=1.896Å^{-1}$
- Come dovrebbero cambiare i valori di questi parametri se considerassimo l'etilene $CH_{2} = CH_{2}$?
	- (Ignoriamo la differenza nel numero di idrogeni)
	- 1) $R_{0, \text{etano}}>R_{0, \text{etilene}}$
	- 2) $D_{0, \text{etano}}<D_{0, \text{etilene}}$
	- 3) $k_{\text{etano}}<k_{\text{etilene}}$

+ b) Potenziale ionico $$V(R)=-\frac{kq^2}{R}+\frac{A}{R^n}+\varepsilon_{\text{ion}}$$
	+ Ci sono 3 termini:
		+ a) Termine attrattivo → $-\frac{kq^2}{R}$
		+ b) Termine repulsivo → $\frac{A}{R^n}$
		+ c) Energia di prima ionizzazione → $\varepsilon_{\text{ion}}$

es. $NaF$ → $E_{Na}^\text{ion}=5.14eV$, $E_{F}^\text{aff.el.}=3.40eV$, $R_{0}=0.193nm$, $D_{0, \text{atomi}}=4.99eV$
- Il potenziale ionico è $$V(R)=-\frac{kq^2}{R_{0}}\left[ \left( \frac{R_{0}}{R}\right) -\frac{1}{n}\left( \frac{R_{0}}{R} \right) ^n\right]$$dove $$\varepsilon_{\text{ion}}=E_{Na}^\text{ion}-E_{F}^\text{aff.el.}=1.74eV$$
- Energia di repulsione degli ioni all'equilibrio $$E_{0, \text{repulsivo}}=\frac{kq^2}{R_{0}} \frac{1}{n}=\frac{kq^2}{\frac{kq^2}{\frac{kq^2}{R_{0}}-(D_{0},\text{atomi}+\varepsilon_{\text{ion}})}}=\frac{kq^2}{R_{0}}-D_{0,\text{atomi}}+\varepsilon_{\text{ion}}≈0.713eV$$
	- Oss: $n≈10$

es. Consideriamo due atomi di $Ar$ → potenziale di LJ 
- So che $A=2.5086\times 10^{6}  \frac{Å^{12}kcal}{mol}$ e $B=1.0973\times 10^{3} \frac{Å^6kcal}{mol}$ → calcolare $R_{0}, D_{0}, \nu, \tilde{\nu}$
- Per $R_{0}$ e $D_{0}$ uso le espressioni calcolate prima $$\begin{align} R_{0}&=\left( \frac{2A}{B} \right)^{\frac{1}{6}}=4.074Å  \\ D_{0}&=\frac{A}{R_{0}^{12}}=0.12 \frac{kcal}{mol} \\  k&=\frac{72D_{0}}{R_{0}^2}=\frac{2.177\times 10^{25} }{N_{A}} \frac{N}{m} \end{align}$$
	- Oss: $R_{0}$ è grande rispetto al raggio della molecola di $Ar$ anche perchè il legame è molto debole
		- Infatti l'energia di dissociazione è 2-3 ordini di grandezza inferiore al legame covalente, e trascurabile rispetto all'agitazione termica
- La massa ridotta della molecola è $$\mu=\frac{m_{Ar}^2}{2m_{Ar}}=20amu=3.32\times 10^{-26} \frac{kg}{mol}$$
- Il numero d'onda vibrazionale lo otteniamo come $$\tilde{\nu}=\frac{1}{2\pi c} \sqrt{ \frac{k}{\mu} }=1751.54 \frac{1}{m}$$

es. Consideriamo una molecola con legame VDW 
- Dati: $D_{0}=3 \frac{kcal}{mol}$, $R_{0}=3Å$
- Calcolare il lavoro necessario a spostare la molecola in $R_{0}^{\prime}=4Å$
	- Il lavoro è dato da $$\begin{align}  W&=V_{LJ}(R_{0}^{\prime} )-V_{LJ}(R_{0}) \\  &=D_{0}\left[ \left( \frac{R_{0}}{R_{0}^{\prime} } \right)^{12}-2\left( \frac{R_{0}}{R_{0}^{\prime} } \right)^6\right]-D_{0}[(1-2)]  \\  &=-0.324D_{0}+D_{0}=2.028 \frac{kcal}{mol} \end{align}$$
- Valutare il lavoro con l'approssimazione armonica $$\begin{align}  W_{A}&=V_{A}(R_{0}^{\prime} )-V_{A}(R_{0}) \\  &=V_{LJ}(R_{0} )+\frac{1}{2} \frac{d^2V_{LJ}}{dR^2}(R_{0} )(R-R_{0}^{\prime} )^2 -V_{LJ}(R_{0})  \\  &= \frac{1}{2}k(R-R_{0}^{\prime} )^2 =12 \frac{kcal}{mol} \end{align}$$
	- → L'approssimazione armonica qui non funziona appena mi sposto dalla posizione di equilibrio

# 3. Molecole Poliatomiche e Conformazioni

## 3.1 Coordinate Interne e Potenziali Torsionali

- Supponiamo di avere una molecola poliatomica (es. benzene) → si può descrivere tramite qualche potenziale?
	- Si può utilizzare l'equazione fondamentale di equilibrio
		- Per la molecola biatomica, c'è un potenziale di cui trovo il punto stazionario $$V(R): \quad  \frac{dV}{dR}(R_{0})=0$$
		- Il salto da fare non è un salto di qualità, ma solo di complessità → avremo le variabili $\mathbf{R}=\left\{ \mathbf{R}_{1}, \mathbf{R}_{2}, \dots, \mathbf{R}_{n} \right\}$  e $$V(\mathbf{R}_{1}, \dots, \mathbf{R}_{n}):  \quad  \frac{dV}{d\mathbf{R}_{i}}(\mathbf{R}_{i,0})=\mathbf{0},  \quad  \forall i\in \left\{ 1, \dots, n \right\}$$
	- Come risolvo questo problema?
		- a) Soluzione dell'equazione di Schrödinger numerica
			- È molto oneroso e ci permette solo di trarre le conseguenze da una simulazione
		- b) In maniera empirica → si cerca di estrarre dalle informazioni sperimentali
			- Il primo aspetto è di scoprire le coordinate migliori per descrivere il potenziale
				- Posso trovare delle coordinate lagrangiane $\left\{ \mathbf{q}_{i} \right\}$ al posto di $\left\{ \mathbf{R} _{i}\right\}$ che si adattino meglio ai vincoli del sistema
			- Un'approssimazione può essere separare il potenziale molecolare in una somma di potenziali di molecola biatomica $$V(\left\{ \mathbf{R}_{i} \right\})=\sum_{i}V_{i}(\mathbf{R}_{i})$$
				- es. $H_{2}O$ → $V_{H_{2}O}(R_{1}, R_{2})=V_{OH}(R_{1})+V_{OH}(R_{2})+V_{HOH}(\alpha)$
					- Infatti non bastano le distanze di legame → l'acqua ha una forma piegata per via dei *lone pair* (coppie spaiate) di elettroni dell'$O$
					- In questo caso per $V_{HOH}(\alpha)$ si usa un potenziale di tipo armonico $$V_{HOH}(\alpha)=\frac{1}{2}k(\alpha-\alpha_{0})^2$$
				- Non sempre disaccoppiare le variabili però funziona bene → per alcuni potenziali serve includere un potenziale di accoppiamento
					- All'ordine $0$ di approssimazione non si mettono per semplicità
			- I potenziali empirici sono molto utili per una prima investigazione del materiale, in cui si ammette che si possano avere anche alcuni erori
				- Il vataggio è che sono molto veloci e rapidi nei calcoli
				- Quando si vuole accuratezza, si risolve l'equazione di Schrödinger numericamente
					- Partendo dall'aspetto empirico però si possono evitare molti calcoli
## 3.2 Descrizione degli Alcani

- Sono molecole organiche costituite da una catena di atomi di $C$ con legami singoli (gruppi $CH_{3}$)
	- Si chiama *polimero* una molecola costituita dalla ripetizione di un'unità modulare

- Le coordinate interne che possiamo scegliere per descrivere la molecola sono:
	- a) Distanze di legame ($R_{ij}$) tra due generici atomi $i$ e $j$ 
		- Genera un potenziale per ogni legame del tipo $$V_{ij}(R_{ij})$$→ disaccoppio le variabili 
	- b) Angoli di legame ($\alpha_{ijk}$), approssimati da potenziali armonici $$V_{ijk}(\alpha_{ijk})=\frac{1}{2}c_{ijk}(\alpha_{ijk}-\alpha_{0, ijk})^2$$
		- Oss: esistono delle situazioni di *ridondanza angolare* → le variabili angolari non solo linearmente indipendenti
			- Per ora ignoriamo questa casistica
	- c) Deformazione fuori dal piano ($\gamma_{ijkl}$) (*out of plane* o OPLA), anch'essi armonici $$V_{ijkl}^{\text{OOPLA}}(\gamma_{ijkl})=\frac{1}{2}c_{ijkl}(\gamma_{ijkl}-\gamma_{0,ijkl})^2$$
		- Prendiamo come esempio il benzene (molecola planare)
			- Studio l'angolo che un atomo della molecola ha rispetto al piano del resto della molecola
	- d) Angolo diedro ($\tau$) e potenziale torsionale $$V_{ijkl}^\text{tor}(\tau_{ijkl})$$
		- Prendiamo come esempio l'acqua ossigenata $(H_{2}O_{2})$
			- Struttura: ci sono due lone pair negli atomi di $O$ 
			- Posso pensare di ruotare (twist) un gruppo $OH$ attorno al legame $O-O$
				- Ovviamente ci sono effetti energetici → la repulsione $e-e$ delle lone pairs degli atomi di ossigeno cambierà per via dell'angolo
			- L'angolo diedro è quello tra i due piani definiti da $O,O,H^{(1)}$ e $O,O,H^{(2)}$
				- Posso immaginare un libro aperto: una pagina contiene un idrogeno, l'altra l'altro idrogeno, e la spina del libro è costituita dal legame $O-O$
				- → $\tau$ è l'angolo di apertura del libro
			- Viene rappresentato dalla *proiezione di Newmann* ![[newman_h2o2.png]]
				- Si rappresentano gli atomi guardando nella direzione del legame $O-O$ e rappresentando gli atomi di $O$ con dimensioni diverse
		- NON uso l'approssimazione armonica → di solito i $\tau_{ijkl}$ sono grandi
			- È sicuramente una funzione periodica $$V_{ijkl}^\text{tor}(\tau_{ijkl}+2\pi)=V_{ijkl}^\text{tor}(\tau_{ijkl})$$
		- Posso trovare la probabilità di un determinato stato energetico tramite la statistica di Maxwell-Boltzmann $$\mathbb{P}\left\{  E=E(\gamma)  \right\} =\frac{1}{Z}e^{ - \frac{E(\gamma)}{k_{B}T} }$$
	- e) Interazione di non-legame ($R_{ij}^{\prime}$) $$V_{ij}^\text{NB}(R_{ij}^{\prime} )$$
		- Agisce tra atomi non direttamente legati tra loro (coppie separate da $\geq 4$ legami, o molecole distinte)
		- È costituito dalla sovrapposizione di due contributi fondamentali:
			- a) Potenziale di Van der Waals (es. LJ)
				- Un termine di repulsione di Pauli a corto raggio ($R^{12}$) e un'attrazione a lungo raggio ($R^6$)
			- b) Elettrostatica coulombiana 
	- → Il potenziale disaccoppiato è del tipo $$\begin{align}  V(\left\{ R_{ij} \right\}, \left\{ \alpha_{ijk} \right\}, &\left\{ \gamma_{ijkl} \right\}, \left\{ \tau_{ijkl} \right\}, \left\{ R_{ij}^{\prime}  \right\})=\sum_{i,j} V_{ij}(R_{ij}) + \sum_{i,j,k} V_{ijk}(\alpha_{ijk})+ \\  &+\sum_{i,j,k,l}V_{ijkl}^\text{OOPLA}(\gamma_{ijkl})  +\sum_{i,j,k,l} V_{ijkl}^\text{TOR}(\tau_{ijkl})+\sum_{ij}V_{ij}^\text{NB}(R_{ij}^{\prime} )\end{align}$$
		- Se studio l'effetto dell'agitazione termica → approssimazione degli *stati isometrici rotazionali*
			- I gradi di libertà delle lunghezze di legame $R_{ij}$ e degli angoli di legame $\alpha_{ijk}$ sono trascurabili rispetto all'angolo di diedro $\tau_{ijkl}$ nello studio dell'agitazione termica

- a) Etano ($CH_{3}-CH_{3}$) 
	  ![[Etile_radical.png]]
	- Rappresentazione dei legami → posso rappresentare un triangolo pieno per i legami nel verso positivo dell'asse $z$, un triangolo tratteggiato per i legami nel verso negativo di $z$
	- Oss: in questo caso si avrà:
		- a) Configurazione *eclipsed* → massimo di energia
			- Si ha quando gli atomi di $H$ sono sovrapposti (massima repulsione tra elettroni) → $\tau=0, \pi$
		- b) Configurazione *staggered* → minimo di energia 
			- Si ha se se $\tau=\frac{\pi}{3}$
			- La proiezione di Newmann avrà i $6H$ equidistribuiti nelle direzioni (se li unisco formano un esagono regolare)
	- Nel caso dell'etano è del tipo $$V(\tau)=V_{0}(1+\cos(3\tau))$$![[scr 2026-10-02 alle 15.21.55.png]]
		- Dal grafico si nota una rotazione tra un minimo e un altro minimo è del tipo $2.5 \frac{kcal}{mol}$ 
			- L'eccitazione termica a temperatura ambiente è del tipo $0.6 \frac{kcal}{mol}$ → l'oscillazione  termica è di decine di gradi
		- → È un grado di libertà fortemente eccitato

- b) Propano ($CH_{3}-CH_{2}-CH_{3}$) 
	  ![[scr 2026-10-11 alle 10.27.13.png|337]]

- c) Butano $(CH_{3}-CH_{2}-CH_{2}-CH_{3})$ ![[scr 2026-10-12 alle 09.35.27.png]]
	- Possiamo ignorare i due legami esterni, siccome il conformero stabile è dato dalla staggered dell'etano → rimane il grado di libertà di un solo angolo $\gamma_{2}$
	- Ci sono 3 minimi per l'energia torsionale
		- a) *Gauche +* → $\gamma_{2}= \frac{\pi}{3}$
		- b) *Trans* → $\gamma_{2}=\pi$
		- b) *Gauche -* → $\gamma_{2}= -\frac{\pi}{6}$

- d) Pentano $CH_{3}-CH_{2}-CH_{2}-CH_{2}-CH_{3}$
	- Dobbiamo considerare gli angoli di legame di tutte le molecole $$V(\left\{ \gamma_{i} \right\}_{i=1,\dots,4})=\sum_{i=1}^4 [V(\gamma_{i})] + V^{NB}(\left\{ \gamma_{i} \right\}_{i=1,\dots,4})$$
	- Posso fare delle semplificazioni:
		- 1) Possiamo bloccare per $\gamma_{1}$ e $\gamma_{4}$ sul potenziale torsionale dell'etano
			- Infatti per gli atomi attorno la configurazione favorevole (il minimo di energia) sarà proprio la configurazione staggered dell'etano, tutte alla stessa energia
			- Siccome ho tolto questi due gradi di libertà dal sistema, posso immaginare i gruppi $CH_{3}$ ai bordi della catena come degli angoli singoli massivi
		- 2) Posso utilizzare il potenziale modello del butano per $\gamma_{2}$, $\gamma_{3}$
			- Le conformery stabili del butano sono $T$ (trans), $G^+$ (gauche +), $G^-$ (gauche -)
			- Posso realizzare una tabella per tutti i possibili minimi del butano
				- Fare tabella con tutte le possibili combinazioni di T, G+, G-
		- → Ho 9 possibili conformeri stabili del pentano → bisogna analizzare i casi singolarmente
			- 1) $TT$ 
			- 2) $G^+G^-$ → instabile! perchè la repulsione coulombiana è troppo elevata ![[scr 2026-10-12 alle 09.46.45.png|416]]
				- Sono dette geometrie ad *alto ingombro sferico* → gli atomi si troverebbero molto più vicini del raggio di VDW
			- 3) $G^-G^+$ → idem instabile
			- 4) $G^+G^+$
			- 5) $G^-G^-$
			- 6) $TG^+$
			- 7) $TG^-$
			- 8) $G^+T$
			- 9) $G^-T$
		- Si può definire il *peso statistico* di un conformero $\alpha$ tramite la distribuzione di Maxwell-Boltzmann $$P_{\alpha}:=e^{ - \frac{E_{\alpha}}{RT} }$$
			- es. Peso statistico del conformero $T$ del butano è $1$ ($E_{T}=0$)
			- Si può introdurre una normalizzazione tramite la funzione di partizione $$Z=\sum_{i}P_{\alpha_{i}}=\sum_{i}e^{ - \frac{E_{\alpha_{i}}}{RT} }$$da cui la probabilità di ogni conformero diventa $$\mathbb{P}\left\{  E=E_{\alpha}  \right\}=\frac{1}{Z}P_{\alpha} $$
			- Oss: Per $T \to +\infty$ vale che $P_{\alpha}=1, \,\forall \alpha$, per cui la distribuzione dell'energia diventa uniforme $$\mathbb{P}\left\{  E=E_{\alpha}  \right\} \xrightarrow{T \to +\infty} \frac{1}{N} $$
			- Per gli alcani si può fare una tabella del tipo

- e) Generalizzando → polietilene
	- Avrò $n$ atotmi di carbonio, con $n$ grande 
		- È una lunga catena di atomi, caratterizzata da un'unità che si ripete indefinitamente, l'etilene → è un cristallo monodimensionale 
	- Che geometria ha una molecola di polietilene? → è raggomitolata
		- Si formano in questi modi dei cristalli 3d, costituiti da impaccamenti compatti di catene di polietilene
			- Le interazioni di VDW portano le catene ad aggregarsi
		- Esiste un modello per approssimare (*catena Gaussiana*) → si può descrivere la catena tramite una serie di passi casuali dello spazio
			- Viene descritto matematicamente come una catena di Markov → facile da computare
		- In realtà questo modello NON è totalmente accurato ![[scr 2026-10-12 alle 10.36.33.png]]
			- Secondo questo modello, il sistema dovrebbe essere totalmente amorfo
			- In realtà, facendo diffrazione a raggi X, ci accorgiamo che il sistema non lo è, e presenta alcune regolarità (picchi di diffrazione a $\theta$ ben precisi) → sono detti *semi-cristalli* 
				- Abbiamo una co-presenza di zone ordinate, dette *lamelle* (sostanzialmente cristalline) e zone amorfe 
					- Spesso queste lamelle si organizzano in *sferuliti* → strutture "a pon pon" dove ogni filamento è un "mazzo di carte" di lamelle
				- Dai picchi di diffrazione Bragg si può risalire all'organizzazione del reticolo e alle distanze reticolari
					- Siccome osserviamo un reticolo cristallino, le molecole devono essere allineate → c'è bisogno di una geometria lineare del polimero
				- → Se chiediamo regolarità, non possono esserci formazioni gauche 
					- Tutte le volte che la catena devia dalla linearità (gauche), le catene si disallineano e si allontanano dal massimo impaccamento → le forze di VDW non agiscono
					- Con più catene insieme, si possono formare formazioni molto stabili dal punto di vista entalpico
				- Si definisce un asse $\mathbf{c}$ che identifica il periodo traslazionale
					- Siccome ho una struttura regolare, posso studiare in un singolo periodo gli angoli torsionali $(\tau_{1}, \tau_{2}, \dots, \tau_{k})_{n}$ coincidente con una piccola porzione di polimero
				- Giulio Natta studiò le lamelle del polietilene mediante due postulati:
					- 1) Postulato di minima energia intramolecolare 
						- Le interazioni intramolecolari non modificano i minimi dell'energia potenziale rispetto ai g.d.l della molecola singola
						- → I minimi potenziale della struttura sono agli stessi angoli dei minimi della molecola singola
					- 2) Postulato di equivalenza → se osservo una geometria regolare nel cristallo, devo immaginare che le catene formino un cristallo monodimensionale, cioè le sequenze di angoli torsionali si ripetono
						- Posso descrivere una catena infinita tramite un set limitato di angoli torsionali $(\tau_{1}, \tau_{2}, \dots, \tau_{k})_{n}$
		- Le unità cristalline sono indicate dalla notazione $M_{N}$ ![[scr 2026-10-12 alle 11.08.41.png|464]]
			- $M$ → numero di unità chimiche ($C$) presenti nell'unità traslazionale (unità reticolare)
			- $N$ → numero di giri attorno all'asse dell'elica
			- Esistono anche i diversi casi in base alla *tassia*, ovvero come si distribuiscono i sostituenti (indicati con $R$, come il metile) ![[scr 2026-10-12 alle 12.26.04.png]]
				- a) *Isotassia* → tutti i sostituenti dallo stesso lato rispetto al piano dei legami
				- b) *Sindiotassia* → sostituenti alternati
				- c) *Atassia* → mancanza di ordine nella distribuzione dei sostituenti
					- Un caso del genere non può formare una struttura cristallina → manca di simmetria traslazionale
			- Alcuni esempi:
				- a) $3_{1}$ polipropilene isotattico
					- Il reticolo (unità fondamentale) è costituita da 3 atomi di $C$ 
				- b) $7_{2}$
				- c) $4_{1}$ polipropilene sindiotattico
					- Il fatto che i metili siano da parti diverse modifica fortemente le proprietà del materiale
				- d) $4_{1}$
			- È possibile oggi realizzare unità traslazionali molto particolari 
				- es. Poli-$\alpha$-butene (sempre $3_{1}$) → nel polipropilene sostituisco i gruppi metili con dei gruppi etili (un $C$ in più) ![[scr 2026-10-12 alle 11.12.06.png]]
					- Il reticolo però rispetto al polipropilene isotattico passa da monoclino a trigonale (per via del $C$ in più)
	- Per classificare i polimeri, si possono studiare le catene $C-C$ "nude" (senza $H$ o altri sostituenti chimici) ![[scr 2026-10-12 alle 11.14.54.png]]
		- es. $T_{2}$ è il polietilene
		- Più lunga è l'unità reticolare, più le strutture possono essere complicate
		- *(Riferimento: G. Allegra, Modelli Conformativi Macromolecolari)*

## 3.E Esercitazione

es. Pentano $CH_{3}-CH_{2}-CH_{2}-CH_{2}-CH_{3}$
- Dobbiamo considerare gli angoli di legame di tutte le molecole $$V(\left\{ \gamma_{i} \right\}_{i=1,\dots,4})=\sum_{i=1}^4 [V(\gamma_{i})] + V^{NB}(\left\{ \gamma_{i} \right\}_{i=1,\dots,4})$$
- Posso fare delle semplificazioni:
	- 1) Possiamo bloccare per $\gamma_{1}$ e $\gamma_{4}$ sul potenziale torsionale dell'etano
		- Infatti per gli atomi attorno la configurazione favorevole (il minimo di energia) sarà proprio la configurazione staggered dell'etano, tutte alla stessa energia
		- Siccome ho tolto questi due gradi di libertà dal sistema, posso immaginare i gruppi $CH_{3}$ ai bordi della catena come degli angoli singoli massivi
	- 2) Posso utilizzare il potenziale modello del butano per $\gamma_{2}$, $\gamma_{3}$
		- Le conformery stabili del butano sono $T$ (trans), $G^+$ (gauche +), $G^-$ (gauche -)
		- Posso realizzare una tabella per tutti i possibili minimi del butano
			- Fare tabella con tutte le possibili combinazioni di T, G+, G-
	- → Ho 9 possibili conformery stabili del pentano → bisogna analizzare i casi singolarmente
		- a) $TT$ 
		- b) $G^+G^-$ → instabile! perchè 
		- [ricopiare da ipad]
	- Si può definire il *peso statistico* di un conformero $\alpha$ tramite la distribuzione di Maxwell-Boltzmann $$P_{\alpha}:=e^{ - \frac{E_{\alpha}}{RT} }$$
		- es. Peso statistico del conformero $T$ del butano è $1$ ($E_{T}=0$)
		- Si può introdurre una normalizzazione tramite la funzione di partizione $$Z=\sum_{i}P_{\alpha_{i}}=\sum_{i}e^{ - \frac{E_{\alpha_{i}}}{RT} }$$da cui la probabilità di ogni conformero diventa $$\mathbb{P}\left\{  E=E_{\alpha}  \right\}=\frac{1}{Z}P_{\alpha} $$
		- Oss: Per $T \to +\infty$ vale che $P_{\alpha}=1, \,\forall \alpha$, per cui la distribuzione dell'energia diventa uniforme $$\mathbb{P}\left\{  E=E_{\alpha}  \right\} \xrightarrow{T \to +\infty} \frac{1}{N} $$
		- Per gli alcani si può fare una tabella del tipo
a) Butano
$(Z=1+2\gamma)$

| $\alpha$ | $n$ | $E_{\alpha}\, [\frac{cal}{mol}]$ | $P_{\alpha}$                  | $\mathbb{P}\left\{  E=E_{\alpha}  \right\}$ |     |
| -------- | --- | -------------------------------- | ----------------------------- | ------------------------------------------- | --- |
| $T$      | 1   | 0                                | 1                             | $\frac{1}{Z}$                               |     |
| $G^+$    | 1   | 500                              | $e^{ - E_{G}/RT }:=\gamma(T)$ | $\frac{\gamma(T)}{Z}$                       |     |
| $G^-$    | 1   | 500                              | $\gamma(T)$                   | $\frac{\gamma(T)}{Z}$                       |     |
- Oss: al variare di $T$, $\gamma$ vale:
	- $\gamma(273.15K)=0.398\implies \frac{\gamma}{Z}(273.15K)=0.444$
	- $\gamma(300K)=0.432\implies \frac{\gamma}{Z}(300K)=0.464$
	- $\gamma(573.15K)=0.605\implies \frac{\gamma}{Z}(573.15K)=0.548$
	- → La probabilità di conformeri Gauche sale al crescere di $T$

b) Pentano
($Z=1+4\gamma+2\gamma^2$)

| $\alpha$               | $n$ | $E_{\alpha}\, [\frac{cal}{mol}]$ | $P_{\alpha}$  | $\mathbb{P}\left\{  E=E_{\alpha}  \right\}$                                                                                                            |     |     |
| ---------------------- | --- | -------------------------------- | ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------ | --- | --- |
| $\left\{ T,T \right\}$ | 1   | 0                                | 1             | $\frac{1}{Z}(T)=\frac{1}{1+4\gamma+2\gamma^2}(T)=\begin{cases}  0.344 & T=273.15K   \\ 0.322 & T=300K  \\  0.241 & T=573.15K\end{cases}$               |     |     |
| $\left\{ T,G \right\}$ | 4   | 500                              | $\gamma(T)$   | $\frac{\gamma}{Z}(T)=\frac{\gamma}{1+4\gamma+2\gamma^2}(T)=\begin{cases}  0.548 & T=273.15K  \\  0.556 & T=300K \\  0.584 & T=573.15K  \end{cases}$    |     |     |
| $\left\{ G,G \right\}$ | 2   | 1000                             | $\gamma^2(T)$ | $\frac{\gamma^2}{Z}(T)=\frac{\gamma^2}{1+4\gamma+2\gamma^2}(T)=\begin{cases}  0.108 & T=273.15K \\  0.122 & T=300K \\  0.175 & T=573.15K  \end{cases}$ |     |     |
- Oss: al crescere di $T$ le configurazioni distorte $G$ crescono

c) Esano
($Z=1+6\gamma+8\gamma^2+2\gamma^3$)

| $\alpha$                 | $n$ | $E_{\alpha}\, [\frac{cal}{mol}]$ | $P_{\alpha}$  | $\mathbb{P}\left\{  E=E_{\alpha}  \right\}$                                                                                                                      |     |     |
| ------------------------ | --- | -------------------------------- | ------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- | --- | --- |
| $\left\{ T,T,T \right\}$ | 1   | 0                                | 1             | $\frac{1}{Z}(T)=\frac{1}{1+6\gamma+8\gamma^2+2\gamma^3}(T)=\begin{cases}  0.209 & T=273.15K   \\ 0.191 & T=300K  \\  0.125 & T=573.15K\end{cases}$               |     |     |
| $\left\{ T,T,G \right\}$ | 6   | 500                              | $\gamma(T)$   | $\frac{\gamma}{Z}(T)=\frac{\gamma}{1+6\gamma+8\gamma^2+2\gamma^3}(T)=\begin{cases}  0.083 & T=273.15K  \\  0.082 & T=300K \\  0.076 & T=573.15K  \end{cases}$    |     |     |
| $\left\{ T,G,G \right\}$ | 8   | 1000                             | $\gamma^2(T)$ | $\frac{\gamma^2}{Z}(T)=\frac{\gamma^2}{1+6\gamma+8\gamma^2+2\gamma^3}(T)=\begin{cases}  0.033 & T=273.15K \\  0.036 & T=300K \\  0.046 & T=573.15K  \end{cases}$ |     |     |
| $\left\{ G,G,G \right\}$ | 2   | 1500                             | $\gamma^3(T)$ | $\frac{\gamma^3}{Z}(T)=\frac{\gamma^3}{1+6\gamma+8\gamma^2+2\gamma^3}(T)=\begin{cases}  0.013 & T=273.15K \\  0.015 & T=300K \\  0.028 & T=573.15K  \end{cases}$ |     |     |
d) Polietilene → $n \to +\infty$
Se ho $n$ atomi di $C$, ho 

Casi $\left\{ T, T,\dots,T,T \right\}$ → 1
Casi $\left\{ T,T,\dots,T,G \right\}$ → $2N$
# 4. Proprietà dei Materiali Solidi

## 4.1 Polimeri (Architettura, Proprietà Meccaniche e Tg)

- I *polimeri* sono materiali macromolecolari
	- Ci sono diversi aspetti, su diverse scale, fondamentali per individuare le proprietà del materiale
		- a) Struttura chimica ($10^{-10}m$) → quali atomi formano la catena polimerica? qual'è la sequenza nei legami chimici?
		- b) Conformazione della catena ($10^{9}m$) → disposizione spaziale degli atomi della macromolecola
			- Ci sono conformazioni regolari (polimeri cristallini → es. polietilene isotattico) e irregolari (gomitoli → es. polietilene atattico)
		- c) Organizzazione sovramolecolare → quale struttura hanno le catene polimeriche?
			- Ci sono:
				- i) Polimeri *semi-cristallini* → cristalli tenuti dalle forze di VDW, impaccamenti regolari
				- ii) Polimeri *amorfi* → organizzazione casuale delle molecole
	- Moltissimi in natura (biomolecole) → amidi, proteine, polisaccaridi
		- Un aspetto fondamentale è che le interazioni tra le catene non sono così deboli da rendere le strutture amorfe, ma neanche così forti da non permettere di scioglierli facilmente
			- Le fibre nella direzione dei legami covalenti sono solitamente molto resistenti, ma deboli nell'altra direzione per via delle forze di VDW
	- Si possono classificare in base a diversi fattori
		- a) Regolarità dei monomeri:
			- i) *Omo*-polimero → tutti i monomeri sono identici
			- ii) *Co*-polimero → esistono due o più monomeri diversi
				- Sono interessanti → ci sono moltissime possibilità nell'alternare in diversi modi i monomeri
					- Aggiungo un alto grado di progettabilità del materiale
				- Esistono sia in fase cristallina che amorfa
				- Ci sono alcune sotto categorie:
					- 1) Alternati → $A-B-A-B-\dots$
					- 2) Random
					- 3) A blocchi → $A-A-\dots-A-B-B-\dots-B$
					- 4) Graft (ramificati)
		- b) Nomenclatura:
			- Si parte di solito dall'etilene, dove a uno dei $C$ aggancio un gruppo funzionale (es. stirene, dove ho un benzene al posto di un $H$)
			- Dopodichè il nome del polimero prende il nome del monomero (es. polistirene, anche detto polistirolo)
				- es. Se sostituisco a un $H$ un $Cl$ ottengo il vinil cloruro → il polimero è polivinilcloruro (PVC)
			- Per polimeri con un meccanismo a stadi, il gruppo funzionale caratteristico del polimero gli da il nome
				- es. Gruppo estere → poliestere, gruppo ammide → poliamminide, gruppo uretano → poliuretano
		- c) Struttura delle catene molecolari: ![[scr 2026-10-12 alle 14.00.50.png]]
			- i) *Lineare*
				- Sono facilmente fusibili e di solito danno origine a materiali termoplastici
				- Hanno di solito alta cristallinità
			- ii) *Ramificato* 
				- Ostacola la cristallinità → spesso sono amorfi o con forze intermolecolari deboli
			- iii) *Reticolato*
				- Sono quai sempre amorfi e con forze intermolecolari molto ostacolate
		- d) Proprietà meccaniche:
			- i) *Termoplastici* → il materiale può essere trasformato modificando la temperatura, facendogli impartire una forma desiderata
				- La forte termoplasticità di alcuni polimeri ha dato origine al termine comune "plastica"
				- È un comportamento molto diverso ad esempio rispetto ai metalli, dove per ridurre la rigidità bisogna arrivare a temperature elevatissime
			- ii) *Termoindurenti* → aumentando la temperatura sono deformabili, ma a temperatura ambiente sono molto più rigidi
				- I termoplastici sotto carico costante, a una certa temperatura, può assumere delle deformazioni permanenti
					- Per questo sono stati sviluppati i materiali termoindurenti → si può rallentare questo fenomeno aggiungendo dei vincoli tra le catene, detti *crosslinks*
				- es. Resine, gomme (debolmente), ebanite (fortemente)
	- Altre proprietà:
		- a) *Anisotropia* → il polimero ha proprietà diverse in base alla direzione considerata
			- È dovuto prevalentemente alla differente energia tra legami covalenti (nelle catene) e forze di VDW (tra le catene)
		- b) Conformazione e flessibilità 
			  ![[scr 2026-10-12 alle 14.18.28.png|433]]
			- Se applico una forza su un materiale polimerico, l'approssimazione elastica ($\mathbf{F}=-k\mathbf{x}$) vale fino ad un certo punto
			- Successivamente, si raggiunge un *plateau plastico*, per cui a partire da quello con una forza costante il materiale si deforma moltissimo
				- Nei metalli invece superato una certa sollecitazione, il materiale si frattura
				- Anche i polimeri superata una certa deformazione si fratturano
			- Se la temperatura scende sotto una certa soglia $T_{g}$ (glass temperature), il comportamento plastico viene sostituito da un comportamento *fragile* → superata una soglia di sforzo c'è subito la frattura
				- Più i polimeri hanno gruppi ingombranti (es. benzeni), più la $T_{g}$ si sposta verso l'alto
			- Il materiale si dice *elastomero* quando è termoindurente e i punti di reticolazione sono vincoli allo scorrimento
## 4.2 Cristalli Ionici e Coesione Reticolare (Madelung)

- I *materiali ionici* sono tenuti insieme da interazioni ioniche 
	- Il miglior modello per descrivere il potenziale elettrostatico in un cristallo ionico è stato dato da Madelung
		- Immaginiamo di avere un reticolo infinito, con vettore di simmetria traslazionale $\mathbf{c}$ 
			- Trascuriamo gli effetti di bordo e la presenza di impurità del materiale
		- Prima di addentrarci, immaginiamo di avere un sistema di cariche $\left\{ q_{i} \right\}$ con distanza $r_{ij}=||\mathbf{r_{i}}-\mathbf{r_{j}}||$, esse saranno legate da un'energia potenziale elettrostatica $$V=\sum_{i<j} \frac{1}{4\pi \varepsilon_{0}} \frac{q_{i}q_{j}}{r_{ij}}$$
			- Definisco ora il potenziale elettrostatico $\Phi_{i}$, formato da tutte le molecole tranne la $i$-esima $$\Phi_{i}:=\sum_{j≠i} \frac{1}{4\pi \varepsilon_{0}} \frac{q_{j}}{r_{ij}} \implies  V= \frac{1}{2} \sum_{i} q_{i}\Phi_{i}=:\frac{1}{2}\sum_{i}V_{i}$$dove $V_{i}$ è l'energia potenziale elettrostatica generato da tutto il sistema alla posizione $i$
				- Il fattore $\frac{1}{2}$ nasce dal fatto che sommando i $\Phi_{i}$ considero sia ogni coppia $(i,j)$ che ogni coppia $(j,i)$, quindi ogni coppia è considerata $2$ volte
			- Posso separare cationi e anioni $$V=\frac{1}{2}\left[ \sum_{i}^{N_{+}} V_{i}^+ +\sum_{i}^{N_{-}}V_{i}^-\right]$$dove $V_{i}^{\pm}$ sono le interazioni del catione / anione con tutto il cristallo
			- Ma siccome la struttura cristallina è periodica $V_{i}=V_{j}, \forall i,j$, per cui $$V=\frac{1}{2}[N_{+}V^+ +N_{-}V^-]$$
			- Inoltre, $V_{i}^+$ e $V_{i}^-$ per simmetria infinita del cristallo sono di fatto identici $$V^{+}=V^{-}$$oltre al fatto che $$N_{+}=N_{-}$$per cui $$V=\frac{1}{2}NV_{ion}$$dove $N_{+}+N_{-}:=N$
		- Partiamo ora da uno ione nel cristallo $$V_{ion}= \frac{q^2}{4\pi \varepsilon_{0}R}\sum_{x,y,z\in \mathbb{Z} \setminus \left\{ 0 \right\}} \frac{(-1)^{x+y+z+1}}{\sqrt{ x^2+y^2+z^2 }}$$
			- Sia ora $$\alpha:=-\sum_{x,y,z\in \mathbb{Z} \setminus \left\{ 0 \right\}} \frac{(-1)^{x+y+z+1}}{\sqrt{ x^2+y^2+z^2 }}$$allora $$V_{ion}=- \alpha \frac{q^2}{4\pi \varepsilon_{0}R}$$
			- Nel caso 3d FCC vale che $\alpha=1.7475$
				- Siccome $\alpha$ non è molto maggiore di 1, l'interazione con tutto il cristallo non è molto differente dall'interazione con il vicino
		- Il potenziale ionico è pertanto dato da $$V_{cristallo}=- N\frac{\alpha q^2}{4\pi \varepsilon_{0}R}+ 6N \frac{A}{R^n}+NE_{ion}$$
	- Si potrebbero anche descrivere cristalli di VDW considerando un potenziale di LJ al posto di quello ionico $$V_{cristallo}=\frac{1}{2}NV_{LJ}=\frac{1}{2}N\left[ \frac{A}{R^{12}}\beta-\frac{B}{R^6}\gamma \right]$$
		- In questo caso la serie è fortemente convergente per via delle potenze del denominatore

- Calcolo della struttura vibrazonale di molecole poliatomiche
	- Si può riconoscere dagli spettri vibrazionali delle molecole la loro struttura cristallina

## 4.E Esercitazioni

es. Molecola di butadiene 
```smiles

[H][C:1]([H])=[C:2]([H])[C:3]([H])=[C:4]([H])[H]

```
- Ho solo un grado di libertà $\tau$ tra $C_{2}$ e $C_{3}$
- Si mostra che la conformazione X non è accettabile → gli atomi sono più vicini delle sfere di VDW
	- SI ha che $R_{CC}=1.415 Å$ e $R_{C=C}=1.36 Å$, inoltre $\alpha_{CCC}=120^o$ e $R_{H, VDW}=1.2Å$
	- ...
	- 

perfluoro butadiene
```smiles

F[C](F)=[C](F)[C](F)=[C](F)F

```
- So che:
	- $2R_{F, VDW}=2.8Å$
	- $d_{FF}=$
- Il potenziale di LJ è dato da $$V_{LJ}(R)= \frac{A}{R^{12}}-\frac{B}{R^6}$$dove so che $A=2.51\times 10^{6} \frac{kcal Å}{mol}$ 
	- La distanza di equilibrio è la somma dei raggi di VDW dei due fluori $R_{0}=R_{F, VDW}$
	- Da cui ottengo $$B=\frac{A}{R_{0}^6}=1.04\times 10^{4}\frac{kcalÅ}{mol} $$
	- → Il potenziale alla distanza $d_{FF}$ dei fluori è positivo! $$V_{LJ}^{FF}(d_{FF})= \frac{A}{d_{FF}^{12}}-\frac{B}{d_{FF}^6}=9.5 \frac{kcal}{mol}$$
		- Per cui la conformazione è instabile

es. (TDE) 2-metil pentano 
```smiles

[CH3:1][CH:2](C)[CH2:3][CH2:4][CH3:5]

```
- Considero il legame $C_{1}-C_{2}$ ![[scr 2026-10-13 alle 11.16.33.png]]

# 5. Dinamica Vibrazionale e Modi Normali

## 5.1 Trattazione Matriciale 3N e Disaccoppiamento

(riferimento: documento su Webeep)

- Considero un sistema cartesiano $(x, y, z)$ e un sistema vibrazionale
	- Se usassimo le coordinate cartesiane di ogni atomo, avremmo un sistema di coordinate dipendenti che non rispettano i vincoli $$\mathcal{L}(\left\{ \mathbf{x}_{i} \right\}, \left\{ \dot{\mathbf{x}} \right\}_{i})$$dove $i\in\left\{ 1,\dots,N \right\}$
		- Possiamo innanzitutto organizzare le componenti delle molecole in un unico vettore $$\mathbf{X}=(\mathbf{x}_{1}, \dots, \mathbf{x}_{N})$$
	- L'energia cinetica del sistema sarà data da $$T(\mathbf{X})=\sum_{j=1}^N \frac{1}{2}m_{j}(\dot{x}_{j}^2+\dot{y}_{j}^2+\dot{z}_{j}^2)=\sum_{i=1}^{3N} \tilde{m}_{i}X_{i}^2$$dove $\tilde{\mathbf{m}}=(m_{1},m_{1},m_{1}, m_{2},m_{2},m_{2}, \dots)$
	- Il potenziale invece è $$V(\mathbf{X})=V(\left\{ \mathbf{R} \right\}_{j})$$cioè dei nuclei degli atomi
		- Posso approssimarlo in serie di Taylor in questo modo (al terzo ordine)$$\begin{align}  V(\mathbf{X})=V_{0}+\sum_{i}^{3N}\frac{ \partial V }{ \partial X_{i} }(\mathbf{X}^o)(X_{i}-X_{i}^o) \\  +\frac{1}{2}\sum_{i,j}^{3N}\frac{ \partial^2  V }{ \partial X_{i} \partial X_{j} }(\mathbf{X}^o) (X_{i}-X_{i}^o)(X_{j}-X_{j}^o) \\  +\frac{1}{3!} \sum_{i,j,k} \frac{ \partial^3  V }{ \partial X_{i} \partial X_{j} \partial X_{k}}(\mathbf{X}^o)  (X_{i}-X_{i}^o)(X_{j}-X_{j}^o)(X_{k}-X_{k}^o)  \\  +\dots \end{align}$$
		- Pongo arbitrariamente $V_{0}=0$, inoltre al punto di equilibrio $$\frac{ \partial V }{ \partial \mathbf{X} }(\mathbf{X}^o)=0$$
				- → Posso approssimare $V$ come armonico $$V(\mathbf{X})=\frac{1}{2}\sum_{i,j} (\mathbf{X}-\mathbf{X}^o)^T(F_{ij})(\mathbf{X}-\mathbf{X}^o)$$cioè con una forma quadratica (dove $(\mathrm{F})_{ij}:=\frac{ \partial^2 V }{ \partial X_{i} \partial X_{j}}(\mathbf{X}^o)$ è la matrice Hessiana all'equilibrio)
	- Per cui in forma estesa: $$\mathcal{L}=T-V=\frac{1}{2}\sum_{i}^{3N} \tilde{m}_{i}\dot{X_{i}}^2 -\frac{1}{2} \sum_{i,j} F_{ij}(X_{i}-X_{i}^o)(X_{j}-X_{j}^o) $$
		- Posso sostituire alle coordinate $\mathbf{X}$ le coordinate $$\mathbf{\xi}=(\xi_{1}, \dots, \xi_{3N})=(X_{i}-X_{i}^o, \dots,X_{3N}-X_{3N}^o)$$di equilibrio da cui $$\mathcal{L}=T-V=\frac{1}{2}\sum_{i}^{3N} M_{i}\dot{\xi_{i}}^2 -\frac{1}{2} \sum_{i,j} F_{ij}\xi_{i}\xi_{j} $$
	- In forma matriciale invece: $$\mathcal{L}=T-V=\frac{1}{2} \dot{\mathbf{\xi}}^T\mathrm{M}\mathbf{\xi} -\frac{1}{2} \mathbf{\xi}^T\mathrm{F}\mathbf{\xi}$$
	- Le equazioni di Eulero-Lagrange sono ($\forall k\in \left\{ 1,\dots,3N \right\}$):  $$\frac{d}{dt} \frac{ \partial \mathcal{L} }{ \partial  \dot{\xi_{k}} } - \frac{ \partial \mathcal{L} }{ \partial \xi_{k} }=0 $$
		- Vale che:
		- a) $$\frac{ \partial  }{ \partial  \dot{\xi_{k}} }\left[ \frac{1}{2}\sum _{i} \tilde{m}_{i} \dot{\xi_{k}}^2 \right] = m_{k} \dot{\xi}_{k}$$
		- b) $$\frac{ \partial  }{ \partial \xi_{k} }\left[ \frac{1}{2} \sum_{i,j} F_{ij}\xi_{i}\xi_{k} \right] =\sum_{j} F_{kj}\xi_{j}$$
			- La matrice $H$ è simmetrica dal teorema di Schwartz
		- Per cui da Eeulero-Lagrange: $$m_{k} \ddot{\xi_{k}}+\sum_{j}F_{kj}\xi_{j}=0$$che scritto in forma matriciale: $$\mathrm{M}\ddot{\mathbf{\xi}}+\mathrm{F}\mathbf{\xi}=0$$dove $\mathrm{M}:=diag(m_{1},m_{1},m_{1},\dots,m_{N},m_{N},m_{N})$
		- → È un come un oscillatore armonico a più dimensioni!
		- Oss: le variabili NON sono indipendenti l'una dall'altra → in ogni equazione ci sono tutte le $\xi_{j}$
	- Procedo con un ansatz → provo la soluzione vettoriale $$\mathbf{\xi}=\mathbf{A}\cos(\omega t+\varphi)$$
		- Le derivate sono $$\begin{align}  \dot{\mathbf{\xi}}&=-\omega\mathbf{A}\sin(\omega t+\varphi) \\  \ddot{\mathbf{\xi}}&=-\omega^2\mathbf{A}\cos(\omega t+\varphi)  \end{align}$$
		- Per cui $$\mathrm{M}\ddot{\mathbf{\xi}}+\mathrm{F}\mathbf{\xi}=(\omega^2M\mathbf{A}+F\mathbf{A})\cos(\omega t+\varphi)=0, \,\forall t\in[0, +\infty]$$e segue un problema agli autovettori-autovalori ($\omega$ e $\mathbf{\xi}_{0}$): $$[\mathrm{M}^{-1}\mathrm{F}]\mathbf{A}=\omega^2\mathbf{A}$$
	- Ovviamente i modi di vibrazione sono multipli, legati a tutte le coppie autovettori-autovalori $(\omega_{s}, \mathbf{A}_{s})$
		- Vale la linearità per dei pesi $\alpha_{s}$ → è soluzione: $$\mathbf{\xi}=\sum_{s=1}^{3N} \alpha_{s} \mathbf{A}_{s}\cos(\omega_{s}t+\varphi)$$
		- È molto simile al caso della corda vibrante, ma su più dimensioni
	- Come vibrano le molecole in un modo normale?
		- I vari atomi sono tutti in fase → vibrano tutti secondo la stessa legge temporale $\cos(\omega_{s}t+\varphi)$
		- Ovviamente siccome ci sono più oscillatori contemporanei, ci sarà un oscillatore del tipo figure di Lissajous
	+ Posso disaccoppiare queste equazioni?
		+ Partiamo dalle equazioni $$\begin{cases}  T=\frac{1}{2}\dot{ \mathbf{\xi}}^T\mathrm{M} \dot{\mathbf{\xi}} \\  V= \frac{1}{2}\mathbf{\xi}^T\mathrm{F}\mathbf{\xi}  \end{cases}$$
		+ La prima cosa che faccio è un cambio di coordinate → definisco le *coordinate massa-pesate* $$\mathbf{u}:  \quad u_{i}=\sqrt{ m_{i} }\xi_{i}\implies \dot{u}_{i}=\sqrt{ m_{i} } \dot{\xi}\implies \frac{1}{2}\dot{u}_{i}^2=\frac{1}{2}m_{i}\dot{\xi}^2$$
			+ Potremmo dire informalmente che $$\mathbf{u}=\mathrm{M}^{\frac{1}{2}}\mathbf{\xi}\implies \mathbf{\xi}=\mathrm{M}^{- \frac{1}{2}}\mathbf{u}$$dove definiamo $\mathrm{M}^{\frac{1}{2}}:= diag(\sqrt{ m_{1} }, \sqrt{ m_{1} }, \sqrt{ m_{1} }, \sqrt{ m_{2} }, \dots)$
			+ Pertanto l'energia cinetica si semplifica molto $$T=\frac{1}{2}\dot{\mathbf{\xi}}\mathrm{M}^{\frac{1}{2}}\mathrm{M}^{\frac{1}{2}}\dot{\mathbf{\xi}}=\frac{1}{2} \dot{\mathbf{u}}^T \dot{\mathbf{u}} $$
			+ Per il potenziale invece $$\begin{align}  V&= \frac{1}{2}\mathbf{\xi}^T \mathrm{F} \mathbf{\xi} \\  &=\frac{1}{2} \left( \mathrm{M}^{- \frac{1}{2}}\mathbf{u} \right)^T\mathrm{F}\mathrm{M}^{-\frac{1}{2}}\mathbf{u} \\  &=\frac{1}{2} \mathbf{u}^T\left( \mathrm{M}^{- \frac{1}{2}} \mathrm{F} \mathrm{M}^{- \frac{1}{2}} \right)\mathbf{u}   \\  &= \frac{1}{2 }\mathbf{u}^T\mathrm{W}\mathbf{u} \end{align}$$dove definisco $$\mathrm{W}:=\mathrm{M}^{- \frac{1}{2}} \mathrm{F} \mathrm{M}^{- \frac{1}{2}}$$
				+ Oss: la matrice $\mathrm{W}$ è simmetrica (hermitiana) $$\begin{align}  W_{ij}&=\sum_{kl} M^{- \frac{1}{2}}_{ik}F_{kl}M^{- \frac{1}{2}}_{lj}  \\  &=\sum_{kl} M^{- \frac{1}{2}}_{jl} F_{kl} M^{- \frac{1}{2}}_{ik} \\  &=\sum_{kl} M^{- \frac{1}{2}}_{jl} F_{lk} M^{- \frac{1}{2}}_{ik}  \\  &=W_{ji}\end{align}$$
					+ → Dal teorema spettrale, i suoi autovettori sono ortogonali
						+ Siano gli autovalori-autovettori di $\mathrm{W}$: $$\mathrm{W}\mathbf{l}_{k}=\lambda_{k} \mathbf{l}_{k}$$
						+ Allora le matrici $$\mathrm{L}:=(\mathbf{l}_{1}, \dots, \mathbf{l}_{3N})   \quad \Lambda:=diag(\lambda_{1},\dots,\lambda_{3N})$$soddisfano $$\mathrm{W}\mathrm{L}=\mathrm{\Lambda}\mathrm{L}$$
						+ La matrice $\mathrm{L}$ è ortogonale $$\mathrm{L}^T\mathrm{L}=\mathbb{1}$$
			+ Posso fare un ultimo cambio di coordinate → essendo $$V=\frac{1}{2} \mathbf{u}^T \mathrm{L} \Lambda \mathrm{L}^T \mathbf{u}$$posso definire $$\mathbf{q}:=\mathrm{L}^T\mathbf{u}$$
				+ → Ottengo un potenziale disaccoppiato! $$V=\frac{1}{2}\mathbf{q}^T \Lambda \mathbf{q}$$in quanto $\Lambda$ è diagonale
				+ L'energia cinetica cambia in questo modo $$\begin{align}  T&= \frac{1}{2}\dot{\mathbf{u}}^T \dot{\mathbf{u}} \\  &= \frac{1}{2} (\mathrm{L} \dot{\mathbf{q}})^T \mathrm{L} \dot{\mathbf{q}} \\  &= \frac{1}{2} \dot{\mathbf{q}}^T \mathrm{L}^T\mathrm{L}\dot{\mathbf{q}} \\  &=\frac{1}{2} \dot{\mathbf{q}}^T \dot{\mathbf{q}} \end{align}$$essendo $\mathrm{L}$ ortogonale
		+ → Forma finale delle equazioni: $$\begin{cases}  T= \frac{1}{2} \dot{\mathbf{q}}^T \dot{\mathbf{q}} \\  V=\frac{1}{2} \mathbf{q}^T \Lambda \mathbf{q}  \end{cases}$$
			+ Rispetto a $\mathbf{\xi}$ le variabili $\mathbf{q}$ sono $$\mathbf{q}=\mathrm{L}^T\mathbf{u}=\mathrm{L}^T\mathrm{M}^{\frac{1}{2}}\mathbf{\xi}=\mathrm{L}^T \mathrm{M}^{\frac{1}{2}}(\mathbf{X}-\mathbf{X}^o)$$
			+ Posso riscriverla ora in forma di indici $$\begin{cases}  T= \frac{1}{2 }\sum_{_{i}} \dot{q_{i}}^2 \\  V= \frac{1}{2} \sum_{i} \lambda_{i} q_{i} ^2 \end{cases}$$
		+ In questo modo la risoluzione è molto più semplice → le equazioni di Eulero-Lagrange diventano $$\begin{align}  \frac{d}{dt} & \frac{ \partial \mathcal{L} }{ \partial  \dot{q}_{i} }- \frac{ \partial \mathcal{L} }{ \partial q_{i} }=0   \\  & \implies  \frac{d}{dt} \dot{q}_{i} +\lambda_{i}q_{i}=0 \\ & \implies  \ddot{q}_{i}+\lambda_{i}q_{i}=0  \end{align}$$
			+ Otteniamo pertanto i modi del sistema trovati in precedenza: $$q_{i}(t)=q_{i}^o\cos(\omega_{i} t+\varphi_{i})$$dove $\omega_{i}:=\sqrt{ \lambda_{i} }$
				+ Con una sola coordinata $q_{i}$ spiego il moto normale $i$-esimo di tutto il sistema
		+ → Questa separazione delle variabili ci prepara alla quanto-meccanica! 
			+ L'hamiltoniana, nelle coordinate $(q_{i}, p_{i})$ è $$H=T+V=\sum_{i}\left[ \frac{m_{i}p_{i}^2}{2}+\frac{1}{2}\omega_{i}^2q_{i}^2 \right]=\sum_{i}H_{i}$$

+ Esempio classico → molecola biatomica
	+ Supponiamo di avere le coordinate con il centro dell'atomo 1 nell'origine e l'atomo 2 sull'asse $x$ $$\begin{cases}  x_{1}=\xi_{1} \\  x_{2}=R_{0}+\xi_{2}  \end{cases}$$
	+ La distanza tra i nuclei è data da $$R=x_{2}-x_{1}=\xi_{2}+R_{0}-\xi_{1}\implies R-R_{0}=\xi_{2}-\xi_{1}$$
	+ Pertanto le energie sono date da $$V=\frac{1}{2}k(\xi_{2}-\xi_{1})^2 \quad  \quad T=\frac{1}{2}m_{1}\dot{\xi}_{1}^2+\frac{1}{2}m_{2} \dot{\xi}_{2}^2$$
	+ Posso scrivere le equazioni del moto: $$\begin{cases}  \frac{d}{dt} \frac{ \partial \mathcal{L} }{ \partial \dot{\xi}_{1} } -\frac{ \partial \mathcal{L} }{ \partial \xi_{1} } =0 \\  \frac{d}{dt} \frac{ \partial \mathcal{L} }{ \partial \dot{\xi}_{2} } -\frac{ \partial \mathcal{L} }{ \partial \xi_{2} } =0   \end{cases}\implies \begin{cases}  m_{1}\ddot{\xi}_{1}-k(\xi_{2}-\xi_{1})=0 \\  m_{2} \ddot{\xi}_{2} -k(\xi_{1}-\xi_{2})=0  \end{cases}$$
		+ Sommando le due equazioni ottengo $$m_{1} \ddot{\xi}_{1}+m_{2} \ddot{\xi}_2=0$$
			+ Posso allora definire la coordinata del centro di massa $$x_{CM}:= \frac{m_{1}x_{1}+m_{2}x_{2}}{m_{1}+m_{2}}=\frac{m_{1}\xi_{1}+m_{2}(R_{0}+\xi_{2})}{m_{1}+m_2}$$
			+ Derivandolo $$\ddot{x}_{CM}=\frac{m_{1} \ddot{\xi}_{1}+m_{2} \ddot{\xi}_{2}}{m_{1}+m_{2}}=0$$dall'equazione trovata → una delle due equazioni da il centro di massa che si muove di moto rettilineo uniforme
		+ Facendo la differenza delle due equazioni ottengo $$\ddot{\xi}_{2}- \ddot{\xi}_{1}+k \left( \frac{1}{m_{1}}+\frac{1}{m_{2}} \right)(\xi_{2}-\xi_{1})=0$$
			+ Definendo la massa ridotta $$\frac{1}{\mu}:= \frac{1}{m_{1}}+\frac{1}{m_{2}}$$ottengo $$\ddot{\xi}_{2}- \ddot{\xi}_{1}+ \frac{k}{\mu}(\xi_{2}-\xi_{1})=0$$
			+ Se quindi definisco $$R := \xi_{2}-\xi_{1}$$ottengo $$\ddot{R}+\frac{k}{\mu}R=0$$
		+ → Il sistema nelle coordinate $(x_{CM}, R)$ è facilmente risolvibile $$\begin{cases}  \ddot{R}-\frac{k}{\mu}R=0 \\  \ddot{x}_{CM}=0  \end{cases}\implies \begin{cases}  R(t)=R_{0}+r_{0} \cos (\omega t) \\  x(t)=x_{0}+v_{0}t  \end{cases}$$
			+ Se impongo $x_{CM}=\frac{m_{2}R_{0}}{m_{1}+m_{2}}$ costante ($x_{0}=x_{CM}, v_{0}=0$), ottengo $$\xi_{1}=-\frac{m_{2}}{m_{1}}\xi_{2}\implies R=\xi_{2} \frac{m_{1}+m_{2}}{m_{1}}=\frac{M}{m_{1}}\xi_{2}$$da cui la soluzione temporale per le coordinate  $$\begin{cases}  \xi_{1}(t)=-\frac{m_{2}}{M}r_{0} \cos(\omega t) \\  \xi_{2} (t)=\frac{m_{1}}{M}r_{0} \cos(\omega t) \end{cases}$$
				+ Suppongo ad esempio che in un istante $\bar{t}$, $\cos(\omega \bar{t})>0$, allora:
					+ $\xi_{1}$ si sposta verso sinistra
					+ $\xi_{2}$ si sposta verso destra
					+ Se $m_{1}\gg m_{2}$ allora $|\xi_{2}|\gg |\xi_{1}|$ → atomi pesanti si spostano meno che atomi leggeri
						+ Questo perchè si conserva la posizione del centro di massa
	+ E se utilizzassi l'ansatz generale dei modi normali? 
		+ Separo la configurazione geometrica del modo (vettore degli spostamenti relativi $\mathbf{a}$) dalla dinamica temporale armonica comune (coordinata normale $q(t) = q_{0}\cos(\omega t+\varphi)$): $$\begin{cases} \xi_{1}(t)=a_{1}q_{0}\cos(\omega t+\varphi) \\ \xi_{2}(t)=a_{2}q_{0}\cos(\omega t+\varphi) \end{cases}$$
		+ Calcolo le derivate seconde nel tempo: $$\begin{cases} \ddot{\xi}_{1}(t)=-\omega^2 a_{1}q_{0}\cos(\omega t+\varphi) \\ \ddot{\xi}_{2}(t)=-\omega^2 a_{2}q_{0}\cos(\omega t+\varphi) \end{cases}$$
		+ Sostituisco nel sistema di oscillatori accoppiati: $$\begin{cases} -\omega^2 a_{1}q_{0}\cos(\omega t+\varphi) - \frac{k}{m_{1}}(a_{2}-a_{1})q_{0}\cos(\omega t+\varphi) = 0 \\ -\omega^2 a_{2}q_{0}\cos(\omega t+\varphi) + \frac{k}{m_{2}}(a_{2}-a_{1})q_{0}\cos(\omega t+\varphi) = 0 \end{cases}$$
			+ Semplifico per ogni istante di tempo $t$ il fattore $q_{0}\cos(\omega t+\varphi) \neq 0$: $$\begin{cases} -\omega^2 a_{1} - \frac{k}{m_{1}}(a_{2}-a_{1}) = 0 \\ -\omega^2 a_{2} + \frac{k}{m_{2}}(a_{2}-a_{1}) = 0 \end{cases} \implies \begin{cases} \left( \frac{k}{m_{1}} - \omega^2 \right)a_{1} - \frac{k}{m_{1}}a_{2} = 0 \\ -\frac{k}{m_{2}}a_{1} + \left( \frac{k}{m_{2}} - \omega^2 \right)a_{2} = 0 \end{cases}$$
		+ Posso scrivere questo sistema omogeneo in forma matriciale: $$\begin{pmatrix} \frac{k}{m_{1}}-\omega^2 & -\frac{k}{m_{1}} \\ -\frac{k}{m_{2}} & \frac{k}{m_{2}}-\omega^2 \end{pmatrix} \begin{pmatrix} a_{1} \\ a_{2} \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix}$$
			+ Corrisponde all'equazione del caso generale: $$(\mathrm{M}^{-1}\mathrm{F} - \omega^2 \mathbb{1})\mathbf{a} = \mathbf{0}$$dove $\mathrm{M} = \begin{pmatrix} m_{1} & 0 \\ 0 & m_{2} \end{pmatrix}$ e la matrice delle costanti di forza è $\mathrm{F} = \begin{pmatrix} k & -k \\ -k & k \end{pmatrix}$
		+ Per avere soluzioni non banali ($\mathbf{a} \neq \mathbf{0}$), impongo l'annullamento del determinante: $$\det \begin{pmatrix} \frac{k}{m_{1}}-\omega^2 & -\frac{k}{m_{1}} \\ -\frac{k}{m_{2}} & \frac{k}{m_{2}}-\omega^2 \end{pmatrix} = 0$$
			+ Sviluppando il determinante: $$\left( \frac{k}{m_{1}}-\omega^2 \right)\left( \frac{k}{m_{2}}-\omega^2 \right) - \left( -\frac{k}{m_{1}} \right)\left( -\frac{k}{m_{2}} \right) = 0$$
			+ $$\omega^4 - k\left( \frac{1}{m_{1}} + \frac{1}{m_{2}} \right)\omega^2 + \frac{k^2}{m_{1}m_{2}} - \frac{k^2}{m_{1}m_{2}} = 0 \implies \omega^2 \left[ \omega^2 - k\left( \frac{1}{m_{1}} + \frac{1}{m_{2}} \right) \right] = 0$$
		+ Trovo i due autovalori $\omega^2$ e le corrispondenti forme dei modi (autovettori $\mathbf{a}$):
			+ 1) Modo a frequenza nulla (traslazione rigida): $$\omega_{1}^2 = 0 \implies \omega_{1} = 0$$
				+ Sostituendo $\omega^2 = 0$ nel sistema: $$\frac{k}{m_{1}}a_{1} - \frac{k}{m_{1}}a_{2} = 0 \implies a_{1} = a_{2} \implies \mathbf{a}_{1} = \begin{pmatrix} 1 \\ 1 \end{pmatrix}$$
				+ Gli atomi si muovono all'unisono nella stessa direzione: la distanza internucleare non varia ($\xi_{2} - \xi_{1} = 0 \implies V=0$). È la traslazione pura del baricentro.
			+ 2) Modo di vibrazione puro (stretching): $$\omega_{2}^2 = k\left( \frac{1}{m_{1}} + \frac{1}{m_{2}} \right) = \frac{k}{\mu} \implies \omega_{2} = \sqrt{ \frac{k}{\mu} }$$
				+ Sostituendo $\omega^2 = \frac{k}{\mu}$ nella prima riga del sistema: $$\left[ \frac{k}{m_{1}} - k\left( \frac{1}{m_{1}} + \frac{1}{m_{2}} \right) \right]a_{1} - \frac{k}{m_{1}}a_{2} = 0 \implies -\frac{k}{m_{2}}a_{1} - \frac{k}{m_{1}}a_{2} = 0$$
				+ Moltiplicando per $m_{1}m_{2}/k$: $$m_{1}a_{1} + m_{2}a_{2} = 0 \implies \frac{a_{1}}{a_{2}} = -\frac{m_{2}}{m_{1}} \implies \mathbf{a}_{2} = \begin{pmatrix} -m_{2} \\ m_{1} \end{pmatrix}$$
				+ I due atomi oscillano in opposizione di fase con ampiezze inversamente proporzionali alla propria massa
				+ → La condizione $m_{1}a_{1} + m_{2}a_{2} = 0$ garantisce che il baricentro resti rigorosamente a riposo durante la vibrazione

+ Coordinate interne
	+ Sono utilizzate da spettroscopisti da molto tempo
	+ Immaginiamo di avere una molecola come l'$H_{2}O$ 
		+ Possiamo definire 3 coordinate molto naturali che non sono le coordinate cartesiane, cioè $R_{1}, R_{2}, \alpha$
			+ Sono le stesse coordinate che abbiamo usato anche nel caso degli alcani
	+ → Può aver senso studiare la matrice Hessiana in base alle coordinate interne e non quelle cartesiane $$F_{ij}=\frac{ \partial ^2V }{ \partial R_{i} \partial R_{j} } $$
		+ Wilson è riuscito a calcolare gli elementi di matrice che mettono in relazione le coordinate interne alle coordinate cartesiane $$\mathbf{r}=\mathrm{B}\mathbf{\xi}$$
			+ La matrice $\mathrm{B}$ permette di passare da una rappresentazione all'altra delle coordinate
			+ Notazione → la sua inversa è $$\mathrm{B}^{-1}=\mathrm{A}$$
	+ Usando la base delle coordinate interne, possiamo riscrivere energia cinetica e potenziale
		+ Energia cinetica: $$ T=\frac{1}{2}\dot{\mathbf{\xi}}^T\mathrm{M}\dot{\mathbf{\xi}} =\frac{1}{2} (\mathrm{A}\dot{\mathbf{r}})^T \mathrm{M} (\mathrm{A}\dot{\mathbf{r}}) =\frac{1}{2}\dot{\mathbf{r}}^T\mathrm{G}^{-1}\dot{\mathbf{r}}$$dove $\mathrm{G}:=\mathrm{A}^T\mathrm{M}\mathrm{A}=\mathrm{B}\mathrm{M}^{-1}\mathrm{B}^T$
		+ Energia potenziale: $$V=\frac{1}{2}\mathbf{r}^T\mathrm{F_{R}}\mathbf{r}$$dove $\mathrm{F}_{R}$ è una certa matrice
		+ → L'equazione secolare in coordinate interne diventa $$\mathrm{G}\mathrm{F}_{R}\mathbf{l}_{s}=\omega_{s}^2\mathbf{l}_{s}$$
			+ Il metodo è detto *metodo GF di Wilson*
	+ Come mai erano utilizzate?
		+ Oggi non lo sono molto perchè è facile calcolare direttamente in coordinate cartesiane le varie matrici e i loro autovalori
		+ Tempo fa, grazie alla simmetria, riduceva di molto il peso computazionale della risoluzione
			+ In generale il metodo è molto trasparente alla simmetria
		+ es. Per l'acqua la matrice $\mathrm{F_{R}}$ ha solo 3 numeri diversi $$\mathrm{F_{R}}=\begin{pmatrix} k_{R} & \beta & 0 \\  \beta & k_{R} & 0  \\  0 & 0 & k_{\alpha}  \end{pmatrix}$$
			+ → Per molecole piccole il problema è semplificato
		+ Oss: le pulsazioni in coordinate interne sono le stesse delle coordinate cartesiane
## 5.2 Trattazione quantistica

- L'Hamiltoniana quantistica sarà data da $$\hat{H}=\hat{T}+\hat{V}=\sum_{i} \left[ - \frac{\hbar^2}{2} \frac{ \partial ^2 }{ \partial q_{i}^2 }  +\frac{1}{2}\omega_{i}^2q_{i}^2 \right]=\sum_{i}\hat{H}_{i}$$
	- → Separando le variabili abbiamo potuto definire un'*hamiltoniana vibrazionale* per ogni atomo: $$\hat{H}_{i}=- \frac{\hbar^2}{2} \frac{ \partial ^2 }{ \partial q_{i}^2 }  +\frac{1}{2}\lambda_{i}^2q_{i}^2  $$
	- Il risultato è fortemente collegato al risultato classico ottenuto
		- I modi normali del sistema sono quantisticamente gli autostati di $\hat{H}$ (armonico) $$\hat{H}_{i} \ket{n_{S}} =\varepsilon_{n_{S}}\ket{n_{S}} ,  \quad \varepsilon_{n_{S}}=\hbar \omega_{S}\left( n_{S}+\frac{1}{2} \right)$$
			- Ogni vibrazione può essere scritta come combinazione lineare di questi 
		- L'energia complessiva è pertanto $$E=\sum_{S}\varepsilon_{n_{S}}= \frac{\hbar}{2}\sum_{S}\omega_{S}+ \hbar \sum_{S}n_{S}\omega_{S}$$
## 5.3 Spettroscopia di assorbimento IR

- L'idea è che tramite la spettroscopia IR posso studiare i modi normali delle molecole
	- Setup sperimentale
		- È necessario avere un campione sufficientemente sottile per essere attraversato dall'IR
			- Spesso si utilizza la polvere di alcuni materiali
		- Considero un'intensità $I_{0}(\lambda)$ in ingresso e un'intensità $I(\lambda)\leq I_{0}(\lambda)$ in uscita
			- Ovviamente ciò dipende dal modo normale ($\lambda_{k}, \omega_{k}$)
		- Spesso si usa il numero d'onda vibrazionale $$\tilde{\nu}_{k}=\frac{1}{\lambda_{k}}=\frac{\omega_{k}}{2\pi c}$$
		- Ricordiamo inoltre la trasmittanza del materiale $$T=\frac{I(\lambda _{k})}{I_{0}(\lambda_{k})}$$
			- Tramite la trasmittanza a varie lunghezze d'onda, possiamo capire quali transizioni tra modi normali l'IR eccita
	- Cosa sono lo stato iniziale e finale?
		- Dall'approssimazione di Born-Oppenheimer saranno date dalle componenti elettroniche e nucleari $$\bra{i}=\bra{\psi_{e}^i} \bra{\varphi_{n}^i}   \quad  \quad \ket{f}=\ket{\psi_{e}^f}\ket{\varphi_{n}^f}   $$
			- In particolare, le vibrazioni saranno date (essendo $\hat{H}$ scomponibile nella somma di termini indipendenti) dal prodotto tensoriale di funzioni d'onda a singola variabile $$\ket{\varphi_{n}}=\ket{n_{1}}\ket{n_{2}}\dots \ket{n_{3N-6}}    $$
				- Oss: la singola variabile NON è legata ad un atomo, bensì ad uno dei modi vibrazionali della molecola!
					- Infatti $\ket{n_{i}}=\ket{n_{i}}(q_{i})$ cioè del modo $i-$esimo
		- Siccome le transizioni elettroniche sono molto più energetiche delle transizioni tra vibrazioni della molecola, poniamo che la funzione d'onda elettronica rimanga pressoché invariata $$\bra{\psi_{e}^f}=\bra{\psi_{e}^i}=\bra{\psi _{e}^g}   $$
	- Quanto vale la probabilità di transizione da una vibrazione ad un'altra?  $$\begin{align}  P_{i \to f} \propto \left\lvert  - \mathbf{E}_{0}  \bra{ \varphi_{n}^i} \left[ \mathbf{\mu}_{0}+\sum_{s}\left( \frac{ \partial \mu }{ \partial q_{S} }  \right)_{0}q_{S} \right] \ket{\varphi_{n}^f}      \right\rvert   ^2  \end{align}$$
		- La probabilità della transizione da un modo $i$ a un modo $f$ è dato dalla regola d'oro di Fermi $$P_{i\to f} \propto|\mathcal{L}_{fi}|^2=\lvert \bra{f}\hat{\mathcal{L}}\ket{i} \rvert  ^2 $$dove l'operatore $\hat{\mathcal{L}}=-\mathbf{\mu}\cdot \mathbf{E}$
		- Facendo alcuni passaggi algebrici: $$\begin{align}  P_{i \to f}  & \propto \lvert \bra{\psi_{e}^g} \bra{\phi_{n}^i} - \mathbf{\mu} \cdot \mathbf{E} \ket{\varphi_{n}^f} \ket{\psi_{e}^g}      \rvert^2 \\   & = \lvert - \mathbf{E}_{0} \cdot \bra{\psi_{e}^g} \bra{\varphi_{n}^i} \mathbf{ \mu} \ket{ \varphi_{n}^f}\ket{\psi_{e}^g}      \rvert^2   \\   &  = \lvert - \mathbf{E}_{0} \cdot  \bra{\varphi_{n}^i}\bra{\psi_{e}^g} \mathbf{ \mu}\ket{\psi_{e}^g} \ket{ \varphi_{n}^f}   \rvert^2   \end{align} $$
		- → Posso definire il valore di aspettazione come *dipolo molecolare* $$\bra{\psi_{e}^g}\mathbf{\mu}\ket{\psi_{e}^g} := \mathbf{\mu}(\left\{ \mathbf{q} \right\}) $$
		- Possiamo fare una seconda approssimazione armonica (detta *elettrica*) → sviluppo $\mu$ in serie di Taylor al primo ordine: $$\mathbf{\mu}=\mathbf{\mu}_{0}+\sum_{s}\left( \frac{ \partial \mu }{ \partial q_{S} }  \right)q_{S}$$
### 5.3.1 - Caso monomodo (molecola biatomica)

- Iniziamo per semplicità da un caso mono-modo per molecola biatomica
	- Ho un solo modo $q$ a pulsazione $\omega$
	- Considero uno stato iniziale $\ket{v}$ e uno finale $\ket{w}$ → la probabilità di transizione è $$\begin{align}  P_{v \to w}  & \propto \left\lvert  - \mathbf{E}_{0} \cdot  \bra{v} \left[ \mu_{0}+\left( \frac{ \partial \mu }{ \partial q } \right)_{0}q  \right]  \ket{w}  \right\rvert^2  \\   & = \left\lvert  - \mathbf{E}_{0} \cdot  \left[ \mu_{0} \braket{ v | w }  +\left( \frac{ \partial \mu }{ \partial q } \right)_{0} \bra{v} q   \ket{w}  \right] \right\rvert^2 \end{align}$$
	- Si noti che:
		- a) Termine costante $\mathbf{\mu}_{0}\braket{w|v}$:
			- Per ortonormalità delle autofunzioni, se $w \neq v$, $\braket{w|v} = 0$
			- → Il dipolo permanente non produce alcuna transizione vibrazionale
			- Quando una molecola biatomica per simmetria ha dipolo nullo NON può essere studiata con la spettroscopia IR 
				- es. Molecole come $N_{2}$, $O_{2}$, $H_{2}$ → sono dette IR-inactive
		- b) Termine lineare $\left( \frac{\partial \mathbf{\mu}}{\partial q} \right)_{0} \bra{w}q\ket{v}$:
			- Dalle proprietà dell'oscillatore armonico: $$\bra{w}q\ket{v} \neq 0 \iff w = v \pm 1$$con: $$|\bra{w}q\ket{v}|^2 = \begin{cases} \frac{v+1}{2\gamma} & w = v+1 \quad (\text{assorbimento di un fotone } \hbar\omega) \\ \frac{v}{2\gamma} & w = v-1 \quad (\text{emissione di un fotone } \hbar\omega) \end{cases}$$dove $\gamma := \frac{\omega}{\hbar}$
		- → Regole di selezione $$\left( \frac{ \partial \mu }{ \partial q }  \right)_{0}≠0  \quad \land  \quad \Delta v=\pm1$$
			- Molecole come $CO_{2}$, che all'equilibrio hanno dipolo nullo $\mu_{0}=0$, durante le vibrazioni al cambiare della $\mathbf{q}$ (distanze tra atomi) acquisiscono un dipolo
### 5.3.2 - Caso multimodo (poliatomico)

- Nel caso generale il dipolo è descritto da $3N-6$ coordinate, pertanto $3N-6$ modi normali $$\mu=\mu(\left\{ \mathbf{q} \right\})$$
	- Oss: non sempre il numero di vibrazioni sono $3N-6$
		- Molecole non lineari → $3N-6$
		- Molecole lineari → $3N-5$
			- In questo caso i bending su due piani sono degeneri, hanno la stessa energia
		- I tipi di vibrazioni sono bending, stretching, ...
	- Lo stato iniziale e finale sono dati dal prodotto degli stati dei singoli oscillatori:
		$$\ket{v} = \ket{v_{1}}\dots \ket{v_{3N-6}}, \quad \bra{w} = \bra{w_{1}}\dots \bra{w_{3N-6}}$$
	- Inserendo lo sviluppo al primo ordine del momento di dipolo abbiamo: $$\begin{align}  P_{i \to f} \propto \left\lvert  - \mathbf{E}_{0}  \bra{v_1}\dots \bra{v_{k}}  \dots\bra{v_{3N-6}} \left[ \mathbf{\mu}_{0}+\sum_{s}\left( \frac{ \partial \mu }{ \partial q_{S} }  \right)_{0}q_{S} \right] \ket{w_{3N-6}}\dots \ket{w_{k}}  \dots\ket{w_{1}}     \right\rvert   ^2  \end{align}$$
		- a) Il termine $\mu_{0}$ è una costante, per cui esce dal braket → otteniamo un termine additivo del tipo $$\mu_{0} \braket{ v_{1} | w_{1} } \dots \braket{ v_{k} | w_{k} }\dots \braket{ v_{3N-6} | w_{3N-6} }=0   $$
			- Infatti supponendo che avvenga effettivamente una transizione $$\exists k: \ket{v_{k}}≠ \ket{w_{k}}$$ per ortogonalità quel prodotto $\braket{ v_{k} | w_{k} }=0$ si annulla
			- → Anche in questo caso il termine di ordine zero scompare
		- b) Per la somma dei termini di primo ordine
			- Affinché il termine $s$-esimo sia non nullo, per la regola dell'oscillatore armonico deve essere $w_{s} = v_{s} \pm 1$
			- Inoltre, in nessun altro stato (oltre a $s$) può esserci una transizione, infatti $$\begin{align}    \exists  j≠s & : \ket{v_{j}}≠\ket{w_{j}}\implies \braket{ v_{j} |w_{j}  }=0  \\   & \implies  \bra{v_{S}}\frac{ \partial \mu }{ \partial q_{S} } q_{S} \ket{w_{S}} \braket{ v_{1} | w_{1} } \dots \braket{ v_{k} | w_{k} }=0       \end{align}$$
		- → Un solo fotone eccita una sola transizione alla volta $$\Delta v=w_{s}-v_{s}=\pm1  \quad \land  \quad \ket{v_{k}} =\ket{w_{k}}, \,\,\forall k≠s $$
			- In doppia approssimazione armonica, ogni evento di assorbimento modifica il numero quantico di un solo oscillatore, lasciando intatti tutti gli altri $3N-7$
	- → La forma finale della transizione è $$\begin{align}  P_{i \to f} \propto \left\lvert  \left( \frac{ \partial \mu }{ \partial q_{S} } \right)_{0 }\bra{v_{S}}q \ket{w_{S}}         \right\rvert   ^2  \end{align}$$

+ Cosa cambia nella realtà (senza doppia approssimazione armonica)?
	+ 1) Un fotone può eccitare più di una transizione contemporaneamente, solo non in questa approssimazione
	+ 2) Esistono gli *overtone* → i termini $\frac{ \partial^2 \mu }{ \partial q^2 }$ e superiori non sono trascurabili in alcuni casi
	+ 3) Salti doppi/tripli → i fotoni (con probabilità molto minore) possono anche saltare $\lvert \Delta v \rvert\geq 2$

- x Laboratorio → 
## 5.4 - Spettroscopia Raman

- È stato un grandissimo scienziato indiano, che ha fatto nascere una nuova scuola di spettroscopia IR ($\sim 1928$)
	- Suppongo di avere una luce forte e un prisma → avviene la separazione per diffusione delle varie lunghezze d'onda
	- Raman isola una sola lunghezza d'onda 
		- Anziché vedere un singolo punto sullo schermo, vede una banda di luce, uno spettro con diversi picchi
		- Per la banda centrale $\Delta \lambda_{0}=0$ → scattering elastico Rayleigh
			- È enormemente più probabile rispetto al caso anelastico
		- Per le altre bande $\Delta\lambda≠0$ → scattering anelastico
			- Riesce a collegare questo effetto con l'effetto Compton
			- Il ramo con $\lambda<\lambda_{0}$ è detto *ramo anti-Stokes*, mentre il ramo $\lambda>\lambda_{0}$ è detto *ramo Stokes*
	- → Interpretazione:
		- Date le variazioni di lunghezza d'onda, ipotizza che il fotone abbia eccitato transizioni vibrazionali
		- Immaginiamo di avere una molecola con una sequenza di livelli vibrazionali $\ket{n_{k}}$
			+ Un fotone verde ha energia di circa $\hbar \omega_{0}=2eV$, mentre la separazione dei livelli energetici è molto più piccola di ciò
			+ → La molecola viene eccitata in uno stato non-stazionario, tempo-dipendente (detto *virtuale*)
				+ Decade pertanto dopo un certo $\Delta t$ 
			+ $i$) Caso Stokes: energia stato iniziale $<$ energia stato finale
				+ Ad esempio se parte da $\ket{0_{k}}$ e arriva nel primo stato eccitato $\ket{1_{k}}$,  emette luce $\hbar \omega_{0}-\hbar \omega_{k}$
				+ → Il risultato è uno shift verso il rosso della luce
				+ È molto più comune del caso anti-stokes
					+ Infatti per la distribuzione di Maxwell-Boltzmann il livello $\ket{0_{k}}$ sarà il più popolato
			+ $ii$) Caso Anti-stokes: energia stato iniziale $>$ energia stato finale
				+ Ad esempio se parte da $\ket{1_{k}}$ e atterra anello stato fondamentale, emette luce $\hbar \omega_{0}+\hbar \omega_{k}$
				+ → Il risultato è uno shift verso il viola della luce

+ Come lo si può descrivere con la MQ?
	+ Iniziamo da una trattazione classica
		+ Il dipolo di una molecola viene influenzato dal campo elettromagnetico esterno $\mathbf{E}$ $$\Delta \mu (t)=\mathrm{A}(t)\mathbf{E}(t)$$
			+ La polarizzabilità di una molecola qui è matriciale
		+ Posso sviluppare con Taylor la matrice di polarizzabilità $$\mathrm{A}(t)=\mathrm{A}_{0}+\sum_{k}\left( \frac{ \partial \mathrm{A} }{ \partial q_{k} }  \right)_{0} q_{k}(t) $$
			+ Ed essendo $q_{k}(t)=q_{0}\cos(\omega_{k}t)$: $$\Delta \mu(t)=\left[ \mathrm{A}_{0}+\sum_{k}\left( \frac{ \partial \mathrm{A} }{ \partial q_{k} }  \right)_{0} q_{0}\cos(\omega_{k}t)  \right]\mathbf{E}(t)$$
		+ Prendiamo un caso semplice → molecola biatomica monomodo $(q=q_{0}\cos(\omega _{vib}t))$ e campo elettrico $\mathbf{E}=\mathbf{E}_{0}\cos(\omega_{0}t)$ $$\begin{align}  \Delta \mu(t) & =\left[ \mathrm{A}_{0}+\left( \frac{ \partial \mathrm{A} }{ \partial q }  \right)_{0}q_{0}\cos(\omega_{vib}t) \right]\mathbf{E}_{0}\cos(\omega_{0}t) \\   & =\mathrm{A}_{0}\mathbf{E}_{0}\cos(\omega_{0}t)+\left( \frac{ \partial \mathrm{A} }{ \partial q }  \right)_{0}\mathbf{E_{0}}q_{0}\cos(\omega_{vib}t)\cos(\omega_{0}t) \\  & =\mathrm{A}_{0}\mathbf{E}_{0}\cos(\omega_{0}t)+\frac{1}{2} \left( \frac{ \partial \mathrm{A} }{ \partial q }  \right)_{0}\mathbf{E_{0}}q_{0}[\cos((\omega_{0}-\omega_{vib})t)+\cos((\omega_{0}+\omega_{vib})t)]  \end{align}$$da Werner
			+ Si noti quindi che i due termini in $\cos$ rappresentano i termini Stokes (differenza) e anti-Stokes (somma)
		+ Da aggiungere: fattore di Boltzmann per l'anti-Stokes $$I_{anti}≈ (\omega_{L}+\omega_{M})^4 \left( \frac{ \partial \mathrm{A} }{ \partial Q }  \right)^2_{0}I_{0}(\omega_{L})e^{ - \frac{h\nu_{M}}{k_{B}T} }$$
			+ a) $(\omega_{L}+\omega_{M})^4$ → è dato dall'elettromagnetismo
				+ Dipende dal fatto di avere un dipolo radiante ad una certa frequenza
			+ b) $e^{ - h\nu_{M}/k_{B}T }$ → è il fattore di Boltzmann dato da x
		+ Oss: non valgono quindi le stesse regole della spettroscopia vibrazionale
			+ Nell'approssimazione armonica non posso rilevare vibrazioni se $\left( \frac{ \partial \mu }{ \partial q } \right)_{0}≠0$
			+ Invece nel caso Raman posso rilevare solo se $$\left( \frac{ \partial \alpha }{ \partial q }  \right)_{0}≠\mathrm{O}$$dove $\mathrm{O}$ è la matrice nulla
			+ Le vibrazioni si dividono quindi in 2 gruppi:
				+ a) Vibrazioni Raman-attive 
				+ b) Vibrazioni IR-attive
	+ Trattazione quantistica
		+ È rappresentata dalla formula di Kramers-Heisemberg-Dirac (KHD) $$I_{fi}=\alpha I_{0}\omega_{S}^4 \sum_{\rho\sigma}[\mathrm{A}_{\rho\sigma}]^2_{fi}$$
			+ $\alpha$ racchiude diverse costanti fisiche
			+ $\mathrm{A}$ è la *polarizzabilità di transizione* (simile al dipolo di transizione)
				+ È un operatore che nasce dal bracket di stato iniziale e finale $$[\mathrm{A}_{\rho\sigma}]_{fi}=\frac{1}{\hbar} \sum_{r} \left[ \frac{\bra{f}M_{\rho} \ket{r} \bra{r}M_{\sigma}\ket{i}    }{(\omega_{r}-\omega_{i})-\omega_{0}+i\Gamma_{r}}+ \frac{\bra{f}M_{\rho}\ket{r} \bra{r}M_{\rho}\ket{i}    }{(\omega_{r}-\omega_{i})+\omega_{0}+i\Gamma_{r}} \right]$$
				+ Dati:
					+ Gli stati $r$ sono gli stati eccitati del sistema
					+ $\omega_{0}$ → pulsazione del laser
					+ $\Gamma_{r}$ → termine di smorzamento, è piccolo
				+ Si può calcolare tale somma solo in alcune condizioni particolari 
					+ a) Se $\omega_{0}=\omega_{r}-\omega_{i}$ → condizione di *risonanza*
						+ .
					+ b) Supporre che il laser sia molto lontano da qualsiasi transizione $$\omega_{vib}\ll \omega_{0}\ll \omega_{r}-\omega_{i}$$
						+ In tal caso si ottiene un risultato molto simile a quanto calcolato con il dipolo $$[\mathrm{A}_{\rho\sigma}]≈ [\mathrm{A}_{\rho\sigma}]_{0}+\sum_{k}\left( \frac{ \partial \mathrm{A}_{\rho\sigma} }{ \partial q_{k} }  \right)_{0}q_{k}$$
### 5.4.L Laboratorio Spettroscopia Raman

- Per misurare quanto il materiale assorbe l'IR utilizziamo la grandezza dell'assorbanza
	- Dalla legge di Lambert-Beer vale che  $$A(\lambda):= \log_{10}\left( \frac{1}{T(\lambda)} \right)=\varepsilon_{10}(\lambda)cl$$
		- $l$  → lunghezza della cella attraversata dalla luce
		- $c$ → concentrazione delle molecole
		- $\varepsilon_{10}(\lambda)$ → molar assorbivity 
			- Indica quanto la transizione è in grado di assorbire facilmente fotoni $$\varepsilon_{10} \propto P_{i \to f} \propto \left\lvert   \left( \frac{ \partial \mu }{ \partial q_{S} }  \right)_{0}   \right\rvert^2 $$
	- C'è un approfondimento per capire come si può ricavare dalla regola d'oro di Fermi
## 5.E Esercizi
### 5.E1 Esercitazione 1

es. Simmetria traslazionale in $1D$ → cristallo ionico 1d
- È una fila di ioni $+$ e $-$ alternati
- Sia $R$ la distanza tra due ioni vicini → all'equilibrio sarà $R_{0}$
- Usiamo il potenziale del legame ionico $$V(R_{ij})= \frac{A}{R_{ij}^n} - \frac{kq^2}{R_{ij}}+ \varepsilon_{ion}$$
	- Ci mettiamo come riferimento in uno ione $-$ 
- Domanda → valutare come cambia solo la parte elettrostatica $\left( -\frac{kq^2}{R_{ij}} \right)$ quando inserito in un cristallo monodimensionale
	- Il potenziale totale dello ione riferimento sarà $$V=\sum_{i}V(R_{ij})=-\frac{kq^2}{R}\sum_{i} \frac{n_{i}}{\lambda_{i}}=-\frac{kq^2}{R} \alpha_{M, 1D}$$dove $\alpha_{M, 1D}=\sum_{i} \frac{n_{i}}{\lambda_{i}}$ è la costante di Madelung $\text{1D}$
		- Scritta in altro modo è $$\alpha_{M, 1D}=\sum_{n \in \mathbb{Z}} \frac{(-1)^n}{n}=2\sum_{n \in \mathbb{N}} \frac{(-1)^n}{n}=2\log(2)≈1.386$$con un opportuna commutazione di tali ioni
		- Se non avessimo altri termini, il cristallo collasserebbe → non ci sono altri termini
- Allora devo considerare anche gli altri termini del potenziale ionico (per $N$ atomi) $$V_{xtal}(R)=N\left( -\frac{kq^2}{R}\alpha_{M, 1D}-\frac{A^{\prime} }{R^n} \right)+N\varepsilon_{ion}$$
	- $A^{\prime}=ZA$ dove $Z$ è il numero degli ioni adiacenti → in 1D $$Z=2\implies A^{\prime}=2A$$
	- All'equilibrio $$\frac{dV_{xtal}}{dR}(R_{0})= -\frac{Nkq^2}{R_{0}}\alpha_{M, 1D} \left[ \left( \frac{R_{0}}{R} \right)-\frac{1}{n}\left( \frac{R_{0}}{R} \right)^n \right]$$
- Supponiamo che l'energia di coesione $U=D_{0}=620 \frac{kJ}{mol}$ e $R_{0}=0.282nm$ → calcolare $n$
	- Dalla definizione $$\begin{align}  ND_{0} & =\lim_{ R \to +\infty } [V(R)-V(R_{0})] \\   & =N\varepsilon_{ion}-N\varepsilon_{ion}+\frac{Nkq^2}{R_{0}}\alpha_{M, 1D}\left( 1-\frac{1}{n} \right)  \\   \implies D_{0} & = \frac{kq^2}{R_{0}}\alpha_{M, 1D}\left( 1-\frac{1}{n} \right) \\  \implies  n & =\frac{1}{1- \frac{D_{0}R_{0}}{kq^2\alpha_{M,1D}}}≈ 11 \end{align}$$

es. Cristallo ionico 2D
- Espressione della componente coulombiana del potenziale per i primi 4 termini
	- Scelgo uno ione $-$ come riferimento
	- Il potenziale di tale ione è $$\begin{align}  V(R_{ij}) &  = -\frac{kq^2}{R}\left[\sum_{(m,n)\in\mathbb{Z}^2}\frac{1}{\sqrt{(m+\tfrac12)^2+(n+\tfrac12)^2}}-\sum_{(m,n)\in\mathbb{Z}^2\setminus\{0\}}\frac{1}{\sqrt{m^2+n^2}}\right]  \end{align}$$
	- Quindi fino al quarto termine $$V(R_{ij})≈ -\frac{kq^2}{R}\left[ 4-\frac{4}{\sqrt{ 2 }} -2+\frac{8}{\sqrt{ 5 }}\right]$$
		- Infatti gli $(n_{i}, \lambda_{i})$ sono $$\begin{matrix}  i & n_{i} & \text{coord.} & d_{i} & \lambda_{i} \\  1 & 4 & (1,1) & \sqrt{ 2 } & 1 \\  2 & 4 & (2,0) & -2 & -\sqrt{ 2 } \\  3 & 4 & (2,2) & -2\sqrt{ 2 } & -2 \\  4 & 8 & (3,1) & \sqrt{ 10 } & \sqrt{ 5 }  \end{matrix}$$
	- La formula quindi è $$V_{xtal}(R)=N\left( -\frac{kq^2}{R}\alpha_{M, 2D}-\frac{A^{\prime} }{R^n} \right)+N\varepsilon_{ion}$$con $A^{\prime}=4A$
- Cosa succede se c'è una *vacancy* ? $$\begin{align}  \Delta V_{vac} & =V_{vac}-V_{xtal}=-V_{-}=\frac{kq^2}{R}\alpha_{M, 2D} \\  \implies  V_{xtal, ES} & =(N-1)\left( -\frac{kq^2}{R} \alpha_{M,2D}\right) \end{align}$$
	- E se ne aggiungessi un'altra vicina? (tolgo uno dei $-$ adiacenti)
		- Non solo $N-1 \mapsto N-2$ ma devo anche considerare un termine sottrattivo ad $\alpha_{M, 2D}$, in particolare uno dei termini più grandi
		- Per cui $$V_{vac}=(N-2)\left( -\frac{kq^2}{R}\alpha \right)+\left( -\frac{kq^2}{R} \right)$$
	- E se tolgo un insieme finito di atomi? $$\begin{matrix}  (-)_{2} & (+)_{3} & (-)_{4} \\  (+)_{5} & (-)_{1} & (-)_{6} \\  (-)_{7} & (+)_{8} & (-)_{9}  \end{matrix}$$(ho numerato gli ioni per comodità) $$\Omega=\left\{ (x,y): \sqrt{ x^2+y^2 }\leq 1 \right\}$$(che corrisponde a una circonferenza / quadrato di atomi centrale, i 4 $+$ a distanza $\sqrt{ 2 }$ e i $4$ $-$ a distanza $1$, oltre all'atomo centrale)
		- L'approccio di Madelung NON vale → non tutti gli ioni hanno lo stesso numero di vicini
			- Non vale la simmetria traslazionale e il teorema di Bloch
		- Devo calcolarmi tutte le interazioni possibili
			- Sono: $$\begin{align}  (1,3), (1,5), (1,6), (1,8)  & \to -4 \frac{kq^2}{R} \\ (1,2), (1,4), (1,9) , (1,7) & \to 4\frac{kq^2}{R}  \\  (2,3), (2,5), (3,4), (4,5) & \to -8 \frac{kq^2}{R} \\  (\dots) \end{align}$$
			- Il cluster non è stabile per nessun $R_{0}$ perchè ha solo interazioni di tipo repulsivo

# 6 Simmetrie

- Che cos'è una simmetria?
	- Consideriamo alcuni esempi 
		- I due rami della molecola d'acqua $H_{2}O$ non hanno nessuna ragione per essere diversi
			- Dal punto di vista della fisica di base la simmetria è garantita dall'indistinguibilità delle particelle
		- Il benzene invece ha una simmetria molto più profonda
	- La simmetria è fondamentale in questo settore
		- Ad esempio, si possono scartare alcuni modi vibrazionali sulla base della sola simmetria

+ Elementi di simmetria ed operazioni di simmetria
	+ es. Prendiamo l'$H_{2}O$
		+ In che modo possiamo trasformare la molecola d'acqua nello spazio in modo che ritorni nella posizione iniziale?
		+ L'elemento di simmetria sono assi/piani di simmetria → entità geometriche
			+ Nel caso dell'$H_{2}O$ sono l'asse $z$, il piano $xz$ e il piano $xy$
		+ Le operazioni sono ciò che posso fare che riporti la molecola nella stessa posizione di prima
	+ La stessa molecola può esistere in stati di simmetria diverse
		+ Ad esempio l'etano in configurazione staggered o eclipsed ha diverse simmetria

> [!definition] (Informale)
> Si dice *operazione di simmetria* un'operazione che porta una molecola in una nuova orientazione che appare equivalente a quella originale. 
> Si dice *elemento di simmetria* un punto, una linea o un piano in riferimento a cui l'operazione di simmetria è realizzata

- Quali sono le operazione di simmetria? ![[scr 2026-11-09 alle 09.29.19.png]]
	- 0) *Identità* $E$
		- Simbolo → dal tedesco "einheit" (= unità)
	- 1) *Rotazione* $C_{n}$
		- $n$ è tale che l'operazione di simmetria minima è una rotazione di angolo $\frac{2\pi}{n}$
			- Gli assi di rotazione sono nominati in base alla minima operazione di rotazione che consentono
		- Oss: $C_{1}$ è l'identità
		- Vale anche la notazione $$C_{n}^k:= \underbrace{C_{n} \circ C_{n} \circ \dots \circ C_{n}}_{\text{k volte}}$$
			- Ovviamente $C_{n}^n=E$
	- 2) *Simmetria planare* $\sigma$
		- Si distinguono in:
			- Piano verticale ($\sigma_{v}$) → un piano di simmetria che contiene in sé l'asse di simmetria $C_{n}$ di ordine massimo
			- Piano orizzontale ($\sigma_{h}$) → quando non contiene l'asse di ordine di simmetria massimo
			- Piano diagonale ($\sigma_{d}$) → è un caso particolare di $\sigma_{v}$, in cui non solo contiene l'asse di $C_{n}$ massimo ma biseziona anche l'angolo tra due assi $C_{2}$ perpendicolari a $C_{n}$
		- Ci sono alcuni casi in cui le molecole sono planari → $\sigma$ è in questo caso non sembra applicare nessun risultato ma il vettore $\hat{u}_{z}$ si ribalta
	- 3) *Inversione* $i$
		- Realizza semplicemente in coordinate cartesiane $$\mathbf{x} \xrightarrow{i} -\mathbf{x}$$
	- 4) *Roto-riflessione* $S_{n}=C_{n} \circ \sigma_{h}$
		- Combino una rotazione di un certo angolo attorno ad un asse e rifletto lungo un piano
			- È anche detta *rotazione impropria*
		- Vale inoltre l'identità $$S_{2}=i$$

+ Proprietà delle operazioni di simmetria
	+ a) Deve esistere un'operatore identità $E$ che commuta con tutte le operazioni di simmetria
		+ Oss: le operazioni di simmetria non sono in generale commutative
	+ b) Completezza → il prodotto (composizione) di tutte le operazioni di simmetria è un operatore di simmetria
		+ Questo ci permette di realizzare delle tabelle di moltiplicazione, per capire che effetti ha la composizione di varie operazioni
	+ c) La moltiplicazione di operazioni di simmetria è associativa
	+ d) Per ogni operazione di simmetria, esiste la sua inversa

- Gruppi di simmetria
	- Sono definiti diversi *gruppi puntuali di simmetria*, cioè ![[scr 2026-11-09 alle 09.45.04.png]]
	- Alcuni esempi
		- Benzene → $D_{6h}$ perchè ci sono:
			- $E$ (identità)
			- $2C_{6}$ ortogonali a $\sigma_{h}$
			- $2C_{3}$ ortogonali a $\sigma_{h}$
			- $C_{2}$ ortogonali a $\sigma_{h}$
			- ...

+ C'è una correlazione fondamentale tra i gruppi puntuali di simmetria e i modi normali della molecola
	+ Ogni riga di questa tabella è detta una rappresentazione irriducibile![[scr 2026-11-11 alle 13.38.43.png]]
		+ L'appartenere ad una rappresentazione irriducibile caratterizza le proprietà geometriche della molecola
			+ es. $Li_{2}, N_{2}, \dots$ hanno lo stesso gruppo puntuale di simmetria
			+ Gli orbitali molecolari formano rappresentazioni irriducibili
		+ Siccome i modi normali sono combinazioni lineari delle coordinate di spostamento, avranno anche essi le stesse proprietà di simmetria
	+ Per comprendere bene le implicazioni di ciò, partiamo da un esempio → $H_{2}O$
		+ $H_{1}$ a sx, $O_{3}$ al centro, $H_{2}$ a dx
			+ Ogni atomo ha le sue coordinate $\mathbf{x}_{i}=(x_{i}, y_{i}, z_{i})$ quindi il vettore delle coordinate $$\mathbf{X}:=(\mathbf{x}_{1}, \mathbf{x}_{2}, \mathbf{x}_{3})$$
		+ Suppongo di avere delle matrici (operatori) di operazioni di simmetria tale che $$\mathbf{\xi}^{\prime} =\hat{C}_{2}\mathbf{\xi}$$dove $\hat{C}_{2}\in Mat_{\mathbb{R}}(9,9)$
			+ Partiamo dalla trasformazione degli indici atomici → prima di guardare le coordinate nel dettaglio vediamo gli indici come si scambiano (ad esempio nel caso dell'operazione di simmetria $C_{2}$) $$\begin{pmatrix}  1^{\prime}  \\  2^{\prime}  \\  3^{\prime}   \end{pmatrix}=\mathrm{P}(C_{2}) \begin{pmatrix}  1 \\  2 \\  3  \end{pmatrix}=\begin{pmatrix}  2 \\  1 \\  3   \end{pmatrix}$$dove $P(C_{2})$ è detta *matrice di permutazione*
				+ In questo caso la matrice che realizza tale trasformazione è $$\mathrm{P}=\begin{pmatrix}  0 & 1 & 0 \\  1 & 0 & 0 \\  0 & 0 & 1  \end{pmatrix}$$
				+ Per scambiare quindi le coordinate $\mathbf{x}_{1}, \mathbf{x}_{2}, \mathbf{x}_{3}$ ho bisogno di una matrice a blocchi che faccia $$\begin{pmatrix} -x_{2}  \\ -y_{2}  \\  z_{2}  \\ \hline -x_{1}  \\  -y_{1} \\  z_{1} \\ \hline -x_{3} \\  -y_{3}  \\  z_{3} \end{pmatrix}=\left(\begin{array}{c|c|c}  \mathrm{O} & \mathrm{R}({C_{2}}) & \mathrm{O} \\  \hline \mathrm{R}({C_{2}}) & \mathrm{O} & \mathrm{O}  \\  \hline \mathrm{O} & \mathrm{O} & \mathrm{R}({C_{2}})  \end{array}\right)\begin{pmatrix}  x_{1} \\  y_{1} \\  z_{1} \\ \hline  x_{2} \\  y_{2} \\  z_{2} \\ \hline  x_{3} \\  y_{3} \\  z_{3}  \end{pmatrix}$$dove $$\mathrm{R}({C_{2}})=\begin{pmatrix}  -1 & 0 & 0 \\  0 & -1 & 0 \\  0 & 0 & 1  \end{pmatrix}$$
			+ Possiamo fare questo ragionamento per tutte le operazioni di simmetria 
				+ 1) $\sigma_{xz}$ è tale che $$\hat{\sigma}_{xz}=\begin{pmatrix}  \mathrm{R}(\sigma_{xz}) & \mathrm{O} & \mathrm{O} \\  \mathrm{O} & \mathrm{R}(\sigma_{xz}) & \mathrm{O} \\  \mathrm{O} & \mathrm{O} & \mathrm{R}(\sigma_{xz})  \end{pmatrix}$$dove le matrici di ? e di permutazione sono $$\mathrm{R}(\sigma_{xz})=\begin{pmatrix}  1 & 0 & 0 \\  0 & -1 & 0 \\  0 & 0 & 1  \end{pmatrix}  \quad   \quad \mathrm{P}(\sigma_{xz})=\begin{pmatrix}  1 & 0 & 0 \\  0 & 1 & 0 \\  0 & 0 & 1  \end{pmatrix}$$
					+ Infatti $$\begin{pmatrix}  x_{3} \\  -y_{3} \\  z_{3}  \end{pmatrix}=\mathrm{R}(\sigma_{xz})\begin{pmatrix}  x_{3} \\  y_{3} \\  z_{3}  \end{pmatrix}$$
				+ 2) $\sigma_{yz}$ è tale che $$\hat{\sigma}_{yz}=\begin{pmatrix}  \mathrm{O} & R(\sigma_{yz}) & \mathrm{O} \\  R(\sigma_{yz}) & \mathrm{O} & \mathrm{O} \\  \mathrm{O} & \mathrm{O} & R(\sigma_{yz})  \end{pmatrix}$$dove $$\mathrm{R}(\sigma_{yz})=\begin{pmatrix}  -1 & 0 & 0 \\  0 & 1 & 0  \\  0 & 0 & 1  \end{pmatrix} \quad  \quad \mathrm{P}(\sigma_{yz})=\begin{pmatrix}  0 & 1 & 0  \\  1 & 0 & 0  \\  0 & 0 & 1  \end{pmatrix}$$
				+ 3) $E$ è tale che $$\hat{E}=I_{9} \quad \quad  \mathrm{R}(E)=I_{3}=\mathrm{P}(E)$$
				+ Verificare che queste matrici soddisfano le proprietà dei gruppi di simmetria
		+ Domanda: si possono rappresentare queste trasformazioni con oggetti matematici più semplici?
			+ Cosa succede se applico tali operatori alle singole coordinate? $$\begin{matrix}  &  E & C_{2} & \sigma_{xz} & \sigma_{yz} \\  \hline  x_{3} & x_{3} & -x_{3} & x_{3} & -x_{3} \\  y_{3}  & y_{3} & -y_{3} & -y_{3} & y_{3} \\  z_{3} & z_{3} & z_{3} & z_{3} &  z_{3} \end{matrix}$$detta *tabella dei caratteri*
				+ Le righe sono dette *specie* o *rappresentazioni irriducibili*
				+ Quando una coordinata rimane invariata sotto tutte le operazioni di simmetria del gruppo, si dice *totalsimmetrica* ($A_{1}$)
					+ Si definiscono anche i caratteri (coefficienti della tabella per ogni riga) $\begin{pmatrix}  1 & -1 & 1 & -1  \end{pmatrix}$ ($B_{1}$) e $\begin{pmatrix}  1 & -1 & -1 & 1  \end{pmatrix}$ ($B_{2}$) (non da imparare a memoria, sono tabulati)
		+ Ora introduco le *coordinate di simmetria* $$S_{i}=\sum_{j}U_{ij}\xi_{j}\implies \mathbf{S}=\mathrm{U}\mathbf{\xi}$$per una certa matrice $\mathrm{U}$ ortogonale (unitaria)
			+ L'idea è che per determinate $\mathrm{U}$ trovo tutte le rappresentazioni irriducibili del gruppo
			+ Fissata una certa operazione di simmetria $P$ esiste una certa matrice $\mathrm{D_{\xi}}(P)$ tale che $$\xi^{\prime} =\mathrm{D}_{\xi}(P)\xi$$
				+ Similmente per le coordinate di simmetria $$\mathbf{S}^{\prime} =\mathrm{D_{S}}(P)\mathbf{S}$$
				+ L'idea è che le $\mathrm{D}_{S}$ sono più semplici delle $\mathrm{D}$
			+ Essendo $$\begin{align}   & \mathbf{S}=\mathrm{U}\xi\implies \xi=\mathrm{U}^{-1}\mathbf{S}=\mathrm{U}^{^{\dagger}}\mathbf{S}\implies \xi^{\prime} =\mathrm{D}_{\xi}(P)\mathrm{U}^{^{\dagger}}\mathbf{S} \\  \implies  & \mathbf{S^{\prime} }=(\mathrm{U}\mathrm{D}_{\xi}(P)\mathrm{U}^{^{\dagger}})\mathbf{S}   \end{align}$$
				+ Definendo $$\mathrm{D}_{S}(P)=\mathrm{U}\mathrm{D}_{\xi}(P)\mathrm{U}^{^{\dagger}}$$ho ricavato la legge di trasformazione nelle coordinate $\mathbf{S}$
			+ Ora voglio trovare $\mathrm{U}$ che mi renda $\mathrm{D}_{S}$ più semplice possibile
				+ Per i numeri in cui $\mathrm{U}_{ij}\in \mathbb{R}$, possiamo rendere $\mathrm{D}_{S}$ diagonale
				+ Non ha senso che le coordinate dell'ossigeno siano trasformate → c'è un blocco $\mathrm{I}_{3}$
				+ Per le coordinate $x_{1}$ e $x_{2}$ devo scegliere delle combinazioni lineari che la rendano totalsimmetrica $$\begin{cases}  x^+:=x_{1}+x_{2}=s_{1} \\  x^- :=x_{2}-x_{1} =s_{2} \end{cases}$$e idem per $y$ e $z$
				+ → La matrice è data da $$\mathrm{U}=\left(\begin{array}{c|c|c}  \begin{matrix}  \frac{1}{\sqrt{ 2 }} & 0 & 0 \\  \frac{1}{\sqrt{ 2 }} & 0 & 0 \\  0 & \frac{1}{\sqrt{ 2 }} & 0  \end{matrix} & \begin{matrix}  \frac{1}{\sqrt{ 2 }} & 0 & 0 \\  - \frac{1}{\sqrt{ 2 }} & 0 & 0 \\  0 & \frac{1}{\sqrt{ 2 }} & 0  \end{matrix} & \mathrm{O} \\ \hline \begin{matrix}  0 & \frac{1}{\sqrt{ 2 }} & 0   \\  0 & 0  & \frac{1}{\sqrt{ 2 }}  \\  0 & 0 & \frac{1}{\sqrt{ 2 }} \end{matrix}  & \begin{matrix}  0 & -\frac{1}{\sqrt{ 2 }} & 0 \\  0 & 0 & \frac{1}{\sqrt{ 2 }} \\  0 & 0 & -\frac{1}{\sqrt{ 2 }}  \end{matrix} & \mathrm{O} \\ \hline \mathrm{O} & \mathrm{O} & \mathrm{I}_{3}  \end{array}\right)$$
			+ Data questa $\mathrm{U}$ e queste coordinate $\mathbf{S}$ otteniamo una valutazione irriducibile $$\begin{matrix}   & E & C_{2} & \sigma_{xz} & \sigma_{yz}  \\  \hline S_{1} (x^+) & 1 & -1 & 1 & -1 \\  S_{2} (x^-) & 1 & 1 & 1 & 1 \\  S_{3} (y^+) & 1 & -1 & -1 & 1 \\  S_{4} (y^-) & 1 & 1 & -1 & -1 \\  S_{5} (z^+) & 1 & 1 & 1 & 1 \\  S_{6} (z^-) & 1 & -1 & 1 & -1 \\  S_{7} (x_{3}) & 1 & 1 & 1 & 1 \\  S_{8}(y_{3}) & 1 & 1 & 1 & 1 \\  S_{9}(z_{3}) & 1 & 1 & 1 & 1 \end{matrix}$$
				+ Raggruppando le $S$ con la stessa rappresentazione ottengo i sottoinsiemi → è definita *struttura* della rappresentazione $$\underbrace{\left\{ S_{2}, S_{5}, S_{9} \right\}}_{B_{1}}, \underbrace{\left\{ S_{2}, S_{5}, S_{9} \right\}}_{A_{1}}, \underbrace{\left\{ S_{3}, S_{8} \right\}}_{B_{2}}, \underbrace{\left\{ S_{4} \right\}}_{A_{2}}$$
			+ Anziché partire dalle coordinate cartesiane, però, potrei partire dalle coordinate interne
				+ Per l'$H_{2}O$ dovrebbero bastare le coordinate $$\mathbf{R}=(r_{1}, r_{2}, \alpha)$$
				+ Come visto in precedenza il potenziale è dato da $$V=\frac{1}{2}\mathbf{R}^T\mathrm{F_{R}}\mathbf{R}$$dove la matrice è data per l'acqua da $$\mathrm{F_{R}}=\begin{pmatrix}  k & f & h \\  f & k & h \\  \hline h & h & H  \end{pmatrix}$$
					+ Le costanti di forza si ottengono sperimentalmente a partire dalle frequenze misurate
					+ Senza nessuna considerazione di simmetria, il problema è $3\times 3$ $$\mathrm{G}\mathrm{F_{R}}\mathrm{L}=\mathrm{L}\mathrm{\Lambda}$$
				+ Cerco ora una matrice $\mathrm{D}_{r}(P)$ tale che $$\mathbf{R}^{\prime} =\mathrm{D}_{r}(P)\mathbf{R}$$
					+ Possiamo constatare semplicemente che $$\begin{align}  C_{2} & =\begin{pmatrix}  0 & 1 & 0 \\  1 & 0 & 0 \\  0 & 0 & 1  \end{pmatrix}  \\  \\   \sigma_{xz}  & = \begin{pmatrix}    1 & 0 & 0 \\  0 & 1 & 0 \\  0 & 0 & 1\end{pmatrix}  \\   \\  \sigma_{yz}  & =\begin{pmatrix}  0 & 1 & 0 \\  1 & 0 & 0 \\  0 & 0 & 1  \end{pmatrix} \end{align}$$
				+ Anche in questo caso le rappresentazioni $3 \times 3$ sono riducibili, introducendo le coordinate di simmetria $$\mathbf{S}=\mathrm{U}\mathbf{R}$$
					+ Chimicamente $\alpha$ e $r_{i}$ saranno disaccoppiati (può trasformarsi solo in sé stessa)
				+ Anche in questo caso proponiamo delle coordinate di questo tipo $$\begin{cases}  s_{1}=\frac{1}{\sqrt{ 2 }}(r_{1}+r_{2}) \\  s_{2}=\frac{1}{\sqrt{ 2 }}(r_{1}-r_{2}) \\  s_{3}=\alpha  \end{cases} \implies \mathrm{U}=\begin{pmatrix}  \frac{1}{\sqrt{ 2 }} & \frac{1}{\sqrt{ 2 }} & 0 \\  \frac{1}{\sqrt{ 2 }} & -\frac{1}{\sqrt{ 2 }} & 0 \\  0 & 0 & 1  \end{pmatrix}$$
				+ Calcoliamo quindi il prodotto matriciale esplicito per $C_{2}$: $$\begin{aligned} \mathrm{D}_{s}(C_{2}) &= \mathrm{U}\,\mathrm{D}_{r}(C_{2})\,\mathrm{U}^T \\ &= \begin{pmatrix}  \frac{1}{\sqrt{2}} & \frac{1}{\sqrt{2}} & 0 \\  \frac{1}{\sqrt{2}} & -\frac{1}{\sqrt{2}} & 0 \\  0 & 0 & 1  \end{pmatrix} \begin{pmatrix} 0 & 1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 1 \end{pmatrix} \begin{pmatrix} \frac{1}{\sqrt{2}} & \frac{1}{\sqrt{2}} & 0 \\ \frac{1}{\sqrt{2}} & -\frac{1}{\sqrt{2}} & 0 \\ 0 & 0 & 1 \end{pmatrix} \\ &= \begin{pmatrix} \frac{1}{\sqrt{2}} & \frac{1}{\sqrt{2}} & 0 \\ \frac{1}{\sqrt{2}} & -\frac{1}{\sqrt{2}} & 0 \\ 0 & 0 & 1 \end{pmatrix} \begin{pmatrix} \frac{1}{\sqrt{2}} & -\frac{1}{\sqrt{2}} & 0 \\ \frac{1}{\sqrt{2}} & \frac{1}{\sqrt{2}} & 0 \\ 0 & 0 & 1 \end{pmatrix} \\ &= \begin{pmatrix}  1 & 0 & 0 \\  0 & -1 & 0 \\  0 & 0 & 1  \end{pmatrix} = \mathrm{diag}(1, \, -1, \, 1) \end{aligned}$$
					+ Allo stesso modo $$\begin{align}  \mathrm{D}_{s}(E)=\text{diag}(1, 1, 1)   \\    \mathrm{D}_{s}(\sigma_{xz})=\text{diag}(1, 1, 1) \\    \mathrm{D}_{s}(\sigma_{yz})=\text{diag}(-1, 1, 1)    \end{align}$$
				+ Ci accorgiamo quindi che $$\begin{align}  S_{1}\in A_{1}  & \to \text{stretching simmetrico} \\  S_{2}\in B_{1}  & \to \text{stretching antisimmetrico}  \\  S_{3} \in A_{1}  & \to \text{bending} \end{align}$$
				+ 