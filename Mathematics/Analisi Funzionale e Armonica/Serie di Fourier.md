---
title: "Serie di Fourier e Metodi Ortogonali"
domain: "math/fourier-analysis"
source_course: "Analisi 2 (Cap. 10) & Analisi 3 (Cap. 3.12-3.16)"
tags:
  - math/fourier/trigonometric-series
  - math/fourier/hilbert-spaces
  - math/fourier/bessel-parseval
  - math/fourier/legendre-polynomials
  - math/fourier/pde-applications
---
## 1. Serie Trigonometriche di Fourier
### Introduzione e definizioni fondamentali

L'idea cardine dell'analisi armonica è che ogni funzione $2\pi$-periodica (o comunque periodica di periodo assegnato) possa essere decomposta ed espressa mediante una combinazione lineare infinita (serie) di funzioni trigonometriche fondamentali elementari (seni e coseni).

> [!definition] Serie trigonometrica
> Si definisce **serie trigonometrica** una serie di funzioni della forma:
> $$
> \frac{a_0}{2} + \sum_{n=1}^{+\infty} \left( a_n \cos(nx) + b_n \sin(nx) \right)
> $$
> dove $\{a_n\}_{n \in \mathbb{N}}$ e $\{b_n\}_{n \in \mathbb{N}^+}$ sono successioni di numeri reali detti coefficienti della serie.

> [!note] Questione aperta sulla convergenza
> A priori, assegnate due generiche successioni numeriche $\{a_n\}$ e $\{b_n\}$, non si conoscono le proprietà di convergenza (puntuale, uniforme, $L^2$) di tale serie. Per stabilire sotto quali condizioni la serie converga e rappresenti una funzione assegnata $f(x)$, occorre indagare le proprietà algebriche e geometriche delle funzioni trigonometriche.

> [!definition] Polinomio trigonometrico
> Fissato $N \in \mathbb{N}$, si definisce **polinomio trigonometrico di grado al più $N$** la somma finita:
> $$
> S_N(x) := \frac{a_0}{2} + \sum_{n=1}^N \left( a_n \cos(nx) + b_n \sin(nx) \right)
> $$
> con $\{a_n\}_{n=0}^N, \{b_n\}_{n=1}^N \subset \mathbb{R}$.
>
**Proprietà elementari:**
1. **Periodicità:** Se la serie trigonometrica converge ad una funzione somma $f(x)$ per ogni $x \in \mathbb{R}$, allora $f(x)$ è necessariamente una funzione periodica di periodo $2\pi$:
   $$
   f(x + 2\pi) = f(x) \quad \forall x \in \mathbb{R}
   $$
   poiché ogni termine $\cos(nx)$ e $\sin(nx)$ è $2\pi$-periodico.

### Proprietà di ortogonalità del sistema trigonometrico

Le funzioni trigonometriche soddisfano proprietà di ortogonalità rispetto al prodotto scalare standard nello spazio funzionale $L^2([-\pi, \pi])$.

> [!proposition] Relazioni di ortogonalità del sistema trigonometrico
> Per ogni $n, m \in \mathbb{N}$ valgono le seguenti identità di integrazione sull'intervallo fondamentale $[-\pi, \pi]$:
> 
> 1. **Integrale dei singoli termini armonici:**
>    $$
>    \int_{-\pi}^\pi \cos(nx) \, dx = \int_{-\pi}^\pi \sin(nx) \, dx = 0 \qquad \forall n \ge 1
>    $$
> 
> 2. **Ortogonalità incrociata fra armoniche distinte:**
>    $$
>    \int_{-\pi}^\pi \cos(nx) \cos(mx) \, dx = 0 \qquad \forall n \neq m
>    \int_{-\pi}^\pi \sin(nx) \sin(mx) \, dx = 0 \qquad \forall n \neq m
>    \int_{-\pi}^\pi \cos(nx) \sin(mx) \, dx = 0 \qquad \forall n, m \in \mathbb{N}
>    $$
> 
> 3. **Normalizzazione dei quadrati:**
>    $$
>    \int_{-\pi}^\pi \cos^2(nx) \, dx = \int_{-\pi}^\pi \sin^2(nx) \, dx = \pi \qquad \forall n \ge 1
>    $$
>    Mentre per $n = 0$:
>    $$
>    \int_{-\pi}^\pi \cos^2(0 \cdot x) \, dx = \int_{-\pi}^\pi 1 \, dx = 2\pi
>    $$

> [!quote]- Dimostrazione
> Si verificano le identità separatamente:
> 
> **Punto 1:** Per $n \ge 1$, per primitiva diretta e periodicità:
> $$
> \int_{-\pi}^\pi \cos(nx) \, dx = \left[ \frac{\sin(nx)}{n} \right]_{-\pi}^\pi = \frac{\sin(n\pi) - \sin(-n\pi)}{n} = 0
> \int_{-\pi}^\pi \sin(nx) \, dx = \left[ -\frac{\cos(nx)}{n} \right]_{-\pi}^\pi = -\frac{\cos(n\pi) - \cos(-n\pi)}{n} = 0
> $$
> 
> **Punto 2:** Dalle formule trigonometriche di addizione e sottrazione:
> $$
> \cos((n+m)x) = \cos(nx)\cos(mx) - \sin(nx)\sin(mx)
> \cos((n-m)x) = \cos(nx)\cos(mx) + \sin(nx)\sin(mx)
> $$
> Sommando e sottraendo tali relazioni si ottengono le formule di Werner:
> $$
> \cos(nx)\cos(mx) = \frac{1}{2} \left[ \cos((n+m)x) + \cos((n-m)x) \right]
> \sin(nx)\sin(mx) = \frac{1}{2} \left[ \cos((n-m)x) - \cos((n+m)x) \right]
> $$
> Integrando su $[-\pi, \pi]$ con $n \neq m$, gli argomenti $n+m \neq 0$ e $n-m \neq 0$ sono interi non nulli, dunque per il Punto 1:
> $$
> \int_{-\pi}^\pi \cos(nx)\cos(mx) \, dx = \frac{1}{2} \left[ \int_{-\pi}^\pi \cos((n+m)x) \, dx + \int_{-\pi}^\pi \cos((n-m)x) \, dx \right] = 0 + 0 = 0
> \int_{-\pi}^\pi \sin(nx)\sin(mx) \, dx = \frac{1}{2} \left[ \int_{-\pi}^\pi \cos((n-m)x) \, dx - \int_{-\pi}^\pi \cos((n+m)x) \, dx \right] = 0 - 0 = 0
> $$
> Per il prodotto misto $\cos(nx)\sin(mx)$, la funzione integranda è dispari poiché prodotto di una funzione pari ($\cos$) per una funzione dispari ($\sin$). Essendo integrata sull'intervallo simmetrico $[-\pi, \pi]$, l'integrale è identicamente nullo per ogni $n, m$:
> $$
> \int_{-\pi}^\pi \cos(nx) \sin(mx) \, dx = 0
> $$
> 
> **Punto 3:** Ricordando le identità di bisezione $\cos^2(\theta) = \frac{1 + \cos(2\theta)}{2}$ e $\sin^2(\theta) = \frac{1 - \cos(2\theta)}{2}$:
> $$
> \int_{-\pi}^\pi \cos^2(nx) \, dx = \frac{1}{2} \int_{-\pi}^\pi (1 + \cos(2nx)) \, dx = \frac{1}{2} (2\pi) + \frac{1}{2} \cdot 0 = \pi
> \int_{-\pi}^\pi \sin^2(nx) \, dx = \frac{1}{2} \int_{-\pi}^\pi (1 - \cos(2nx)) \, dx = \frac{1}{2} (2\pi) - \frac{1}{2} \cdot 0 = \pi
> $$
> Il sistema trigonometrico risulta pertanto ortogonale su $[-\pi, \pi]$. $\blacksquare$
>
### Derivazione dei coefficienti di Fourier

Si supponga che la serie trigonometrica converga **uniformemente** sull'intervallo $[-\pi, \pi]$ ad una funzione continua $f \in C^0([-\pi, \pi])$:
$$
f(x) = \frac{a_0}{2} + \sum_{n=1}^{+\infty} \left( a_n \cos(nx) + b_n \sin(nx) \right)
$$
Per isolare un generico coefficiente $a_k$ (con $k \in \mathbb{N}$ fissato), si moltiplicano ambo i membri per $\cos(kx)$ e si integra termine a termine su $[-\pi, \pi]$ (operazione lecita grazie all'ipotesi di convergenza uniforme):
$$
\int_{-\pi}^\pi f(x) \cos(kx) \, dx = \int_{-\pi}^\pi \cos(kx) \left[ \frac{a_0}{2} + \sum_{n=1}^{+\infty} (a_n \cos(nx) + b_n \sin(nx)) \right] dx
$$
Scambiando serie ed integrale:
$$
\int_{-\pi}^\pi f(x) \cos(kx) \, dx = \frac{a_0}{2} \int_{-\pi}^\pi \cos(kx) \, dx + \sum_{n=1}^{+\infty} a_n \int_{-\pi}^\pi \cos(nx) \cos(kx) \, dx + \sum_{n=1}^{+\infty} b_n \int_{-\pi}^\pi \sin(nx) \cos(kx) \, dx
$$
Applicando le proprietà di ortogonalità:
- Se $k = 0$, poiché $\cos(0 \cdot x) = 1$:
  $$
  \int_{-\pi}^\pi f(x) \, dx = \frac{a_0}{2} \int_{-\pi}^\pi 1 \, dx + \sum_{n=1}^{+\infty} 0 = \frac{a_0}{2} (2\pi) = \pi a_0 \implies a_0 = \frac{1}{\pi} \int_{-\pi}^\pi f(x) \, dx
  $$
- Se $k \ge 1$, tutti gli integrali della serie si annullano ad eccezione dell'unico termine per cui $n = k$:
  $$
  \int_{-\pi}^\pi f(x) \cos(kx) \, dx = 0 + a_k \int_{-\pi}^\pi \cos^2(kx) \, dx + 0 = a_k \cdot \pi \implies a_k = \frac{1}{\pi} \int_{-\pi}^\pi f(x) \cos(kx) \, dx
  $$
Procedendo analogamente moltiplicando per $\sin(kx)$ con $k \ge 1$:
$$
\int_{-\pi}^\pi f(x) \sin(kx) \, dx = b_k \int_{-\pi}^\pi \sin^2(kx) \, dx = b_k \cdot \pi \implies b_k = \frac{1}{\pi} \int_{-\pi}^\pi f(x) \sin(kx) \, dx
$$

> [!definition] Coefficienti di Fourier per funzioni $2\pi$-periodiche
> Sia $f: \mathbb{R} \to \mathbb{R}$ una funzione $2\pi$-periodica, integrabile secondo Riemann sull'intervallo fondamentale $[-\pi, \pi]$ ($f \in \mathcal{R}([-\pi, \pi])$). Si definiscono **coefficienti di Fourier** di $f$ i numeri reali:
> $$
> \begin{align}
> a_k &:= \frac{1}{\pi} \int_{-\pi}^\pi f(x) \cos(kx) \, dx \qquad (k \ge 0) \\
> b_k &:= \frac{1}{\pi} \int_{-\pi}^\pi f(x) \sin(kx) \, dx \qquad (k \ge 1)
> \end{align}
> $$
> La serie trigonometrica costruita con tali coefficienti si dice **serie di Fourier associata ad $f$** e si denota formalmente con:
> $$
> f(x) \sim \frac{a_0}{2} + \sum_{k=1}^{+\infty} \left( a_k \cos(kx) + b_k \sin(kx) \right)
> $$
> Il simbolo $\sim$ rimarca che l'esistenza dei coefficienti non garantisce a priori che la serie converga ad $f(x)$ puntualmente.
>
### Estensione a funzioni con periodo generico $T$ e parità

Se la funzione $f$ ha periodo generico $T > 0$ ed è integrabile sull'intervallo fondamentale simmetrico $\left[ -\frac{T}{2}, \frac{T}{2} \right]$ (oppure su $[0, T]$), la pulsazione fondamentale vale $\omega = \frac{2\pi}{T}$. 

> [!note] Formule di Fourier per periodo generico $T$
> Per $f \in \mathcal{R}\left(\left[ -\frac{T}{2}, \frac{T}{2} \right]\right)$, $T$-periodica, i coefficienti di Fourier sono definiti da:
> $$
> \begin{align}
> a_k &= \frac{2}{T} \int_{-T/2}^{T/2} f(x) \cos\left( \frac{2\pi}{T} k x \right) dx \qquad (k \ge 0) \\
> b_k &= \frac{2}{T} \int_{-T/2}^{T/2} f(x) \sin\left( \frac{2\pi}{T} k x \right) dx \qquad (k \ge 1)
> \end{align}
> $$
> e la relativa serie di Fourier assume la forma:
> $$
> f(x) \sim \frac{a_0}{2} + \sum_{k=1}^{+\infty} \left[ a_k \cos\left( \frac{2\pi}{T} k x \right) + b_k \sin\left( \frac{2\pi}{T} k x \right) \right]
> $$

> [!note] Invarianza per traslazione dell'integrale di funzioni periodiche
> Se $f$ è $T$-periodica e integrabile, l'integrale su qualsiasi intervallo di ampiezza pari al periodo $T$ ha lo stesso valore:
> $$
> \int_0^T f(x) \, dx = \int_a^{a+T} f(x) \, dx \qquad \forall a \in \mathbb{R}
> $$

**Semplificazioni per funzioni pari e dispari**

Sfruttando le proprietà di simmetria dell'intervallo $[-\pi, \pi]$ (o $[-T/2, T/2]$):
1. **Funzione pari ($f(-x) = f(x)$):**
   - Il prodotto $f(x) \cos(kx)$ è pari, quindi:
     $$
     a_k = \frac{2}{\pi} \int_0^\pi f(x) \cos(kx) \, dx
     $$
   - Il prodotto $f(x) \sin(kx)$ è dispari, quindi:
     $$
     b_k = \frac{1}{\pi} \int_{-\pi}^\pi f(x) \sin(kx) \, dx = 0 \qquad \forall k \ge 1
     $$
   La serie di Fourier di una funzione pari contiene **soltanto termini cosinusoidali**:
   $$
   f(x) \sim \frac{a_0}{2} + \sum_{k=1}^{+\infty} a_k \cos(kx)
   $$

2. **Funzione dispari ($f(-x) = -f(x)$):**
   - Il prodotto $f(x) \cos(kx)$ è dispari, quindi:
     $$
     a_k = 0 \qquad \forall k \ge 0
     $$
   - Il prodotto $f(x) \sin(kx)$ è pari, quindi:
     $$
     b_k = \frac{2}{\pi} \int_0^\pi f(x) \sin(kx) \, dx
     $$
   La serie di Fourier di una funzione dispari contiene **soltanto termini sinusoidali**:
   $$
   f(x) \sim \sum_{k=1}^{+\infty} b_k \sin(kx)
   $$

### Forma esponenziale complessa delle serie di Fourier

Facendo ricorso alla formula di Eulero per i numeri complessi $e^{i\theta} = \cos\theta + i\sin\theta$:
$$
e^{in\theta} = \cos(n\theta) + i\sin(n\theta), \qquad e^{-in\theta} = \cos(n\theta) - i\sin(n\theta)
$$
da cui si ricavano le espressioni delle funzioni trigonometriche reali:
$$
\cos(n\theta) = \frac{e^{in\theta} + e^{-in\theta}}{2}, \qquad \sin(n\theta) = \frac{e^{in\theta} - e^{-in\theta}}{2i}
$$
Sostituendo queste formule nella serie di Fourier reale:
$$
\begin{align}
\frac{a_0}{2} + \sum_{n=1}^{+\infty} \left( a_n \cos(nx) + b_n \sin(nx) \right) &= \frac{a_0}{2} e^{i \cdot 0 \cdot x} + \sum_{n=1}^{+\infty} \left[ a_n \frac{e^{inx} + e^{-inx}}{2} + b_n \frac{e^{inx} - e^{-inx}}{2i} \right] \\
&= \frac{a_0}{2} + \sum_{n=1}^{+\infty} \left[ \left( \frac{a_n}{2} - \frac{b_n}{2} i \right) e^{inx} + \left( \frac{a_n}{2} + \frac{b_n}{2} i \right) e^{-inx} \right] \\
&= \sum_{n=-\infty}^{+\infty} c_n e^{inx}
\end{align}
$$
dove i coefficienti complessi $c_n \in \mathbb{C}$ sono definiti per ogni $n \in \mathbb{Z}$ da:
$$
c_n = \begin{cases}
\frac{a_n - i b_n}{2} & n > 0 \\
\frac{a_0}{2} & n = 0 \\
\frac{a_{-n} + i b_{-n}}{2} & n < 0
\end{cases}
$$
Poiché per $f$ reale si ha $a_{-n} = a_n$ e $b_{-n} = -b_n$, risulta la proprietà di simmetria hermitiana $c_{-n} = \overline{c_n}$. Un'altra notazione largamente utilizzata (in analogia con la trasformata di Fourier) è $\hat{f}(n) := c_n$.

> [!proposition] Relazioni di ortogonalità degli esponenziali complessi
> La famiglia di funzioni $\{e^{inx}\}_{n \in \mathbb{Z}}$ soddisfa la relazione di ortogonalità su $[-\pi, \pi]$:
> $$
> \int_{-\pi}^\pi e^{inx} e^{-imx} \, dx = \int_{-\pi}^\pi e^{i(n-m)x} \, dx = \int_{-\pi}^\pi \cos((n-m)x) \, dx + i \int_{-\pi}^\pi \sin((n-m)x) \, dx = 2\pi \delta_{nm}
> $$
> dove $\delta_{nm}$ denota la delta di Kronecker.

**Calcolo dei coefficienti in forma esponenziale**
Ipotizzando convergenza uniforme della serie $f(x) = \sum_{n=-\infty}^{+\infty} c_n e^{inx}$, moltiplicando per $e^{-imx}$ ed integrando termine a termine su $[-\pi, \pi]$:
$$
\int_{-\pi}^\pi f(x) e^{-imx} \, dx = \sum_{n=-\infty}^{+\infty} c_n \int_{-\pi}^\pi e^{inx} e^{-imx} \, dx = \sum_{n=-\infty}^{+\infty} c_n (2\pi \delta_{nm}) = 2\pi c_m
$$
Si ottiene così l'espressione compatta per i coefficienti di Fourier complessi:

> [!definition] Coefficienti di Fourier in forma esponenziale
> Sia $f \in \mathcal{R}([-\pi, \pi])$ una funzione $2\pi$-periodica. I **coefficienti di Fourier in forma esponenziale** sono dati da:
> $$
> c_n = \hat{f}(n) := \frac{1}{2\pi} \int_{-\pi}^\pi f(x) e^{-inx} \, dx \qquad \forall n \in \mathbb{Z}
> $$
> e la corrispondente serie di Fourier in forma esponenziale è:
> $$
> f(x) \sim \sum_{n=-\infty}^{+\infty} c_n e^{inx}
> $$
>

Una volta espressa la serie in forma esponenziale complessa, è naturale indagare come la regolarità analitica della funzione $f$ influenzi la velocità con cui i coefficienti $c_n$ decadono all'infinito.


### Regolarità delle Funzioni e Decadimento dei Coefficienti

> [!proposition] Coefficienti di Fourier della derivata debole
> Sia $f \in AC\left(\left[-\frac{T}{2}, \frac{T}{2}\right]\right)$ una funzione assolutamente continua che soddisfa la condizione periodica di bordo:
> $$
> f\left(-\frac{T}{2}\right) = f\left(\frac{T}{2}\right)
> $$
> Siano $a_k, b_k$ i coefficienti di Fourier trigonometrici di $f$, e siano $a_k', b_k'$ i coefficienti di Fourier della derivata debole $f'$ 
> Allora i coefficienti della derivata sono legati a quelli di $f$ dalle relazioni:
> $$
> a_k' = \frac{2k\pi}{T} b_k, \qquad b_k' = -\frac{2k\pi}{T} a_k \quad \forall k \in \mathbb{N}\setminus\{0\}, \qquad a_0' = 0
> $$
> In forma complessa, indicando con $\widehat{f'_k}$ il $k$-esimo coefficiente della derivata, vale:
> $$
> \widehat{f'_k} = i \frac{2\pi k}{T} \hat{f}_k \iff \hat{f}_k = -\frac{i T}{2\pi k} \widehat{f'_k}
> $$

> [!quote]- Dimostrazione
> Calcoliamo direttamente il coefficiente $a_k'$ integrando per parti nell'intervallo simmetrico:
> $$
> a_k' = \frac{2}{T} \int_{-T/2}^{T/2} f'(x) \cos\left( \frac{2k\pi}{T} x \right) dx
> $$
> Applicando l'integrazione per parti:
> $$
> a_k' = \frac{2}{T} \left[ f(x) \cos\left( \frac{2k\pi}{T} x \right) \right]_{-T/2}^{T/2} + \frac{2}{T} \frac{2k\pi}{T} \int_{-T/2}^{T/2} f(x) \sin\left( \frac{2k\pi}{T} x \right) dx
> $$
> Il termine al bordo si annulla identicamente in virtù della periodicità di $f$ e della parità del coseno:
> $$
> \left[ f(x) \cos\left( \frac{2k\pi}{T} x \right) \right]_{-T/2}^{T/2} = f\left(\frac{T}{2}\right) \cos(k\pi) - f\left(-\frac{T}{2}\right) \cos(-k\pi) = \cos(k\pi) \left[ f\left(\frac{T}{2}\right) - f\left(-\frac{T}{2}\right) \right] = 0
> $$
> Riconoscendo l'integrale residuo come la definizione di $b_k$, si ottiene:
> $$
> a_k' = \frac{2k\pi}{T} \left( \frac{2}{T} \int_{-T/2}^{T/2} f(x) \sin\left(\frac{2k\pi}{T} x\right) dx \right) = \frac{2k\pi}{T} b_k
> $$
> Per il termine fondamentale costante ($k = 0$):
> $$
> a_0' = \frac{2}{T} \int_{-T/2}^{T/2} f'(x)\,dx = \frac{2}{T} \left[ f\left(\frac{T}{2}\right) - f\left(-\frac{T}{2}\right) \right] = 0
> $$
> Procedendo in maniera del tutto analoga per i coefficienti dei seni $b_k'$:
> $$
> b_k' = \frac{2}{T} \int_{-T/2}^{T/2} f'(x) \sin\left( \frac{2k\pi}{T} x \right) dx = \frac{2}{T} \left[ f(x) \sin\left( \frac{2k\pi}{T} x \right) \right]_{-T/2}^{T/2} - \frac{2}{T} \frac{2k\pi}{T} \int_{-T/2}^{T/2} f(x) \cos\left( \frac{2k\pi}{T} x \right) dx
> $$
> Il termine di bordo svanisce poiché $\sin(\pm k\pi) = 0$ e $f$ è limitata, lasciando:
> $$
> b_k' = -\frac{2k\pi}{T} a_k \quad \forall k \in \mathbb{N}\setminus\{0\}
> $$
> Sintetizzando nel formalismo complesso:
> $$
> \widehat{f'_k} = \frac{a_k' - i b_k'}{2} = \frac{1}{2} \left( \frac{2k\pi}{T} b_k + i \frac{2k\pi}{T} a_k \right) = i \frac{2k\pi}{T} \left( \frac{a_k - i b_k}{2} \right) = i \frac{2\pi k}{T} \hat{f}_k
> $$
> da cui invertendo segue immediatamente:
> $$
> \hat{f}_k = -\frac{i T}{2\pi k} \widehat{f'_k} \qquad \forall k \ne 0
> $$
> Il risultato è così dimostrato. $\blacksquare$

> [!note] Decadimento asintotico nei regimi di Sobolev $H^m$
> Sia $f \in L^2\left(\left[-\frac{T}{2}, \frac{T}{2}\right]\right)$ una funzione le cui derivate deboli fino all'ordine $m$ appartengono anch'esse ad $L^2$:
> $$
> f', f'', \dots, f^{(m)} \in L^2\left(\left[-\frac{T}{2}, \frac{T}{2}\right]\right) \iff f \in H^m\left(\left[-\frac{T}{2}, \frac{T}{2}\right]\right)
> $$
> con condizioni di periodicità al bordo per tutte le derivate fino all'ordine $m-1$.
> Iterando $m$ volte la relazione di derivazione, per ogni $k \ne 0$ si ha:
> $$
> \widehat{f^{(m)}_k} = \left( i \frac{2\pi k}{T} \right)^m \hat{f}_k \implies \hat{f}_k \propto \frac{1}{k^m} \widehat{f^{(m)}_k} = o\left( \frac{1}{k^m} \right) \quad \text{per } |k| \to +\infty
> $$
> La stima $o(1/k^m)$ deriva dal fatto che, appartenendo $f^{(m)}$ ad $L^2$, la disuguaglianza di Bessel impone:
> $$
> \sum_{k \in \mathbb{Z}} \left| \widehat{f^{(m)}_k} \right|^2 < +\infty \implies \lim_{|k| \to +\infty} \widehat{f^{(m)}_k} = 0
> $$

> [!proposition] Decadimento classico dei coefficienti di Fourier
> Sia $f \in C^m([0, T])$ con $m \in \mathbb{N}$ tale che:
> - $f^{(i)}(0) = f^{(i)}(T) \quad \forall i = 1, \dots, m$
> - $f^{(m)}$ sia regolare a tratti nell'intervallo $[0, T]$.
> 
> Allora la serie dei coefficienti pesati converge assolutamente:
> $$
> \sum_{k \in \mathbb{Z}} |k|^m |\hat{f}_k| < +\infty
> $$

> [!note] Lo spazio di Hilbert $L^2_T(\mathbb{R})$
> Ai fini della teoria delle serie di Fourier e della risoluzione di equazioni differenziali con dati periodici, è naturale estendere i risultati dallo spazio $L^2\left(\left[-\frac{T}{2}, \frac{T}{2}\right]\right)$ allo spazio delle funzioni $T$-periodiche localmente integrabili al quadrato:
> $$
> L^2_T(\mathbb{R}) := \left\{ f \in L^2_{\text{loc}}(\mathbb{R}) : f \text{ è } T\text{-periodica, ossia } f(x + T) = f(x) \text{ q.o.} \right\}
> $$
> Munito del prodotto scalare ereditato dall'intervallo fondamentale:
> $$
> (f, g)_{L^2_T(\mathbb{R})} := \int_{-T/2}^{T/2} f(x) \overline{g(x)}\,dx
> $$
> lo spazio $(L^2_T(\mathbb{R}), (\cdot, \cdot))$ è uno **spazio di Hilbert completo**, isometricamente isomorfo a $L^2\left(\left[-\frac{T}{2}, \frac{T}{2}\right]\right)$.
>

### Teoremi di convergenza delle serie di Fourier

Per stabilire quando la serie di Fourier converga effettivamente alla funzione generatrice $f(x)$, si introduce la classe delle funzioni regolari a tratti.

> [!definition] Funzione regolare a tratti
> Sia $f: \left[ -\frac{T}{2}, \frac{T}{2} \right] \to \mathbb{R}$. La funzione $f$ si dice **regolare a tratti** se:
> 1. $f$ è limitata su $\left[ -\frac{T}{2}, \frac{T}{2} \right]$;
> 2. Esiste una partizione finita $P = \{x_0 = -T/2, x_1, \dots, x_N = T/2\}$ tale che per ogni intervallo aperto $(x_{i-1}, x_i)$ con $i = 1, \dots, N$:
>    - $f$ è continua e derivabile in $(x_{i-1}, x_i)$;
>    - Esistono finiti i limiti destro e sinistro di $f$ in tutti i nodi:
>      $$
>      \lim_{x \to x_i^+} f(x) \in \mathbb{R}, \qquad \lim_{x \to x_i^-} f(x) \in \mathbb{R}
>      $$
>    - Esistono finiti i limiti destro e sinistro della derivata prima $f'$ in tutti i nodi:
>      $$
>      \lim_{x \to x_i^+} f'(x) \in \mathbb{R}, \qquad \lim_{x \to x_i^-} f'(x) \in \mathbb{R}
>      $$

> [!note] Integrabilità
> Ogni funzione regolare a tratti ha un insieme finito di punti di discontinuità di prima specie (salti) o punti angolosi; pertanto essa è limitata con discontinuità di misura nulla ed è integrabile secondo Riemann: $f \in \mathcal{R}\left(\left[ -\frac{T}{2}, \frac{T}{2} \right]\right)$.
>
**Convergenza puntuale (Teorema di Dirichlet)**

> [!theorem] Teorema di convergenza puntuale di Dirichlet
> Sia $f: \mathbb{R} \to \mathbb{R}$ una funzione $T$-periodica, regolare a tratti sull'intervallo $\left[ -\frac{T}{2}, \frac{T}{2} \right]$. Allora la serie di Fourier di $f$ converge puntualmente per ogni $x_0 \in \mathbb{R}$ al valor medio del salto (semisomma dei limiti destro e sinistro):
> $$
> \frac{a_0}{2} + \sum_{n=1}^{+\infty} \left[ a_n \cos\left( \frac{2\pi}{T} n x_0 \right) + b_n \sin\left( \frac{2\pi}{T} n x_0 \right) \right] = \frac{f(x_0^+) + f(x_0^-)}{2}
> $$
> dove:
> $$
> f(x_0^+) := \lim_{x \to x_0^+} f(x), \qquad f(x_0^-) := \lim_{x \to x_0^-} f(x)
> $$

> [!note] Convergenza nei punti di continuità
> Se $x_0$ è un punto di continuità per $f$ (in particolare se $f \in C^0$), si ha $f(x_0^+) = f(x_0^-) = f(x_0)$, e la serie di Fourier converge esattamente al valore della funzione:
> $$
> f(x_0) = \frac{a_0}{2} + \sum_{n=1}^{+\infty} \left( a_n \cos(nx_0) + b_n \sin(nx_0) \right)
> $$

> [!example] Esempio (Onda a dente di sega e calcolo dei coefficienti)
> Si consideri la funzione $f(x) = x$ definita sull'intervallo $(-\pi, \pi)$ ed estesa per $2\pi$-periodicità su tutto $\mathbb{R}$.
>
> - **Parità:** $f(x)$ è una funzione dispari, pertanto $a_n = 0$ per ogni $n \ge 0$.
> - **Calcolo di $b_n$:**
>   $$
>   b_n = \frac{1}{\pi} \int_{-\pi}^\pi x \sin(nx) \, dx = \frac{2}{\pi} \int_0^\pi x \sin(nx) \, dx
>   $$
>   Integrando per parti:
>   $$
>   b_n = \frac{2}{\pi} \left( \left[ -\frac{x \cos(nx)}{n} \right]_0^\pi + \frac{1}{n} \int_0^\pi \cos(nx) \, dx \right)
>   $$
>   Poiché $\int_0^\pi \cos(nx) \, dx = \left[ \frac{\sin(nx)}{n} \right]_0^\pi = 0$, rimane:
>   $$
>   b_n = \frac{2}{\pi} \left( -\frac{\pi \cos(n\pi)}{n} - 0 \right) = -\frac{2}{n} (-1)^n = \frac{2}{n} (-1)^{n+1}
>   $$
> - **Serie di Fourier ottenuta:**
>   $$
>   f(x) \sim \sum_{n=1}^{+\infty} \frac{2}{n} (-1)^{n+1} \sin(nx)
>   $$
> - **Verifica della convergenza uniforme:**
>   Ci si domanda se tale serie converga uniformemente su $[-\pi, \pi]$. Valutando la convergenza totale:
>   $$
>   \sum_{n=1}^{+\infty} \sup_{x \in [-\pi, \pi]} \left| \frac{2}{n} (-1)^{n+1} \sin(nx) \right| = \sum_{n=1}^{+\infty} \frac{2}{n} = +\infty
>   $$
>   La serie dei sup diverge (serie armonica). Inoltre, poiché la funzione limite $f(x)$ presenta discontinuità di salto nei punti $x = (2k+1)\pi$ mentre i termini parziali sono funzioni continue, la convergenza **non può essere uniforme** sull'intero intervallo compatto $[-\pi, \pi]$ (fenomeno di Gibbs ai bordi).
>
**Convergenza uniforme (totale)**

> [!proposition] Condizione sufficiente per la convergenza uniforme
> Siano $\{a_n\}_{n=1}^{+\infty}$ e $\{b_n\}_{n=1}^{+\infty}$ i coefficienti di Fourier di una funzione $f$. Se le serie numeriche dei valori assoluti dei coefficienti convergono:
> $$
> \sum_{n=1}^{+\infty} |a_n| < +\infty \qquad \text{e} \qquad \sum_{n=1}^{+\infty} |b_n| < +\infty
> $$
> allora la serie di Fourier:
> $$
> \frac{a_0}{2} + \sum_{n=1}^{+\infty} \left( a_n \cos(nx) + b_n \sin(nx) \right)
> $$
> converge totalmente, e dunque uniformemente ed assolutamente, su tutto $\mathbb{R}$ ad una funzione continua $f \in C^0(\mathbb{R})$.

> [!quote]- Dimostrazione
> Si applica il criterio di Weierstrass (convergenza totale). Per ogni $n \ge 1$ e per ogni $x \in \mathbb{R}$, applicando la disuguaglianza triangolare e sapendo che $|\cos(nx)| \le 1$ e $|\sin(nx)| \le 1$:
> $$
> \sup_{x \in [-T/2, T/2]} |a_n \cos(nx) + b_n \sin(nx)| \le \sup_{x} |a_n \cos(nx)| + \sup_{x} |b_n \sin(nx)| = |a_n| + |b_n|
> $$
> Sommando su $n$:
> $$
> \sum_{n=1}^{+\infty} \sup_{x \in [-T/2, T/2]} |a_n \cos(nx) + b_n \sin(nx)| \le \sum_{n=1}^{+\infty} |a_n| + \sum_{n=1}^{+\infty} |b_n| < +\infty
> $$
> Essendo la serie maggiorata da una serie numerica convergente a termini positivi, per il teorema di Weierstrass la serie di funzioni converge totalmente. La convergenza totale implica la convergenza uniforme e assoluta; poiché ogni termine della serie è una funzione continua, la funzione somma $f$ è continua su $\mathbb{R}$. $\blacksquare$
>

## 2. Serie di Fourier in Spazi di Hilbert

La convergenza puntuale e uniforme, per quanto intuitive, risultano inadeguate a cogliere la vera struttura geometrica soggiacente: per questo è necessario abbandonare la topologia classica e passare allo spazio di Hilbert delle funzioni a quadrato integrabile $L^2$.

### Struttura di Hilbert di $L^2$ e prodotto scalare pesato

Dalla [[Misura e Integrazione di Lebesgue#2.11. Gli spazi $L p$|teoria dell'integrazione di Lebesgue]], lo spazio $L^2([a, b])$ è lo spazio vettoriale delle classi di equivalenza di funzioni a quadrato integrabile (identificate quasi ovunque rispetto alla misura di Lebesgue). Munito della norma $L^2$:
$$
\|f\|_{L^2} = \left( \int_a^b |f(x)|^2 \, dx \right)^{1/2}
$$
esso è uno spazio metrico completo per il [[Misura e Integrazione di Lebesgue#^559b85|Teorema di Riesz-Fischer]]. A differenza dei generici spazi $L^p$ con $p \ne 2$, $L^2$ soddisfa l'identità del parallelogramma ed è pertanto uno **spazio di Hilbert** dotato di prodotto interno canonico.

Nelle applicazioni specifiche all'analisi di Fourier sull'intervallo fondamentale $[-\pi, \pi]$, risulta conveniente adottare il **prodotto scalare pesato**:

> [!definition] Prodotto scalare e norma pesata su $L^2([-\pi, \pi])$
> Si definisce il prodotto scalare normalizzato su $L^2([-\pi, \pi])$:
> $$
> \langle f, g \rangle_{L^2} := \frac{1}{\pi} \int_{-\pi}^\pi f(x) g(x) \, dx
> $$
> e la corrispondente norma indotta (in media quadratica):
> $$
> \|f\|_{L^2} := \sqrt{\langle f, f \rangle_{L^2}} = \sqrt{\frac{1}{\pi} \int_{-\pi}^\pi f^2(x) \, dx}
> $$
> Tale fattore di scala $\frac{1}{\pi}$ garantisce che le funzioni armoniche elementari $\{\cos(nx), \sin(nx)\}_{n \ge 1}$ abbiano norma esattamente unitaria.

> [!proposition] Ortonormalità del sistema trigonometrico pesato
> Rispetto al prodotto scalare pesato $\langle \cdot, \cdot \rangle_{L^2}$ su $[-\pi, \pi]$, l'insieme delle funzioni trigonometriche:
> $$
> \mathcal{B} = \left\{ \frac{1}{\sqrt{2}}, \cos(nx), \sin(nx) \right\}_{n \in \mathbb{N}^+}
> $$
> costituisce un sistema ortonormale in $L^2([-\pi, \pi])$. I coefficienti di Fourier coincidono esattamente con le proiezioni ortogonali sui versori di base:
> $$
> a_n = \langle f, \cos(nx) \rangle_{L^2} = \frac{1}{\pi} \int_{-\pi}^\pi f(x) \cos(nx) \, dx, \qquad b_n = \langle f, \sin(nx) \rangle_{L^2} = \frac{1}{\pi} \int_{-\pi}^\pi f(x) \sin(nx) \, dx
> $$
> Analogamente, nel campo complesso, il sistema riscalato $\mathcal{C} = \left\{ \frac{1}{\sqrt{2\pi}} e^{inx} \right\}_{n \in \mathbb{Z}}$ costituisce una base ortonormale complessa.
>
> [!note] Separabilità di $L^2$
> Poiché le basi ortonormali $\mathcal{B}$ e $\mathcal{C}$ hanno cardinalità numerabile:
> $$
> \operatorname{card}(\mathcal{B}) = \operatorname{card}(\mathcal{C}) = \aleph_0 = \operatorname{card}(\mathbb{N})
> $$
> lo spazio di Hilbert funzionale $L^2([-\pi, \pi])$ ammette una base hilbertiana numerabile ed è pertanto uno spazio **separabile** (ammette un sottoinsieme denso numerabile, formato dalle combinazioni lineari a coefficienti razionali dei versori di base).

### Sistemi ortogonali e ortonormali

> [!note] Basi negli spazi funzionali a dimensione infinita
> Com'è fatta una **base** in uno spazio di Hilbert? Quanto è "grande"?
> Per rispondere a queste questioni fondamentali si estende il concetto di decomposizione ortonormale dagli spazi vettoriali euclidei agli spazi di Hilbert a dimensione infinita.

> [!note] Sistema ortogonale e ortonormale
> Si ricordi che in uno spazio vettoriale dotato di prodotto scalare $(\mathcal{H}, (\cdot, \cdot))$, un insieme di vettori $\{u_n\}_{n \in I} \subset \mathcal{H}$ si definisce:
> - **Sistema ortogonale** se i vettori sono a due a due ortogonali:
>   $$
>   (u_i, u_j) = 0 \quad \forall i \ne j
>   $$
> - **Sistema ortonormale** se i vettori sono a due a due ortogonali e hanno ciascuno norma unitaria:
>   $$
>   (u_i, u_j) = \delta_{ij} = \begin{cases} 1 & \text{se } i = j \\ 0 & \text{se } i \ne j \end{cases}
>   $$

> [!example] Sistemi ortonormali in $\mathbb{R}^n$
> Nello spazio euclideo $\mathcal{H} = \mathbb{R}^n$, la famiglia dei primi $m$ versori della base canonica $\{\mathbf{e_i}\}_{i=1, \dots, m}$ con $m \le n$ è un sistema ortonormale:
> $$
> (\mathbf{e_i}, \mathbf{e_j}) = \delta_{ij}
> $$
>
### Lo spazio delle successioni $\ell^2$

> [!definition] Spazio di successioni $\ell^p$
> Sia $p \in [1, +\infty)$. Si definisce lo spazio delle successioni reali $p$-sommabili:
> $$
> \ell^p := \left\{ \{x_n\}_{n \in \mathbb{N}} \subset \mathbb{R} : \sum_{n=1}^{+\infty} |x_n|^p < +\infty \right\}
> $$
> Di particolare importanza, quale analogo discreto degli spazi funzionali $L^p$, è lo spazio delle successioni di quadrato sommabile $\ell^2$ ($p = 2$).

^5e88cf

> [!theorem] Struttura di Hilbert di $\ell^2$
> Lo spazio $\ell^2$ è uno spazio di Hilbert se corredato del prodotto interno:
> $$
> (x, y) = \sum_{n=1}^{+\infty} x_n y_n
> $$
> che induce la norma naturale di successione:
> $$
> \|x\| = \sqrt{\sum_{n=1}^{+\infty} x_n^2}
> $$

> [!note] Convergenza del prodotto interno tramite Cauchy-Schwarz
> Una volta verificato che $(\cdot, \cdot)$ possiede le proprietà formali di prodotto scalare, la disuguaglianza di Cauchy-Schwarz assicura l'assoluta convergenza della serie numerica:
> $$
> \sum_{n=1}^{+\infty} |x_n y_n| \le \left( \sum_{n=1}^{+\infty} x_n^2 \right)^{\frac{1}{2}} \left( \sum_{n=1}^{+\infty} y_n^2 \right)^{\frac{1}{2}} = \|x\|_{\ell^2} \|y\|_{\ell^2} < +\infty \quad \forall x, y \in \ell^2
> $$

> [!note] L'analogia geometrica $\ell^2 = \mathbb{R}^\infty$
> In un certo senso si può pensare che "$\ell^2 = \mathbb{R}^\infty$". Infatti, si verifica immediatamente che costituisce un sistema ortonormale in $\ell^2$ la famiglia dei versori coordinati:
> $$
> \{\mathbf{e_n}\}_{n \in \mathbb{N}} \quad \text{con} \quad \mathbf{e_n} = (\underbrace{0, \dots, 0}_{n-1 \text{ elementi}}, 1, 0, \dots)
> $$
> per i quali $(\mathbf{e_n}, \mathbf{e_m}) = \delta_{nm}$.
>

### Coefficienti e serie di Fourier astratte

> [!definition] Coefficienti di Fourier e serie di Fourier
> Sia $(\mathcal{H}, (\cdot, \cdot))$ uno spazio di Hilbert e sia $\{u_n\}_{n \in I} \subset \mathcal{H}$ un sistema ortonormale al più numerabile ($I \subseteq \mathbb{N}$).
> Per ogni vettore $u \in \mathcal{H}$, si definiscono:
> - **Coefficiente di Fourier:** lo scalare:
>   $$
>   \hat{u}_k := (u, u_k)
>   $$
>   di $u$ rispetto all'elemento $u_k$ del sistema $\{u_n\}_{n \in I}$, per ogni $k \in I$;
> - **Serie di Fourier:** la serie formale di vettori:
>   $$
>   \sum_{n \in I} (u, u_n) u_n
>   $$
>   di $u$ rispetto al sistema ortonormale assegnato $\{u_n\}_{n \in I}$.

> [!example] Decomposizione in serie di Fourier in $\mathbb{R}^3$ e in $\ell^2$
> - **In $\mathcal{H} = \mathbb{R}^3$:**
>   Considerata la base ortonormale canonica $\{\mathbf{e_1}, \mathbf{e_2}, \mathbf{e_3}\}$, la serie di Fourier di un generico vettore $\mathbf{v} \in \mathbb{R}^3$ coincide con la sua decomposizione lungo gli assi coordinati:
>   $$
>   (\mathbf{v} \cdot \mathbf{e_1}) \mathbf{e_1} + (\mathbf{v} \cdot \mathbf{e_2}) \mathbf{e_2} + (\mathbf{v} \cdot \mathbf{e_3}) \mathbf{e_3} = v_1 \mathbf{e_1} + v_2 \mathbf{e_2} + v_3 \mathbf{e_3} = \mathbf{v}
>   $$
> - **In $\mathcal{H} = \ell^2$:**
>   Sia $x = \{x_n\}_{n \in \mathbb{N}} \in \ell^2$. Il prodotto interno con il generico versore $\mathbf{e_k}$ estrae la componente $k$-esima:
>   $$
>   (x, \mathbf{e_k}) = x_k
>   $$
>   Considerando il solo primo versore $\{\mathbf{e_1}\}$, la serie di Fourier troncata fornisce:
>   $$
>   (x, \mathbf{e_1}) \mathbf{e_1} = x_1 \mathbf{e_1} = \{x_1, 0, 0, \dots\}
>   $$
>   Troncando ai primi $N$ versori $\{\mathbf{e_n}\}_{n=1, \dots, N}$, la somma parziale della serie di Fourier vale:
>   $$
>   \sum_{n=1}^N (x, \mathbf{e_n}) \mathbf{e_n} = \{x_1, \dots, x_N, 0, \dots\}
>   $$

> [!note] Ortogonalità e lineare indipendenza
> In $\mathbb{R}^n$, se due vettori non nulli sono ortogonali $\mathbf{v} \cdot \mathbf{w} = 0$, essi sono necessariamente linearmente indipendenti. Tale proprietà algebrica sussiste identica in qualunque spazio di Hilbert a dimensione finita o infinita.

> [!proposition] Lineare indipendenza dei sistemi ortogonali
> Sia $(\mathcal{H}, (\cdot, \cdot))$ uno spazio di Hilbert e sia $\{u_n\}_{n \in I} \subset \mathcal{H}$ un insieme ortogonale di vettori non nulli in $\mathcal{H}$.
> Allora la famiglia $\{u_n\}_{n \in I}$ è **linearmente indipendente**, ovvero:
> $$
> \sum_{n \in I} \alpha_n u_n = 0 \iff \alpha_n = 0 \quad \forall n \in I
> $$
> (intendendo la combinazione lineare estesa a qualsiasi sottoinsieme finito di indici).

> [!quote]- Dimostrazione
> Sia $J \subset I$ un generico sottoinsieme finito di indici tale che $\sum_{n \in J} \alpha_n u_n = 0$.
> Fissato un qualunque indice $j \in J$, valutiamo il prodotto interno con il vettore $u_j$:
> $$
> 0 = (u_j, 0) = \left( u_j, \sum_{n \in J} \alpha_n u_n \right) = \sum_{n \in J} \alpha_n (u_j, u_n) = \alpha_j \|u_j\|^2
> $$
> Poiché per ipotesi i vettori del sistema sono non nulli, $\|u_j\|^2 > 0$ (e nel caso ortonormale $\|u_j\| = 1$), da cui si deduce:
> $$
> \alpha_j = 0 \quad \forall j \in I. \quad \blacksquare
> $$
>

### Convergenza della serie di Fourier e proiezione ortogonale

> [!note] Relazione tra elementi dello spazio e serie di Fourier
> Si pone la questione fondamentale circa la relazione tra un vettore $u \in \mathcal{H}$ e la somma della sua serie di Fourier:
> $$
> u \in \mathcal{H} \quad \longleftrightarrow \quad \sum_{n \in I} (u, u_n) u_n \quad ?
> $$

> [!theorem] Convergenza della serie di Fourier
> Sia $(\mathcal{H}, (\cdot, \cdot))$ uno spazio di Hilbert e sia $\{u_n\}_{n \in I} \subset \mathcal{H}$ un sistema ortonormale (al più numerabile) di $\mathcal{H}$.
> Dato un qualunque vettore $u \in \mathcal{H}$, la sua serie di Fourier converge in norma in $\mathcal{H}$ e la sua somma coincide con la proiezione ortogonale di $u$ sul sottospazio chiuso generato dal sistema:
> $$
> \sum_{n \in I} (u, u_n) u_n = \Pi_M(u)
> $$
> dove:
> $$
> M = \overline{\operatorname{Span}\{u_n\}_{n \in I}}
> $$
> indica la chiusura in $\mathcal{H}$ del sottospazio lineare generato dai vettori $\{u_n\}_{n \in I}$.

> [!note] Ruolo cruciale della chiusura in dimensione infinita
> La chiusura topologica di $\operatorname{Span}\{u_n\}_{n \in I}$ è indispensabile, poiché in spazi a dimensione infinita i sottospazi vettoriali non sono in generale chiusi.
> Più precisamente:
> $$
> M = \overline{\operatorname{Span}\{u_n\}_{n \in I}} = \left\{ v = \lim_{k \to +\infty} v_k \in \mathcal{H} : v_k \in \operatorname{Span}\{u_n\}_{n \in I}, \; k \in \mathbb{N} \right\}
> $$

> [!example] Proiezione ortogonale in $\mathbb{R}^3$
> Sia $\mathcal{H} = \mathbb{R}^3$ e si consideri il sistema ortonormale incompleto formato da due soli versori $B = \{\mathbf{e_1}, \mathbf{e_2}\}$.
> Per ogni vettore $\mathbf{u} = (u_1, u_2, u_3)^T \in \mathbb{R}^3$, la serie di Fourier rispetto a $B$ fornisce la proiezione ortogonale sul piano $M = \operatorname{Span}\{\mathbf{e_1}, \mathbf{e_2}\}$:
> $$
> \sum_{i=1}^2 (\mathbf{u} \cdot \mathbf{e_i}) \mathbf{e_i} = \Pi_M(\mathbf{u}) = \begin{pmatrix} u_1 \\ u_2 \\ 0 \end{pmatrix}
> $$

> [!quote]- Dimostrazione
> Si distinguono due casi a seconda della cardinalità dell'insieme di indici $I$:
> 
> **Caso 1: $\operatorname{card}(I) = n \in \mathbb{N} < +\infty$ (dimensione finita).**
> La serie di Fourier è una combinazione lineare finita:
> $$
> \sum_{i=1}^n (u, u_i) u_i = v \in \mathcal{H}
> $$
> che appartiene ad $\mathcal{H}$ essendo $\mathcal{H}$ uno spazio vettoriale (e il sottospazio $M = \operatorname{Span}\{u_1, \dots, u_n\}$ è automaticamente chiuso in quanto di dimensione finita).
> 
> **Caso 2: $\operatorname{card}(I) = \operatorname{card}(\mathbb{N})$ (infinito numerabile).**
> Identificato l'insieme di indici con $\mathbb{N} \setminus \{0\}$, consideriamo la successione delle somme parziali della serie di Fourier:
> $$
> S_N := \sum_{n=1}^N (u, u_n) u_n
> $$
> e mostriamo che $\{S_N\}_{N \in \mathbb{N}}$ è una successione di Cauchy in $\mathcal{H}$.
> Siano $N, M \in \mathbb{N}$ con $N > M$. Calcoliamo la distanza al quadrato mediante l'ortonormalità del sistema $\{u_n\}$:
> $$
> \begin{align*}
> \|S_N - S_M\|^2 &= (S_N - S_M, \; S_N - S_M) \\
> &= \left( \sum_{n=M+1}^N (u, u_n) u_n, \; \sum_{m=M+1}^N (u, u_m) u_m \right) \\
> &= \sum_{n, m=M+1}^N (u, u_n)(u, u_m) \underbrace{(u_n, u_m)}_{=\delta_{nm}} \\
> &= \sum_{n=M+1}^N (u, u_n)^2
> \end{align*}
> $$
> Per la disuguaglianza di Bessel, la serie a termini non negativi converge:
> $$
> \sum_{n=1}^{+\infty} (u, u_n)^2 \le \|u\|^2 < +\infty
> $$
> Di conseguenza, il resto $M$-esimo della serie converge a zero:
> $$
> \sum_{n=M+1}^{+\infty} (u, u_n)^2 \xrightarrow{M \to +\infty} 0 \quad \text{(resto di una serie convergente)}
> $$
> Ne consegue la stima:
> $$
> \|S_N - S_M\|^2 \le \sum_{n=M+1}^{+\infty} (u, u_n)^2 \xrightarrow{N, M \to +\infty} 0
> $$
> Dunque $\{S_N\}_{N \in \mathbb{N}}$ è una successione di Cauchy in $\mathcal{H}$.
> Poiché lo spazio $\mathcal{H}$ è completo (spazio di Hilbert), la successione ammette limite forte in $\mathcal{H}$:
> $$
> S_N \xrightarrow{N \to +\infty} v \in \mathcal{H}
> $$
> 
> **Identificazione del limite con la proiezione ortogonale:**
> Resta da verificare in entrambi i casi che $v = \Pi_M(u)$, dove $M = \overline{\operatorname{Span}\{u_n\}_{n \in I}}$.
> Essendo $M$ un sottospazio lineare chiuso, per il teorema della proiezione ortogonale è sufficiente mostrare che l'errore $u - v$ è ortogonale ad ogni elemento di $M$:
> $$
> (u - v, w) = 0 \quad \forall w \in M
> $$
> Verifichiamo preliminarmente l'ortogonalità rispetto a ciascun elemento $u_n$ ($n \in I$):
> $$
> \begin{align*}
> (u - v, u_n) &= \left( u - \sum_{m \in I} (u, u_m) u_m, \; u_n \right) \\
> &= (u, u_n) - \sum_{m \in I} (u, u_m) \underbrace{(u_m, u_n)}_{=\delta_{mn}} \\
> &= (u, u_n) - (u, u_n) = 0
> \end{align*}
> $$
> Pertanto, per la bilinearità del prodotto scalare, $u - v$ risulta ortogonale a qualunque combinazione lineare finita:
> $$
> \left( u - v, \sum_{i \in J} \alpha_i u_i \right) = 0 \quad \forall \alpha_i \in \mathbb{R}, \; \forall J \subset I \text{ finito}
> $$
> Per la continuità del prodotto interno $(\cdot, \cdot)$, passando al limite per ogni successione convergente di combinazioni lineari, la relazione di ortogonalità si estende all'intera chiusura topologica:
> $$
> (u - v, w) = 0 \quad \forall w \in M \implies v = \Pi_M(u)
> $$
> Si conclude quindi che:
> $$
> \sum_{n \in I} (u, u_n) u_n = \Pi_M(u). \quad \blacksquare
> $$
>

### Proprietà estremali delle somme parziali e disuguaglianza di Bessel

Sia $f \in L^2([-\pi, \pi])$ una funzione $2\pi$-periodica. Si consideri il polinomio trigonometrico delle somme parziali di Fourier di grado $n$:
$$
S_n(x) := \frac{a_0}{2} + \sum_{k=1}^n \left( a_k \cos(kx) + b_k \sin(kx) \right)
$$
Si indichi con $T_{\le n}$ il sottospazio lineare dei polinomi trigonometrici di ordine minore o uguale a $n$:
$$
T_{\le n} := \operatorname{Span} \{ 1, \cos(kx), \sin(kx) \}_{k=1, \dots, n}
$$

> [!theorem] Proprietà di migliore approssimazione in media quadratica
> Sia $f \in L^2([-\pi, \pi])$ e sia $P_n \in T_{\le n}$ un generico polinomio trigonometrico di grado minore o uguale a $n$. La distanza in norma $L^2$ tra $f$ e $P_n$ è minima se e solo se $P_n = S_n$, ovvero:
> $$
> \|f - S_n\|_{L^2}^2 \le \|f - P_n\|_{L^2}^2 \quad \forall P_n \in T_{\le n}
> $$
> In altri termini, la somma parziale di Fourier $S_n$ coincide con la proiezione ortogonale di $f$ sul sottospazio $T_{\le n}$.

> [!quote]- Dimostrazione
> Esprimiamo la differenza tra $f$ e un generico polinomio $P_n \in T_{\le n}$ aggiungendo e sottraendo la somma parziale di Fourier $S_n$:
> $$
> f - P_n = (f - S_n) + (S_n - P_n)
> $$
> Calcolando il quadrato della norma $L^2$ tramite il teorema di Carnot (identità pitagorica per spazi pre-hilbertiani):
> $$
> \begin{align}
> \|f - P_n\|^2 &= \|(f - S_n) + (S_n - P_n)\|^2 \\
> &= \|f - S_n\|^2 + \|S_n - P_n\|^2 + 2 \langle f - S_n, S_n - P_n \rangle_{L^2}
> \end{align}
> $$
> Poiché $P_n \in T_{\le n}$ e $S_n \in T_{\le n}$, la loro differenza appartiene ancora a $T_{\le n}$:
> $$
> (S_n - P_n) \in T_{\le n}
> $$
> D'altra parte, per la definizione stessa dei coefficienti di Fourier:
> $$
> S_n(x) = \frac{a_0}{2} + \sum_{k=1}^n \left( \langle f, \cos(kx) \rangle \cos(kx) + \langle f, \sin(kx) \rangle \sin(kx) \right)
> $$
> Ne consegue che l'errore $f - S_n$ è ortogonale a tutti i generatori di $T_{\le n}$:
> $$
> \langle f - S_n, 1 \rangle = 0, \quad \langle f - S_n, \cos(kx) \rangle = 0, \quad \langle f - S_n, \sin(kx) \rangle = 0 \quad \forall k = 1, \dots, n
> $$
> Per linearità del prodotto scalare, $f - S_n$ è ortogonale a qualsiasi combinazione lineare di tali elementi, e in particolare:
> $$
> \langle f - S_n, S_n - P_n \rangle_{L^2} = 0
> $$
> Sostituendo tale risultato nell'identità di Carnot:
> $$
> \|f - P_n\|^2 = \|f - S_n\|^2 + \|S_n - P_n\|^2
> $$
> Poiché per definizione di norma si ha $\|S_n - P_n\|^2 \ge 0$, con uguaglianza se e solo se $P_n = S_n$ quasi ovunque, si ottiene:
> $$
> \|f - P_n\|^2 \ge \|f - S_n\|^2
> $$
> il che prova che $S_n$ è la migliore approssimazione di $f$ nello spazio $T_{\le n}$. $\blacksquare$

> [!proposition] Disuguaglianza di Bessel
> Per ogni $f \in L^2([-\pi, \pi])$ e per ogni $n \in \mathbb{N}$, la norma della somma parziale di Fourier è dominata dalla norma di $f$:
> $$
> \|S_n\|_{L^2}^2 \le \|f\|_{L^2}^2
> $$

> [!quote]- Dimostrazione
> Scomponiamo $f$ nella somma della sua proiezione ortogonale $S_n$ e del residuo ortogonale $f - S_n$:
> $$
> f = (f - S_n) + S_n
> $$
> Applicando il teorema di Carnot per il prodotto scalare in $L^2$:
> $$
> \|f\|^2 = \|(f - S_n) + S_n\|^2 = \|f - S_n\|^2 + \|S_n\|^2 + 2\langle f - S_n, S_n \rangle
> $$
> Essendo $S_n \in T_{\le n}$, per l'ortogonalità della proiezione si ha $\langle f - S_n, S_n \rangle = 0$, da cui:
> $$
> \|f\|^2 = \|f - S_n\|^2 + \|S_n\|^2
> $$
> Poiché $\|f - S_n\|^2 \ge 0$, segue immediatamente:
> $$
> \|f\|^2 \ge \|S_n\|^2 \quad \blacksquare
> $$

> [!theorem] Convergenza della serie dei quadrati dei coefficienti
> Sia $f \in L^2([-\pi, \pi])$ con coefficienti di Fourier $\{a_k\}_{k=0}^\infty$ e $\{b_k\}_{k=1}^\infty$. Allora la serie numerica dei quadrati dei coefficienti converge:
> $$
> \sum_{k=1}^{+\infty} (a_k^2 + b_k^2) < +\infty
> $$

> [!quote]- Dimostrazione
> Calcoliamo esplicitamente la norma quadra della somma parziale $S_n$:
> $$
> \|S_n\|^2 = \left\| \frac{a_0}{2} + \sum_{k=1}^n \left( a_k \cos(kx) + b_k \sin(kx) \right) \right\|^2
> $$
> Sviluppando il quadrato mediante la bilinearità del prodotto scalare:
> $$
> \begin{align}
> \|S_n\|^2 = \frac{a_0^2}{4} \|1\|^2 &+ \sum_{i=1}^n \sum_{j=1}^n a_i a_j \langle \cos(ix), \cos(jx) \rangle + \sum_{i=1}^n \sum_{j=1}^n b_i b_j \langle \sin(ix), \sin(jx) \rangle \\
> &+ 2 \sum_{i=1}^n \sum_{j=1}^n a_i b_j \langle \cos(ix), \sin(jx) \rangle
> \end{align}
> $$
> Sfruttando le relazioni di ortonormalità:
> $$
> \|1\|_{L^2}^2 = \frac{1}{\pi} \int_{-\pi}^\pi 1 \, dx = 2
> \langle \cos(ix), \cos(jx) \rangle = \delta_{ij}, \quad \langle \sin(ix), \sin(jx) \rangle = \delta_{ij}, \quad \langle \cos(ix), \sin(jx) \rangle = 0
> $$
> L'espressione si riduce alla forma diagonale:
> $$
> \|S_n\|^2 = \frac{a_0^2}{2} + \sum_{k=1}^n (a_k^2 + b_k^2)
> $$
> Applicando la disuguaglianza di Bessel $\|S_n\|^2 \le \|f\|^2$:
> $$
> \frac{a_0^2}{2} + \sum_{k=1}^n (a_k^2 + b_k^2) \le \|f\|_{L^2}^2 < +\infty \quad \forall n \in \mathbb{N}
> $$
> La successione delle somme parziali $\Sigma_n = \sum_{k=1}^n (a_k^2 + b_k^2)$ è monotona non decrescente (essendo a termini non negativi) e superiormente limitata da $\|f\|_{L^2}^2$. Per il teorema di convergenza delle successioni monotone, la serie converge:
> $$
> \sum_{k=1}^{+\infty} (a_k^2 + b_k^2) < +\infty \quad \blacksquare
> $$

> [!proposition] Lemma di Riemann-Lebesgue per i coefficienti di Fourier
> Se $f \in L^2([-\pi, \pi])$, i coefficienti di Fourier sono infinitesimi all'infinito:
> $$
> \lim_{n \to +\infty} a_n = \lim_{n \to +\infty} \langle f, \cos(nx) \rangle = 0, \quad \lim_{n \to +\infty} b_n = \lim_{n \to +\infty} \langle f, \sin(nx) \rangle = 0
> $$

> [!quote]- Dimostrazione
> La convergenza della serie $\sum_{k=1}^{+\infty} (a_k^2 + b_k^2)$ implica, come condizione necessaria, che il suo termine generale sia infinitesimo per $k \to +\infty$:
> $$
> \lim_{k \to +\infty} (a_k^2 + b_k^2) = 0
> $$
> Poiché $a_k^2 \ge 0$ e $b_k^2 \ge 0$, segue immediatamente:
> $$
> \lim_{k \to +\infty} a_k = 0 \quad \text{e} \quad \lim_{k \to +\infty} b_k = 0 \quad \blacksquare
> $$
>

### Disuguaglianza di Bessel

> [!theorem] Disuguaglianza di Bessel
> Sia $(\mathcal{H}, (\cdot, \cdot))$ uno spazio di Hilbert e sia $\{u_n\}_{n \in I} \subset \mathcal{H}$ un sistema ortonormale.
> Dato un qualunque elemento $u \in \mathcal{H}$, vale la disuguaglianza:
> $$
> \sum_{n \in I} (u, u_n)^2 \le \|u\|^2
> $$

> [!quote]- Dimostrazione
> Sia $A \subset I$ un generico sottoinsieme **finito** di indici.
> Calcolando la norma al quadrato della differenza tra $u$ e la somma finita delle sue componenti lungo i vettori di $A$, per la positività della norma si ha:
> $$
> \begin{align*}
> 0 &\le \left\| u - \sum_{n \in A} (u, u_n) u_n \right\|^2 \\
> &= \left( u - \sum_{n \in A} (u, u_n) u_n, \; u - \sum_{m \in A} (u, u_m) u_m \right)
> \end{align*}
> $$
> Sviluppando l'espressione mediante la bilinearità del prodotto scalare (utilizzando indici muti distinti $n$ ed $m$):
> $$
> \begin{align*}
> &= \|u\|^2 - \sum_{n \in A} (u, u_n)(u_n, u) - \sum_{m \in A} (u, u_m)(u, u_m) + \sum_{n, m \in A} (u, u_n)(u, u_m) \underbrace{(u_n, u_m)}_{=\delta_{nm}} \\
> &= \|u\|^2 - \sum_{n \in A} (u, u_n)^2 - \sum_{m \in A} (u, u_m)^2 + \sum_{n \in A} (u, u_n)^2 \\
> &= \|u\|^2 - \sum_{n \in A} (u, u_n)^2
> \end{align*}
> $$
> Ne consegue che per ogni sottoinsieme finito $A \subset I$:
> $$
> \sum_{n \in A} (u, u_n)^2 \le \|u\|^2
> $$
> Passando all'estremo superiore su tutti i possibili sottoinsiemi finiti $A \subset I$:
> $$
> \sup_{A \subset I, \, |A| < +\infty} \sum_{n \in A} (u, u_n)^2 \le \sup_{A \subset I} \|u\|^2 = \|u\|^2
> $$
> da cui si conclude la tesi:
> $$
> \sum_{n \in I} (u, u_n)^2 \le \|u\|^2. \quad \blacksquare
> $$

> [!note] Supporto al più numerabile dei coefficienti di Fourier
> Dalla disuguaglianza di Bessel discende un'importante conseguenza geometrica: anche qualora l'insieme di indici $I$ del sistema ortonormale $\{u_n\}_{n \in I}$ sia **non numerabile**, fissato un qualsiasi vettore $u \in \mathcal{H}$, i coefficienti di Fourier non nulli possono essere al più un'infinità numerabile.
> In altri termini, l'insieme degli indici a coefficiente non nullo:
> $$
> A = \{n \in I : (u, u_n) \ne 0\}
> $$
> soddisfa:
> $$
> \operatorname{card}(A) \le \operatorname{card}(\mathbb{N})
> $$

> [!note] Appartenenza dei coefficienti a $\ell^2$
> Sia $\{u_n\}_{n \in \mathbb{N}}$ un sistema ortonormale numerabile. Allora per ogni $u \in \mathcal{H}$ la successione dei suoi coefficienti di Fourier appartiene allo spazio $\ell^2$:
> $$
> \{(u, u_n)\}_{n \in \mathbb{N}} \in \ell^2
> $$
> Infatti, per la disuguaglianza di Bessel, la serie a termini positivi $\sum_{n=1}^{+\infty} (u, u_n)^2$ è convergente e limitata da $\|u\|^2$.
>

### Sistemi ortonormali completi e identità di Parseval-Bessel

> [!definition] Sistema ortonormale completo (massimale)
> Sia $(\mathcal{H}, (\cdot, \cdot))$ uno spazio di Hilbert e sia $\{u_n\}_{n \in I} \subset \mathcal{H}$ un sistema ortonormale.
> Il sistema si dice **completo** se non esiste alcun sistema ortonormale che lo contenga propriamente:
> $$
> \nexists \{v_m\}_{m \in J} \subset \mathcal{H} \text{ sistema ortonormale tale che } \{u_n\}_{n \in I} \subsetneq \{v_m\}_{m \in J}
> $$
> In altri termini, $\{u_n\}_{n \in I}$ è un elemento **massimale** rispetto all'inclusione insiemistica tra sistemi ortonormali.

> [!example] Completezza in $\mathbb{R}^3$
> In $\mathbb{R}^3$, la base canonica $\{\mathbf{e_1}, \mathbf{e_2}, \mathbf{e_3}\}$ è un sistema ortonormale completo, poiché nessun vettore non nullo può risultare contemporaneamente ortogonale a tutti e tre i versori coordinati.

> [!theorem] Caratterizzazione dei sistemi ortonormali completi
> Sia $(\mathcal{H}, (\cdot, \cdot))$ uno spazio di Hilbert e sia $\{u_n\}_{n \in I} \subset \mathcal{H}$ un sistema ortonormale.
> Le seguenti affermazioni sono **logicamente equivalenti**:
> 1. Il sistema $\{u_n\}_{n \in I}$ è **completo**;
> 2. L'unico vettore ortogonale a tutti gli elementi del sistema è il vettore nullo:
>    $$
>    \forall u \in \mathcal{H}, \quad \Big( (u, u_n) = 0 \; \forall n \in I \iff u = 0 \Big)
>    $$
> 3. Il sottospazio lineare generato dal sistema è denso in $\mathcal{H}$:
>    $$
>    M = \overline{\operatorname{Span}\{u_n\}_{n \in I}} = \mathcal{H}
>    $$
> 4. Ogni vettore $u \in \mathcal{H}$ coincide con la somma della propria serie di Fourier:
>    $$
>    \sum_{n \in I} (u, u_n) u_n = u \quad \forall u \in \mathcal{H}
>    $$
> 5. **Identità di Parseval:** per ogni coppia $u, v \in \mathcal{H}$, vale:
>    $$
>    (u, v) = \sum_{n \in I} (u, u_n)(v, u_n)
>    $$
> 6. **Identità di Bessel:** per ogni vettore $u \in \mathcal{H}$, vale:
>    $$
>    \|u\|^2 = \sum_{n \in I} (u, u_n)^2
>    $$

> [!note] Isometria con $\ell^2$ e classificazione degli spazi di Hilbert
> L'identità di Bessel mostra che la norma di un vettore $u \in \mathcal{H}$ coincide con la norma $\ell^2$ della successione dei suoi coefficienti di Fourier:
> $$
> \|\{(u, u_n)\}_{n \in \mathbb{N}}\|_{\ell^2}^2 = \|u\|_\mathcal{H}^2
> $$
> ovvero lo spazio di Hilbert astratto $\mathcal{H}$ è **isometrico** ad $\ell^2$.
> Ne consegue che gli spazi di Hilbert a dimensione infinita si differenziano essenzialmente solo per la cardinalità di un loro sistema ortonormale completo (dimensione hilbertiana).

> [!quote]- Dimostrazione
> Si dimostra la catena di implicazioni logiche:
> $$
> \text{(1)} \iff \text{(2)} \implies \text{(3)} \implies \text{(4)} \implies \text{(5)} \implies \text{(6)} \implies \text{(2)}
> $$
> 
> **(1) $\implies$ (2):**
> Procediamo per assurdo. Supponiamo che esista un vettore non nullo $v \in \mathcal{H} \setminus \{0\}$ tale che:
> $$
> (v, u_n) = 0 \quad \forall n \in I
> $$
> Definiamo il versore normalizzato:
> $$
> u := \frac{v}{\|v\|}
> $$
> Esso ha norma unitaria $\|u\| = 1$ ed è ortogonale a ciascun $u_n$ per ogni $n \in I$.
> Allora l'insieme $\{u_n\}_{n \in I} \cup \{u\}$ costituisce un sistema ortonormale che include strettamente $\{u_n\}_{n \in I}$, contraddicendo l'ipotesi che $\{u_n\}_{n \in I}$ sia completo (massimale).
> Dunque deve necessariamente essere $v = 0$.
> 
> **(2) $\implies$ (1):**
> Procediamo per assurdo. Supponiamo che $\{u_n\}_{n \in I}$ non sia completo.
> Allora esisterebbe un sistema ortonormale $\{v_m\}_{m \in J}$ tale che $\{u_n\}_{n \in I} \subsetneq \{v_m\}_{m \in J}$.
> Sia $v \in \{v_m\}_{m \in J}$ tale che $v \notin \{u_n\}_{n \in I}$.
> Poiché $\{v_m\}_{m \in J}$ è ortonormale, si ha $\|v\| = 1$ e $(v, u_n) = 0$ per ogni $n \in I$.
> Ma per l'ipotesi (2), l'ortogonalità a tutti gli elementi di $\{u_n\}$ implica $v = 0$, da cui $\|v\| = 0 \ne 1$, giungendo a un assurdo.
> Dunque sussiste l'equivalenza (1) $\iff$ (2).
> 
> **(2) $\implies$ (3):**
> Posto $M = \overline{\operatorname{Span}\{u_n\}_{n \in I}}$, sia $u \in M^\perp$.
> Allora in particolare $(u, u_n) = 0$ per ogni $n \in I$.
> Per l'ipotesi (2), questo implica $u = 0$, da cui:
> $$
> M^\perp = \{0\}
> $$
> Essendo $M$ un sottospazio lineare chiuso in uno spazio di Hilbert, per il teorema della decomposizione ortogonale vale $\mathcal{H} = M \oplus M^\perp$, da cui:
> $$
> M = (M^\perp)^\perp = \{0\}^\perp = \{v \in \mathcal{H} : (v, 0) = 0\} = \mathcal{H}
> $$
> 
> **(3) $\implies$ (4):**
> Poiché $M = \overline{\operatorname{Span}\{u_n\}_{n \in I}} = \mathcal{H}$, applicando il Teorema di convergenza della serie di Fourier la proiezione ortogonale su $M$ coincide con l'operatore identità:
> $$
> \sum_{n \in I} (u, u_n) u_n = \Pi_M(u) = \Pi_\mathcal{H}(u) = u \quad \forall u \in \mathcal{H}
> $$
> 
> **(4) $\implies$ (5):**
> Siano $u, v \in \mathcal{H}$. In virtù dell'ipotesi (4), entrambi i vettori coincidono con la somma della rispettiva serie di Fourier:
> $$
> u = \sum_{n \in I} (u, u_n) u_n, \qquad v = \sum_{m \in I} (v, u_m) u_m
> $$
> Calcolando il loro prodotto interno e sfruttando la bilinearità e la continuità del prodotto interno rispetto alla convergenza in norma:
> $$
> \begin{align*}
> (u, v) &= \left( \sum_{n \in I} (u, u_n) u_n, \; \sum_{m \in I} (v, u_m) u_m \right) \\
> &\underset{\substack{\text{linearità e} \\ \text{continuità}}}{=} \sum_{n, m \in I} (u, u_n)(v, u_m) \underbrace{(u_n, u_m)}_{=\delta_{nm}} \\
> &= \sum_{n \in I} (u, u_n)(v, u_n)
> \end{align*}
> $$
> 
> **(5) $\implies$ (6):**
> È sufficiente porre $v = u$ nell'identità di Parseval:
> $$
> \|u\|^2 = (u, u) = \sum_{n \in I} (u, u_n)(u, u_n) = \sum_{n \in I} (u, u_n)^2
> $$
> 
> **(6) $\implies$ (2):**
> Sia $u \in \mathcal{H}$ un vettore tale che $(u, u_n) = 0$ per ogni $n \in I$.
> Allora, per l'identità di Bessel (6):
> $$
> \|u\|^2 = \sum_{n \in I} (u, u_n)^2 = \sum_{n \in I} 0 = 0 \implies \|u\| = 0 \implies u = 0. \quad \blacksquare
> $$

> [!note] Isomorfismo hilbertiano tramite l'operatore di Fourier
> Definito l'operatore di trasformata di Fourier:
> $$
> \mathcal{F} : \mathcal{H} \to \ell^2, \qquad \mathcal{F}(u) = \{\hat{u}_n\}_{n \in \mathbb{N}} = \{(u, u_n)\}_{n \in \mathbb{N}}
> $$
> dall'identità di Parseval segue che $\mathcal{F}$ è una **isometria** lineare tra $\mathcal{H}$ ed $\ell^2$.
> $\implies$ Se $\mathcal{H}$ è uno spazio di Hilbert dotato di un sistema ortonormale completo numerabile (ovvero uno spazio di Hilbert a dimensione infinita separabile), esso è **isometricamente isomorfo** a $\ell^2$.
>

### Convergenza in media quadratica e identità di Parseval

> [!theorem] Convergenza in media quadratica della serie di Fourier
> Sia $f \in L^2([-\pi, \pi])$ una funzione $2\pi$-periodica. La serie di Fourier di $f$ converge a $f$ nella norma di $L^2$:
> $$
> \lim_{n \to +\infty} \|f - S_n\|_{L^2}^2 = \lim_{n \to +\infty} \frac{1}{\pi} \int_{-\pi}^\pi |f(x) - S_n(x)|^2 \, dx = 0
> $$

> [!theorem] Identità di Parseval
> Per ogni $f \in L^2([-\pi, \pi])$, la disuguaglianza di Bessel diventa un'uguaglianza all'infinito:
> $$
> \frac{1}{\pi} \int_{-\pi}^\pi f^2(x) \, dx = \frac{a_0^2}{2} + \sum_{k=1}^{+\infty} (a_k^2 + b_k^2)
> $$

> [!note] Isomorfismo isometrico fra $L^2$ e $\ell^2$
> L'identità di Parseval stabilisce che:
> $$
> \|f\|_{L^2}^2 = \|\mathbf{c}\|_{\ell^2}^2
> $$
> Essa esprime la conservazione dell'energia tra il dominio dello spazio fisico e il dominio delle frequenze discrete, sancendo l'esistenza di un isomorfismo isometrico tra lo spazio di Hilbert funzionale $L^2([-\pi, \pi])$ e lo spazio delle successioni $\ell^2$.
>

### La base trigonometrica normalizzata di $L^2$

> [!example] Sistema ortonormale trigonometrico
> Si consideri lo spazio di Hilbert $L^2(I)$ definito sull'intervallo simmetrico $I = \left[ -\frac{T}{2}, \frac{T}{2} \right] \subset \mathbb{R}$ con $T > 0$.
> Per ogni intero $k \ge 1$, si definiscano le funzioni trigonometriche riscalate e normalizzate:
> $$
> u_0(x) := \frac{1}{\sqrt{T}}
> u_k(x) := \sqrt{\frac{2}{T}} \cos\left( \frac{2k\pi}{T} x \right), \qquad v_k(x) := \sqrt{\frac{2}{T}} \sin\left( \frac{2k\pi}{T} x \right)
> $$
> Allora la famiglia di funzioni:
> $$
> \{u_0, u_k, v_k\}_{k \in \mathbb{N}\setminus\{0\}}
> $$
> è un **sistema ortonormale completo** di $L^2(I)$.
> 
> Di conseguenza, ogni elemento $f \in L^2(I)$ può essere rappresentato come somma della sua serie di Fourier generalizzata:
> $$
> f = (f, u_0) u_0 + \sum_{k=1}^{+\infty} (f, u_k) u_k + \sum_{k=1}^{+\infty} (f, v_k) v_k
> $$
> Ponendo per definizione i coefficienti di Fourier associati:
> $$
> a_k := (f, u_k) \quad (k \in \mathbb{N}), \qquad b_k := (f, v_k) \quad (k \in \mathbb{N}\setminus\{0\})
> $$
> esplicitando il prodotto interno canonico di $L^2(I)$ si ottiene:
> $$
> a_k = \frac{2}{T} \int_{-T/2}^{T/2} f(x) \cos\left( \frac{2k\pi}{T} x \right) dx, \qquad k \ge 0
> b_k = \frac{2}{T} \int_{-T/2}^{T/2} f(x) \sin\left( \frac{2k\pi}{T} x \right) dx, \qquad k \ge 1
> $$
> che coincidono con i classici **coefficienti di Fourier trigonometrici** di $f$.

> [!proposition] Ortonormalità e completezza della base trigonometrica
> Sia $I = \left[ -\frac{T}{2}, \frac{T}{2} \right] \subset \mathbb{R}$.
> Il sistema trigonometrico $\{u_0, u_k, v_k\}_{k \in \mathbb{N}\setminus\{0\}}$ è ortonormale e completo nello spazio $L^2(I)$.

> [!quote]- Dimostrazione
> **Parte 1: Ortonormalità**
> Verifichiamo direttamente le relazioni di ortonormalità calcolando gli integrali dei prodotti delle funzioni di base:
> 
> - **Normalizzazione:**
>   $$
>   \int_{-T/2}^{T/2} u_0(x)^2\,dx = \int_{-T/2}^{T/2} \frac{1}{T}\,dx = 1
>   \int_{-T/2}^{T/2} u_k(x)^2\,dx = \frac{2}{T} \int_{-T/2}^{T/2} \cos^2\left(\frac{2k\pi}{T} x\right) dx = \frac{2}{T} \frac{T}{2} = 1, \qquad \forall k \in \mathbb{N}\setminus\{0\}
>   \int_{-T/2}^{T/2} v_k(x)^2\,dx = \frac{2}{T} \int_{-T/2}^{T/2} \sin^2\left(\frac{2k\pi}{T} x\right) dx = \frac{2}{T} \frac{T}{2} = 1, \qquad \forall k \in \mathbb{N}\setminus\{0\}
>   $$
> 
> - **Ortogonalità mutua:**
>   Per le note formule di Werner, integrando su un periodo simmetrico si ha:
>   $$
>   \int_{-T/2}^{T/2} u_k(x) u_j(x)\,dx = \frac{2}{T} \int_{-T/2}^{T/2} \cos\left(\frac{2k\pi}{T} x\right) \cos\left(\frac{2j\pi}{T} x\right) dx = 0, \qquad \forall k \ne j
>   \int_{-T/2}^{T/2} v_k(x) v_j(x)\,dx = \frac{2}{T} \int_{-T/2}^{T/2} \sin\left(\frac{2k\pi}{T} x\right) \sin\left(\frac{2j\pi}{T} x\right) dx = 0, \qquad \forall k \ne j
>   \int_{-T/2}^{T/2} u_k(x) v_j(x)\,dx = \frac{2}{T} \int_{-T/2}^{T/2} \cos\left(\frac{2k\pi}{T} x\right) \sin\left(\frac{2j\pi}{T} x\right) dx = 0, \qquad \forall k, j \in \mathbb{N}
>   $$
> (Tali identità sono già state stabilite e verificate in Analisi Matematica II).
> 
> **Parte 2: Completezza**
> Dobbiamo mostrare che lo spazio generato dalle combinazioni lineari finite degli elementi di base è denso in $L^2(I)$, ossia:
> $$
> \overline{\operatorname{Span}\{u_0, u_n, v_n\}_{n \in \mathbb{N}\setminus\{0\}}} = L^2(I)
> $$
> Per la caratterizzazione metrica della chiusura, ciò equivale a dimostrare che per ogni funzione bersaglio $f \in L^2(I)$ e per ogni $\varepsilon > 0$, esiste un polinomio trigonometrico $g \in \operatorname{Span}\{u_0, u_n, v_n\}_{n \in \mathbb{N}\setminus\{0\}}$ tale che:
> $$
> \|f - g\|_{L^2(I)} < \varepsilon
> $$
> La dimostrazione procede in due passaggi:
> 
> **Passo 1 (Approssimazione per funzioni test $C_0^\infty(I)$):**
> Sia inizialmente $f \in C_0^\infty(I)$, ossia una funzione infinitamente derivabile a supporto compatto contenuto nell'intervallo aperto $(-T/2, T/2)$.
> Estendiamo $f$ per periodicità di periodo $T$ a tutto l'asse reale $\mathbb{R}$:
> $$
> \tilde{f}(x) := f(x) \quad \text{per } x \in [-T/2, T/2), \qquad \tilde{f}(x + T) = \tilde{f}(x) \quad \forall x \in \mathbb{R}
> $$
> Poiché $f$ e tutte le sue derivate si annullano agli estremi $\pm T/2$, l'estensione periodica risulta globale e regolare: $\tilde{f} \in C^\infty(\mathbb{R})$.
> Per i classici teoremi di Analisi II sulla convergenza puntuale e uniforme delle serie di Fourier di funzioni lisce, la successione delle somme parziali trigonometriche $S_n$ di $\tilde{f}$ converge uniformemente a $\tilde{f}$ su tutto l'intervallo $I$:
> $$
> \|S_n - \tilde{f}\|_\infty = \sup_{x \in I} |S_n(x) - \tilde{f}(x)| \xrightarrow{n \to +\infty} 0
> $$
> Segue immediatamente che tale successione converge anche nella norma quadratica di $L^2(I)$. Infatti:
> $$
> \|S_n - \tilde{f}\|_{L^2(I)}^2 = \int_{-T/2}^{T/2} |S_n(x) - \tilde{f}(x)|^2\,dx \le \int_{-T/2}^{T/2} \|S_n - \tilde{f}\|_\infty^2\,dx = T \|S_n - \tilde{f}\|_\infty^2 \xrightarrow{n \to +\infty} 0
> $$
> Poiché su $I$ la funzione coincide con la sua estensione, $\tilde{f} \equiv f$, è sufficiente scegliere un ordine di troncamento $N > 0$ sufficientemente elevato tale che:
> $$
> \|S_N - f\|_{L^2(I)} = \|S_N - \tilde{f}\|_{L^2(I)} < \frac{\varepsilon}{2} < \varepsilon
> $$
> Scegliendo $g := S_N \in \operatorname{Span}\{u_0, u_n, v_n\}_{n \in \mathbb{N}\setminus\{0\}}$, l'asserto è provato per ogni $f \in C_0^\infty(I)$.
> 
> **Passo 2 (Estensione a tutto $L^2(I)$ per densità):**
> È un teorema fondamentale della teoria dell'integrazione di Lebesgue che lo spazio delle funzioni test $C_0^\infty(I)$ è denso nello spazio di Lebesgue $L^2(I)$, vale a dire:
> $$
> \overline{C_0^\infty(I)} = L^2(I)
> $$
> Pertanto, per ogni arbitraria funzione $f \in L^2(I)$ e per ogni $\varepsilon > 0$, esiste una funzione test $\varphi \in C_0^\infty(I)$ tale che:
> $$
> \|f - \varphi\|_{L^2(I)} < \frac{\varepsilon}{2}
> $$
> Applicando a tale $\varphi$ il risultato provato al Passo 1, esiste un polinomio trigonometrico $g \in \operatorname{Span}\{u_0, u_n, v_n\}_{n \in \mathbb{N}\setminus\{0\}}$ tale che:
> $$
> \|\varphi - g\|_{L^2(I)} < \frac{\varepsilon}{2}
> $$
> Valutando la distanza tra $f$ e $g$ mediante la disuguaglianza triangolare:
> $$
> \|f - g\|_{L^2(I)} \le \|f - \varphi\|_{L^2(I)} + \|\varphi - g\|_{L^2(I)} < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon
> $$
> Resta così stabilito che:
> $$
> \overline{\operatorname{Span}\{u_0, u_n, v_n\}_{n \in \mathbb{N}\setminus\{0\}}} = L^2(I)
> $$
> ovvero che il sistema trigonometrico è completo in $L^2(I)$. $\blacksquare$
>
### Rappresentazione Complessa della Serie di Fourier

> [!note] Forma esponenziale complessa
> Ricordando le identità di Eulero per i numeri complessi:
> $$
> e^{it} = \cos t + i \sin t \implies \cos t = \frac{e^{it} + e^{-it}}{2}, \qquad \sin t = \frac{e^{it} - e^{-it}}{2i}
> $$
> è possibile riscrivere la serie di Fourier in una forma esponenziale complessa compatta:
> $$
> f(x) = \sum_{k \in \mathbb{Z}} \hat{f}_k e^{i \frac{2k\pi}{T} x}
> $$
> dove i coefficienti complessi $\hat{f}_k \in \mathbb{C}$ sono definiti a partire dai coefficienti trigonometrici reali $a_k, b_k$ mediante la relazione:
> $$
> \hat{f}_k := \begin{cases} \dfrac{a_k - i b_k}{2} & \text{se } k > 0 \\ \dfrac{a_0}{2} & \text{se } k = 0 \\ \dfrac{a_{-k} + i b_{-k}}{2} & \text{se } k < 0 \end{cases}
> $$

> [!note] Formula integrale per i coefficienti complessi
> Vale l'espressione diretta per il calcolo di ciascun coefficiente di Fourier complesso $\hat{f}_k$:
> $$
> \hat{f}_k = \frac{1}{T} \int_{-T/2}^{T/2} f(x) e^{-i \frac{2k\pi}{T} x}\,dx \qquad \forall k \in \mathbb{Z}
> $$

> [!note] Esistenza dei coefficienti in $L^1$
> I coefficienti di Fourier $\hat{f}_k$ (così come $a_k$ e $b_k$) sono ben definiti anche sotto la sola ipotesi di integrabilità semplice della funzione, ossia per $f \in L^1\left(\left[-\frac{T}{2}, \frac{T}{2}\right]\right)$.
> Infatti, stimando il modulo dell'integrale per ogni $k \ge 0$:
> $$
> |a_k| = \frac{2}{T} \left| \int_{-T/2}^{T/2} f(x) \cos\left( \frac{2k\pi}{T} x \right) dx \right| \le \frac{2}{T} \int_{-T/2}^{T/2} |f(x)|\,dx = \frac{2}{T} \|f\|_{L^1} < +\infty
> $$
> e del tutto analogamente:
> $$
> |b_k| \le \frac{2}{T} \|f\|_{L^1} < +\infty, \qquad |\hat{f}_k| \le \frac{1}{T} \|f\|_{L^1} < +\infty \quad \forall k \in \mathbb{Z}
> $$
>

Il sistema trigonometrico non è che una delle infinite possibili basi ortonormali di uno spazio di Hilbert: applicando il procedimento di Gram-Schmidt a sistemi di monomi si ottengono basi ortogonali completamente diverse, come i polinomi di Legendre.

### Metodo di ortogonalizzazione di Gram-Schmidt e polinomi di Legendre

#### Mancata ortogonalità dei monomi in $L^2$

> [!example] Il sistema dei monomi in $L^2(I)$
> Si consideri lo spazio di Hilbert $\mathcal{H} = L^2(I)$ definito sull'intervallo simmetrico $I = \left[-\frac{T}{2}, \frac{T}{2}\right] \subset \mathbb{R}$ con $T > 0$, dotato del prodotto scalare canonico:
> $$
> (f, g) = \int_{-T/2}^{T/2} f(x) g(x) \, dx
> $$
> Per determinare un sistema ortonormale completo per $L^2(I)$, si potrebbe considerare il sistema fondamentale delle potenze intere:
> $$
> \{x^n\}_{n \in \mathbb{N}} = \{1, x, x^2, \dots\}
> $$
> Purtroppo tale sistema **non è ortonormale**:
> $$
> \int_{-T/2}^{T/2} x^n x^m \, dx = \left[ \frac{x^{n+m+1}}{n+m+1} \right]_{-T/2}^{T/2} \ne 0 \quad \text{in generale}
> $$
> Infatti l'integrale si annulla per simmetria solo quando $n+m$ è dispari, mentre per $n+m$ pari risulta strettamente positivo.
> Inoltre, la norma dei monomi non è unitaria:
> $$
> \int_{-T/2}^{T/2} x^{2n} \, dx \ne 1 \quad \forall n \in \mathbb{N} \quad \text{in generale}
> $$
> Per costruire a partire da $\{x^n\}$ un sistema ortonormale si ricorre al **metodo di Gram-Schmidt**.
>
#### Procedimento di Gram-Schmidt

> [!lemma] Metodo di ortogonalizzazione di Gram-Schmidt
> Sia $(\mathcal{H}, (\cdot, \cdot))$ uno spazio di Hilbert e sia $\{u_n\}_{n \in I} \subset \mathcal{H}$ un sistema di vettori linearmente indipendenti, al più numerabile ($I \subseteq \mathbb{N}$).
> Allora è possibile costruire un sistema ortonormale $\{v_n\}_{n \in I} \subset \mathcal{H}$ tale che:
> $$
> \operatorname{Span}\{u_n\}_{n \in J} = \operatorname{Span}\{v_n\}_{n \in J} \quad \forall J \subseteq I
> $$
>
Il procedimento si costruisce in maniera ricorsiva:

1. Si normalizza il primo vettore del sistema:
   $$
   v_1 := \frac{u_1}{\|u_1\|}
   $$
2. Si cerca un secondo vettore $\tilde{v}_2$ nella forma:
   $$
   \tilde{v}_2 := u_2 + \alpha u_1
   $$
   imponendo la condizione di ortogonalità rispetto a $v_1$ (o equivalentemente rispetto a $u_1$):
   $$
   (\tilde{v}_2, v_1) = 0 \iff (u_2 + \alpha u_1, u_1) = 0 \iff (u_1, u_2) + \alpha \|u_1\|^2 = 0
   $$
   da cui si ricava univocamente il coefficiente $\alpha$:
   $$
   \alpha = -\frac{(u_1, u_2)}{\|u_1\|^2}
   $$
   e si normalizza il secondo vettore:
   $$
   v_2 := \frac{\tilde{v}_2}{\|\tilde{v}_2\|}
   $$
3. Si cerca il terzo vettore $\tilde{v}_3$ nella forma:
   $$
   \tilde{v}_3 := u_3 + \alpha_2 u_2 + \alpha_1 u_1
   $$
   imponendo le condizioni di ortogonalità rispetto ai vettori precedentemente costruiti:
   $$
   \begin{cases}
   (\tilde{v}_3, u_1) = 0 \\
   (\tilde{v}_3, u_2) = 0
   \end{cases}
   \implies
   A \begin{pmatrix} \alpha_1 \\ \alpha_2 \end{pmatrix} = \begin{pmatrix} -(u_3, u_1) \\ -(u_3, u_2) \end{pmatrix}
   $$

dove la matrice dei coefficienti del sistema lineare è data da:
$$
A = \begin{pmatrix} \|u_1\|^2 & (u_1, u_2) \\ (u_1, u_2) & \|u_2\|^2 \end{pmatrix}
$$
Poiché $u_1, u_2$ sono linearmente indipendenti, si verifica che $\det A \ne 0$, il che garantisce l'esistenza e l'unicità della soluzione vettoriale:
$$
\exists! \begin{pmatrix} \alpha_1 \\ \alpha_2 \end{pmatrix} \in \mathbb{R}^2
$$
e si definisce il terzo versore normalizzato:
$$
v_3 := \frac{\tilde{v}_3}{\|\tilde{v}_3\|}
$$
$\vdots$

Al generico passo $n$-esimo del procedimento, si pone:
$$
\tilde{v}_n := u_n + \sum_{i=1}^{n-1} \alpha_i u_i, \qquad v_n := \frac{\tilde{v}_n}{\|\tilde{v}_n\|}
$$
con i coefficienti $\alpha_i$ univocamente determinati imponendo le condizioni di ortogonalità rispetto a tutti i vettori precedentemente costruiti:
$$
(\tilde{v}_n, u_i) = 0 \quad \forall i = 1, \dots, n-1
$$
Poiché la matrice di Gram associata è non singolare in virtù della lineare indipendenza di $\{u_1, \dots, u_{n-1}\}$, i coefficienti $\alpha_1, \dots, \alpha_{n-1}$ esistono sempre unici. $\blacksquare$

#### Polinomi di Legendre

> [!note] Costruzione dei Polinomi di Legendre
> Applicando il procedimento di ortonormalizzazione di Gram-Schmidt al sistema infinito delle potenze intere:
> $$
> \{x^n\}_{n \in \mathbb{N}} = \{1, x, x^2, x^3, \dots\}
> $$
> si ottiene una base ortonormale dello spazio $L^2(I)$, indicata con:
> $$
> \{P_l(x)\}_{l \in \mathbb{N}}
> $$
> dove ciascun $P_l(x)$ è detto **polinomio di Legendre** di ordine (e grado algebrico) $l$.
> Pertanto:
> $$
> \{P_l(x)\}_{l \in \mathbb{N}} \quad \text{è un sistema ortonormale di } L^2(I)
> $$
> Per calcolare esplicitamente i polinomi di Legendre sull'intervallo di riferimento $I = (-1, 1)$, si applicano i primi passi della procedura di Gram-Schmidt:
> $$
> P_0(x) = \frac{1}{\sqrt{2}}, \qquad P_1(x) = \sqrt{\frac{3}{2}} x, \qquad P_2(x) = \sqrt{\frac{5}{2}} \left( x^2 - \frac{1}{3} \right), \quad \dots
> $$

> [!proposition] Completezza dei Polinomi di Legendre
> Sia $I = \left[ -\frac{T}{2}, \frac{T}{2} \right] \subset \mathbb{R}$, $T > 0$.
> Allora la successione dei polinomi di Legendre $\{P_l\}_{l \in \mathbb{N}}$ costituisce un **sistema ortonormale completo** dello spazio di Hilbert $L^2(I)$.
>

## 3. Applicazioni a Equazioni Differenziali e Fisica Matematica

### Ricerca di Soluzioni Periodiche di ODE Lineari a Coefficienti Costanti

Consideriamo un'equazione differenziale ordinaria lineare di ordine $n$ a coefficienti costanti:
$$
\sum_{j=0}^n a_j u^{(j)}(x) = f(x) \quad \text{in } \mathbb{R}
$$
con coefficienti reali $a_0, a_1, \dots, a_{n-1} \in \mathbb{R}$, coefficiente guida non nullo $a_n \ne 0$, e termine forzante periodico assegnato:
$$
f \in L^2_T(\mathbb{R})
$$
$\leadsto$ **Obiettivo:** Determinare se esistano soluzioni periodiche $u \in L^2_T(\mathbb{R})$ e analizzarne le proprietà di esistenza e unicità.

Si ricordi che il sistema ortonormale completo di riferimento per lo spazio $L^2_T(\mathbb{R})$ è dato dalla famiglia esponenziale:
$$
\left\{ e^{i \xi_k x} \right\}_{k \in \mathbb{Z}}, \qquad \xi_k := \frac{2k\pi}{T}
$$
In virtù della completezza della base, il termine noto $f \in L^2_T(\mathbb{R})$ si sviluppa in serie di Fourier:
$$
f(x) = \sum_{k \in \mathbb{Z}} \hat{f}_k e^{i \xi_k x}
$$
con coefficienti calcolati tramite la consueta formula integrale:
$$
\hat{f}_k = \frac{1}{T} \int_{-T/2}^{T/2} f(x) e^{-i \xi_k x}\,dx
$$
Se cerchiamo similmente la soluzione incognita all'interno dello spazio $L^2_T(\mathbb{R})$ nella forma:
$$
u(x) = \sum_{k \in \mathbb{Z}} \hat{u}_k e^{i \xi_k x}
$$
in base alle proprietà di derivazione delle serie di Fourier stabilite in precedenza vale:
$$
\widehat{u^{(j)}_k} = (i \xi_k)^j \hat{u}_k \qquad \forall j = 0, \dots, n, \quad \forall k \in \mathbb{Z}
$$
Trasformando termine a termine ambo i membri dell'equazione differenziale:
$$
\sum_{j=0}^n a_j \widehat{u^{(j)}_k} = \hat{f}_k \qquad \forall k \in \mathbb{Z}
$$
dove il primo membro rappresenta il coefficiente di Fourier del termine differenziale a sinistra.
Sostituendo l'espressione delle derivate:
$$
\sum_{j=0}^n a_j (i \xi_k)^j \hat{u}_k = \hat{f}_k \qquad \forall k \in \mathbb{Z}
$$
L'operatore differenziale ha così trasformato l'equazione differenziale in un **sistema disaccoppiato numerabile di equazioni algebriche lineari di primo grado** per ogni frequenza $k \in \mathbb{Z}$.

Definendo il **polinomio caratteristico** associato alla ODE:
$$
P(\lambda) := \sum_{j=0}^n a_j \lambda^j
$$
il sistema per i coefficienti incogniti assume la forma algebrica compatta:
$$
P(i \xi_k) \hat{u}_k = \hat{f}_k \qquad \forall k \in \mathbb{Z}
$$
Tale equazione algebrica per ciascun indice $k$ si presenta nella forma scalare elementare $a_k z_k = b_k$, con $a_k = P(i \xi_k)$, $z_k = \hat{u}_k$ e $b_k = \hat{f}_k$. La discussione classica impone:
- Se $a_k \ne 0 \implies \exists!$ soluzione unica $z_k = \frac{b_k}{a_k}$ (Caso 1)
- Se $a_k = 0 \implies \begin{cases} b_k \ne 0 \implies \nexists \text{ soluzione } z_k & \text{(Caso 2)} \\ b_k = 0 \implies \exists \infty \text{ soluzioni } \forall z_k \in \mathbb{C} & \text{(Caso 3)} \end{cases}$

Distinguiamo pertanto le situazioni operative per il nostro sistema al variare di $k \in \mathbb{Z}$:

**Caso 1 (Non risonanza globale):**
Se $P(i \xi_k) \ne 0$ per ogni $k \in \mathbb{Z}$, allora per ogni armonica la soluzione è univocamente determinata da:
$$
\hat{u}_k = \frac{\hat{f}_k}{P(i \xi_k)} \qquad \forall k \in \mathbb{Z}
$$
Di conseguenza, esiste un'**unica soluzione** $u \in L^2_T(\mathbb{R})$, data esplicitamente dalla serie:
$$
u(x) = \sum_{k \in \mathbb{Z}} \frac{\hat{f}_k}{P(i \xi_k)} e^{i \xi_k x}
$$

**Caso 2 (Risonanza e radici immaginarie del polinomio):**
Supponiamo che $P(i \xi_k) = 0$ per qualche indice $k \in \mathbb{Z}$.
Essendo $P$ un polinomio a coefficienti reali di grado $n$, esso ammette al più $n$ radici complesse distinte. Sia dunque l'insieme finito di indici critici:
$$
\{k_1^*, \dots, k_p^*\} \subset \mathbb{Z}, \qquad 1 \le p \le n : P(i \xi_{k_i^*}) = 0 \quad \forall i = 1, \dots, p
$$
Si aprono due sottocasi:
- **(a) Condizione di risonanza distruttiva:** Se esiste almeno un indice critico per cui la forzante ha componente di Fourier non nulla:
  $$
  \exists k \in \{k_1^*, \dots, k_p^*\} : \hat{f}_k \ne 0
  $$
  allora l'equazione corrispondente $0 \cdot \hat{u}_k = \hat{f}_k \ne 0$ è impossibile. Pertanto:
  $$
  \nexists u \in L^2_T(\mathbb{R}) \quad \text{soluzione}
  $$
- **(b) Condizione di ortogonalità (Infinite soluzioni):** Se per tutti gli indici critici il termine forzante è ortogonale alle armoniche risonanti:
  $$
  \hat{f}_k = 0 \qquad \forall k \in \{k_1^*, \dots, k_p^*\}
  $$
  allora le equazioni risonanti divengono identità banali $0 \cdot \hat{u}_k = 0$, soddisfatte per ogni scelta arbitraria del coefficiente. Esistono pertanto **infinite soluzioni** $u \in L^2_T(\mathbb{R})$ rappresentate da:
  $$
  u(x) = \sum_{k \in \mathbb{Z}} \hat{u}_k e^{i \xi_k x}
  $$
  con coefficienti:
  $$
  \hat{u}_k = \begin{cases} \dfrac{\hat{f}_k}{P(i \xi_k)} & \text{se } k \notin \{k_1^*, \dots, k_p^*\} \\ \text{arbitrario in } \mathbb{C} & \text{se } k \in \{k_1^*, \dots, k_p^*\} \end{cases}
  $$

> [!example] Risoluzione completa di un oscillatore armonico forzato
> Si consideri l'equazione differenziale del moto armonico forzato unidimensionale:
> $$
> u'' + u = \sin(\omega x), \qquad \omega > 0
> $$
> Il termine noto è $f(x) = \sin(\omega x)$, che appartiene a $L^2_T(\mathbb{R})$ con periodo fondamentale $T = \frac{2\pi}{\omega}$.
> 
> Il polinomio caratteristico associato all'operatore è:
> $$
> P(\lambda) = \lambda^2 + 1
> $$
> Le frequenze discrete associate alla base di Fourier su un periodo $T$ sono:
> $$
> \xi_k = \frac{2\pi k}{T} = k \omega, \qquad k \in \mathbb{Z}
> $$
> Valutando il polinomio sui nodi della base:
> $$
> P(i \xi_k) = (i k \omega)^2 + 1 = -k^2 \omega^2 + 1
> $$
> Tale termine si annulla se e solo se:
> $$
> -k^2 \omega^2 + 1 = 0 \iff \omega = \frac{1}{|k|} \quad (k \ne 0) \iff \omega = \frac{1}{k}, \quad k \in \mathbb{N}\setminus\{0\}
> $$
> Esprimiamo la forzante sinusoidale mediante la formula di Eulero:
> $$
> f(x) = \sin(\omega x) = \frac{1}{2i} e^{i \omega x} - \frac{1}{2i} e^{-i \omega x}
> $$
> I coefficienti di Fourier di $f$ rispetto alla base $\{e^{i k \omega x}\}_{k \in \mathbb{Z}}$ sono dunque:
> $$
> \hat{f}_k = \begin{cases} \dfrac{1}{2i} & \text{se } k = 1 \\ -\dfrac{1}{2i} & \text{se } k = -1 \\ 0 & \text{altrimenti} \end{cases}
> $$
> Il sistema ortonormale di riferimento è $\{e^{i \xi_k x}\}_{k \in \mathbb{Z}} = \{e^{i k \omega x}\}_{k \in \mathbb{Z}}$.
> 
> **Analisi dei casi:**
> 
> **Caso 1 (Non risonanza):**
> Sia $\omega \ne \frac{1}{k}$ per ogni $k \in \mathbb{N}\setminus\{0\}$.
> Allora $P(i \xi_k) \ne 0$ per ogni $k \in \mathbb{Z}$. Esiste dunque un'**unica soluzione** $u \in L^2_T(\mathbb{R})$ data da:
> $$
> u(x) = \sum_{k \in \mathbb{Z}} \hat{u}_k e^{i k \omega x}
> $$
> con coefficienti:
> $$
> \hat{u}_k = \begin{cases} \dfrac{1}{2i} \dfrac{1}{1 - \omega^2} & \text{se } k = 1 \\ -\dfrac{1}{2i} \dfrac{1}{1 - \omega^2} & \text{se } k = -1 \\ 0 & \text{altrimenti} \end{cases}
> $$
> Ricostruendo la funzione nello spazio reale:
> $$
> u(x) = \frac{1}{2i} \frac{1}{1 - \omega^2} e^{i \omega x} - \frac{1}{2i} \frac{1}{1 - \omega^2} e^{-i \omega x} = \frac{1}{1 - \omega^2} \left( \frac{e^{i \omega x} - e^{-i \omega x}}{2i} \right) = \frac{\sin(\omega x)}{1 - \omega^2}
> $$
> 
> **Caso 2 (Risonanza potenziale):**
> Supponiamo che $\omega = \frac{1}{k^*}$ per qualche $k^* \in \mathbb{N}\setminus\{0\}$.
> 
> - **Sottocaso (a) — Risonanza effettiva ($k^* = 1$):**
>   Se $k^* = 1$, allora la pulsante forzante è $\omega = 1$, e il periodo vale $T = 2\pi$.
>   Dobbiamo risolvere la relazione algebrica $P(i \xi_k) \hat{u}_k = \hat{f}_k$.
>   Per $k = \pm 1$ abbiamo:
>   $$
>   P(i \xi_1) = P(i \xi_{-1}) = -(1)^2 + 1 = 0
>   $$
>   Tuttavia, i corrispondenti coefficienti della forzante sono non nulli:
>   $$
>   \hat{f}_1 = \frac{1}{2i} \ne 0, \qquad \hat{f}_{-1} = -\frac{1}{2i} \ne 0
>   $$
>   L'equazione $0 \cdot \hat{u}_{\pm 1} = \pm \frac{1}{2i}$ è priva di soluzione. Pertanto:
>   $$
>   \nexists u \in L^2_T(\mathbb{R}) \quad \text{soluzione}
>   $$
>   *(Fisicamente ciò corrisponde al classico fenomeno della risonanza con instabilità secolare lineare $u(x) \propto x \cos x$, che non è periodica né appartiene a $L^2_T$)*.
> 
> - **Sottocaso (b) — Frequenza sottomultipla e forzante ortogonale ($k^* \ge 2$):**
>   Se $k^* \ge 2$, le radici del polinomio cadono sulle frequenze associate a $k = \pm k^*$, per cui:
>   $$
>   P(i \xi_{\pm k^*}) = -(k^*)^2 \omega^2 + 1 = -(k^*)^2 \frac{1}{(k^*)^2} + 1 = 0
>   $$
>   Tuttavia, poiché la forzante ha contenuto spettrale limitato alle sole armoniche $k = \pm 1$, per $k = \pm k^*$ si ha:
>   $$
>   \hat{f}_{\pm k^*} = 0 \quad (\text{essendo } k^* \ge 2)
>   $$
>   D'altra parte, per $k = \pm 1$ il polinomio non si annulla:
>   $$
>   P(i \xi_{\pm 1}) = 1 - \omega^2 = 1 - \frac{1}{(k^*)^2} \ne 0
>   $$
>   Di conseguenza, per le armoniche $k = \pm k^*$ l'equazione $0 \cdot \hat{u}_{\pm k^*} = 0$ ammette infinite soluzioni. Esistono pertanto **infinite soluzioni** $u \in L^2_T(\mathbb{R})$ con coefficienti:
>   $$
>   \hat{u}_k = \begin{cases} \dfrac{1}{2i} \dfrac{1}{1 - \omega^2} & \text{se } k = 1 \\ -\dfrac{1}{2i} \dfrac{1}{1 - \omega^2} & \text{se } k = -1 \\ \text{arbitrario in } \mathbb{C} & \text{se } k = \pm k^* \\ 0 & \text{altrimenti} \end{cases}
>   $$
>   La soluzione generale espressa in campo complesso assume la forma:
>   $$
>   u(x) = \frac{\sin(\omega x)}{1 - \omega^2} + c_1 e^{i x} + c_2 e^{-i x}, \qquad c_1, c_2 \in \mathbb{C} \text{ arbitrari}
>   $$
>   oppure, se si ricercano unicamente le soluzioni a valori reali:
>   $$
>   u(x) = \frac{\sin(\omega x)}{1 - \omega^2} + \alpha_1 \cos x + \alpha_2 \sin x, \qquad \alpha_1, \alpha_2 \in \mathbb{R} \text{ arbitrarie}
>   $$
>

### Equazione della corda vibrante (D'Alembert) con separazione di variabili

Si consideri il modello fisico classico di una corda vibrante tesa di lunghezza $L$, fissata rigidamente agli estremi $x = 0$ ed $x = L$.

Si cerca la funzione elongazione $u(x,t): [0, L] \times [0, +\infty) \to \mathbb{R}$ che descrive lo spostamento verticale all'istante temporale $t$ del punto avente ascissa di equilibrio $x$, governata dall'equazione iperbolica di D'Alembert unidimensionale:

$$
\frac{\partial^2 u}{\partial t^2} - c^2 \frac{\partial^2 u}{\partial x^2} = 0 \quad \text{in } (0, L) \times (0, +\infty)
$$
con condizioni al contorno omogenee di Dirichlet (estremi fissi):
$$
u(0, t) = 0, \quad u(L, t) = 0 \quad \forall t \ge 0
$$
e condizioni iniziali di Cauchy (profilo iniziale e velocità iniziale):
$$
u(x, 0) = g(x), \quad \frac{\partial u}{\partial t}(x, 0) = h(x) \quad \forall x \in [0, L]
$$

**Risoluzione per separazione di variabili:**

Si postula l'esistenza di soluzioni a variabili separate nella forma:
$$
u(x, t) = w(t) v(x)
$$
Affinché $u(x,t)$ non sia identicamente nulla (soluzioni non banali, $w \not\equiv 0$, $v \not\equiv 0$), le condizioni al contorno impongono:
$$
u(0, t) = w(t) v(0) = 0 \implies v(0) = 0
u(L, t) = w(t) v(L) = 0 \implies v(L) = 0
$$
Sostituendo l'ansatz nell'equazione differenziale:
$$
\frac{d^2 w}{dt^2}(t) v(x) - c^2 w(t) \frac{d^2 v}{dx^2}(x) = 0 \implies \ddot{w} v = c^2 w v''
$$
Dividendo entrambi i membri per $c^2 w(t) v(x) \ne 0$:
$$
\frac{1}{c^2} \frac{\ddot{w}(t)}{w(t)} = \frac{v''(x)}{v(x)} \quad \forall (x, t) \in [0, L] \times [0, +\infty)
$$
Il membro sinistro dipende esclusivamente dalla variabile temporale $t$, mentre il membro destro dipende unicamente dalla coordinata spaziale $x$. Tale uguaglianza può sussistere identicamente per ogni coppia $(x,t)$ se e solo se entrambe le espressioni sono uguali a una medesima costante di separazione $\lambda \in \mathbb{R}$:
$$
\frac{1}{c^2} \frac{\ddot{w}(t)}{w(t)} = \frac{v''(x)}{v(x)} = \lambda
$$
Si ottiene così il sistema disaccoppiato di equazioni differenziali ordinarie:
$$
\begin{cases}
\ddot{w}(t) - \lambda c^2 w(t) = 0 & (a) \\
v''(x) - \lambda v(x) = 0, \quad v(0) = v(L) = 0 & (b)
\end{cases}
$$

**Risoluzione del problema di Sturm-Liouville spaziale (b):**

L'equazione caratteristica associata a $v'' - \lambda v = 0$ è $r^2 - \lambda = 0 \implies r^2 = \lambda$.
Si distinguono tre casi a seconda del segno del parametro $\lambda$:
1. **Caso $\lambda = 0$:** L'equazione diventa $v''(x) = 0$, la cui soluzione generale è $v(x) = c_1 x + c_2$.
   - $v(0) = c_2 = 0$;
   - $v(L) = c_1 L = 0 \implies c_1 = 0$ (essendo $L > 0$).
   Si ottiene solo la soluzione degenere $v(x) \equiv 0$.
2. **Caso $\lambda > 0$:** Ponendo $\lambda = \alpha^2$ con $\alpha > 0$, le radici caratteristiche sono reali distinte $r_{1,2} = \pm \alpha$:
   $$
   v(x) = A e^{-\alpha x} + B e^{\alpha x}
   $$
   Imponendo le condizioni al contorno:
   $$
   \begin{cases}
   v(0) = A + B = 0 \implies B = -A \\
   v(L) = A(e^{-\alpha L} - e^{\alpha L}) = 0
   \end{cases}
   $$
   Poiché $\alpha L \ne 0$, $e^{-\alpha L} \ne e^{\alpha L}$, quindi l'unica soluzione ammissibile è $A = B = 0 \implies v(x) \equiv 0$.
3. **Caso $\lambda < 0$:** Ponendo $\lambda = -\mu^2$ con $\mu > 0$, le radici caratteristiche sono immaginarie pure $r_{1,2} = \pm i\mu$:
   $$
   v(x) = A \cos(\mu x) + B \sin(\mu x)
   $$
   Imponendo le condizioni al contorno:
   $$
   v(0) = A \cos(0) + B \sin(0) = A = 0
   v(L) = B \sin(\mu L) = 0
   $$
   Per ottenere soluzioni non banali ($B \ne 0$), deve annullarsi il seno:
   $$
   \sin(\mu L) = 0 \implies \mu L = k\pi \implies \mu_k = \frac{k\pi}{L}, \quad k \in \mathbb{N}^+
   $$
   I valori ammissibili della costante di separazione (autovalori) e le corrispondenti autofunzioni spaziali sono:
   $$
   \lambda_k = -\left( \frac{k\pi}{L} \right)^2, \quad v_k(x) = \sin\left( \frac{k\pi}{L} x \right), \quad k = 1, 2, 3, \dots
   $$

**Risoluzione dell'equazione temporale (a):**

Sostituendo il valore $\lambda_k = -\left(\frac{k\pi}{L}\right)^2$ nell'equazione temporale:
$$
\ddot{w}(t) + \left( \frac{c k \pi}{L} \right)^2 w(t) = 0
$$
Si tratta dell'equazione dell'oscillatore armonico semplice, avente pulsazione propria $\omega_k = \frac{c k \pi}{L}$. L'integrale generale associato è:
$$
w_k(t) = C_k \cos\left( \frac{c k \pi}{L} t \right) + D_k \sin\left( \frac{c k \pi}{L} t \right)
$$

**Sovrapposizione lineare e serie di Fourier delle soluzioni:**

Per ogni intero $k \ge 1$, la soluzione elementare a variabili separate (modo normale di vibrazione) ha l'espressione:
$$
u_k(x, t) = \left[ A_k \cos\left( \frac{c k \pi}{L} t \right) + B_k \sin\left( \frac{c k \pi}{L} t \right) \right] \sin\left( \frac{k\pi}{L} x \right)
$$
dove le costanti arbitrarie sono state ridefinite assorbendo la costante moltiplicativa spaziale.

Poiché l'equazione di D'Alembert è un'equazione differenziale lineare ed omogenea, per il **principio di sovrapposizione**, la combinazione lineare di infinite soluzioni elementari converge formalmente a una soluzione generale:
$$
u(x, t) = \sum_{k=1}^{+\infty} \left[ A_k \cos\left( \frac{c k \pi}{L} t \right) + B_k \sin\left( \frac{c k \pi}{L} t \right) \right] \sin\left( \frac{k\pi}{L} x \right)
$$

**Raccordo con i dati iniziali di Cauchy:**

Determinando i coefficienti $\{A_k\}$ e $\{B_k\}$ imponendo le condizioni iniziali a $t = 0$:
1. Valutando il profilo iniziale $u(x, 0) = g(x)$:
   $$
   u(x, 0) = \sum_{k=1}^{+\infty} A_k \sin\left( \frac{k\pi}{L} x \right) = g(x)
   $$
   I coefficienti $A_k$ coincidono con i coefficienti dello sviluppo in serie di Fourier di soli seni (estensione dispari) della funzione profilo $g(x)$ sull'intervallo $[0, L]$:
   $$
   A_k = \hat{g}(k) = \frac{2}{L} \int_0^L g(x) \sin\left( \frac{k\pi}{L} x \right) \, dx
   $$
2. Derivando termine a termine la serie rispetto a $t$:
   $$
   \frac{\partial u}{\partial t}(x, t) = \sum_{k=1}^{+\infty} \frac{c k \pi}{L} \left[ -A_k \sin\left( \frac{c k \pi}{L} t \right) + B_k \cos\left( \frac{c k \pi}{L} t \right) \right] \sin\left( \frac{k\pi}{L} x \right)
   $$
   Valutando all'istante iniziale $t = 0$:
   $$
   \frac{\partial u}{\partial t}(x, 0) = \sum_{k=1}^{+\infty} \left( B_k \frac{c k \pi}{L} \right) \sin\left( \frac{k\pi}{L} x \right) = h(x)
   $$
   I termini $\left( B_k \frac{c k \pi}{L} \right)$ rappresentano i coefficienti di Fourier di soli seni della velocità iniziale $h(x)$:
   $$
   B_k \frac{c k \pi}{L} = \hat{h}(k) = \frac{2}{L} \int_0^L h(x) \sin\left( \frac{k\pi}{L} x \right) \, dx \implies B_k = \frac{L}{c k \pi} \hat{h}(k)
   $$

Sostituendo i coefficienti ricavati, si ottiene la soluzione analitica esatta del problema della corda vibrante:
$$
u(x, t) = \sum_{k=1}^{+\infty} \left[ \hat{g}(k) \cos\left( \frac{c k \pi}{L} t \right) + \frac{L}{c k \pi} \hat{h}(k) \sin\left( \frac{c k \pi}{L} t \right) \right] \sin\left( \frac{k\pi}{L} x \right)
$$

### Equazione di Laplace su un disco in $\mathbb{R}^2$

Consideriamo il disco aperto di raggio $R > 0$ centrato nell'origine del piano $\mathbb{R}^2$:
$$
\Omega = B_R(0) := \left\{ (x, y) \in \mathbb{R}^2 : x^2 + y^2 < R^2 \right\}
$$
con bordo circolare $\partial\Omega = \left\{ (x, y) \in \mathbb{R}^2 : x^2 + y^2 = R^2 \right\}$.

I problemi al contorno classici associati all'equazione di Laplace su $\Omega$ sono:
- **Problema di Dirichlet classico:**
  $$
  (D)_c \begin{cases} \nabla^2 u = 0 & \text{in } \Omega \\ u = g & \text{in } \partial\Omega \end{cases}
  $$
- **Problema di Neumann classico:**
  $$
  (N)_c \begin{cases} \nabla^2 u = 0 & \text{in } \Omega \\ D_{\boldsymbol{\nu}} u = h & \text{in } \partial\Omega \end{cases}
  $$
dove $\boldsymbol{\nu}$ indica il versore normale esterno alla frontiera $\partial\Omega$.

**Idea metodologica:** Utilizzare le coordinate polari nel piano:
$$
\begin{cases} x = \rho \cos\theta \\ y = \rho \sin\theta \end{cases} \qquad \rho \in (0, R), \quad \theta \in \mathbb{R}
$$
Definiamo la funzione espressa in coordinate polari:
$$
u_\#(\rho, \theta) := u(\rho \cos\theta, \rho \sin\theta), \qquad \rho \in (0, R), \quad \theta \in \mathbb{R}
$$
La funzione $\theta \mapsto u_\#(\rho, \theta)$ è intrinsecamente $2\pi$-periodica rispetto alla variabile angolare $\theta$ per ogni raggio fissato $\rho \in (0, R)$.

L'operatore laplaciano $\nabla^2$ espresso nelle coordinate polari $(\rho, \theta)$ è dato dalla formula:
$$
\nabla^2 u = \frac{\partial^2 u_\#}{\partial \rho^2} + \frac{1}{\rho} \frac{\partial u_\#}{\partial \rho} + \frac{1}{\rho^2} \frac{\partial^2 u_\#}{\partial \theta^2}
$$
A raggio fissato $\rho \in (0, R)$, sviluppiamo la funzione angolare $2\pi$-periodica $u_\#(\rho, \cdot)$ in serie di Fourier complessa:
$$
u_\#(\rho, \theta) = \sum_{k \in \mathbb{Z}} \hat{u}_k(\rho) e^{i k \theta}, \qquad \theta \in [0, 2\pi], \quad \rho \in [0, R]
$$
Imponiamo che $u_\#$ sia soluzione dell'equazione di Laplace $\nabla^2 u = 0$:
$$
\frac{\partial^2}{\partial \rho^2} \left[ \sum_{k \in \mathbb{Z}} \hat{u}_k(\rho) e^{i k \theta} \right] + \frac{1}{\rho} \frac{\partial}{\partial \rho} \left[ \sum_{k \in \mathbb{Z}} \hat{u}_k(\rho) e^{i k \theta} \right] + \frac{1}{\rho^2} \frac{\partial^2}{\partial \theta^2} \left[ \sum_{k \in \mathbb{Z}} \hat{u}_k(\rho) e^{i k \theta} \right] = 0
$$
Supponendo di poter derivare termine a termine sotto il segno di serie per l'opportuna regolarità della funzione, si ha:
$$
\sum_{k \in \mathbb{Z}} \frac{\partial^2 \hat{u}_k}{\partial \rho^2}(\rho) e^{i k \theta} + \sum_{k \in \mathbb{Z}} \frac{1}{\rho} \frac{\partial \hat{u}_k}{\partial \rho}(\rho) e^{i k \theta} + \sum_{k \in \mathbb{Z}} \frac{1}{\rho^2} \hat{u}_k(\rho) (ik)^2 e^{i k \theta} = 0
$$
Poiché $(ik)^2 = -k^2$, raggruppando i coefficienti rispetto alla base esponenziale complessa:
$$
\sum_{k \in \mathbb{Z}} \left[ \frac{\partial^2 \hat{u}_k}{\partial \rho^2}(\rho) + \frac{1}{\rho} \frac{\partial \hat{u}_k}{\partial \rho}(\rho) - \frac{k^2}{\rho^2} \hat{u}_k(\rho) \right] e^{i k \theta} = 0
$$
Poiché $\{e^{i k \theta}\}_{k \in \mathbb{Z}}$ è un sistema ortonormale completo nello spazio di Hilbert $L^2_{2\pi}(\mathbb{R})$, l'annullamento della serie implica che ciascun coefficiente armonico debba essere identicamente nullo.
Otteniamo quindi una famiglia infinita numerabile di **equazioni differenziali ordinarie disaccoppiate** per le componenti radiali $\hat{u}_k(\rho)$:
$$
\frac{d^2 \hat{u}_k}{d\rho^2} + \frac{1}{\rho} \frac{d\hat{u}_k}{d\rho} - \frac{k^2}{\rho^2} \hat{u}_k = 0 \qquad \forall \rho \in (0, R), \quad \forall k \in \mathbb{Z}
$$

#### Risoluzione dell'Equazione Radiale di Eulero

Moltiplicando l'equazione radiale per $\rho^2$, si riconosce immediatamente la forma standard di un'**equazione differenziale di Eulero**:
$$
\rho^2 \frac{d^2 \hat{u}_k}{d\rho^2} + \rho \frac{d\hat{u}_k}{d\rho} - k^2 \hat{u}_k = 0
$$

**Caso $k \ne 0$:**
Per $k \ne 0$, cerchiamo soluzioni nella forma di potenza pura:
$$
\hat{u}_k(\rho) = \rho^\alpha, \qquad \alpha \in \mathbb{R}
$$
Calcolando le derivate prima e seconda rispetto a $\rho$:
$$
\frac{d\hat{u}_k}{d\rho} = \alpha \rho^{\alpha - 1}, \qquad \frac{d^2 \hat{u}_k}{d\rho^2} = \alpha(\alpha - 1) \rho^{\alpha - 2}
$$
Sostituendo nell'equazione:
$$
\alpha(\alpha - 1) \rho^{\alpha - 2} + \alpha \rho^{\alpha - 2} - k^2 \rho^{\alpha - 2} = 0
$$
Raccogliendo il fattore comune $\rho^{\alpha - 2} \ne 0$:
$$
\alpha(\alpha - 1) + \alpha - k^2 = 0 \iff \alpha^2 - \alpha + \alpha - k^2 = 0 \iff \alpha^2 - k^2 = 0
$$
L'equazione algebrica caratteristica ha radici reali opposte:
$$
\alpha = \pm |k| \qquad (\text{per } k \ne 0)
$$
Pertanto l'integrale generale dell'equazione radiale per ogni frequenza non nulla $k \ne 0$ è dato dalla combinazione lineare:
$$
\hat{u}_k(\rho) = a_k \rho^{|k|} + b_k \rho^{-|k|}, \qquad \{a_k\}_{k \in \mathbb{Z}\setminus\{0\}}, \{b_k\}_{k \in \mathbb{Z}\setminus\{0\}} \subset \mathbb{C}
$$

**Caso $k = 0$:**
Per l'armonica fondamentale $k = 0$, l'equazione radiale si riduce a:
$$
\frac{d^2 \hat{u}_0}{d\rho^2} + \frac{1}{\rho} \frac{d\hat{u}_0}{d\rho} = 0
$$
Ponendo la sostituzione ausiliaria $v(\rho) := \frac{d\hat{u}_0}{d\rho}(\rho)$, l'equazione si trasforma in un'equazione differenziale ordinaria del primo ordine a variabili separabili:
$$
\frac{dv}{d\rho} = -\frac{1}{\rho} v \implies \frac{dv}{v} = -\frac{d\rho}{\rho}
$$
Integrando ambo i membri:
$$
\log|v| = -\log\rho + c \implies v(\rho) = \frac{a_0}{\rho} = \frac{d\hat{u}_0}{d\rho}
$$
Integrando nuovamente rispetto a $\rho$:
$$
\hat{u}_0(\rho) = a_0 \log\rho + b_0, \qquad a_0, b_0 \in \mathbb{C}
$$

#### Forma Generale di Rappresentazione

Combinando la componente fondamentale $k = 0$ con le armoniche superiori $k \ne 0$, otteniamo la **forma generale di rappresentazione** per qualsiasi soluzione dell'equazione di Laplace in un disco forato:
$$
u_\#(\rho, \theta) = \sum_{k \in \mathbb{Z}} \hat{u}_k(\rho) e^{i k \theta} = a_0 \log\rho + b_0 + \sum_{k \in \mathbb{Z}\setminus\{0\}} \left[ a_k \rho^{|k|} + b_k \rho^{-|k|} \right] e^{i k \theta}
$$
valida per ogni $\rho \in (0, R)$ e per ogni angolo $\theta \in [0, 2\pi]$.

> [!note] Eliminazione delle singolarità all'origine e rappresentazione complessa
> Si osservi che la soluzione generale trovata presenta potenziali singolarità per $\rho \to 0^+$. Infatti:
> $$
> \lim_{\rho \to 0^+} \log\rho = -\infty, \qquad \lim_{\rho \to 0^+} \rho^{-|k|} = +\infty \quad \forall k \ne 0
> $$
> Poiché si ricercano soluzioni classiche regolari nel disco pieno $\Omega = B_R(0)$, ivi compreso il centro $\rho = 0$, è necessario imporre che la soluzione rimanga limitata all'origine.
> Si devono pertanto **scartare tutte le soluzioni singolari**, imponendo l'annullamento dei coefficienti singolari:
> $$
> a_0 = 0, \qquad b_k = 0 \quad \forall k \in \mathbb{Z}\setminus\{0\}
> $$
> Con tale scelta, la rappresentazione della soluzione regolare all'interno del disco si semplifica nella forma:
> $$
> u_\#(\rho, \theta) = b_0 + \sum_{k \in \mathbb{Z}\setminus\{0\}} a_k \rho^{|k|} e^{i k \theta}
> $$
> Ponendo per convenzione $c_0 := b_0$ e $c_k := a_k$ per ogni $k \ne 0$, si perviene alla forma compatta unificata:
> $$
> u_\#(\rho, \theta) = \sum_{k \in \mathbb{Z}} c_k \rho^{|k|} e^{i k \theta}, \qquad c_k \in \mathbb{C}
> $$
> 
> **Connessione fondamentale con l'Analisi Complessa:**
> Ricordando la rappresentazione esponenziale dei numeri complessi nel piano cartesiano:
> $$
> z = \rho e^{i\theta}, \qquad \bar{z} = \rho e^{-i\theta}
> $$
> possiamo scindere la serie bilatera nei termini a indice positivo e negativo:
> $$
> \sum_{k \in \mathbb{Z}} c_k \rho^{|k|} e^{i k \theta} = \sum_{k=0}^{+\infty} c_k \left( \rho e^{i\theta} \right)^k + \sum_{k=1}^{+\infty} c_{-k} \left( \rho e^{-i\theta} \right)^k = \sum_{k=0}^{+\infty} c_k z^k + \sum_{k=1}^{+\infty} c_{-k} \bar{z}^k
> $$
> Questa identità stabilisce in modo trasparente il legame profondo tra funzioni armoniche e olomorfe: ogni funzione armonica su un disco è esprimibile come somma di una funzione olomorfa nella variabile complessa $z$ e di una funzione anti-olomorfa nella variabile coniugata $\bar{z}$.
>
La soluzione è stata trovata ammettendo a priori di poter derivare termine a termine la serie. Funziona?
Per avere la derivazione termine a termine, le due serie di potenze devono convergere assolutamente nel disco $B_R(0)$. Pertanto è necessario determinare delle opportune condizioni sui coefficienti $\{c_k\}_{k \in \mathbb{Z}}$ che ne garantiscano la convergenza e la regolarità.

#### Condizioni di Convergenza e Successioni Temperate

> [!definition] Successione temperata
> Una successione $\{a_k\}_{k \in \mathbb{Z}}$ è detta **temperata** se esistono una costante $M > 0$ e un esponente $m \in \mathbb{N}$ tali che:
> $$
> |a_k| \le M(1 + |k|^m) \qquad \forall k \in \mathbb{Z}
> $$
> (ovvero la successione $|a_k|$ cresce al più polinomialmente rispetto all'indice $|k|$ per $|k| \to +\infty$).

> [!theorem] Regolarità armonica della serie per coefficienti temperati
> Sia $\{c_k\}_{k \in \mathbb{Z}} \subset \mathbb{C}$. Se la successione riscalata:
> $$
> \{c_k R^{|k|}\}_{k \in \mathbb{Z}}
> $$
> è una successione temperata per un raggio fissato $R > 0$, allora la funzione:
> $$
> u_\#(\rho, \theta) = \sum_{k \in \mathbb{Z}} c_k \rho^{|k|} e^{i k \theta}
> $$
> è **armonica** nel disco aperto $B_R(0)$, ossia soddisfa:
> $$
> \nabla^2 u = 0 \qquad \text{in } B_R(0)
> $$

> [!quote]- Dimostrazione
> Sia $\lambda \in (0, R)$ e consideriamo il punto $z$ nel disco chiuso $|z| \le \lambda$.
> Valutiamo la convergenza assoluta della serie per i termini ad indice positivo:
> $$
> \sum_{k=0}^{+\infty} |c_k z^k| = \sum_{k=0}^{+\infty} |c_k R^k| \left| \frac{z}{R} \right|^k
> $$
> Poiché $\{c_k R^{|k|}\}_{k \in \mathbb{Z}}$ è temperata, esistono $M > 0$ ed $m \in \mathbb{N}$ tali che $|c_k R^k| \le M(1 + k^m)$. Dunque, maggiorando con $|z| \le \lambda$:
> $$
> \sum_{k=0}^{+\infty} |c_k z^k| \le M \sum_{k=0}^{+\infty} (1 + k^m) \left( \frac{\lambda}{R} \right)^k < +\infty
> $$
> la cui convergenza è assicurata dal criterio del rapporto, essendo il raggio di convergenza dominato dal fattore geometrico con rapporto $\frac{\lambda}{R} < 1$.
> 
> Analogamente, per i termini a indice negativo associati alla variabile complessa coniugata $\bar{z}$:
> $$
> \sum_{k=1}^{+\infty} |c_{-k} \bar{z}^k| = \sum_{k=1}^{+\infty} |c_{-k} R^k| \left| \frac{\bar{z}}{R} \right|^k \le M \sum_{k=1}^{+\infty} (1 + k^m) \left( \frac{\lambda}{R} \right)^k < +\infty
> $$
> In particolare, le due serie di potenze convergono totalmente e assolutamente in ogni disco chiuso $\overline{B_\lambda(0)}$, per ogni $\lambda \in (0, R)$. $\blacksquare$

> [!note] Giustificazione della derivata termine a termine
> Per i risultati generali sulle serie di potenze analitiche, la convergenza totale sui compatti interni a $B_R(0)$ giustifica pienamente la derivazione termine a termine della serie fino a qualsiasi ordine in $B_R(0)$.
> Inoltre, poiché ogni termine $\rho^{|k|} e^{i k \theta}$ è una funzione armonica, la somma $u$ (e quindi $u_\#$) è una funzione armonica in $B_R(0)$, come desiderato.
>
#### Problema di Dirichlet nel disco

Consideriamo il problema al contorno di Dirichlet per l'equazione di Laplace sul disco bidimensionale $B_R(0)$:
$$
\begin{cases}
\nabla^2 u = 0 & \text{in } B_R(0) \\
u = g_\#(\theta) \in L^2_{2\pi}(\mathbb{R}) & \text{su } \partial B_R(0)
\end{cases}
$$
dove il dato al bordo $g_\#(\theta)$ è una funzione periodica di periodo $2\pi$ sviluppabile in serie di Fourier:
$$
g_\#(\theta) = \sum_{k \in \mathbb{Z}} \hat{g}_k e^{i k \theta}, \qquad \{\hat{g}_k\}_{k \in \mathbb{Z}} \text{ noti}
$$
In virtù dell'identità di Bessel-Parseval in $L^2_{2\pi}$:
$$
\|g_\#\|^2 = \sum_{k \in \mathbb{Z}} |\hat{g}_k|^2 < +\infty
$$
In particolare, per la condizione necessaria di convergenza delle serie numeriche:
$$
\hat{g}_k \xrightarrow{|k| \to +\infty} 0
$$

Imponiamo la condizione al contorno valutando la soluzione armonica generale sul bordo $\rho = R$:
$$
u_\#(\rho, \theta)\Big|_{\rho = R} = \sum_{k \in \mathbb{Z}} c_k R^{|k|} e^{i k \theta} = \sum_{k \in \mathbb{Z}} \hat{g}_k e^{i k \theta} \iff c_k = \frac{\hat{g}_k}{R^{|k|}} \quad \forall k \in \mathbb{Z}
$$
Sostituendo i coefficienti $c_k$ nell'espressione generale, la soluzione del problema di Dirichlet nel disco assume la forma:
$$
u_\#(\rho, \theta) = \sum_{k \in \mathbb{Z}} \hat{g}_k \left( \frac{\rho}{R} \right)^{|k|} e^{i k \theta}
$$
Se il dato al bordo $g$ è continuo, la serie converge uniformemente fino al bordo.
In virtù del principio del massimo per le funzioni armoniche, la soluzione trovata è unica.

> [!note] Verifica della condizione di temperanza dei coefficienti
> La successione riscalata $\{c_k R^{|k|}\}_{k \in \mathbb{Z}}$ è temperata. Infatti:
> $$
> c_k R^{|k|} = \hat{g}_k \xrightarrow{|k| \to +\infty} 0
> $$
> Poiché una successione convergente è limitata, esiste una costante $M > 0$ tale che:
> $$
> |c_k R^{|k|}| \le M \qquad \forall k \in \mathbb{Z}
> $$
> Dunque la condizione di successione temperata è soddisfatta con $m = 0$.
>
#### Problema di Neumann nel disco

Consideriamo ora il problema al contorno di Neumann sul disco $B_R(0)$:
$$
\begin{cases}
\nabla^2 u = 0 & \text{in } B_R(0) \\
D_{\boldsymbol{\nu}} u = g_\#(\theta) \in L^2_{2\pi}(\mathbb{R}) & \text{su } \partial B_R(0)
\end{cases}
$$
Essendo $g_\# \in L^2_{2\pi}(\mathbb{R})$, la sviluppiamo in serie di Fourier:
$$
g_\#(\theta) = \sum_{k \in \mathbb{Z}} \hat{g}_k e^{i k \theta}
$$
Per l'identità di Bessel:
$$
\|g_\#\|^2 = \sum_{k \in \mathbb{Z}} |\hat{g}_k|^2 < +\infty \implies \{\hat{g}_k\}_{k \in \mathbb{Z}} \in \ell^2 \implies \hat{g}_k \xrightarrow{|k| \to +\infty} 0
$$
Poiché $u_\#$ è rappresentabile mediante una serie di potenze armonica, essa è di classe $C^\infty(B_R(0))$. In coordinate polari, la derivata nella direzione del versore normale uscente $\boldsymbol{\nu} = \hat{\rho}$ coincide con la derivata parziale radiale:
$$
D_{\boldsymbol{\nu}} u\Big|_{\partial B_R(0)} = \frac{\partial u_\#}{\partial \rho}(R, \theta)
$$
Derivando termine a termine la serie rispetto a $\rho$:
$$
\frac{\partial u_\#}{\partial \rho}(\rho, \theta) = \sum_{k \in \mathbb{Z}} |k| c_k \rho^{|k|-1} e^{i k \theta}
$$
Imponendo la condizione al contorno per $\rho = R$:
$$
\frac{\partial u_\#}{\partial \rho}(R, \theta) = g_\#(\theta) \implies \sum_{k \in \mathbb{Z}} |k| c_k R^{|k|-1} e^{i k \theta} = \sum_{k \in \mathbb{Z}} \hat{g}_k e^{i k \theta} \iff |k| c_k R^{|k|-1} = \hat{g}_k \quad \forall k \in \mathbb{Z}
$$
Analizziamo separatamente i casi per l'indice $k$:
- **Per $k \ne 0$:**
  $$
  c_k = \frac{\hat{g}_k}{|k| R^{|k|-1}} \qquad \forall k \in \mathbb{Z} \setminus \{0\}
  $$
- **Per $k = 0$:**
  L'equazione algebrica per $k = 0$ si riduce a:
  $$
  0 \cdot c_0 = \hat{g}_0
  $$
  Si aprono due scenari distinti:
  - Se $\hat{g}_0 \ne 0 \implies \nexists c_0 \implies \nexists u_\#$ soluzione del problema di Neumann $(N)$.
  - Se $\hat{g}_0 = 0 \implies c_0$ è arbitrario $\implies \exists \infty$ soluzioni del problema di Neumann $(N)$.

Nel caso di solvibilità ($\hat{g}_0 = 0$), la rappresentazione esplicita della soluzione è:
$$
u_\#(\rho, \theta) = c_0 + \sum_{k \in \mathbb{Z} \setminus \{0\}} \frac{\hat{g}_k}{|k| R^{|k|-1}} \rho^{|k|} e^{i k \theta}, \qquad c_0 \in \mathbb{R}
$$

> [!note] Condizione di compatibilità integrale e teorema della divergenza
> Si osservi che se $u$ è soluzione del problema di Neumann $(N)$ e $\lambda \in \mathbb{R}$ è una costante, allora anche $u + \lambda$ risolve $(N)$, poiché $\nabla^2(u + \lambda) = 0$ e $D_{\boldsymbol{\nu}}(u + \lambda) = D_{\boldsymbol{\nu}} u$. Ciò spiega fisicamente e matematicamente l'indeterminazione della costante additiva $c_0$.
> 
> La condizione $\hat{g}_0 = 0$ rappresenta la **condizione necessaria di compatibilità** del problema di Neumann. Infatti, calcolando il valor medio di $g$:
> $$
> \hat{g}_0 = \frac{1}{2\pi} \int_0^{2\pi} g(\theta) e^{-i \cdot 0 \cdot \theta} \, d\theta = \frac{1}{2\pi} \int_0^{2\pi} g(\theta) \, d\theta = \frac{1}{2\pi R} \int_{\partial B_R(0)} g \, ds
> $$
> D'altra parte, integrando l'equazione di Laplace sul disco $B_R(0)$ e applicando il teorema di Gauss-Green (della divergenza):
> $$
> \nabla^2 u = 0 \implies \iint_{B_R(0)} \nabla^2 u \, dx\,dy = \iint_{B_R(0)} \nabla \cdot (\nabla u) \, dx\,dy = 0
> $$
> Per il teorema della divergenza:
> $$
> \iint_{B_R(0)} \nabla \cdot (\nabla u) \, dx\,dy = \int_{\partial B_R(0)} \nabla u \cdot \boldsymbol{\nu}_e \, ds = \int_{\partial B_R(0)} D_{\boldsymbol{\nu}} u \, ds = 0
> $$
> Poiché $D_{\boldsymbol{\nu}} u = g$ sul bordo, ne deriva:
> $$
> \int_{\partial B_R(0)} g \, ds = 2\pi R \, \hat{g}_0 = 0 \iff \hat{g}_0 = 0
> $$
> Pertanto:
> $$
> \hat{g}_0 \ne 0 \iff \nexists u \text{ soluzione}
> $$
> 
> Inoltre, la successione $\{c_k R^{|k|}\}_{k \in \mathbb{Z} \setminus \{0\}}$ è temperata:
> $$
> c_k R^{|k|} = \frac{\hat{g}_k}{|k| R^{|k|-1}} R^{|k|} = \frac{\hat{g}_k}{|k|} R \xrightarrow{|k| \to +\infty} 0
> $$
> essendo infinitesima, essa è limitata e soddisfa la condizione con $m = 0$.
>
