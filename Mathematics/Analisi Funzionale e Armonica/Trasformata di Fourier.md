---
title: "La Trasformata di Fourier"
domain: "math/harmonic-analysis"
source_course: "Analisi 3 (Cap. 4)"
tags:
  - math/harmonic/fourier-transform
  - math/harmonic/plancherel
  - math/distributions/tempered
---

# 4. La Trasformata di Fourier

## 4.1. Definizione e Proprietà di Base in $L^1(\mathbb{R}^n)$

> [!definition] Trasformata di Fourier in $L^1(\mathbb{R}^n)$
> Sia $u \in L^1(\mathbb{R}^n)$. La sua **trasformata di Fourier** è la funzione $\hat{u}: \mathbb{R}^n \to \mathbb{C}$ definita dall'integrale:
> $$
> \hat{u}(\boldsymbol{\xi}) := \int_{\mathbb{R}^n} u(\mathbf{x}) e^{-i \boldsymbol{\xi} \cdot \mathbf{x}} \, d\mathbf{x} \qquad \forall \boldsymbol{\xi} \in \mathbb{R}^n
> $$

> [!note] Osservazioni fondamentali sulla definizione
> 1. $\hat{u}$ è un integrale dipendente dal parametro vettoriale $\boldsymbol{\xi} \in \mathbb{R}^n$.
> 2. La definizione è ben posta per ogni $u \in L^1(\mathbb{R}^n)$. Infatti, poiché $|e^{-i \boldsymbol{\xi} \cdot \mathbf{x}}| = 1$:
>    $$
>    \left| \int_{\mathbb{R}^n} u(\mathbf{x}) e^{-i \boldsymbol{\xi} \cdot \mathbf{x}} \, d\mathbf{x} \right| \le \int_{\mathbb{R}^n} |u(\mathbf{x})| \, |e^{-i \boldsymbol{\xi} \cdot \mathbf{x}}| \, d\mathbf{x} = \int_{\mathbb{R}^n} |u(\mathbf{x})| \, d\mathbf{x} = \|u\|_1 < +\infty
>    $$
>    Vale pertanto la disuguaglianza fondamentale:
>    $$
>    |\hat{u}(\boldsymbol{\xi})| \le \|u\|_1 \qquad \forall \boldsymbol{\xi} \in \mathbb{R}^n
>    $$
> 3. L'immagine della trasformata è nel campo complesso, $\hat{u}: \mathbb{R}^n \to \mathbb{C}$. Per funzioni $u$ a valori reali, decomponendo l'esponenziale complesso mediante l'identità di Eulero:
>    $$
>    \text{Re} \, \hat{u}(\boldsymbol{\xi}) = \int_{\mathbb{R}^n} u(\mathbf{x}) \cos(\boldsymbol{\xi} \cdot \mathbf{x}) \, d\mathbf{x}
>    \text{Im} \, \hat{u}(\boldsymbol{\xi}) = -\int_{\mathbb{R}^n} u(\mathbf{x}) \sin(\boldsymbol{\xi} \cdot \mathbf{x}) \, d\mathbf{x}
>    $$
> 4. La definizione si estende immediatamente a funzioni a valori complessi $u: \mathbb{R}^n \to \mathbb{C}$ con la medesima formula.
> 5. La trasformata di Fourier è un operatore lineare $\mathcal{F}$ tra spazi funzionali (e successivamente su distribuzioni). Rappresenta l'analogo continuo delle serie di Fourier, dove il reticolo discreto delle frequenze $k \in \mathbb{Z}$ è sostituito dal continuo $\boldsymbol{\xi} \in \mathbb{R}^n$.
>
### Linearità della Trasformata

L'operatore $\mathcal{F}$ è lineare su $L^1(\mathbb{R}^n)$:
$$
\forall u, v \in L^1(\mathbb{R}^n), \quad \forall \alpha, \beta \in \mathbb{C}:
\mathcal{F}(\alpha u + \beta v)(\boldsymbol{\xi}) = \int_{\mathbb{R}^n} (\alpha u(\mathbf{x}) + \beta v(\mathbf{x})) e^{-i \boldsymbol{\xi} \cdot \mathbf{x}} \, d\mathbf{x} = \alpha \int_{\mathbb{R}^n} u(\mathbf{x}) e^{-i \boldsymbol{\xi} \cdot \mathbf{x}} \, d\mathbf{x} + \beta \int_{\mathbb{R}^n} v(\mathbf{x}) e^{-i \boldsymbol{\xi} \cdot \mathbf{x}} \, d\mathbf{x}
= \alpha \mathcal{F}(u)(\boldsymbol{\xi}) + \beta \mathcal{F}(v)(\boldsymbol{\xi})
$$

## 4.2. Esempi e Trasformate Notevoli

> [!example] Funzione caratteristica di un intervallo limitato
> Consideriamo la funzione indicatrice dell'intervallo $[a, b] \subset \mathbb{R}$, $u(x) = \chi_{[a, b]}(x)$. Calcoliamo la sua trasformata di Fourier in dimensione $n = 1$:
> $$
> \hat{\chi}_{[a, b]}(\xi) = \int_{\mathbb{R}} \chi_{[a, b]}(x) e^{-i \xi x} \, dx = \int_a^b [\cos(\xi x) - i \sin(\xi x)] \, dx
> $$
> Per $\xi \ne 0$:
> $$
> = \left[ \frac{\sin(\xi x)}{\xi} + i \frac{\cos(\xi x)}{\xi} \right]_a^b = \frac{\sin(b \xi) - \sin(a \xi)}{\xi} + i \frac{\cos(b \xi) - \cos(a \xi)}{\xi}
> $$
> Per $\xi = 0$:
> $$
> \hat{\chi}_{[a, b]}(0) = \int_a^b 1 \, dx = b - a
> $$
> Nel caso notevole di un intervallo simmetrico $[-b, b]$ (ponendo $a = -b$):
> $$
> \hat{\chi}_{[-b, b]}(\xi) = \begin{cases} 2 \dfrac{\sin(b \xi)}{\xi} & \text{per } \xi \ne 0 \\ 2b & \text{per } \xi = 0 \end{cases}
> $$
> Si noti che:
> $$
> \mathcal{F}(\chi_{[a, b]}) \in L^\infty(\mathbb{R}) \cap C^0(\mathbb{R}), \qquad \text{ma } \mathcal{F}(\chi_{[a, b]}) \notin L^1(\mathbb{R})
> $$
> poiché la funzione seno cardinale non è integrabile in senso assoluto su $\mathbb{R}$.
> $\leadsto$ **In generale, la trasformata di Fourier di una funzione $u \in L^1(\mathbb{R}^n)$ non appartiene a $L^1(\mathbb{R}^n)$!**

> [!example] Esponenziale bilaterale $e^{-|x|}$
> Sia $u(x) = e^{-|x|}$ su $\mathbb{R}$. Calcoliamo la trasformata di Fourier:
> $$
> \hat{u}(\xi) = \int_{\mathbb{R}} e^{-|x|} e^{-i \xi x} \, dx = \int_{-\infty}^0 e^{(1 - i \xi)x} \, dx + \int_0^{+\infty} e^{-(1 + i \xi)x} \, dx
> $$
> Integrando esplicitamente i due esponenziali:
> $$
> = \left[ \frac{e^{(1 - i \xi)x}}{1 - i \xi} \right]_{-\infty}^0 + \left[ \frac{e^{-(1 + i \xi)x}}{-(1 + i \xi)} \right]_0^{+\infty} = \frac{1}{1 - i \xi} + \frac{1}{1 + i \xi}
> $$
> Sommano le frazioni a comune denominatore:
> $$
> = \frac{(1 + i \xi) + (1 - i \xi)}{(1 - i \xi)(1 + i \xi)} = \frac{2}{1 + \xi^2}
> $$
> Si noti che ciascuno dei due addendi corrisponde alla trasformata di Fourier di una funzione esponenziale monolatera:
> $$
> \mathcal{F}\left[ e^x \chi_{(-\infty, 0]}(x) \right](\xi) = \frac{1}{1 - i \xi}
> \mathcal{F}\left[ e^{-x} \chi_{[0, +\infty)}(x) \right](\xi) = \frac{1}{1 + i \xi}
> $$

> [!example] Funzione di Cauchy-Lorentz $\frac{1}{1 + x^2}$ e dualità
> Sia $u(x) = \frac{1}{1 + x^2}$. Calcoliamo la sua trasformata di Fourier mediante il calcolo dei residui nel piano complesso:
> $$
> \hat{u}(\xi) = \int_{\mathbb{R}} \frac{e^{-i \xi x}}{1 + x^2} \, dx = \text{v.p.} \int_{\mathbb{R}} \frac{e^{-i \xi x}}{1 + x^2} \, dx = \lim_{R \to +\infty} \int_{-R}^R \frac{e^{-i \xi x}}{1 + x^2} \, dx
> $$
> Effettuando la sostituzione $\omega := -\xi$:
> $$
> \hat{u}(\xi) = \lim_{R \to +\infty} \int_{-R}^R \frac{e^{i \omega x}}{1 + x^2} \, dx
> $$
> L'integrale rientra negli integrali di tipo II di Jordan. La funzione integranda $f(z) = \frac{e^{i \omega z}}{1 + z^2}$ possiede due poli semplici in $z = \pm i$, con residui:
> $$
> \lim_{z \to \pm i} (z \mp i) \frac{e^{i \omega z}}{(z + i)(z - i)} = \lim_{z \to \pm i} \frac{e^{i \omega z}}{z \pm i} = \pm \frac{e^{\mp \omega}}{2i}
> $$
> Distinguiamo i due casi a seconda del segno del parametro:
> - **Se $\xi < 0 \implies \omega > 0$:** per il lemma di Jordan si chiude il cammino nel semipiano superiore $\text{Im}(z) > 0$, che racchiude la singolarità $z_0 = i$:
>   $$
>   \hat{u}(\xi) = 2\pi i \, \text{Res}\left( \frac{e^{i \omega z}}{1 + z^2}, i \right) = 2\pi i \left( \frac{e^{-\omega}}{2i} \right) = \pi e^{-\omega} = \pi e^\xi
>   $$
> - **Se $\xi > 0 \implies \omega < 0$:** per il lemma di Jordan si chiude il cammino nel semipiano inferiore $\text{Im}(z) < 0$, che racchiude la singolarità $z_0 = -i$ (con orientazione oraria del bordo, che introduce un segno negativo $-2\pi i$):
>   $$
>   \hat{u}(\xi) = -2\pi i \, \text{Res}\left( \frac{e^{i \omega z}}{1 + z^2}, -i \right) = -2\pi i \left( -\frac{e^\omega}{2i} \right) = \pi e^\omega = \pi e^{-\xi}
>   $$
> Riunendo i due rami:
> $$
> \hat{u}(\xi) = \pi e^{-|\xi|}
> $$
> Combinando questo risultato con l'esempio precedente, si ottiene la catena di trasformate:
> $$
> e^{-|x|} \overset{\mathcal{F}}{\longmapsto} \frac{2}{1 + \xi^2} \overset{\mathcal{F}}{\longmapsto} 2\pi e^{-|x|}
> $$
> $\hookrightarrow$ Dunque $\hat{\hat{u}}(x) = 2\pi u(x)$, essendo in questo caso $u(x)$ una funzione pari.
> Tuttavia, in generale tale identità non vale per ogni funzione $u \in L^1(\mathbb{R}^n)$: affinché l'operatore di Fourier possa essere iterato o invertito puntualmente, è necessario che anche $\hat{u} \in L^1(\mathbb{R}^n)$.
>
## 4.3. Il Teorema di Riemann-Lebesgue

> [!theorem] Teorema di Riemann-Lebesgue
> Sia $u \in L^1(\mathbb{R}^n)$. Allora la sua trasformata di Fourier $\hat{u}$ gode delle seguenti proprietà:
> 1. $\hat{u} \in L^\infty(\mathbb{R}^n)$
> 2. $\hat{u} \in C^0(\mathbb{R}^n)$
>    $$
>    \implies \mathcal{F} \in \mathcal{L}(L^1(\mathbb{R}^n), L^\infty(\mathbb{R}^n)) \qquad \text{con } \|\mathcal{F}\|_{\mathcal{L}} = 1
>    $$
> 3. $\hat{u}$ decade a zero all'infinito:
>    $$
>    \lim_{\|\boldsymbol{\xi}\| \to +\infty} \hat{u}(\boldsymbol{\xi}) = 0
>    $$

> [!quote]- Dimostrazione
> **Passo 1: Continuità globale ($\hat{u} \in C^0(\mathbb{R}^n)$)**
> Fissiamo un punto $\boldsymbol{\xi}_0 \in \mathbb{R}^n$ e consideriamo una successione $\{\boldsymbol{\xi}_m\}_{m \in \mathbb{N}} \subset \mathbb{R}^n$ tale che:
> $$
> \boldsymbol{\xi}_m \xrightarrow{m \to +\infty} \boldsymbol{\xi}_0
> $$
> Dobbiamo mostrare che $\hat{u}(\boldsymbol{\xi}_m) \xrightarrow{m \to +\infty} \hat{u}(\boldsymbol{\xi}_0)$.
> Poiché il prodotto scalare è continuo, per ogni $\mathbf{x} \in \mathbb{R}^n$ fissato:
> $$
> \boldsymbol{\xi}_m \cdot \mathbf{x} \xrightarrow{m \to +\infty} \boldsymbol{\xi}_0 \cdot \mathbf{x} \implies e^{-i \boldsymbol{\xi}_m \cdot \mathbf{x}} \xrightarrow{m \to +\infty} e^{-i \boldsymbol{\xi}_0 \cdot \mathbf{x}}
> $$
> Pertanto la successione di funzioni integrande converge puntualmente quasi ovunque:
> $$
> u(\mathbf{x}) e^{-i \boldsymbol{\xi}_m \cdot \mathbf{x}} \xrightarrow{m \to +\infty} u(\mathbf{x}) e^{-i \boldsymbol{\xi}_0 \cdot \mathbf{x}} \qquad \text{q.o. in } \mathbb{R}^n
> $$
> Inoltre, per ogni $m \in \mathbb{N}$:
> $$
> |u(\mathbf{x}) e^{-i \boldsymbol{\xi}_m \cdot \mathbf{x}}| = |u(\mathbf{x})| \in L^1(\mathbb{R}^n)
> $$
> La funzione $|u| \in L^1(\mathbb{R}^n)$ fornisce una dominante integrabile indipendente da $m$. Per il teorema di convergenza dominata di Lebesgue:
> $$
> \lim_{m \to +\infty} \int_{\mathbb{R}^n} u(\mathbf{x}) e^{-i \boldsymbol{\xi}_m \cdot \mathbf{x}} \, d\mathbf{x} = \int_{\mathbb{R}^n} u(\mathbf{x}) e^{-i \boldsymbol{\xi}_0 \cdot \mathbf{x}} \, d\mathbf{x}
> $$
> ovvero:
> $$
> \lim_{m \to +\infty} \hat{u}(\boldsymbol{\xi}_m) = \hat{u}(\boldsymbol{\xi}_0)
> $$
> Per la caratterizzazione sequenziale della continuità, $\hat{u}$ è continua in ogni punto $\boldsymbol{\xi}_0 \in \mathbb{R}^n$.
> 
> **Passo 2: Limitatezza in $L^\infty(\mathbb{R}^n)$ e continuità dell'operatore**
> Per ogni $\boldsymbol{\xi} \in \mathbb{R}^n$:
> $$
> |\hat{u}(\boldsymbol{\xi})| = \left| \int_{\mathbb{R}^n} u(\mathbf{x}) e^{-i \boldsymbol{\xi} \cdot \mathbf{x}} \, d\mathbf{x} \right| \le \int_{\mathbb{R}^n} |u(\mathbf{x})| \, d\mathbf{x} = \|u\|_1
> $$
> Passando all'estremo superiore su $\boldsymbol{\xi} \in \mathbb{R}^n$:
> $$
> \|\hat{u}\|_\infty = \sup_{\boldsymbol{\xi} \in \mathbb{R}^n} |\hat{u}(\boldsymbol{\xi})| \le \|u\|_1
> $$
> Dunque $\hat{u} \in L^\infty(\mathbb{R}^n)$ e l'operatore $\mathcal{F}: L^1(\mathbb{R}^n) \to L^\infty(\mathbb{R}^n)$ è un operatore lineare limitato (continuo), con norma operatoriale:
> $$
> \|\mathcal{F}\|_{\mathcal{L}(L^1, L^\infty)} = \sup_{u \ne 0} \frac{\|\mathcal{F}(u)\|_\infty}{\|u\|_1} \le 1
> $$
> Scegliendo una funzione non negativa $u \ge 0$, si ha $\hat{u}(0) = \int_{\mathbb{R}^n} u(\mathbf{x}) \, d\mathbf{x} = \|u\|_1$, donde $\|\hat{u}\|_\infty = \|u\|_1$, il che prova che la norma operatoriale è esattamente $\|\mathcal{F}\|_{\mathcal{L}} = 1$.
> 
> **Passo 3: Decadimento all'infinito ($\lim_{\|\boldsymbol{\xi}\| \to +\infty} \hat{u}(\boldsymbol{\xi}) = 0$)**
> Dimostriamo il risultato in dimensione $n = 1$ (l'estensione a $\mathbb{R}^n$ segue analogamente per approssimazione con funzioni test a supporto compatto).
> Poiché lo spazio delle funzioni lisce a supporto compatto $C_0^\infty(\mathbb{R})$ è denso in $L^1(\mathbb{R})$, per ogni fissato $\varepsilon > 0$ esiste una funzione $\varphi \in C_0^\infty(\mathbb{R})$ tale che:
> $$
> \|\varphi - u\|_1 < \frac{\varepsilon}{2}
> $$
> In particolare, essendo a supporto compatto, esiste una costante $M > 0$ tale che $\text{supp} \, \varphi \subseteq [-M, M]$.
> Per la limitatezza in $L^\infty$ provata al Passo 2:
> $$
> |\hat{u}(\xi) - \hat{\varphi}(\xi)| = |\mathcal{F}(u - \varphi)(\xi)| \le \|\mathcal{F}(u - \varphi)\|_\infty \le \|u - \varphi\|_1 < \frac{\varepsilon}{2} \qquad \forall \xi \in \mathbb{R}
> $$
> Valutiamo ora la trasformata di Fourier della funzione test regolare $\varphi$. Per ogni $\xi \ne 0$, integrando per parti e ricordando che $\varphi(M) = \varphi(-M) = 0$:
> $$
> \hat{\varphi}(\xi) = \int_{\mathbb{R}} \varphi(x) e^{-i \xi x} \, dx = \int_{-M}^M \varphi(x) e^{-i \xi x} \, dx = \left[ \frac{\varphi(x) e^{-i \xi x}}{-i \xi} \right]_{-M}^M + \frac{1}{i \xi} \int_{-M}^M \varphi'(x) e^{-i \xi x} \, dx
> $$
> Il termine al bordo si annulla identicamente:
> $$
> \left[ \frac{\varphi(x) e^{-i \xi x}}{-i \xi} \right]_{-M}^M = 0
> $$
> Pertanto:
> $$
> \hat{\varphi}(\xi) = \frac{1}{i \xi} \int_{\mathbb{R}} \varphi'(x) e^{-i \xi x} \, dx
> $$
> Prendendo il modulo:
> $$
> |\hat{\varphi}(\xi)| = \frac{1}{|\xi|} |\widehat{\varphi'}(\xi)| \le \frac{1}{|\xi|} \|\varphi'\|_1 < +\infty
> $$
> Scegliendo $K := \frac{2 \|\varphi'\|_1}{\varepsilon} > 0$, per ogni $|\xi| > K$ si ha:
> $$
> |\hat{\varphi}(\xi)| \le \frac{1}{K} \|\varphi'\|_1 = \frac{\varepsilon}{2}
> $$
> Utilizzando la disuguaglianza triangolare, per ogni $|\xi| > K$ otteniamo:
> $$
> |\hat{u}(\xi)| \le |\hat{u}(\xi) - \hat{\varphi}(\xi)| + |\hat{\varphi}(\xi)| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon
> $$
> Poiché $\varepsilon > 0$ è arbitrario, per la definizione di limite:
> $$
> \lim_{|\xi| \to +\infty} \hat{u}(\xi) = 0 \qquad \blacksquare
> $$
>
## 4.4. Proprietà Algebriche della Trasformata di Fourier

> [!proposition] Proprietà algebriche fondamentali
> Siano $u \in L^1(\mathbb{R}^n)$, $\mathbf{a} \in \mathbb{R}^n$ e $c \in \mathbb{R} \setminus \{0\}$. Allora valgono le seguenti identità:
> 
> 1. **Traslazione spaziale:**
>    Se $v(\mathbf{x}) = u(\mathbf{x} - \mathbf{a})$, allora:
>    $$
>    \hat{v}(\boldsymbol{\xi}) = e^{-i \boldsymbol{\xi} \cdot \mathbf{a}} \hat{u}(\boldsymbol{\xi}) \qquad \forall \boldsymbol{\xi} \in \mathbb{R}^n
>    $$
> 2. **Modulazione esponenziale:**
>    Se $v(\mathbf{x}) = e^{i \mathbf{a} \cdot \mathbf{x}} u(\mathbf{x})$, allora:
>    $$
>    \hat{v}(\boldsymbol{\xi}) = \hat{u}(\boldsymbol{\xi} - \mathbf{a}) \qquad \forall \boldsymbol{\xi} \in \mathbb{R}^n
>    $$
> 3. **Modulazione cosinusoidale:**
>    Se $v(\mathbf{x}) = \cos(\mathbf{a} \cdot \mathbf{x}) u(\mathbf{x})$, allora:
>    $$
>    \hat{v}(\boldsymbol{\xi}) = \frac{1}{2} \hat{u}(\boldsymbol{\xi} - \mathbf{a}) + \frac{1}{2} \hat{u}(\boldsymbol{\xi} + \mathbf{a})
>    $$
> 4. **Modulazione sinusoidale:**
>    Se $v(\mathbf{x}) = \sin(\mathbf{a} \cdot \mathbf{x}) u(\mathbf{x})$, allora:
>    $$
>    \hat{v}(\boldsymbol{\xi}) = \frac{1}{2i} \hat{u}(\boldsymbol{\xi} - \mathbf{a}) - \frac{1}{2i} \hat{u}(\boldsymbol{\xi} + \mathbf{a})
>    $$
> 5. **Riscalamento (Dilatazione):**
>    Se $v(\mathbf{x}) = u\left( \frac{\mathbf{x}}{c} \right)$, allora:
>    $$
>    \hat{v}(\boldsymbol{\xi}) = |c|^n \hat{u}(c \boldsymbol{\xi}) \qquad \forall \boldsymbol{\xi} \in \mathbb{R}^n
>    $$

> [!quote]- Dimostrazione
> **1. Traslazione spaziale:**
> Applicando la definizione di trasformata:
> $$
> \hat{v}(\boldsymbol{\xi}) = \int_{\mathbb{R}^n} u(\mathbf{x} - \mathbf{a}) e^{-i \boldsymbol{\xi} \cdot \mathbf{x}} \, d\mathbf{x}
> $$
> Eseguiamo il cambio di variabile $\mathbf{y} = \mathbf{x} - \mathbf{a}$, da cui $\mathbf{x} = \mathbf{y} + \mathbf{a}$ e $d\mathbf{x} = d\mathbf{y}$:
> $$
> \hat{v}(\boldsymbol{\xi}) = \int_{\mathbb{R}^n} u(\mathbf{y}) e^{-i \boldsymbol{\xi} \cdot (\mathbf{y} + \mathbf{a})} \, d\mathbf{y} = e^{-i \boldsymbol{\xi} \cdot \mathbf{a}} \int_{\mathbb{R}^n} u(\mathbf{y}) e^{-i \boldsymbol{\xi} \cdot \mathbf{y}} \, d\mathbf{y} = e^{-i \boldsymbol{\xi} \cdot \mathbf{a}} \hat{u}(\boldsymbol{\xi})
> $$
> 
> **2. Modulazione esponenziale:**
> Per definizione:
> $$
> \hat{v}(\boldsymbol{\xi}) = \int_{\mathbb{R}^n} e^{i \mathbf{a} \cdot \mathbf{x}} u(\mathbf{x}) e^{-i \boldsymbol{\xi} \cdot \mathbf{x}} \, d\mathbf{x} = \int_{\mathbb{R}^n} u(\mathbf{x}) e^{-i (\boldsymbol{\xi} - \mathbf{a}) \cdot \mathbf{x}} \, d\mathbf{x} = \hat{u}(\boldsymbol{\xi} - \mathbf{a})
> $$
> 
> **3. Modulazione cosinusoidale:**
> Riscriviamo il coseno mediante le formule di Eulero:
> $$
> v(\mathbf{x}) = u(\mathbf{x}) \cos(\mathbf{a} \cdot \mathbf{x}) = u(\mathbf{x}) \frac{e^{i \mathbf{a} \cdot \mathbf{x}} + e^{-i \mathbf{a} \cdot \mathbf{x}}}{2} = \frac{1}{2} u(\mathbf{x}) e^{i \mathbf{a} \cdot \mathbf{x}} + \frac{1}{2} u(\mathbf{x}) e^{-i \mathbf{a} \cdot \mathbf{x}}
> $$
> Per la linearità della trasformata di Fourier e applicando la proprietà di modulazione esponenziale (punto 2) con vettori $\mathbf{a}$ e $-\mathbf{a}$:
> $$
> \hat{v}(\boldsymbol{\xi}) = \frac{1}{2} \hat{u}(\boldsymbol{\xi} - \mathbf{a}) + \frac{1}{2} \hat{u}(\boldsymbol{\xi} + \mathbf{a})
> $$
> 
> **4. Modulazione sinusoidale:**
> Riscriviamo il seno mediante le formule di Eulero:
> $$
> v(\mathbf{x}) = u(\mathbf{x}) \sin(\mathbf{a} \cdot \mathbf{x}) = u(\mathbf{x}) \frac{e^{i \mathbf{a} \cdot \mathbf{x}} - e^{-i \mathbf{a} \cdot \mathbf{x}}}{2i} = \frac{1}{2i} u(\mathbf{x}) e^{i \mathbf{a} \cdot \mathbf{x}} - \frac{1}{2i} u(\mathbf{x}) e^{-i \mathbf{a} \cdot \mathbf{x}}
> $$
> Per linearità e modulazione:
> $$
> \hat{v}(\boldsymbol{\xi}) = \frac{1}{2i} \hat{u}(\boldsymbol{\xi} - \mathbf{a}) - \frac{1}{2i} \hat{u}(\boldsymbol{\xi} + \mathbf{a})
> $$
> 
> **5. Riscalamento (Dilatazione):**
> Per definizione:
> $$
> \hat{v}(\boldsymbol{\xi}) = \int_{\mathbb{R}^n} u\left( \frac{\mathbf{x}}{c} \right) e^{-i \boldsymbol{\xi} \cdot \mathbf{x}} \, d\mathbf{x}
> $$
> Effettuiamo la sostituzione $\mathbf{y} = \frac{\mathbf{x}}{c}$, ossia $\mathbf{x} = c \mathbf{y}$. La trasformazione ha Jacobiano pari a:
> $$
> \det\left( \frac{\partial \mathbf{x}}{\partial \mathbf{y}} \right) = \det(c I_n) = c^n \implies d\mathbf{x} = |c|^n \, d\mathbf{y}
> $$
> Sostituendo nell'integrale:
> $$
> \hat{v}(\boldsymbol{\xi}) = |c|^n \int_{\mathbb{R}^n} u(\mathbf{y}) e^{-i \boldsymbol{\xi} \cdot (c \mathbf{y})} \, d\mathbf{y} = |c|^n \int_{\mathbb{R}^n} u(\mathbf{y}) e^{-i (c \boldsymbol{\xi}) \cdot \mathbf{y}} \, d\mathbf{y} = |c|^n \hat{u}(c \boldsymbol{\xi}) \qquad \blacksquare
> $$

> [!note] Simmetrie di parità e realtà della trasformata
> Applicando la proprietà di riscalamento con costante $c = -1$, se $v(\mathbf{x}) = u(-\mathbf{x})$ si ottiene:
> $$
> \hat{v}(\boldsymbol{\xi}) = \hat{u}(-\boldsymbol{\xi})
> $$
> Da ciò derivano immediatamente le seguenti regole di simmetria:
> - Se $u$ è **pari** ($u(-\mathbf{x}) = u(\mathbf{x})$) $\implies \hat{u}$ è **pari** ($\hat{u}(-\boldsymbol{\xi}) = \hat{u}(\boldsymbol{\xi})$).
> - Se $u$ è **dispari** ($u(-\mathbf{x}) = -u(\mathbf{x})$) $\implies \hat{u}$ è **dispari** ($\hat{u}(-\boldsymbol{\xi}) = -\hat{u}(\boldsymbol{\xi})$).
> 
> Inoltre, ricordando l'espressione trigonometrica della trasformata per funzioni $u$ a valori reali:
> $$
> \hat{u}(\boldsymbol{\xi}) = \int_{\mathbb{R}^n} u(\mathbf{x}) \cos(\boldsymbol{\xi} \cdot \mathbf{x}) \, d\mathbf{x} - i \int_{\mathbb{R}^n} u(\mathbf{x}) \sin(\boldsymbol{\xi} \cdot \mathbf{x}) \, d\mathbf{x}
> $$
> - Se $u$ è reale e **pari**, l'integrale con il seno si annulla per simmetria:
>   $$
>   \hat{u}(\boldsymbol{\xi}) = \text{Re} \, \hat{u}(\boldsymbol{\xi}) = \int_{\mathbb{R}^n} u(\mathbf{x}) \cos(\boldsymbol{\xi} \cdot \mathbf{x}) \, d\mathbf{x} \in \mathbb{R}
>   $$
>   La trasformata è dunque **reale e pari**.
> - Se $u$ è reale e **dispari**, l'integrale con il coseno si annulla per simmetria:
>   $$
>   \hat{u}(\boldsymbol{\xi}) = i \, \text{Im} \, \hat{u}(\boldsymbol{\xi}) = -i \int_{\mathbb{R}^n} u(\mathbf{x}) \sin(\boldsymbol{\xi} \cdot \mathbf{x}) \, d\mathbf{x} \in i \mathbb{R}
>   $$
>   La trasformata è dunque **immaginaria pura e dispari**.
>
## 4.5. Proprietà Differenziali della Trasformata

> [!proposition] Trasformata della derivata in $\mathbb{R}$
> Sia $u \in AC(\mathbb{R}) \cap L^1(\mathbb{R})$ con $u' \in L^1(\mathbb{R})$. Allora:
> $$
> \widehat{u'}(\xi) = i \xi \hat{u}(\xi) \qquad \forall \xi \in \mathbb{R}
> $$

> [!note] Decadimento all'infinito e regolarità differenziale
> Poiché $u' \in L^1(\mathbb{R})$, per il teorema di Riemann-Lebesgue la sua trasformata $\widehat{u'} \in L^\infty(\mathbb{R})$ e soddisfa:
> $$
> \lim_{|\xi| \to +\infty} \widehat{u'}(\xi) = 0
> $$
> Sostituendo la relazione $\widehat{u'}(\xi) = i \xi \hat{u}(\xi)$:
> $$
> \lim_{|\xi| \to +\infty} \xi \hat{u}(\xi) = 0 \iff \hat{u}(\xi) = o\left( \frac{1}{\xi} \right) \qquad \text{per } |\xi| \to +\infty
> $$
> 
> **Iterazione del risultato:**
> Se $u^{(k)} \in AC(\mathbb{R}) \cap L^1(\mathbb{R})$ per ogni $k = 0, 1, \dots, n-1$ e $u^{(n)} \in L^1(\mathbb{R})$, iterando la formula $n$ volte si ottiene:
> $$
> \widehat{u^{(n)}}(\xi) = (i \xi)^n \hat{u}(\xi)
> $$
> e per il teorema di Riemann-Lebesgue:
> $$
> \lim_{|\xi| \to +\infty} \xi^n \hat{u}(\xi) = 0 \iff \hat{u}(\xi) = o\left( \frac{1}{\xi^n} \right) \qquad \text{per } |\xi| \to +\infty
> $$
> **Principio fondamentale dell'Analisi di Fourier:** la regolarità (differenziabilità) di una funzione nello spazio delle coordinate si traduce direttamente nella rapidità di decadimento asintotico all'infinito della sua trasformata nello spazio delle frequenze.

> [!quote]- Dimostrazione
> Poiché $u, u' \in L^1(\mathbb{R})$, per il teorema di convergenza dominata possiamo esprimere le rispettive trasformate come limiti di integrali su intervalli simmetrici limitati $[-R, R]$ per $R \to +\infty$:
> $$
> \hat{u}(\xi) = \int_{\mathbb{R}} u(x) e^{-i \xi x} \, dx = \lim_{R \to +\infty} \int_{-R}^R u(x) e^{-i \xi x} \, dx
> \widehat{u'}(\xi) = \int_{\mathbb{R}} u'(x) e^{-i \xi x} \, dx = \lim_{R \to +\infty} \int_{-R}^R u'(x) e^{-i \xi x} \, dx
> $$
> Poiché $u \in AC(\mathbb{R})$, anche il prodotto $u(x) e^{-i \xi x}$ è assolutamente continuo su $[-R, R]$. Possiamo pertanto integrare per parti:
> $$
> \int_{-R}^R u'(x) e^{-i \xi x} \, dx = \left[ u(x) e^{-i \xi x} \right]_{-R}^R - \int_{-R}^R u(x) (-i \xi e^{-i \xi x}) \, dx
> = \left[ u(x) e^{-i \xi x} \right]_{-R}^R + i \xi \int_{-R}^R u(x) e^{-i \xi x} \, dx
> $$
> 
> **Annullamento asintotico dei termini di bordo:**
> Dimostriamo che per ogni funzione $u \in AC(\mathbb{R}) \cap L^1(\mathbb{R})$ con $u' \in L^1(\mathbb{R})$ vale:
> $$
> \lim_{R \to +\infty} u(R) = 0 \qquad \text{e} \qquad \lim_{R \to +\infty} u(-R) = 0
> $$
> Per il teorema fondamentale del calcolo integrale, essendo $u \in AC(\mathbb{R})$:
> $$
> u(R) = u(0) + \int_0^R u'(t) \, dt
> $$
> Poiché $u' \in L^1(\mathbb{R})$, l'integrando è assolutamente integrabile su $[0, +\infty)$:
> $$
> \left| \int_0^{+\infty} u'(t) \, dt \right| \le \|u'\|_1 < +\infty
> $$
> Ne consegue che esiste finito il limite per $R \to +\infty$:
> $$
> \lim_{R \to +\infty} u(R) = u(0) + \int_0^{+\infty} u'(t) \, dt =: l_1 \in \mathbb{R}
> $$
> Mostriamo per assurdo che necessariamente $l_1 = 0$:
> - Supponiamo per assurdo che $l_1 > 0$. Per la definizione di limite, fissato $\varepsilon = \frac{l_1}{2} > 0$, esiste un raggio $R_0 > 0$ tale che:
>   $$
>   u(x) > \frac{l_1}{2} \qquad \forall x \ge R_0
>   $$
>   Integrando tale disuguaglianza sull'intervallo $[R_0, +\infty)$:
>   $$
>   \int_{R_0}^{+\infty} u(x) \, dx \ge \int_{R_0}^{+\infty} \frac{l_1}{2} \, dx = +\infty
>   $$
>   il che contraddice l'ipotesi $u \in L^1(\mathbb{R})$.
> - Supponiamo analogamente per assurdo che $l_1 < 0$. Allora per $x$ sufficientemente grande $u(x) < \frac{l_1}{2} < 0$, da cui $|u(x)| > \frac{|l_1|}{2}$, e integrando si avrebbe nuovamente $\int_{R_0}^{+\infty} |u(x)| \, dx = +\infty$, assurdo.
> 
> Dunque necessariamente:
> $$
> \lim_{R \to +\infty} u(R) = 0
> $$
> Con un ragionamento del tutto analogo per $R \to -\infty$, si deduce che:
> $$
> \lim_{R \to -\infty} u(R) = 0
> $$
> Poiché $|e^{-i \xi x}| = 1$ per ogni $x \in \mathbb{R}$, il termine al bordo decade identicamente a zero nel limite:
> $$
> \lim_{R \to +\infty} \left[ u(x) e^{-i \xi x} \right]_{-R}^R = \lim_{R \to +\infty} \left( u(R) e^{-i \xi R} - u(-R) e^{i \xi R} \right) = 0
> $$
> Passando al limite per $R \to +\infty$ nell'identità di integrazione per parti, si conclude:
> $$
> \widehat{u'}(\xi) = \lim_{R \to +\infty} \int_{-R}^R u'(x) e^{-i \xi x} \, dx = i \xi \lim_{R \to +\infty} \int_{-R}^R u(x) e^{-i \xi x} \, dx = i \xi \hat{u}(\xi) \qquad \blacksquare
> $$
>
### Trasformata delle derivate in $\mathbb{R}^n$

> [!proposition] Trasformata delle derivate in $\mathbb{R}^n$
> Sia $u \in W^{k,1}(\mathbb{R}^n)$. Allora per ogni multi-indice $\boldsymbol{\alpha} \in \mathbb{N}^n$ di modulo $|\boldsymbol{\alpha}| \le k$ vale che:
> $$
> \mathcal{F}\{D^\alpha u\}(\boldsymbol{\xi}) = (i\boldsymbol{\xi})^\alpha \hat{u}(\boldsymbol{\xi}) := i^{|\alpha|} \xi_1^{\alpha_1} \dots \xi_n^{\alpha_n} \hat{u}(\boldsymbol{\xi})
> $$
>
### Derivata della trasformata di Fourier in $\mathbb{R}$

> [!proposition] Derivata di una trasformata in $\mathbb{R}$
> Sia $u \in L^1(\mathbb{R})$, con $x u(x) \in L^1(\mathbb{R})$. Allora $\hat{u}$ è derivabile quasi ovunque e vale:
> $$
> \hat{u}'(\xi) = -i \mathcal{F}\{x u(x)\}(\xi)
> $$
> In particolare, $\hat{u} \in C^1(\mathbb{R})$.

> [!note] Regolarità e decadimento all'infinito
> Iterando la proprietà precedente, se $x^n u(x) \in L^1(\mathbb{R})$ per ogni $n = 0, \dots, k$, allora vale:
> $$
> \hat{u} \in C^k(\mathbb{R})
> $$
> Se altrimenti vale $u \in L^1(\mathbb{R})$ e:
> $$
> |u(x)| \le \frac{c}{|x|^\alpha} \quad \text{definitivamente per } |x| \to +\infty, \text{ con } \alpha > 0
> $$
> allora per ogni $k \in \mathbb{N}$ con $k < \alpha$ si ha:
> $$
> |x^{k-1} u(x)| \le \frac{c}{|x|^{\alpha - k + 1}} \quad \text{definitivamente per } |x| \to +\infty
> $$
> da cui segue che:
> $$
> \hat{u} \in C^{k-1}(\mathbb{R})
> $$
> In sintesi: più $u$ decade rapidamente all'infinito, più $\hat{u}$ è regolare.

> [!quote]- Dimostrazione
> Per definizione della trasformata di Fourier:
> $$
> \hat{u}(\xi) = \int_{\mathbb{R}} u(x) e^{-i\xi x} \, dx
> $$
> Per $h \in \mathbb{R}$, $h \neq 0$, consideriamo il rapporto incrementale:
> $$
> \frac{\hat{u}(\xi + h) - \hat{u}(\xi)}{h} = \int_{\mathbb{R}} u(x) \frac{e^{-i(\xi + h)x} - e^{-i\xi x}}{h} \, dx
> $$
> Se tale limite esiste per $h \to 0$:
> $$
> \begin{aligned}
> \lim_{h \to 0} \frac{\hat{u}(\xi + h) - \hat{u}(\xi)}{h} &= \hat{u}'(\xi) \\
> &= \lim_{h \to 0} \int_{\mathbb{R}} u(x) \frac{e^{-ix(\xi + h)} - e^{-i\xi x}}{h} \, dx \\
> &\overset{(*)}{=} \int_{\mathbb{R}} u(x) \left[ -ix e^{-i\xi x} \right] dx \\
> &= -i \int_{\mathbb{R}} (x u(x)) e^{-i\xi x} \, dx = -i \mathcal{F}\{x u(x)\}(\xi)
> \end{aligned}
> $$
> Il passaggio al limite sotto il segno di integrale $(*)$ è giustificato dal teorema di convergenza dominata. Infatti:
> 
> 1. **Convergenza puntuale:**
>    $$
>    u(x) \frac{e^{-ix(\xi + h)} - e^{-i\xi x}}{h} \xrightarrow{h \to 0} -ix u(x) e^{-i\xi x} \quad \text{q.o. in } \mathbb{R}
>    $$
> 2. **Dominazione integrabile:**
>    $$
>    \left| u(x) \frac{e^{-ix(\xi + h)} - e^{-i\xi x}}{h} \right| = |u(x)| |e^{-i\xi x}| \left| \frac{e^{-ixh} - 1}{h} \right| = |u(x)| \left| \frac{e^{-ixh} - 1}{h} \right|
>    $$
>    Posto $f(h) := e^{-ixh} - 1$, la funzione è monotona decrescente in modulo per $x > 0 \implies |f(h_2)| \ge |f(h_1)|$ per ogni $h_2 < h_1$. Allora per permanenza del segno:
>    $$
>    |u(x)| \left| \frac{e^{-ixh} - 1}{h} \right| \le \lim_{h \to 0} |u(x)| \left| \frac{e^{-ixh} - 1}{h} \right| = |x u(x)|
>    $$
> Essendo $x u(x) \in L^1(\mathbb{R})$, la dominazione è garantita e si può lecitamente portare il limite all'interno dell'integrale. $\blacksquare$

> [!proposition] Derivata della trasformata in $\mathbb{R}^n$
> Sia $u \in L^1(\mathbb{R}^n)$ e $\mathbf{x}^\alpha u \in L^1(\mathbb{R}^n)$ per ogni multi-indice $\boldsymbol{\alpha} \in \mathbb{N}^n$ di modulo $|\boldsymbol{\alpha}| \le k$, con la notazione:
> $$
> \mathbf{x}^\alpha := x_1^{\alpha_1} x_2^{\alpha_2} \dots x_n^{\alpha_n}
> $$
> Allora vale che:
> $$
> D^\alpha \hat{u} = \mathcal{F}\{(-i\mathbf{x})^\alpha u(\mathbf{x})\}(\boldsymbol{\xi}) := \mathcal{F}\{(-i)^{|\alpha|} x_1^{\alpha_1} \dots x_n^{\alpha_n} u(\mathbf{x})\}(\boldsymbol{\xi})
> $$
>
## 4.6. Teorema di Inversione e Iniettività in $L^1$

Seguono due risultati fondamentali:

> [!theorem] Teorema di inversione di $\mathcal{F}$ in $L^1(\mathbb{R}^n)$
> Sia $u \in L^1(\mathbb{R}^n)$, con $\hat{u} \in L^1(\mathbb{R}^n)$. Allora è vero che:
> $$
> \check{u}(\mathbf{x}) := u(-\mathbf{x}) = \frac{1}{(2\pi)^n} \hat{\hat{u}}(\mathbf{x})
> $$

> [!proposition] Iniettività della trasformata di Fourier
> La trasformata di Fourier:
> $$
> \mathcal{F} : L^1(\mathbb{R}^n) \to L^\infty(\mathbb{R}^n)
> $$
> è **iniettiva**.

> [!note] Osservazione sull'unicità
> Di conseguenza, se è nota $\hat{u} \in L^1(\mathbb{R}^n)$, esiste un'unica $u \in L^1(\mathbb{R}^n)$ tale che:
> $$
> \hat{u} = \mathcal{F}\{u\}
> $$
>
### Risoluzione di ODE tramite Trasformata di Fourier

Si cerca una soluzione dell'equazione differenziale sufficientemente regolare da poter applicare la trasformata $\mathcal{F}$. Applicando $\mathcal{F}$, l'equazione differenziale diventa un'equazione algebrica in $\hat{u}$:
- **Caso a:** Se $\hat{u} \in L^1(\mathbb{R}^n)$, si applica direttamente il teorema di inversione per determinare $u$.
- **Caso b:** Altrimenti, se $\hat{u}$ corrisponde a una trasformata notevole nota, si può riconoscere per confronto la funzione originaria $u$.

> [!example] Risoluzione di un'equazione differenziale ordinaria del primo ordine
> Si consideri l'equazione:
> $$
> u' - u = e^{-x} \chi_{[0, +\infty)}(x) \quad \text{q.o. in } \mathbb{R}
> $$
> Cerchiamo soluzioni $u \in W^{1,1}(\mathbb{R})$.
> 
> Trasformando entrambi i membri secondo Fourier:
> $$
> \widehat{u'} - \hat{u} = \mathcal{F}\left( e^{-x} \chi_{[0, +\infty)}(x) \right) = \frac{1}{1 + i\xi}
> $$
> Sostituendo la relazione $\widehat{u'}(\xi) = i\xi \hat{u}(\xi)$:
> $$
> i\xi \hat{u}(\xi) - \hat{u}(\xi) = \frac{1}{1 + i\xi}
> $$
> Raccogliendo $\hat{u}(\xi)$:
> $$
> (i\xi - 1) \hat{u}(\xi) = \frac{1}{1 + i\xi} \implies \hat{u}(\xi) = \frac{1}{(i\xi - 1)(i\xi + 1)} = -\frac{1}{1 + \xi^2} \in L^1(\mathbb{R})
> $$
> Questa è una trasformata notevole nota:
> $$
> \mathcal{F}\left( -\frac{1}{2} e^{-|x|} \right) = -\frac{1}{1 + \xi^2} \implies u(x) = -\frac{1}{2} e^{-|x|}
> $$
> (In alternativa si poteva utilizzare la formula di inversione $u(-x) = \frac{1}{2\pi} \hat{\hat{u}}(x)$).
> 
> Verifichiamo infine che $u(x)$ possiede la regolarità richiesta:
> $$
> u \in W^{1,1}(\mathbb{R}) \quad \checkmark
> $$
>
### Trasformate Notevoli (Parte II): La Gaussiana

> [!example] Trasformata di Fourier della Gaussiana
> Si consideri la funzione gaussiana fondamentale:
> $$
> u(x) = e^{-x^2} \in L^1(\mathbb{R})
> $$
> Calcolando la derivata prima:
> $$
> u'(x) = -2x e^{-x^2} = -2x u(x) \implies u'(x) + 2x u(x) = 0
> $$
> Poiché $u \in L^1(\mathbb{R})$ e $x u \in L^1(\mathbb{R})$, applicando la trasformata di Fourier a entrambi i membri si ottiene:
> $$
> \widehat{u'} + 2 \widehat{x u} = i\xi \hat{u} + 2i \hat{u}' = 0
> $$
> Dividendo per $2i$:
> $$
> \hat{u}' + \frac{\xi}{2} \hat{u} = 0
> $$
> Oltre alla soluzione identicamente nulla $\hat{u} \equiv 0$, per il teorema di esistenza e unicità locale di Cauchy per una soluzione non nulla $\hat{u} \neq 0$ si ha:
> $$
> \frac{\hat{u}'}{\hat{u}} = -\frac{\xi}{2}
> $$
> Integrando rispetto a $\xi$:
> $$
> \log |\hat{u}(\xi)| = -\frac{\xi^2}{4} + c, \quad c \in \mathbb{R} \implies \hat{u}(\xi) = A e^{-\frac{\xi^2}{4}}
> $$
> dove la costante $A$ è determinata valutando la trasformata in $\xi = 0$:
> $$
> A = \hat{u}(0) = \int_{\mathbb{R}} u(x) e^{-i \cdot 0 \cdot x} \, dx = \int_{\mathbb{R}} u(x) \, dx = \int_{\mathbb{R}} e^{-x^2} \, dx = \sqrt{\pi}
> $$
> Si conclude pertanto che:
> $$
> \hat{u}(\xi) = \sqrt{\pi} e^{-\frac{\xi^2}{4}}
> $$

> [!note] Gaussiana con parametro arbitrario
> Per ogni $a > 0$, considerando $u(x) = e^{-a x^2} = e^{-(\sqrt{a}x)^2}$, in virtù delle proprietà algebriche di dilatazione della trasformata di Fourier si ottiene:
> $$
> \hat{u}(\xi) = \sqrt{\frac{\pi}{a}} e^{-\frac{\xi^2}{4a}}
> $$

> [!note] Calcolo della norma dell'operatore di Fourier $\mathcal{F} \in \mathcal{L}(L^1, L^\infty)$
> La trasformata di Fourier $\mathcal{F} : L^1(\mathbb{R}) \to L^\infty(\mathbb{R})$ è un operatore lineare e continuo con $\|\mathcal{F}\| \le 1$.
> Mostriamo ora che $\|\mathcal{F}\| = 1$, verificando che esiste $u \in L^1(\mathbb{R})$ tale che:
> $$
> \|\mathcal{F}(u)\|_\infty = \|u\|_1
> $$
> Scegliendo $u(x) = e^{-x^2}$, la cui trasformata è $\hat{u}(\xi) = \sqrt{\pi} e^{-\frac{\xi^2}{4}}$:
> $$
> \|\hat{u}\|_\infty = \max_{\xi \in \mathbb{R}} \hat{u}(\xi) = \hat{u}(0) = \sqrt{\pi}
> $$
> D'altra parte:
> $$
> \|u\|_1 = \int_{\mathbb{R}} e^{-x^2} \, dx = \sqrt{\pi} \implies \|\mathcal{F}\{u\}\|_\infty = \sqrt{\pi} = \|u\|_1
> $$
> da cui si ricava:
> $$
> \|\mathcal{F}\|_{\mathcal{L}(L^1, L^\infty)} = 1
> $$
>
## 4.7. Trasformata di Fourier nello Spazio di Schwartz $\mathcal{S}(\mathbb{R}^n)$

### Lo Spazio delle Funzioni a Decrescenza Rapida

> [!definition] Notazione multi-indice per derivate e monomi
> Sia $u : \mathbb{R}^n \to \mathbb{R}$, e siano $\boldsymbol{\alpha}, \boldsymbol{\beta} \in \mathbb{N}^n$ multi-indici. Per ogni $\mathbf{x} \in \mathbb{R}^n$ si definisce:
> $$
> \mathbf{x}^\alpha D^\beta u(\mathbf{x}) := x_1^{\alpha_1} \dots x_n^{\alpha_n} \frac{\partial^{|\beta|} u}{\partial x_1^{\beta_1} \dots \partial x_n^{\beta_n}}(\mathbf{x})
> $$

> [!definition] Spazio delle funzioni a decrescenza rapida (Spazio di Schwartz)
> Si definisce **spazio delle funzioni a decrescenza rapida** in $\mathbb{R}^n$ (o spazio di Schwartz $\mathcal{S}(\mathbb{R}^n)$) l'insieme:
> $$
> \mathcal{S}(\mathbb{R}^n) := \left\{ u \in C^\infty(\mathbb{R}^n) : \forall \boldsymbol{\alpha}, \boldsymbol{\beta} \in \mathbb{N}^n \text{ multi-indici}, \, \sup_{\mathbf{x} \in \mathbb{R}^n} |\mathbf{x}^\alpha D^\beta u(\mathbf{x})| < +\infty \right\}
> $$

> [!note] Proprietà fondamentali e inclusioni
> - Ciò significa che $u \in \mathcal{S}(\mathbb{R}^n)$ se la funzione e tutte le sue derivate tendono a zero all'infinito più velocemente del reciproco di qualsiasi potenza polinomiale.
> - $\mathcal{S}(\mathbb{R}^n)$ è uno spazio vettoriale.
> - Valgono le inclusioni:
>   $$
>   C_0^\infty(\mathbb{R}^n) \subset \mathcal{S}(\mathbb{R}^n) \subset C^\infty(\mathbb{R}^n)
>   $$

> [!example] Esempi e controesempi nello Spazio di Schwartz
> - **La gaussiana:** $u(\mathbf{x}) = e^{-\|\mathbf{x}\|^2} \in \mathcal{S}(\mathbb{R}^n)$ (per la gerarchia degli infiniti), ma non è a supporto compatto.
> - **Funzioni costanti:** $u(\mathbf{x}) = c$ ($c \in \mathbb{R} \setminus \{0\}$) appartiene a $C^\infty(\mathbb{R}^n)$, ma $u \notin \mathcal{S}(\mathbb{R}^n)$.
> - **Prodotto per polinomi:** Se $P(\mathbf{x})$ è un polinomio in $\mathbf{x}$ e $u \in \mathcal{S}(\mathbb{R}^n)$, allora $P u \in \mathcal{S}(\mathbb{R}^n)$. In particolare, per ogni multi-indice $\boldsymbol{\gamma} \in \mathbb{N}^n$:
>   $$
>   \mathbf{x}^\gamma u \in \mathcal{S}(\mathbb{R}^n)
>   $$
> - **Derivazione:** Se $u \in \mathcal{S}(\mathbb{R}^n)$, per ogni multi-indice $\boldsymbol{\gamma} \in \mathbb{N}^n$:
>   $$
>   D^\gamma u \in \mathcal{S}(\mathbb{R}^n)
>   $$

> [!proposition] Inclusione in $L^1(\mathbb{R}^n)$
> Vale l'inclusione:
> $$
> \mathcal{S}(\mathbb{R}^n) \subset L^1(\mathbb{R}^n)
> $$

> [!quote]- Dimostrazione
> Sia $u \in \mathcal{S}(\mathbb{R}^n)$. Allora $\sup_{\mathbb{R}^n} |u| < +\infty$ e inoltre:
> $$
> \sup_{\mathbf{x} \in \mathbb{R}^n} |x_j^{2n} u(\mathbf{x})| < +\infty \quad \text{con } j = 1, \dots, n
> $$
> Ne consegue che:
> $$
> \sup_{\mathbf{x} \in \mathbb{R}^n} \left| (1 + |\mathbf{x}|^{2n}) u(\mathbf{x}) \right| < +\infty
> $$
> Esiste pertanto una costante $M > 0$ tale che:
> $$
> |(1 + |\mathbf{x}|^{2n}) u(\mathbf{x})| \le M \quad \text{in } \mathbb{R}^n \implies |u(\mathbf{x})| \le \frac{M}{1 + |\mathbf{x}|^{2n}}
> $$
> Si mostra che $\frac{M}{1 + |\mathbf{x}|^{2n}} \in L^1(\mathbb{R}^n)$ integrando in coordinate polari sferiche in $\mathbb{R}^n$:
> $$
> \int_{\mathbb{R}^n} \frac{M}{1 + |\mathbf{x}|^{2n}} \, d\mathbf{x} = M \omega_n \int_0^{+\infty} \frac{\rho^{n-1}}{1 + \rho^{2n}} \, d\rho < +\infty
> $$
> Di conseguenza, per confronto:
> $$
> u \in L^1(\mathbb{R}^n). \qquad \blacksquare
> $$

> [!note] Scambio tra derivazione e moltiplicazione polinomiale in $\mathcal{S}(\mathbb{R}^n)$
> - Se $u \in \mathcal{S}(\mathbb{R}^n)$, per ogni multi-indice $\boldsymbol{\gamma} \in \mathbb{N}^n$ si ha $D^\gamma u \in \mathcal{S}(\mathbb{R}^n) \implies u, D^\gamma u \in L^1(\mathbb{R}^n)$.
>   Pertanto sono ben definite $\hat{u}$ e $\widehat{D^\gamma u}$, e vale la formula:
>   $$
>   \widehat{D^\gamma u}(\boldsymbol{\xi}) = i^{|\gamma|} \boldsymbol{\xi}^\gamma \hat{u}(\boldsymbol{\xi})
>   $$
> - Se $u \in \mathcal{S}(\mathbb{R}^n)$, per ogni multi-indice $\boldsymbol{\gamma} \in \mathbb{N}^n$ anche $\mathbf{x}^\gamma u \in \mathcal{S}(\mathbb{R}^n)$. Pertanto sono ben definite $\hat{u}$ e $\widehat{\mathbf{x}^\gamma u}$, e vale:
>   $$
>   D^\gamma \hat{u}(\boldsymbol{\xi}) = (-i)^{|\gamma|} \widehat{\mathbf{x}^\gamma u}(\boldsymbol{\xi})
>   $$
>
### Teorema di Inversione nello Spazio di Schwartz

> [!theorem] Teorema di Inversione in $\mathcal{S}(\mathbb{R}^n)$
> Nello spazio di Schwartz $\mathcal{S}(\mathbb{R}^n)$ vale la formula di inversione della trasformata di Fourier:
> $$
> u \in \mathcal{S}(\mathbb{R}^n) \implies \hat{u} \in \mathcal{S}(\mathbb{R}^n)
> $$
> e
> $$
> \check{u}(\mathbf{x}) := u(-\mathbf{x}) = \frac{1}{(2\pi)^n} \hat{\hat{u}}(\mathbf{x}) \quad \forall \mathbf{x} \in \mathbb{R}^n
> $$

> [!quote]- Dimostrazione
> È sufficiente mostrare che se $u \in \mathcal{S}(\mathbb{R}^n)$ allora anche $\hat{u} \in \mathcal{S}(\mathbb{R}^n)$. Infatti, essendo $\mathcal{S}(\mathbb{R}^n) \subset L^1(\mathbb{R}^n)$, si avrebbe in tal caso che $u, \hat{u} \in \mathcal{S}(\mathbb{R}^n) \subset L^1(\mathbb{R}^n)$, e pertanto la classica formula di inversione di Fourier in $L^1$ è applicabile puntualmente ovunque.
> 
> Per ogni multi-indice $\boldsymbol{\gamma} \in \mathbb{N}^n$ vale che:
> $$
> \mathbf{x}^\gamma u \in \mathcal{S}(\mathbb{R}^n) \subset L^1(\mathbb{R}^n) \implies D^\gamma \hat{u} = (-i)^{|\gamma|} \widehat{\mathbf{x}^\gamma u}
> $$
> La derivata $D^\gamma \hat{u}$ è continua su tutto $\mathbb{R}^n$ poiché trasformata di Fourier di una funzione integrabile in $L^1$. Essendo ciò vero per ogni multi-indice $\boldsymbol{\gamma}$, ne segue che:
> $$
> \hat{u} \in C^\infty(\mathbb{R}^n)
> $$
> Siano ora $\boldsymbol{\beta}, \boldsymbol{\gamma} \in \mathbb{N}^n$ due generici multi-indici. Calcoliamo:
> $$
> \begin{aligned}
> \sup_{\boldsymbol{\xi} \in \mathbb{R}^n} \left| \boldsymbol{\xi}^\beta D^\gamma \hat{u}(\boldsymbol{\xi}) \right| &= \sup_{\boldsymbol{\xi} \in \mathbb{R}^n} \left| \boldsymbol{\xi}^\beta (-i)^{|\gamma|} \widehat{\mathbf{x}^\gamma u}(\boldsymbol{\xi}) \right| \\
> &= \sup_{\boldsymbol{\xi} \in \mathbb{R}^n} \left| \widehat{D^\beta (\mathbf{x}^\gamma u)}(\boldsymbol{\xi}) \right| \qquad (\text{in quanto } |-i| = 1)
> \end{aligned}
> $$
> Infine, essendo $D^\beta(\mathbf{x}^\gamma u) \in \mathcal{S}(\mathbb{R}^n) \subset L^1(\mathbb{R}^n)$, la trasformata $\mathcal{F}(D^\beta \mathbf{x}^\gamma u)$ è continua e infinitesima per $\|\boldsymbol{\xi}\| \to +\infty$ (per il lemma di Riemann-Lebesgue). In particolare, essa è limitata:
> $$
> \sup_{\boldsymbol{\xi} \in \mathbb{R}^n} \left| \mathcal{F}(D^\beta \mathbf{x}^\gamma u)(\boldsymbol{\xi}) \right| < +\infty
> $$
> Di conseguenza:
> $$
> \hat{u} \in \mathcal{S}(\mathbb{R}^n). \qquad \blacksquare
> $$
>
## 4.8. Proprietà di Dualità e Teorema di Plancherel

> [!note] Proprietà delle funzioni con trasformata in $L^1$
> 1. Se $f \in L^1(\mathbb{R}^n)$ e $\hat{f} \in L^1(\mathbb{R}^n)$, vale:
>    $$
>    f(-\mathbf{x}) = \frac{1}{(2\pi)^n} \hat{\hat{f}}(\mathbf{x}) = \frac{1}{(2\pi)^n} \int_{\mathbb{R}^n} \hat{f}(\boldsymbol{\xi}) e^{i\boldsymbol{\xi}\cdot\mathbf{x}} \, d\boldsymbol{\xi} \quad \text{q.o. in } \mathbb{R}^n
>    $$
>    In particolare, $f$ coincide quasi ovunque con una funzione continua e limitata in $\mathbb{R}^n$, infinitesima per $\|\mathbf{x}\| \to +\infty$. Pertanto $f \in L^\infty(\mathbb{R}^n)$.
>    Ne segue che per interpolazione:
>    $$
>    f \in L^p(\mathbb{R}^n) \quad \forall p \in [1, +\infty]
>    $$

> [!proposition] Relazione di dualità / scambio integrale
> Per ogni coppia di funzioni $u, v \in L^1(\mathbb{R}^n)$ vale l'identità:
> $$
> \int_{\mathbb{R}^n} u(\mathbf{x}) \hat{v}(\mathbf{x}) \, d\mathbf{x} = \int_{\mathbb{R}^n} \hat{u}(\mathbf{x}) v(\mathbf{x}) \, d\mathbf{x}
> $$

> [!quote]- Dimostrazione
> Si osservi preliminarmente che $\hat{u}, \hat{v} \in L^\infty(\mathbb{R}^n)$. Pertanto, per la disuguaglianza di Hölder, i prodotti $u\hat{v}, \hat{u}v \in L^1(\mathbb{R}^n)$, garantendo la finitezza degli integrali.
> 
> In primo luogo verifichiamo che la funzione prodotto:
> $$
> u(\mathbf{x}) v(\mathbf{y}) e^{-i\mathbf{x}\cdot\mathbf{y}} \in L^1(\mathbb{R}^{2n})
> $$
> Infatti, applicando il teorema di Tonelli:
> $$
> \begin{aligned}
> \int_{\mathbb{R}^{2n}} |u(\mathbf{x}) v(\mathbf{y}) e^{-i\mathbf{x}\cdot\mathbf{y}}| \, d\mathbf{x} \, d\mathbf{y} &= \int_{\mathbb{R}^{2n}} |u(\mathbf{x})| |v(\mathbf{y})| \, d\mathbf{x} \, d\mathbf{y} \\
> &= \int_{\mathbb{R}^n} |v(\mathbf{y})| \left[ \int_{\mathbb{R}^n} |u(\mathbf{x})| \, d\mathbf{x} \right] d\mathbf{y} \\
> &= \|u\|_1 \int_{\mathbb{R}^n} |v(\mathbf{y})| \, d\mathbf{y} = \|u\|_1 \|v\|_1 < +\infty
> \end{aligned}
> $$
> Pertanto tale funzione è integrabile su $\mathbb{R}^{2n}$. Ne segue che vale il teorema di Fubini:
> $$
> \begin{aligned}
> \int_{\mathbb{R}^n} u(\mathbf{x}) \hat{v}(\mathbf{x}) \, d\mathbf{x} &= \int_{\mathbb{R}^n} u(\mathbf{x}) \left[ \int_{\mathbb{R}^n} v(\mathbf{y}) e^{-i\mathbf{x}\cdot\mathbf{y}} \, d\mathbf{y} \right] d\mathbf{x} \\
> &\overset{\text{Fubini}}{=} \int_{\mathbb{R}^{2n}} u(\mathbf{x}) v(\mathbf{y}) e^{-i\mathbf{x}\cdot\mathbf{y}} \, d\mathbf{x} \, d\mathbf{y} \\
> &= \int_{\mathbb{R}^n} v(\mathbf{y}) \left[ \int_{\mathbb{R}^n} u(\mathbf{x}) e^{-i\mathbf{x}\cdot\mathbf{y}} \, d\mathbf{x} \right] d\mathbf{y} \\
> &= \int_{\mathbb{R}^n} \hat{u}(\mathbf{y}) v(\mathbf{y}) \, d\mathbf{y} = \int_{\mathbb{R}^n} \hat{u}(\mathbf{x}) v(\mathbf{x}) \, d\mathbf{x}
> \end{aligned}
> $$
> che coincide esattamente con la tesi. $\blacksquare$
>
### Identità di Plancherel

> [!theorem] Identità di Plancherel
> Sia $u \in L^1(\mathbb{R}^n)$ tale che $\hat{u} \in L^1(\mathbb{R}^n)$. Allora:
> $$
> \int_{\mathbb{R}^n} |u(\mathbf{x})|^2 \, d\mathbf{x} = \frac{1}{(2\pi)^n} \int_{\mathbb{R}^n} |\hat{u}(\boldsymbol{\xi})|^2 \, d\boldsymbol{\xi} \iff \|u\|_2^2 = \frac{1}{(2\pi)^n} \|\hat{u}\|_2^2
> $$

> [!note] Validità per funzioni nello Spazio di Schwartz
> Tale identità vale ad esempio per ogni $u \in \mathcal{S}(\mathbb{R}^n)$, poiché $u \in L^2(\mathbb{R}^n)$ per quanto osservato in precedenza (essendo $\hat{u} \in L^1(\mathbb{R}^n)$, si ha $u \in L^\infty(\mathbb{R}^n) \implies u \in L^p(\mathbb{R}^n)$ per ogni $p \in [1, +\infty]$).

> [!quote]- Dimostrazione
> Siano $u, \hat{u} \in L^1(\mathbb{R}^n)$. Definiamo le funzioni ausiliarie:
> $$
> w(\mathbf{x}) := \frac{1}{(2\pi)^n} \hat{u}(\mathbf{x}) \quad \text{e} \quad v(\mathbf{x}) := w(-\mathbf{x})
> $$
> Per la formula di inversione:
> $$
> \hat{w}(\boldsymbol{\xi}) = \frac{1}{(2\pi)^n} \hat{\hat{u}}(\boldsymbol{\xi}) = u(-\boldsymbol{\xi})
> $$
> Dalle proprietà algebriche di $\mathcal{F}$ rispetto alla riflessione segue che:
> $$
> \hat{v}(\boldsymbol{\xi}) = \hat{w}(-\boldsymbol{\xi}) = u(\boldsymbol{\xi})
> $$
> Ne consegue che:
> $$
> \int_{\mathbb{R}^n} |u(\mathbf{x})|^2 \, d\mathbf{x} = \int_{\mathbb{R}^n} u(\mathbf{x}) \hat{v}(\mathbf{x}) \, d\mathbf{x}
> $$
> Sfruttando la proprietà di dualità precedentemente dimostrata:
> $$
> \int_{\mathbb{R}^n} u(\mathbf{x}) \hat{v}(\mathbf{x}) \, d\mathbf{x} = \int_{\mathbb{R}^n} \hat{u}(\mathbf{y}) v(\mathbf{y}) \, d\mathbf{y} = \int_{\mathbb{R}^n} \hat{u}(\mathbf{y}) w(-\mathbf{y}) \, d\mathbf{y}
> $$
> Sostituendo l'espressione di $w$:
> $$
> = \frac{1}{(2\pi)^n} \int_{\mathbb{R}^n} \hat{u}(\mathbf{y}) \hat{u}(-\mathbf{y}) \, d\mathbf{y}
> $$
> Ma per definizione di trasformata di Fourier:
> $$
> \hat{u}(-\mathbf{y}) = \int_{\mathbb{R}^n} u(\mathbf{x}) e^{i\mathbf{x}\cdot\mathbf{y}} \, d\mathbf{x} = \int_{\mathbb{R}^n} u(\mathbf{x}) \left[ \cos(\mathbf{x}\cdot\mathbf{y}) + i \sin(\mathbf{x}\cdot\mathbf{y}) \right] d\mathbf{x} = \overline{\hat{u}(\mathbf{y})}
> $$
> Da cui:
> $$
> \hat{u}(-\mathbf{y}) \hat{u}(\mathbf{y}) = \overline{\hat{u}(\mathbf{y})} \hat{u}(\mathbf{y}) = |\hat{u}(\mathbf{y})|^2
> $$
> e pertanto:
> $$
> \int_{\mathbb{R}^n} |u(\mathbf{x})|^2 \, d\mathbf{x} = \frac{1}{(2\pi)^n} \int_{\mathbb{R}^n} |\hat{u}(\mathbf{y})|^2 \, d\mathbf{y}. \qquad \blacksquare
> $$
>
## 4.9. Trasformata di Fourier in $L^2(\mathbb{R}^n)$

Ha quindi senso estendere la trasformata di Fourier allo spazio $L^2(\mathbb{R}^n)$.

> [!note] Problema della definizione classica in $L^2$
> Come posso definirla? Si noti che:
> $$
> L^2(\mathbb{R}^n) \not\subset L^1(\mathbb{R}^n)
> $$
> Ad esempio:
> $$
> u(x) = \frac{\sin x}{x} \implies u \notin L^1(\mathbb{R}), \quad \text{ma } u \in L^2(\mathbb{R})
> $$
> Pertanto l'integrale classico di Fourier non è convergente in senso assoluto per generiche funzioni di $L^2$.

> [!definition] Estensione della trasformata di Fourier a $L^2(\mathbb{R}^n)$
> Sia $u \in L^2(\mathbb{R}^n)$ e sia $\{u_m\}_{m \in \mathbb{N}} \subset \mathcal{S}(\mathbb{R}^n)$ tale che:
> $$
> \lim_{m \to +\infty} \|u_m - u\|_2 = 0
> $$
> Considero ora $\{\hat{u}_m\}_{m \in \mathbb{N}} \subset \mathcal{S}(\mathbb{R}^n)$ e definisco:
> $$
> \hat{u} = \lim_{m \to +\infty} \hat{u}_m \quad \text{in } L^2(\mathbb{R}^n)
> $$
>
Lo schema corrisponde al diagramma di estensione:

$$
\begin{array}{ccc}
\mathcal{S}(\mathbb{R}^n) & \longleftarrow & L^2(\mathbb{R}^n) \\
u_m & \longleftarrow & u \\
\Big\downarrow \mathcal{F} & & \Big\downarrow \mathcal{F} \ (\text{in } L^2) \\
\hat{u}_m & \longrightarrow & \hat{u}
\end{array}
$$

> [!note] Giustificazione della definizione
> Questa definizione è ben posta grazie a tre proprietà fondamentali:
> 
> 1. **Densità di $\mathcal{S}(\mathbb{R}^n)$ in $L^2(\mathbb{R}^n)$:**
>    > [!proposition] Densità dello Spazio di Schwartz in $L^2$
>    > $$
>    > \overline{\mathcal{S}(\mathbb{R}^n)} = L^2(\mathbb{R}^n) \quad \text{con la norma } \|\cdot\|_2
>    > $$
>    Infatti $\mathcal{S}(\mathbb{R}^n) \supset C_0^\infty(\mathbb{R}^n)$ ed è già noto che $\overline{C_0^\infty(\mathbb{R}^n)} = L^2(\mathbb{R}^n)$.
>    Pertanto, essendo:
>    $$
>    C_0^\infty(\mathbb{R}^n) \subset \mathcal{S}(\mathbb{R}^n) \subset L^2(\mathbb{R}^n) \implies \overline{\mathcal{S}(\mathbb{R}^n)} = L^2(\mathbb{R}^n)
>    $$
>    Ne segue che per ogni $u \in L^2(\mathbb{R}^n)$, esiste $\{u_m\}_{m \in \mathbb{N}} \subset \mathcal{S}(\mathbb{R}^n)$ tale che:
>    $$
>    \|u_m - u\|_2 \xrightarrow{m \to +\infty} 0
>    $$
> 
> 2. **Continuità di $\mathcal{F}$ su $\mathcal{S}(\mathbb{R}^n)$ rispetto a $\|\cdot\|_2$:**
>    $\mathcal{F} : \mathcal{S}(\mathbb{R}^n) \to \mathcal{S}(\mathbb{R}^n)$ è un operatore lineare e continuo in $\|\cdot\|_2$ (grazie all'identità di Plancherel).
>    Definisco quindi $\mathcal{F} : L^2(\mathbb{R}^n) \to L^2(\mathbb{R}^n)$ estendendo $\mathcal{F} : \mathcal{S}(\mathbb{R}^n) \to \mathcal{S}(\mathbb{R}^n)$ per continuità.
> 
> 3. **Esistenza e unicità del limite:**
>    Il limite:
>    $$
>    \lim_{m \to +\infty} \hat{u}_m
>    $$
>    esiste in $L^2(\mathbb{R}^n)$ (pertanto è unico).
>
> Infatti la successione $\{\widehat{u}_m\}_{m \in \mathbb{N}} \subset \mathcal{S}(\mathbb{R}^n)$ è di Cauchy nello spazio di Hilbert $L^2(\mathbb{R}^n)$. Infatti, per ogni $\varepsilon > 0$, esiste $N \in \mathbb{N}$ tale che per ogni $i, j > N$:
> $$
> \|u_i - u_j\|_2 < \frac{\varepsilon}{(2\pi)^{n/2}}
> $$
> da cui, applicando la linearità dell'operatore di Fourier e l'identità di Plancherel su $\mathcal{S}(\mathbb{R}^n)$:
> $$
> \|\mathcal{F}(u_i - u_j)\|_2 = \|\widehat{u}_i - \widehat{u}_j\|_2 \overset{\text{(Plancherel)}}{=} (2\pi)^{n/2} \|u_i - u_j\|_2 < \varepsilon
> $$
> Essendo $L^2(\mathbb{R}^n)$ completo, esiste un unico elemento limite $\widehat{u} \in L^2(\mathbb{R}^n)$ tale che:
> $$
> \lim_{m \to +\infty} \|\widehat{u}_m - \widehat{u}\|_2 = 0
> $$
>
> **4. Indipendenza dalla successione approssimante:**
> L'elemento $\widehat{u}$ non dipende dalla particolare scelta della successione approssimante $\{u_m\}_{m \in \mathbb{N}} \subset \mathcal{S}(\mathbb{R}^n)$.
> Siano infatti $\{u_m\}_{m \in \mathbb{N}}, \{v_m\}_{m \in \mathbb{N}} \subset \mathcal{S}(\mathbb{R}^n)$ due generiche successioni convergenti ad $u$ in $L^2(\mathbb{R}^n)$:
> $$
> \|u_m - u\|_2 \xrightarrow{m \to +\infty} 0, \qquad \|v_m - u\|_2 \xrightarrow{m \to +\infty} 0
> $$
> Per il punto precedente esistono in $L^2(\mathbb{R}^n)$ i limiti delle rispettive trasformate:
> $$
> \lim_{m \to +\infty} \widehat{u}_m \quad \text{e} \quad \lim_{m \to +\infty} \widehat{v}_m
> $$
> Mostriamo che tali limiti coincidono quasi ovunque:
> $$
> \|\widehat{v}_m - \widehat{u}_m\|_2 = \|\mathcal{F}(v_m - u_m)\|_2 \underset{\text{Plancherel}}{\overset{\downarrow}{=}} (2\pi)^{n/2} \|v_m - u_m\|_2 \xrightarrow{m \to +\infty} 0
> \implies \widehat{u} = \lim_{m \to +\infty} \widehat{u}_m = \lim_{m \to +\infty} \widehat{v}_m \quad \text{in } L^2(\mathbb{R}^n). \quad \blacksquare
> $$
>

### Coerenza tra le Definizioni in $L^1$ e $L^2$

> [!note] Coerenza della Trasformata per Funzioni in $L^1(\mathbb{R}^n) \cap L^2(\mathbb{R}^n)$
> Se $u \in L^1(\mathbb{R}^n) \cap L^2(\mathbb{R}^n)$, disponiamo di due definizioni a priori distinte di trasformata di Fourier:
> 1. La definizione integrale classica per funzioni $L^1$:
>    $$
>    \widehat{u}(\boldsymbol{\xi}) = \int_{\mathbb{R}^n} u(\mathbf{x}) e^{-i \boldsymbol{\xi} \cdot \mathbf{x}} \, d\mathbf{x}
>    $$
> 2. L'estensione per continuità a $L^2$:
>    $$
>    \widehat{u} = \lim_{m \to +\infty} \widehat{u}_m \quad \text{in } L^2(\mathbb{R}^n)
>    $$
> Si dimostra che le due definizioni sono perfettamente equivalenti quasi ovunque in $\mathbb{R}^n$:
> $$
> \widehat{u}(\boldsymbol{\xi}) = \lim_{m \to +\infty} \widehat{u}_m(\boldsymbol{\xi}) = \int_{\mathbb{R}^n} u(\mathbf{x}) e^{-i \boldsymbol{\xi} \cdot \mathbf{x}} \, d\mathbf{x} \quad \text{q.o. in } \mathbb{R}^n
> $$

> [!quote]- Dimostrazione
> Sia $u \in L^1(\mathbb{R}^n) \cap L^2(\mathbb{R}^n)$.
> Esiste una successione $\{u_m\}_{m \in \mathbb{N}} \subset \mathcal{S}(\mathbb{R}^n)$ che approssima simultaneamente $u$ in entrambe le norme:
> $$
> \|u_m - u\|_1 \xrightarrow{m \to +\infty} 0, \qquad \|u_m - u\|_2 \xrightarrow{m \to +\infty} 0
> $$
> Tale successione si costruisce esplicitamente tramite una successione di mollificatori standard $\rho_m \in C_0^\infty(\mathbb{R}^n)$ ponendo $u_m := u * \rho_m$.
> 
> Allora:
> - $\widehat{u}_m \xrightarrow{m \to +\infty} \widehat{u}$ in $L^2(\mathbb{R}^n)$ per definizione dell'estensione $\mathcal{F}: L^2(\mathbb{R}^n) \to L^2(\mathbb{R}^n)$. La convergenza in norma $L^2$ garantisce l'esistenza di una sottosuccessione $\{u_{k_m}\}_{m \in \mathbb{N}}$ che converge puntualmente quasi ovunque ad $\widehat{u}$:
>   $$
>   \widehat{u}_{k_m}(\boldsymbol{\xi}) \xrightarrow{m \to +\infty} \widehat{u}(\boldsymbol{\xi}) \quad \text{q.o. in } \mathbb{R}^n
>   $$
> - D'altra parte, poiché $u_m \xrightarrow{m \to +\infty} u$ in $L^1(\mathbb{R}^n)$ e l'operatore di Fourier $\mathcal{F}: L^1(\mathbb{R}^n) \to L^\infty(\mathbb{R}^n)$ è continuo con $\|\widehat{f}\|_\infty \le \|f\|_1$, si ha:
>   $$
>   \widehat{u}_m(\boldsymbol{\xi}) = \int_{\mathbb{R}^n} u_m(\mathbf{x}) e^{-i \boldsymbol{\xi} \cdot \mathbf{x}} \, d\mathbf{x} \xrightarrow{m \to +\infty} \int_{\mathbb{R}^n} u(\mathbf{x}) e^{-i \boldsymbol{\xi} \cdot \mathbf{x}} \, d\mathbf{x} \quad \text{in } L^\infty(\mathbb{R}^n)
>   $$
>   ovvero:
>   $$
>   \|\widehat{u}_m - \widehat{u}\|_\infty \xrightarrow{m \to +\infty} 0
>   $$
>   Poiché le funzioni $\widehat{u}_m$ e la trasformata integrale sono continue ($\widehat{u}_m, \widehat{u} \in C^0(\mathbb{R}^n)$), la convergenza in $L^\infty$ implica la convergenza uniforme su tutto $\mathbb{R}^n$, e a maggior ragione la convergenza puntuale $\forall \boldsymbol{\xi} \in \mathbb{R}^n$.
> 
> Per unicità del limite, il limite puntuale della sottosuccessione $L^2$ e il limite uniforme della formulazione $L^1$ coincidono quasi ovunque in $\mathbb{R}^n$. $\blacksquare$
>
### Estensione delle Proprietà in $L^2$ e Teoremi di Isometria

Si estendono naturalmente per densità tutte le proprietà algebriche e topologiche dell'operatore di Fourier allo spazio $L^2(\mathbb{R}^n)$. In particolare, vale l'identità fondamentale di isometria:

> [!proposition] Identità di Plancherel in $L^2(\mathbb{R}^n)$
> Per ogni $u \in L^2(\mathbb{R}^n)$, la trasformata di Fourier soddisfa la relazione:
> $$
> \|u\|_2^2 = \frac{1}{(2\pi)^n} \|\widehat{u}\|_2^2
> $$
> ovvero:
> $$
> \|\widehat{u}\|_2 = (2\pi)^{n/2} \|u\|_2
> $$

> [!quote]- Dimostrazione
> Sia $u \in L^2(\mathbb{R}^n)$ e sia $\{u_m\}_{m \in \mathbb{N}} \subset \mathcal{S}(\mathbb{R}^n)$ tale che $u_m \xrightarrow{m \to +\infty} u$ in $L^2(\mathbb{R}^n)$.
> Poiché $u_m \in \mathcal{S}(\mathbb{R}^n)$, per ciascun elemento vale l'identità di Plancherel classica:
> $$
> \|u_m\|_2^2 = \frac{1}{(2\pi)^n} \|\widehat{u}_m\|_2^2
> $$
> Poiché $\widehat{u}_m \xrightarrow{m \to +\infty} \widehat{u}$ in $L^2(\mathbb{R}^n)$ e la norma $\|\cdot\|_2$ è un funzionale continuo (in virtù della disuguaglianza triangolare inversa $|\|u_m\|_2 - \|u\|_2| \le \|u_m - u\|_2 \to 0$), passando al limite per $m \to +\infty$ su entrambi i membri si ottiene:
> $$
> \|u\|_2^2 = \lim_{m \to +\infty} \|u_m\|_2^2 = \frac{1}{(2\pi)^n} \lim_{m \to +\infty} \|\widehat{u}_m\|_2^2 = \frac{1}{(2\pi)^n} \|\widehat{u}\|_2^2. \quad \blacksquare
> $$

> [!note] Conseguenza Topologica
> L'operatore $\mathcal{F}: L^2(\mathbb{R}^n) \to L^2(\mathbb{R}^n)$ è un operatore lineare e continuo.
> A meno del fattore scalare di normalizzazione $(2\pi)^{-n/2}$, l'operatore di Fourier $\mathcal{F}$ costituisce un'isometria suriettiva (isomorfismo unitario) dello spazio di Hilbert $L^2(\mathbb{R}^n)$ in sé.
>
### Identità di Parseval

L'identità di Plancherel ammette una generalizzazione fondamentale: la trasformata di Fourier preserva non solo la norma quadratica dei singoli vettori, ma anche l'ortogonalità e il prodotto scalare tra coppie di vettori distinti.

> [!theorem] Identità di Parseval per l'Operatore di Fourier
> Siano $f, g \in L^2(\mathbb{R}^n)$. Allora:
> $$
> (\widehat{f}, \widehat{g})_{L^2} = (2\pi)^n (f, g)_{L^2} \qquad \Longleftrightarrow \qquad (f, g)_{L^2} = \frac{1}{(2\pi)^n} (\widehat{f}, \widehat{g})_{L^2}
> $$
> Esplicitando la notazione integrale nel caso reale (o complesso):
> $$
> \int_{\mathbb{R}^n} \widehat{f}(\boldsymbol{\xi}) \overline{\widehat{g}(\boldsymbol{\xi})} \, d\boldsymbol{\xi} = (2\pi)^n \int_{\mathbb{R}^n} f(\mathbf{x}) \overline{g(\mathbf{x})} \, d\mathbf{x}
> $$

> [!quote]- Dimostrazione
> La tesi discende direttamente dall'identità di polarizzazione nello spazio euclideo reale (o identità del parallelogramma):
> $$
> (\widehat{f}, \widehat{g})_{L^2} = \frac{1}{4} \left( \|\widehat{f} + \widehat{g}\|_2^2 - \|\widehat{f} - \widehat{g}\|_2^2 \right)
> $$
> Per linearità della trasformata di Fourier, $\widehat{f} \pm \widehat{g} = \mathcal{F}(f \pm g)$, per cui:
> $$
> (\widehat{f}, \widehat{g})_{L^2} = \frac{1}{4} \left( \|\mathcal{F}(f + g)\|_2^2 - \|\mathcal{F}(f - g)\|_2^2 \right)
> $$
> Applicando l'identità di Plancherel $\|\mathcal{F}(h)\|_2^2 = (2\pi)^n \|h\|_2^2$ ai vettori $h = f \pm g \in L^2(\mathbb{R}^n)$:
> $$
> = \frac{1}{4} (2\pi)^n \left( \|f + g\|_2^2 - \|f - g\|_2^2 \right)
> $$
> Riconoscendo nuovamente l'identità di polarizzazione per il prodotto scalare di partenza $(f, g)_{L^2}$:
> $$
> = (2\pi)^n (f, g)_{L^2}. \quad \blacksquare
> $$
>
### Calcolo Operativo della Trasformata in $L^2$ tramite Troncamento

> [!note] Procedura di Calcolo per Funzioni $L^2(\mathbb{R})$
> Dal punto di vista del calcolo operativo, data una generica funzione $u \in L^2(\mathbb{R})$, come si calcola esplicitamente $\widehat{u}(\xi)$ se $u \notin L^1(\mathbb{R})$ (ovvero se l'integrale non converge assolutamente)?
> 
> Si considera la successione di funzioni troncate sui compatti:
> $$
> u_m(x) := u(x) \chi_{[-m, m]}(x)
> $$
> Chiaramente $u_m \in L^2(\mathbb{R})$. Poiché $u_m$ si annulla identicamente all'esterno dell'intervallo compatto $[-m, m]$, la cui misura di Lebesgue è finita ($|[-m, m]| = 2m < +\infty$), per il teorema di inclusione degli spazi di Lebesgue su insiemi di misura finita si ha:
> $$
> u_m \in L^1(\mathbb{R}) \cap L^2(\mathbb{R}) \quad \forall m \in \mathbb{N}
> $$
> Pertanto, per ciascun $m$, la trasformata $\widehat{u}_m$ è esprimibile tramite l'ordinario integrale di Lebesgue:
> $$
> \widehat{u}_m(\xi) = \int_{\mathbb{R}} u(x) \chi_{[-m, m]}(x) e^{-i \xi x} \, dx = \int_{-m}^m u(x) e^{-i \xi x} \, dx
> $$
> Poiché $u_m \xrightarrow{m \to +\infty} u$ in $L^2(\mathbb{R})$ per convergenza dominata, per la continuità dell'operatore $\mathcal{F}$ in $L^2(\mathbb{R})$ si conclude che:
> $$
> \widehat{u}(\xi) = \lim_{m \to +\infty} \int_{-m}^m u(x) e^{-i \xi x} \, dx \quad \text{nel senso della norma } L^2(\mathbb{R})
> $$
>
### Formula di Inversione in $L^2(\mathbb{R}^n)$

> [!theorem] Teorema di Inversione di Fourier in $L^2(\mathbb{R}^n)$
> Sia $u \in L^2(\mathbb{R}^n)$. Allora:
> $$
> \check{u}(\mathbf{x}) := u(-\mathbf{x}) = \frac{1}{(2\pi)^n} \widehat{\widehat{u}}(\mathbf{x}) \quad \text{in } L^2(\mathbb{R}^n)
> $$
> ovvero l'operatore di inversione è dato da $\mathcal{F}^{-1} = \frac{1}{(2\pi)^n} \mathcal{F} \circ \mathcal{R}$, dove $\mathcal{R}u(\mathbf{x}) = u(-\mathbf{x})$.

> [!note] Confronto sulla Regolarità delle Trasformate tra $L^1$ e $L^2$
> È fondamentale rimarcare la netta differenza qualitativa tra $L^1$ ed $L^2$:
> - Per ogni $u \in L^1(\mathbb{R}^n)$, la trasformata $\widehat{u}$ appartiene a $L^\infty(\mathbb{R}^n) \cap C_0(\mathbb{R}^n)$ per il Lemma di Riemann-Lebesgue. Essa è dunque una funzione continua e limitata puntualmente ovunque.
> - Per ogni $u \in L^2(\mathbb{R}^n)$, invece, $\widehat{u} \in L^2(\mathbb{R}^n)$ senza alcuna ulteriore proprietà di continuità o limitatezza puntuale. Tutte le uguaglianze, le relazioni differenziali e la formula di inversione valgono **esclusivamente nella topologia della norma $\|\cdot\|_2$** (ovvero quasi ovunque).

> [!quote]- Dimostrazione
> Sia $u \in L^2(\mathbb{R}^n)$ e sia $\{u_m\}_{m \in \mathbb{N}} \subset \mathcal{S}(\mathbb{R}^n)$ una successione approssimante tale che:
> $$
> \|u_m - u\|_2 \xrightarrow{m \to +\infty} 0
> $$
> Per definizione della trasformata in $L^2$:
> $$
> \|\widehat{u}_m - \widehat{u}\|_2 \xrightarrow{m \to +\infty} 0
> $$
> Applicando nuovamente la continuità di $\mathcal{F}$ su $L^2(\mathbb{R}^n)$:
> $$
> \|\widehat{\widehat{u}}_m - \widehat{\widehat{u}}\|_2 \xrightarrow{m \to +\infty} 0
> $$
> Inoltre, per l'operatore di riflessione $\check{v}(\mathbf{x}) := v(-\mathbf{x})$ si ha isometricamente:
> $$
> \|\check{u}_m - \check{u}\|_2 = \|u_m - u\|_2 \xrightarrow{m \to +\infty} 0
> $$
> Poiché ciascun $u_m$ appartiene allo spazio di Schwartz $\mathcal{S}(\mathbb{R}^n)$, su di esso vale puntualmente la formula di inversione classica:
> $$
> \check{u}_m = \frac{1}{(2\pi)^n} \widehat{\widehat{u}}_m
> $$
> Passando al limite per $m \to +\infty$ nella norma $L^2(\mathbb{R}^n)$:
> $$
> \check{u} = \lim_{m \to +\infty} \check{u}_m = \frac{1}{(2\pi)^n} \lim_{m \to +\infty} \widehat{\widehat{u}}_m = \frac{1}{(2\pi)^n} \widehat{\widehat{u}}. \quad \blacksquare
> $$
>
### Esempio Notevole: Trasformata di Fourier di $\frac{\sin x}{x}$ e Integrale di Dirichlet

> [!example] Calcolo della Trasformata di $u(x) = \frac{\sin x}{x}$
> Si consideri la funzione sinc:
> $$
> u(x) = \frac{\sin x}{x}
> $$
> Tale funzione appartiene a $L^2(\mathbb{R})$, poiché $\int_{\mathbb{R}} \frac{\sin^2 x}{x^2} \, dx < +\infty$, ma **non** appartiene a $L^1(\mathbb{R})$ in quanto $\int_{\mathbb{R}} \left| \frac{\sin x}{x} \right| \, dx = +\infty$.
> 
> Calcoliamo la sua trasformata di Fourier in $L^2(\mathbb{R})$ mediante il limite di troncamento:
> $$
> \widehat{u}(\xi) = \lim_{m \to +\infty} \int_{-m}^m \frac{\sin x}{x} e^{-i \xi x} \, dx
> $$
> Mostriamo che tale trasformata è una funzione a gradino (porta):
> $$
> \widehat{u}(\xi) = \pi \chi_{(-1, 1)}(\xi)
> $$
> 
> **Verifica tramite dualità e inversione:**
> Consideriamo la funzione ausiliaria:
> $$
> g(\xi) := \pi \chi_{(-1, 1)}(\xi)
> $$
> Chiaramente $g \in L^1(\mathbb{R}) \cap L^2(\mathbb{R})$. Calcolando la trasformata di Fourier ordinaria di $g$:
> $$
> \widehat{g}(x) = \int_{\mathbb{R}} g(\xi) e^{-i x \xi} \, d\xi = \pi \int_{-1}^1 e^{-i x \xi} \, d\xi = \pi \left[ \frac{e^{-i x \xi}}{-i x} \right]_{-1}^1 = \pi \frac{e^{-i x} - e^{i x}}{-i x} = 2\pi \frac{\sin x}{x} = 2\pi u(x)
> $$
> Ne deduciamo la relazione algebrica:
> $$
> u(x) = \frac{1}{2\pi} \widehat{g}(x)
> $$
> Applicando la formula di inversione di Fourier:
> $$
> \widehat{u}(\xi) = \frac{1}{2\pi} \widehat{\widehat{g}}(\xi) \overset{\text{inversione}}{=} g(-\xi) = \pi \chi_{(-1, 1)}(-\xi) = \pi \chi_{(-1, 1)}(\xi)
> $$
> 
> **Calcolo dell'Integrale notevole di Dirichlet quadrato via Plancherel:**
> Applicando l'identità di Plancherel $\|u\|_2^2 = \frac{1}{2\pi} \|\widehat{u}\|_2^2$:
> $$
> \int_{\mathbb{R}} \frac{\sin^2 x}{x^2} \, dx = \|u\|_2^2 = \frac{1}{2\pi} \|\widehat{u}\|_2^2 = \frac{1}{2\pi} \int_{\mathbb{R}} \pi^2 \chi_{(-1, 1)}^2(\xi) \, d\xi = \frac{\pi^2}{2\pi} \int_{-1}^1 1 \, d\xi = \frac{\pi}{2} \cdot 2 = \pi
> $$
> Si ritrova così in modo immediato l'identità fondamentale:
> $$
> \int_{\mathbb{R}} \frac{\sin^2 x}{x^2} \, dx = \pi
> $$
>
### Quadro Sinottico dei Domini della Trasformata di Fourier

> [!note] Quadro di Riepilogo
> Ricapitolando i domini funzionali sin qui trattati:
> - **In $L^1(\mathbb{R}^n)$:**
>   $$
>   \mathcal{F}: L^1(\mathbb{R}^n) \longrightarrow L^\infty(\mathbb{R}^n) \cap C_0(\mathbb{R}^n)
>   $$
> - **Per restrizione allo spazio di Schwartz $\mathcal{S}(\mathbb{R}^n)$:**
>   $$
>   \mathcal{F}: \mathcal{S}(\mathbb{R}^n) \longrightarrow \mathcal{S}(\mathbb{R}^n)
>   $$
> - **Per estensione continua a $L^2(\mathbb{R}^n)$:**
>   $$
>   \mathcal{F}: L^2(\mathbb{R}^n) \longrightarrow L^2(\mathbb{R}^n)
>   $$
> In tutte e tre le formulazioni, l'operatore di Fourier $\mathcal{F}$ è **lineare e continuo**.
> 
> Vedremo ora che l'operatore si estende ulteriormente al contesto distribuzionale:
> $$
> \mathcal{F}: \mathcal{S}^*(\mathbb{R}^n) \longrightarrow \mathcal{S}^*(\mathbb{R}^n)
> $$
> dove $\mathcal{S}^*(\mathbb{R}^n)$ (o $\mathcal{S}'(\mathbb{R}^n)$) denota lo spazio delle **distribuzioni temperate**.
>
## 4.10. Trasformata di Fourier nello Spazio delle Distribuzioni Temperate $\mathcal{S}'(\mathbb{R}^n)$

### Motivazione e Limiti di $\mathcal{D}'(\mathbb{R}^n)$

Sia $T \in \mathcal{D}'(\mathbb{R}^n)$ una generica distribuzione nello spazio duale di $C_0^\infty(\mathbb{R}^n)$.
È possibile estendere la definizione di trasformata di Fourier definendo $\widehat{T}$ per dualità?

L'idea naturale consisterebbe nello "scaricare" l'azione dell'operatore di Fourier direttamente sulle funzioni test:
$$
\text{"} \langle \widehat{T}, \varphi \rangle := \langle T, \widehat{\varphi} \rangle \quad \forall \varphi \in \mathcal{D}(\mathbb{R}^n) \text{"}
$$
Purtroppo questa definizione **non è ben posta in $\mathcal{D}'(\mathbb{R}^n)$**.
Infatti, se $\varphi \in C_0^\infty(\mathbb{R}^n) = \mathcal{D}(\mathbb{R}^n)$ è una funzione test a supporto compatto (non identicamente nulla), **la sua trasformata di Fourier $\widehat{\varphi}$ non ha mai supporto compatto**:
$$
\varphi \in C_0^\infty(\mathbb{R}^n) \centernot{\implies} \widehat{\varphi} \in C_0^\infty(\mathbb{R}^n)
$$
(In virtù del principio di indeterminazione e delle proprietà di prolungamento analitico di Paley-Wiener, una funzione non nulla non può essere a supporto compatto simultaneamente nel dominio dello spazio e delle frequenze).
Di conseguenza, il termine $\langle T, \widehat{\varphi} \rangle$ perde di significato perché $\widehat{\varphi}$ non appartiene allo spazio delle funzioni test $\mathcal{D}(\mathbb{R}^n)$.

Per rimediare a questo ostacolo strutturale, è necessario ampliare lo spazio delle funzioni test adottando lo **spazio di Schwartz $\mathcal{S}(\mathbb{R}^n)$** delle funzioni a decrescimento rapido.
Infatti per esso vale la stabilità per trasformazione:
$$
\forall \varphi \in \mathcal{S}(\mathbb{R}^n) \implies \widehat{\varphi} \in \mathcal{S}(\mathbb{R}^n)
$$
Diventa quindi necessario formalizzare accuratamente la topologia di $\mathcal{S}(\mathbb{R}^n)$ e definire lo spazio duale corrispondente: lo spazio delle **distribuzioni temperate**.

### Topologia e Convergenza nello Spazio di Schwartz $\mathcal{S}(\mathbb{R}^n)$

> [!definition] Convergenza nello Spazio di Schwartz $\mathcal{S}(\mathbb{R}^n)$
> Sia $\{\varphi_m\}_{m \in \mathbb{N}} \subset \mathcal{S}(\mathbb{R}^n)$ una successione di funzioni nello spazio di Schwartz.
> Diciamo che la successione converge a zero nello spazio di Schwartz:
> $$
> \varphi_m \xrightarrow{m \to +\infty} 0 \quad \text{in } \mathcal{S}(\mathbb{R}^n)
> $$
> se e solo se per ogni coppia di multi-indici $\boldsymbol{\alpha}, \boldsymbol{\beta} \in \mathbb{N}^n$ si ha che:
> $$
> \mathbf{x}^{\boldsymbol{\alpha}} D^{\boldsymbol{\beta}} \varphi_m(\mathbf{x}) \xrightarrow{m \to +\infty} 0 \quad \text{uniformemente in } \mathbb{R}^n
> $$
> ovvero:
> $$
> \sup_{\mathbf{x} \in \mathbb{R}^n} |\mathbf{x}^{\boldsymbol{\alpha}} D^{\boldsymbol{\beta}} \varphi_m(\mathbf{x})| \xrightarrow{m \to +\infty} 0
> $$
> Più in generale, diciamo che:
> $$
> \varphi_m \xrightarrow{m \to +\infty} \varphi \quad \text{in } \mathcal{S}(\mathbb{R}^n) \iff \varphi_m - \varphi \xrightarrow{m \to +\infty} 0 \quad \text{in } \mathcal{S}(\mathbb{R}^n)
> $$

> [!note] Confronto tra le Convergenze in $\mathcal{D}(\mathbb{R}^n)$ e $\mathcal{S}(\mathbb{R}^n)$
> Si noti che sussiste l'inclusione stretta:
> $$
> \mathcal{D}(\mathbb{R}^n) \subset \mathcal{S}(\mathbb{R}^n)
> $$
> Tale inclusione è topologicamente compatibile con le rispettive definizioni di convergenza.
> Mostriamo infatti che se $\{\varphi_m\}_{m \in \mathbb{N}} \subset \mathcal{D}(\mathbb{R}^n)$:
> $$
> \varphi_m \xrightarrow{m \to +\infty} 0 \text{ in } \mathcal{D}(\mathbb{R}^n) \implies \varphi_m \xrightarrow{m \to +\infty} 0 \text{ in } \mathcal{S}(\mathbb{R}^n)
> $$
> mentre il viceversa è falso ($\not\Leftarrow$).

> [!quote]- Dimostrazione dell'Implicazione
> Supponiamo che $\varphi_m \xrightarrow{m \to +\infty} 0$ in $\mathcal{D}(\mathbb{R}^n)$. Per definizione di convergenza nello spazio delle funzioni test a supporto compatto, esiste un compatto $K \subset \mathbb{R}^n$ tale che:
> $$
> \operatorname{supp} \varphi_m \subseteq K \quad \forall m \in \mathbb{N}
> $$
> e le derivate convergono uniformemente a zero: $\sup_{\mathbf{x} \in K} |D^{\boldsymbol{\beta}} \varphi_m(\mathbf{x})| \to 0$.
> 
> Allora per ogni coppia di multi-indici $\boldsymbol{\alpha}, \boldsymbol{\beta} \in \mathbb{N}^n$, essendo $K$ limitato si ha che la funzione polinomiale $\mathbf{x}^{\boldsymbol{\alpha}}$ è limitata su $K$:
> $$
> M := \sup_{\mathbf{x} \in K} |\mathbf{x}^{\boldsymbol{\alpha}}| < +\infty
> $$
> Di conseguenza:
> $$
> \sup_{\mathbf{x} \in \mathbb{R}^n} |\mathbf{x}^{\boldsymbol{\alpha}} D^{\boldsymbol{\beta}} \varphi_m(\mathbf{x})| = \sup_{\mathbf{x} \in K} |\mathbf{x}^{\boldsymbol{\alpha}} D^{\boldsymbol{\beta}} \varphi_m(\mathbf{x})| \le M \sup_{\mathbf{x} \in K} |D^{\boldsymbol{\beta}} \varphi_m(\mathbf{x})| \xrightarrow{m \to +\infty} 0
> $$
> Pertanto $\varphi_m \xrightarrow{m \to +\infty} 0$ in $\mathcal{S}(\mathbb{R}^n)$.
> Segue che se $\varphi_m \to \varphi$ in $\mathcal{D}(\mathbb{R}^n)$, allora $\varphi_m \to \varphi$ in $\mathcal{S}(\mathbb{R}^n)$. $\blacksquare$

> [!example] Controesempio alla freccia opposta ($\not\Leftarrow$)
> Esistono successioni $\{\varphi_m\}_{m \in \mathbb{N}} \subset \mathcal{D}(\mathbb{R}^n)$ tali che:
> $$
> \varphi_m \xrightarrow{m \to +\infty} 0 \text{ in } \mathcal{S}(\mathbb{R}^n) \quad \text{MA} \quad \varphi_m \centernot{\xrightarrow{m \to +\infty}} 0 \text{ in } \mathcal{D}(\mathbb{R}^n)
> $$
> Si consideri ad esempio una successione di campane lisce a supporto compatto che vengono progressivamente scalate in ampiezza e traslate verso l'infinito:
> $$
> \varphi_m(x) := \frac{1}{m} \psi(x - m), \qquad \psi \in C_0^\infty(\mathbb{R}), \ \operatorname{supp} \psi = [-1, 1]
> $$
> Il supporto di $\varphi_m$ è dato da $[m - 1, m + 1]$. Non esiste alcun compatto $K \subset \mathbb{R}$ che contenga uniformemente tutti i supporti $\operatorname{supp} \varphi_m$ al variare di $m \in \mathbb{N}$:
> $$
> \nexists K \subset \mathbb{R} \text{ compatto tale che } \bigcup_{m=1}^\infty \operatorname{supp} \varphi_m \subseteq K
> $$
> Pertanto $\varphi_m \centernot{\to} 0$ in $\mathcal{D}(\mathbb{R})$.
> Tuttavia, poiché l'ampiezza decade come $\frac{1}{m}$ e le code dei polinomi vengono soppresse, un calcolo esplicito mostra che ogni seminorma di Schwartz tende a zero per $m \to +\infty$, garantendo che $\varphi_m \to 0$ in $\mathcal{S}(\mathbb{R})$.
>
### Continuità della Trasformata di Fourier in $\mathcal{S}(\mathbb{R}^n)$

> [!proposition] Continuità dell'Operatore di Fourier in $\mathcal{S}(\mathbb{R}^n)$
> L'operatore di Fourier $\mathcal{F}: \mathcal{S}(\mathbb{R}^n) \to \mathcal{S}(\mathbb{R}^n)$ è **continuo** rispetto alla nozione di convergenza dello spazio di Schwartz, ossia:
> $$
> \forall \{\varphi_m\}_{m \in \mathbb{N}} \subset \mathcal{S}(\mathbb{R}^n), \quad \varphi_m \xrightarrow{m \to +\infty} \varphi \text{ in } \mathcal{S}(\mathbb{R}^n) \implies \widehat{\varphi}_m \xrightarrow{m \to +\infty} \widehat{\varphi} \text{ in } \mathcal{S}(\mathbb{R}^n)
> $$

> [!quote]- Dimostrazione
> Per linearità, è sufficiente verificare la tesi per una successione infinitesima:
> $$
> \varphi_m \xrightarrow{m \to +\infty} 0 \text{ in } \mathcal{S}(\mathbb{R}^n) \overset{?}{\implies} \widehat{\varphi}_m \xrightarrow{m \to +\infty} 0 \text{ in } \mathcal{S}(\mathbb{R}^n)
> $$
> L'ipotesi $\varphi_m \to 0$ in $\mathcal{S}(\mathbb{R}^n)$ implica che per ogni coppia di multi-indici $\boldsymbol{\alpha}, \boldsymbol{\beta} \in \mathbb{N}^n$:
> $$
> \mathbf{x}^{\boldsymbol{\alpha}} D^{\boldsymbol{\beta}} \varphi_m \xrightarrow{m \to +\infty} 0 \quad \text{uniformemente in } \mathbb{R}^n
> $$
> Dobbiamo dimostrare che per ogni fissata coppia $\boldsymbol{\alpha}, \boldsymbol{\beta} \in \mathbb{N}^n$:
> $$
> \sup_{\boldsymbol{\xi} \in \mathbb{R}^n} |\boldsymbol{\xi}^{\boldsymbol{\alpha}} D^{\boldsymbol{\beta}} \widehat{\varphi}_m(\boldsymbol{\xi})| \xrightarrow{m \to +\infty} 0
> $$
> Ricordando le proprietà differenziali della trasformata di Fourier:
> $$
> D^{\boldsymbol{\beta}} \widehat{\varphi}_m(\boldsymbol{\xi}) = (-i)^{|\boldsymbol{\beta}|} \widehat{\mathbf{x}^{\boldsymbol{\beta}} \varphi_m}(\boldsymbol{\xi})
> $$
> e la moltiplicazione per potenze di $\boldsymbol{\xi}$:
> $$
> \boldsymbol{\xi}^{\boldsymbol{\alpha}} \widehat{\psi}(\boldsymbol{\xi}) = (-i)^{|\boldsymbol{\alpha}|} \widehat{D^{\boldsymbol{\alpha}} \psi}(\boldsymbol{\xi})
> $$
> Combinando le due identità si ottiene (a meno di un fattore di fase $i^k$ con $|i^k| = 1$):
> $$
> \boldsymbol{\xi}^{\boldsymbol{\alpha}} D^{\boldsymbol{\beta}} \widehat{\varphi}_m = i^{|\boldsymbol{\beta}| - |\boldsymbol{\alpha}|} \widehat{D^{\boldsymbol{\alpha}} (\mathbf{x}^{\boldsymbol{\beta}} \varphi_m)}
> $$
> **Claim:** Affermiamo che $D^{\boldsymbol{\alpha}} (\mathbf{x}^{\boldsymbol{\beta}} \varphi_m) \xrightarrow{m \to +\infty} 0$ nello spazio $L^1(\mathbb{R}^n)$.
> Se tale affermazione è vera, poiché l'operatore di Fourier $\mathcal{F}: L^1(\mathbb{R}^n) \to L^\infty(\mathbb{R}^n)$ è continuo con $\|\widehat{\psi}\|_\infty \le \|\psi\|_1$, si conclude immediatamente che:
> $$
> \| \boldsymbol{\xi}^{\boldsymbol{\alpha}} D^{\boldsymbol{\beta}} \widehat{\varphi}_m \|_\infty = \| \widehat{D^{\boldsymbol{\alpha}} (\mathbf{x}^{\boldsymbol{\beta}} \varphi_m)} \|_\infty \le \| D^{\boldsymbol{\alpha}} (\mathbf{x}^{\boldsymbol{\beta}} \varphi_m) \|_1 \xrightarrow{m \to +\infty} 0
> $$
> il che dimostrerebbe la tesi.
> 
> Verifichiamo il Claim stimando la norma $L^1$:
> $$
> \int_{\mathbb{R}^n} |D^{\boldsymbol{\alpha}} (\mathbf{x}^{\boldsymbol{\beta}} \varphi_m)| \, d\mathbf{x} = \int_{\mathbb{R}^n} \frac{(1 + \|\mathbf{x}\|^{2n}) |D^{\boldsymbol{\alpha}} (\mathbf{x}^{\boldsymbol{\beta}} \varphi_m)|}{1 + \|\mathbf{x}\|^{2n}} \, d\mathbf{x}
> $$
> Maggiorando il numeratore con il suo estremo superiore su $\mathbb{R}^n$:
> $$
> \le \sup_{\mathbf{x} \in \mathbb{R}^n} \left[ (1 + \|\mathbf{x}\|^{2n}) |D^{\boldsymbol{\alpha}} (\mathbf{x}^{\boldsymbol{\beta}} \varphi_m)| \right] \int_{\mathbb{R}^n} \frac{1}{1 + \|\mathbf{x}\|^{2n}} \, d\mathbf{x}
> $$
> L'integrale a secondo membro può essere calcolato tramite passaggio a coordinate polari $n$-dimensionali (con variabile radiale $\rho = \|\mathbf{x}\|$ ed elemento di volume $d\mathbf{x} = \rho^{n-1} d\rho \, d\Omega$):
> $$
> \int_{\mathbb{R}^n} \frac{1}{1 + \|\mathbf{x}\|^{2n}} \, d\mathbf{x} = \omega_{n-1} \int_0^{+\infty} \frac{\rho^{n-1}}{1 + \rho^{2n}} \, d\rho = C < +\infty
> $$
> L'integrale è finito poiché l'esponente a denominatore soddisfa $2n - (n - 1) = n + 1 > 1$.
> Pertanto:
> $$
> \int_{\mathbb{R}^n} |D^{\boldsymbol{\alpha}} (\mathbf{x}^{\boldsymbol{\beta}} \varphi_m)| \, d\mathbf{x} \le C \sup_{\mathbf{x} \in \mathbb{R}^n} \left[ (1 + \|\mathbf{x}\|^{2n}) |D^{\boldsymbol{\alpha}} (\mathbf{x}^{\boldsymbol{\beta}} \varphi_m)| \right]
> $$
> Applicando la regola di derivazione di Leibniz per prodotti, la quantità $(1 + \|\mathbf{x}\|^{2n}) D^{\boldsymbol{\alpha}} (\mathbf{x}^{\boldsymbol{\beta}} \varphi_m)$ si sviluppa come combinazione lineare finita di termini della forma:
> $$
> \mathbf{x}^{\boldsymbol{\gamma}} D^{\boldsymbol{\sigma}} \varphi_m
> $$
> per opportuni multi-indici $\boldsymbol{\gamma}, \boldsymbol{\sigma} \in \mathbb{N}^n$.
> Poiché per ipotesi $\varphi_m \xrightarrow{m \to +\infty} 0$ in $\mathcal{S}(\mathbb{R}^n)$, per ciascun termine vale:
> $$
> \sup_{\mathbf{x} \in \mathbb{R}^n} |\mathbf{x}^{\boldsymbol{\gamma}} D^{\boldsymbol{\sigma}} \varphi_m(\mathbf{x})| \xrightarrow{m \to +\infty} 0
> $$
> Per la disuguaglianza triangolare, la combinazione lineare finita tende uniformemente a zero, da cui:
> $$
> \int_{\mathbb{R}^n} |D^{\boldsymbol{\alpha}} (\mathbf{x}^{\boldsymbol{\beta}} \varphi_m)| \, d\mathbf{x} \xrightarrow{m \to +\infty} 0
> $$
> Ciò prova il Claim e stabilisce che $\widehat{\varphi}_m \xrightarrow{m \to +\infty} 0$ in $\mathcal{S}(\mathbb{R}^n)$.
> Più in generale, se $\varphi_m \to \varphi$ in $\mathcal{S}(\mathbb{R}^n)$, allora $\varphi_m - \varphi \to 0$, per cui $\widehat{\varphi}_m - \widehat{\varphi} \to 0$, ossia $\widehat{\varphi}_m \xrightarrow{m \to +\infty} \widehat{\varphi}$ in $\mathcal{S}(\mathbb{R}^n)$. $\blacksquare$
>
### Spazio delle Distribuzioni Temperate $\mathcal{S}'(\mathbb{R}^n)$

> [!definition] Spazio delle Distribuzioni Temperate $\mathcal{S}'(\mathbb{R}^n)$
> Si definisce **distribuzione temperata** ogni funzionale lineare e continuo sullo spazio di Schwartz $\mathcal{S}(\mathbb{R}^n)$:
> $$
> T: \mathcal{S}(\mathbb{R}^n) \longrightarrow \mathbb{R} \quad (\text{oppure } \mathbb{C})
> $$
> La continuità di $T$ equivale a richiedere che per ogni successione $\{\varphi_m\}_{m \in \mathbb{N}} \subset \mathcal{S}(\mathbb{R}^n)$ tale che:
> $$
> \varphi_m \xrightarrow{m \to +\infty} \varphi \quad \text{in } \mathcal{S}(\mathbb{R}^n) \implies \langle T, \varphi_m \rangle \xrightarrow{m \to +\infty} \langle T, \varphi \rangle
> $$
> Lo spazio vettoriale di tali funzionali viene indicato con:
> $$
> \mathcal{S}^*(\mathbb{R}^n) \quad \text{oppure} \quad \mathcal{S}'(\mathbb{R}^n)
> $$

> [!note] Inclusione Topologica dei Duali: $\mathcal{S}'(\mathbb{R}^n) \subset \mathcal{D}'(\mathbb{R}^n)$
> Poiché $\mathcal{D}(\mathbb{R}^n) \subset \mathcal{S}(\mathbb{R}^n)$ e la nozione di convergenza in $\mathcal{D}(\mathbb{R}^n)$ è strettamente più forte di quella in $\mathcal{S}(\mathbb{R}^n)$, ogni funzionale lineare e continuo $T \in \mathcal{S}'(\mathbb{R}^n)$ definisce naturalmente per restrizione un funzionale lineare e continuo su $\mathcal{D}(\mathbb{R}^n)$.
> Pertanto:
> $$
> T \in \mathcal{S}'(\mathbb{R}^n) \implies T|_{\mathcal{D}(\mathbb{R}^n)} \in \mathcal{D}'(\mathbb{R}^n)
> $$
> Nel senso della teoria della dualità degli spazi vettoriali topologici, si ha l'inclusione:
> $$
> \mathcal{S}'(\mathbb{R}^n) \subset \mathcal{D}'(\mathbb{R}^n)
> $$
> Le distribuzioni temperate formano dunque una sottoclasse propria dello spazio di tutte le distribuzioni: una distribuzione temperata è una distribuzione che "non cresce troppo velocemente all'infinito".
>
### Esempi e Classi Fondamentali di Distribuzioni Temperate

> [!example] Esempio 1: Polinomi e Distribuzioni a Crescita Polinomiale

> [!example] Distribuzione Regolare Associata a un Polinomio
> Sia $u(\mathbf{x}) = P(\mathbf{x})$ un polinomio di grado $n$ su $\mathbb{R}^n$.
> Poiché ogni polinomio è continuo, si ha $P \in L_{\mathrm{loc}}^1(\mathbb{R}^n)$, per cui definisce canonicamente una distribuzione regolare $T_P \in \mathcal{D}'(\mathbb{R}^n)$ ponendo:
> $$
> \langle T_P, \varphi \rangle = \int_{\mathbb{R}^n} P(\mathbf{x}) \varphi(\mathbf{x}) \, d\mathbf{x}
> $$
> Mostriamo che $T_P$ definisce una **distribuzione temperata**, ossia $T_P \in \mathcal{S}'(\mathbb{R}^n)$:
> 
> **1. Ben definizione:**
> Mostriamo che $\langle P, \varphi \rangle \in \mathbb{R}$ è finito per ogni $\varphi \in \mathcal{S}(\mathbb{R}^n)$.
> Scegliamo un polinomio ausiliario $q(\mathbf{x})$ a crescita sufficientemente rapida tale che $\frac{P}{q} \in L^1(\mathbb{R}^n)$, ad esempio ponendo:
> $$
> q(\mathbf{x}) := (1 + P(\mathbf{x})^2)(1 + \|\mathbf{x}\|^{2n})
> $$
> Allora per ogni funzione test $\varphi \in \mathcal{S}(\mathbb{R}^n)$:
> $$
> \int_{\mathbb{R}^n} |P(\mathbf{x}) \varphi(\mathbf{x})| \, d\mathbf{x} = \int_{\mathbb{R}^n} \left| \frac{P(\mathbf{x})}{q(\mathbf{x})} \right| |q(\mathbf{x}) \varphi(\mathbf{x})| \, d\mathbf{x} \le \sup_{\mathbf{x} \in \mathbb{R}^n} |q(\mathbf{x}) \varphi(\mathbf{x})| \int_{\mathbb{R}^n} \left| \frac{P(\mathbf{x})}{q(\mathbf{x})} \right| \, d\mathbf{x}
> $$
> In questa maggiorazione:
> - $\int_{\mathbb{R}^n} \left| \frac{P}{q} \right| \, d\mathbf{x} < +\infty$ per costruzione di $q$.
> - $\sup_{\mathbf{x} \in \mathbb{R}^n} |q(\mathbf{x}) \varphi(\mathbf{x})| < +\infty$ poiché $\varphi \in \mathcal{S}(\mathbb{R}^n)$ decade all'infinito più rapidamente dell'inverso di qualsiasi polinomio.
> Quindi l'integrale converge assolutamente.
> 
> **2. Linearità:**
> Segue immediatamente dalla linearità dell'integrale di Lebesgue.
> 
> **3. Continuità:**
> Sia $\{\varphi_m\}_{m \in \mathbb{N}} \subset \mathcal{S}(\mathbb{R}^n)$ tale che $\varphi_m \xrightarrow{m \to +\infty} 0$ in $\mathcal{S}(\mathbb{R}^n)$. Allora:
> $$
> |\langle P, \varphi_m \rangle| \le \int_{\mathbb{R}^n} |P \varphi_m| \, d\mathbf{x} \le \sup_{\mathbf{x} \in \mathbb{R}^n} |q \varphi_m| \int_{\mathbb{R}^n} \left| \frac{P}{q} \right| \, d\mathbf{x} \xrightarrow{m \to +\infty} 0
> $$
> poiché per definizione di convergenza in $\mathcal{S}(\mathbb{R}^n)$ si ha $\sup_{\mathbb{R}^n} |q \varphi_m| \to 0$.
> Pertanto $T_P \in \mathcal{S}'(\mathbb{R}^n)$.

> [!note] Estensione a Funzioni Maggiorate da Polinomi
> Sia $u \in L_{\mathrm{loc}}^1(\mathbb{R}^n)$ tale che:
> $$
> |u(\mathbf{x})| \le P(\mathbf{x}) \quad \forall \mathbf{x} \in \mathbb{R}^n
> $$
> dove $P(\mathbf{x})$ è un polinomio a valori positivi.
> Allora la distribuzione associata $T_u \in \mathcal{S}'(\mathbb{R}^n)$.
> Infatti valgono identicamente le medesime stime:
> $$
> \int_{\mathbb{R}^n} |u \varphi| \, d\mathbf{x} \le \int_{\mathbb{R}^n} |P \varphi| \, d\mathbf{x} \le \sup_{\mathbf{x} \in \mathbb{R}^n} |q \varphi| \int_{\mathbb{R}^n} \left| \frac{P}{q} \right| \, d\mathbf{x}
> $$

> [!example] Esempio 2: Funzioni a Crescita Lenta

> [!definition] Funzione a Crescita Lenta
> Una funzione misurabile $u: \mathbb{R}^n \to \mathbb{R}$ si dice **a crescita lenta** se esistono una funzione $w \in L^1(\mathbb{R}^n)$ e un polinomio $q$ su $\mathbb{R}^n$ tali che:
> $$
> u(\mathbf{x}) = w(\mathbf{x}) q(\mathbf{x}) \quad \forall \mathbf{x} \in \mathbb{R}^n
> $$

> [!note] Distribuzione Temperata Associata
> Se $u$ è una funzione a crescita lenta, allora:
> 1. $u \in L_{\mathrm{loc}}^1(\mathbb{R}^n)$.
> 2. Il funzionale lineare $T_u$ definito da:
>    $$
>    \langle T_u, \varphi \rangle := \int_{\mathbb{R}^n} u(\mathbf{x}) \varphi(\mathbf{x}) \, d\mathbf{x} \quad \forall \varphi \in \mathcal{S}(\mathbb{R}^n)
>    $$
>    è una distribuzione temperata: $T_u \in \mathcal{S}'(\mathbb{R}^n)$.

> [!quote]- Dimostrazione
> 1. **Ben definizione:**
>    $$
>    \int_{\mathbb{R}^n} |u \varphi| \, d\mathbf{x} = \int_{\mathbb{R}^n} |w| |q \varphi| \, d\mathbf{x} \le \sup_{\mathbf{x} \in \mathbb{R}^n} |q(\mathbf{x}) \varphi(\mathbf{x})| \int_{\mathbb{R}^n} |w(\mathbf{x})| \, d\mathbf{x} < +\infty
>    $$
>    poiché $w \in L^1(\mathbb{R}^n)$ e $\sup_{\mathbb{R}^n} |q \varphi| < +\infty$ per $\varphi \in \mathcal{S}(\mathbb{R}^n)$.
> 2. **Linearità:** Immediata per linearità dell'integrale.
> 3. **Continuità:** Sia $\{\varphi_m\}_{m \in \mathbb{N}} \subset \mathcal{S}(\mathbb{R}^n)$ con $\varphi_m \xrightarrow{m \to +\infty} 0$ in $\mathcal{S}(\mathbb{R}^n)$. Allora:
>    $$
>    \left| \int_{\mathbb{R}^n} \varphi_m u \, d\mathbf{x} \right| \le \int_{\mathbb{R}^n} |q \varphi_m| |w| \, d\mathbf{x} \le \sup_{\mathbf{x} \in \mathbb{R}^n} |q \varphi_m| \int_{\mathbb{R}^n} |w| \, d\mathbf{x} \xrightarrow{m \to +\infty} 0
>    $$
>    poiché $\sup_{\mathbb{R}^n} |q \varphi_m| \to 0$ e $\|w\|_1 < +\infty$.
>    Ne segue che $T_u$ è continuo su $\mathcal{S}(\mathbb{R}^n)$, per cui $T_u \in \mathcal{S}'(\mathbb{R}^n)$. $\blacksquare$

> [!example] Esempio 3: Inclusione di Tutti gli Spazi di Lebesgue $L^p(\mathbb{R}^n)$ in $\mathcal{S}'(\mathbb{R}^n)$

> [!proposition] Inclusione $L^p(\mathbb{R}^n) \subset \mathcal{S}'(\mathbb{R}^n)$ per ogni $p \in [1, +\infty]$
> Per ogni $p \in [1, +\infty]$, ogni funzione $u \in L^p(\mathbb{R}^n)$ è a crescita lenta.
> Di conseguenza, lo spazio $L^p(\mathbb{R}^n)$ si immerge con continuità nello spazio delle distribuzioni temperate:
> $$
> L^p(\mathbb{R}^n) \subset \mathcal{S}'(\mathbb{R}^n) \quad \forall p \in [1, +\infty]
> $$

> [!quote]- Dimostrazione
> Analizziamo esaurientemente tutti i casi dell'esponente $p$:
> 
> **Caso $p = 1$ (caso banale):**
> Sia $u \in L^1(\mathbb{R}^n)$. Essa si fattorizza banalmente come:
> $$
> u(\mathbf{x}) = u(\mathbf{x}) \cdot 1
> $$
> dove $w = u \in L^1(\mathbb{R}^n)$ e $q(\mathbf{x}) \equiv 1$ è un polinomio (di grado zero). Dunque $u$ è a crescita lenta e $T_u \in \mathcal{S}'(\mathbb{R}^n)$.
> 
> **Caso $p = +\infty$:**
> Sia $u \in L^\infty(\mathbb{R}^n)$. Scegliamo un polinomio $q$ a valori strettamente positivi tale che $\frac{1}{q} \in L^1(\mathbb{R}^n)$, ad esempio:
> $$
> q(\mathbf{x}) := 1 + \|\mathbf{x}\|^{2n}
> $$
> Scriviamo:
> $$
> u(\mathbf{x}) = q(\mathbf{x}) \cdot \frac{u(\mathbf{x})}{q(\mathbf{x})}
> $$
> dove $q$ è un polinomio. Applicando la disuguaglianza di Hölder con esponenti $\infty$ e $1$:
> $$
> \left\| \frac{u}{q} \right\|_1 \le \|u\|_\infty \left\| \frac{1}{q} \right\|_1 < +\infty \implies \frac{u}{q} \in L^1(\mathbb{R}^n)
> $$
> Posto $w = \frac{u}{q} \in L^1(\mathbb{R}^n)$, si ha $u = w q$, dunque $u$ è a crescita lenta.
> 
> **Caso $p \in (1, +\infty)$:**
> Sia $u \in L^p(\mathbb{R}^n)$. Sia $p' = \frac{p}{p-1}$ l'esponente coniugato di $p$ ($1/p + 1/p' = 1$).
> Scegliamo un polinomio $q$ tale che $\frac{1}{q} \in L^{p'}(\mathbb{R}^n)$. La scelta:
> $$
> q(\mathbf{x}) := 1 + \|\mathbf{x}\|^{2n}
> $$
> è sempre valida, poiché $2n \cdot p' > 2n > n$, garantendo l'integrabilità $p'$-esima all'infinito.
> Poniamo quindi $u = q \cdot \frac{u}{q}$. Per la disuguaglianza di Hölder con esponenti coniugati $p$ e $p'$:
> $$
> \left\| \frac{u}{q} \right\|_1 \le \|u\|_p \left\| \frac{1}{q} \right\|_{p'} < +\infty \implies \frac{u}{q} \in L^1(\mathbb{R}^n)
> $$
> Dunque anche per $p \in (1, +\infty)$ la funzione $u$ si decompone come prodotto di un polinomio per una funzione $L^1$, ed è pertanto a crescita lenta (o a crescita limitata). Ne segue che $T_u \in \mathcal{S}'(\mathbb{R}^n)$. $\blacksquare$

> [!example] Esempio 4: La Delta di Dirac e le sue Derivate Distribuzionali

> [!example] La Delta di Dirac $\delta_{\mathbf{x}_0} \in \mathcal{S}'(\mathbb{R}^n)$
> Sia $\mathbf{x}_0 \in \mathbb{R}^n$. Il funzionale delta di Dirac centrato in $\mathbf{x}_0$, che appartiene a $\mathcal{D}'(\mathbb{R}^n)$, è anch'esso una **distribuzione temperata**:
> $$
> \delta_{\mathbf{x}_0} \in \mathcal{S}'(\mathbb{R}^n)
> $$
> con azione definita da:
> $$
> \langle \delta_{\mathbf{x}_0}, \varphi \rangle = \varphi(\mathbf{x}_0) \quad \forall \varphi \in \mathcal{S}(\mathbb{R}^n)
> $$
> 
> **Verifica della continuità:**
> Sia $\{\varphi_m\}_{m \in \mathbb{N}} \subset \mathcal{S}(\mathbb{R}^n)$ una successione convergente a zero in $\mathcal{S}(\mathbb{R}^n)$: $\varphi_m \xrightarrow{m \to +\infty} 0$.
> Allora:
> $$
> |\langle \delta_{\mathbf{x}_0}, \varphi_m \rangle| = |\varphi_m(\mathbf{x}_0)| \le \sup_{\mathbf{x} \in \mathbb{R}^n} |\varphi_m(\mathbf{x})| \xrightarrow{m \to +\infty} 0
> $$
> da cui segue $\langle \delta_{\mathbf{x}_0}, \varphi_m \rangle \xrightarrow{m \to +\infty} 0$.
> Dunque $\delta_{\mathbf{x}_0}$ è una distribuzione temperata.

> [!example] Derivate Distribuzionali della Delta di Dirac
> Anche tutte le derivate distribuzionali della delta di Dirac sono distribuzioni temperate.
> Per ogni multi-indice $\boldsymbol{\alpha} \in \mathbb{N}^n$ e ogni $\mathbf{x}_0 \in \mathbb{R}^n$:
> $$
> D^{\boldsymbol{\alpha}} \delta_{\mathbf{x}_0} \in \mathcal{S}'(\mathbb{R}^n)
> $$
> con azione definita tramite la dualità distribuzionale da:
> $$
> \langle D^{\boldsymbol{\alpha}} \delta_{\mathbf{x}_0}, \varphi \rangle = (-1)^{|\boldsymbol{\alpha}|} \langle \delta_{\mathbf{x}_0}, D^{\boldsymbol{\alpha}} \varphi \rangle = (-1)^{|\boldsymbol{\alpha}|} D^{\boldsymbol{\alpha}} \varphi(\mathbf{x}_0)
> $$
> La continuità si verifica analogamente: se $\varphi_m \xrightarrow{m \to +\infty} 0$ in $\mathcal{S}(\mathbb{R}^n)$, allora:
> $$
> |D^{\boldsymbol{\alpha}} \varphi_m(\mathbf{x}_0)| \le \sup_{\mathbf{x} \in \mathbb{R}^n} |D^{\boldsymbol{\alpha}} \varphi_m(\mathbf{x})| \xrightarrow{m \to +\infty} 0
> $$
> in virtù della definizione stessa di topologia di Schwartz.

> [!example] Esempio 5: Controesempio di Distribuzione NON Temperata

> [!example] Esempio di Distribuzione NON Temperata
> Si consideri la funzione a crescita esponenziale:
> $$
> u(\mathbf{x}) = e^{\|\mathbf{x}\|}
> $$
> Poiché $u$ è continua, essa è localmente sommabile: $u \in L_{\mathrm{loc}}^1(\mathbb{R}^n)$.
> Di conseguenza, essa definisce regolarmente una distribuzione in $\mathcal{D}'(\mathbb{R}^n)$:
> $$
> T_u \in \mathcal{D}'(\mathbb{R}^n)
> $$
> Tuttavia, essa **NON è una distribuzione temperata**:
> $$
> T_u \notin \mathcal{S}'(\mathbb{R}^n)
> $$
> La crescita esponenziale all'infinito non può essere controllata dal decadimento delle funzioni di Schwartz, le quali sono vincolate ad avere decadimento più rapido di ogni potenza polinomiale ma non necessariamente più rapido di ogni esponenziale (ad esempio, esistono funzioni $\varphi \in \mathcal{S}(\mathbb{R}^n)$ per cui $\int_{\mathbb{R}^n} e^{\|\mathbf{x}\|} |\varphi(\mathbf{x})| \, d\mathbf{x} = +\infty$, come ad esempio funzioni con decadimento asintotico sub-esponenziale $\varphi(\mathbf{x}) \sim e^{-\sqrt{\|\mathbf{x}\|}}$ raccordate lisce).
> Dunque $T_u$ non è estendibile con continuità su tutto $\mathcal{S}(\mathbb{R}^n)$.
>
### Definizione della Trasformata di Fourier in $\mathcal{S}'(\mathbb{R}^n)$

> [!definition] Trasformata di Fourier per Distribuzioni Temperate
> Sia $T \in \mathcal{S}'(\mathbb{R}^n)$ una distribuzione temperata.
> Definiamo la sua **trasformata di Fourier** $\widehat{T} \in \mathcal{S}'(\mathbb{R}^n)$ ponendo:
> $$
> \langle \widehat{T}, \varphi \rangle := \langle T, \widehat{\varphi} \rangle \quad \forall \varphi \in \mathcal{S}(\mathbb{R}^n)
> $$

> [!note] Buona Posizione della Definizione
> Verifichiamo che la definizione è matematicamente ben posta:
> - **Ben definizione del termine:** Se $\varphi \in \mathcal{S}(\mathbb{R}^n)$, per il teorema di stabilità dello spazio di Schwartz si ha $\widehat{\varphi} \in \mathcal{S}(\mathbb{R}^n)$. Poiché per ipotesi $T \in \mathcal{S}'(\mathbb{R}^n)$ è un funzionale ben definito su tutto $\mathcal{S}(\mathbb{R}^n)$, l'accoppiamento di dualità $\langle T, \widehat{\varphi} \rangle$ ha perfettamente senso e restituisce uno scalare in $\mathbb{C}$ (o $\mathbb{R}$).
> - **Linearità:** L'operatore $\widehat{T}$ è lineare poiché sia il funzionale $T$ che l'operatore di Fourier $\mathcal{F}$ su $\mathcal{S}(\mathbb{R}^n)$ sono lineari, cioè per ogni $\alpha, \beta \in \mathbb{R}$ e per ogni $\varphi, \psi \in \mathcal{S}(\mathbb{R}^n)$:
> $$
> \begin{align}
> \langle \hat{T}, \alpha \varphi + \beta \psi \rangle &= \langle T, \widehat{\alpha \varphi + \beta \psi} \rangle \\
> &= \langle T, \alpha \hat{\varphi} + \beta \hat{\psi} \rangle \\
> &= \alpha \langle T, \hat{\varphi} \rangle + \beta \langle T, \hat{\psi} \rangle \\
> &= \alpha \langle \hat{T}, \varphi \rangle + \beta \langle \hat{T}, \psi \rangle
> \end{align}
> $$
> - $\hat{T}$ è continua su $\mathcal{S}(\mathbb{R}^n)$ poiché lo sono sia il funzionale $T$ che l'operatore di Fourier $\mathcal{F}$ in $\mathcal{S}(\mathbb{R}^n)$. Infatti per ogni successione $\{\varphi_m\}_{m \in \mathbb{N}} \subset \mathcal{S}(\mathbb{R}^n)$ tale che:
> $$
> \varphi_m \xrightarrow{m \to +\infty} 0 \quad \text{in } \mathcal{S}(\mathbb{R}^n)
> $$
> si ha che:
> $$
> \hat{\varphi}_m \xrightarrow{m \to +\infty} 0 \quad \text{in } \mathcal{S}(\mathbb{R}^n)
> $$
> poiché l'operatore $\mathcal{F}$ è continuo. Pertanto, essendo $T$ continuo:
> $$
> \langle T, \hat{\varphi}_m \rangle \xrightarrow{m \to +\infty} 0 \implies \langle \hat{T}, \varphi_m \rangle \xrightarrow{m \to +\infty} 0
> $$
> il che dimostra che $\hat{T} \in \mathcal{S}'(\mathbb{R}^n)$. $\blacksquare$

> [!note] Compatibilità con le funzioni di $L^1(\mathbb{R}^n)$
> Ricordiamo che se $u, v \in L^1(\mathbb{R}^n)$, vale la formula di scambio:
> $$
> \int_{\mathbb{R}^n} u(\mathbf{x}) \, \hat{v}(\mathbf{x}) \, d\mathbf{x} = \int_{\mathbb{R}^n} \hat{u}(\mathbf{x}) \, v(\mathbf{x}) \, d\mathbf{x}
> $$
> Di conseguenza, se $u \in L^1(\mathbb{R}^n)$, la distribuzione regolare associata $T_u \in \mathcal{S}'(\mathbb{R}^n)$ soddisfa:
> $$
> \langle T_u, \hat{\varphi} \rangle = \langle T_{\hat{u}}, \varphi \rangle \quad \forall \varphi \in \mathcal{S}(\mathbb{R}^n)
> $$
> Ma per definizione di trasformata di Fourier nel senso delle distribuzioni:
> $$
> \langle \hat{T}_u, \varphi \rangle = \langle T_u, \hat{\varphi} \rangle \quad \forall \varphi \in \mathcal{S}(\mathbb{R}^n)
> $$
> Uguagliando le due relazioni si ottiene:
> $$
> \langle \hat{T}_u, \varphi \rangle = \langle T_{\hat{u}}, \varphi \rangle \quad \forall \varphi \in \mathcal{S}(\mathbb{R}^n) \implies \hat{T}_u = T_{\hat{u}} \quad \text{in } \mathcal{S}'(\mathbb{R}^n)
> $$
>
### Proprietà Fondamentali della Trasformata di Fourier in $\mathcal{S}'$

> [!proposition] Derivata della Trasformata e Moltiplicazione per Monomi
> Sia $T \in \mathcal{S}'(\mathbb{R}^n)$ e sia $\alpha \in \mathbb{N}^n$ un multi-indice. Allora:
> $$
> D^\alpha \hat{T} = (-i)^{|\alpha|} \mathcal{F}(\mathbf{x}^\alpha T)
> $$
> ovvero:
> $$
> \mathcal{F}(\mathbf{x}^\alpha T) = i^{|\alpha|} D^\alpha \hat{T}
> $$

> [!quote]- Dimostrazione
> Per ogni funzione test $\varphi \in \mathcal{S}(\mathbb{R}^n)$, applicando la definizione di derivata debole e di trasformata di Fourier per dualità:
> $$
> \langle D^\alpha \hat{T}, \varphi \rangle = (-1)^{|\alpha|} \langle \hat{T}, D^\alpha \varphi \rangle = (-1)^{|\alpha|} \langle T, \widehat{D^\alpha \varphi} \rangle
> $$
> Per le note proprietà della trasformata di Fourier nello spazio di Schwartz $\mathcal{S}(\mathbb{R}^n)$, si ha:
> $$
> \widehat{D^\alpha \varphi}(\boldsymbol{\xi}) = (i \boldsymbol{\xi})^\alpha \hat{\varphi}(\boldsymbol{\xi})
> $$
> da cui:
> $$
> \langle T, \widehat{D^\alpha \varphi} \rangle = \langle T, (i \mathbf{x})^\alpha \hat{\varphi} \rangle = i^{|\alpha|} \langle T, \mathbf{x}^\alpha \hat{\varphi} \rangle
> $$
> D'altra parte, per definizione di moltiplicazione di una distribuzione temperata per la funzione a crescita lenta $\mathbf{x}^\alpha$:
> $$
> \langle \widehat{\mathbf{x}^\alpha T}, \varphi \rangle = \langle \mathbf{x}^\alpha T, \hat{\varphi} \rangle := \langle T, \mathbf{x}^\alpha \hat{\varphi} \rangle
> $$
> Pertanto, combinando i passaggi:
> $$
> \begin{align}
> \langle D^\alpha \hat{T}, \varphi \rangle &= (-1)^{|\alpha|} \langle T, \widehat{D^\alpha \varphi} \rangle \\
> &= (-1)^{|\alpha|} i^{|\alpha|} \langle T, \mathbf{x}^\alpha \hat{\varphi} \rangle \\
> &= (-i)^{|\alpha|} \langle T, \mathbf{x}^\alpha \hat{\varphi} \rangle \\
> &= (-i)^{|\alpha|} \langle \widehat{\mathbf{x}^\alpha T}, \varphi \rangle
> \end{align}
> $$
> da cui discende l'identità desiderata per ogni $\varphi \in \mathcal{S}(\mathbb{R}^n)$. $\blacksquare$

> [!proposition] Formula di Inversione di Fourier per Distribuzioni Temperate
> Sia $T \in \mathcal{S}'(\mathbb{R}^n)$. Allora:
> $$
> \check{T} = \frac{1}{(2\pi)^n} \hat{\hat{T}}
> $$
> dove l'operatore di parità/riflessione $\check{T}$ è definito per dualità da:
> $$
> \langle \check{T}, \varphi \rangle := \langle T, \check{\varphi} \rangle, \qquad \check{\varphi}(\mathbf{x}) := \varphi(-\mathbf{x}) \quad \forall \varphi \in \mathcal{S}(\mathbb{R}^n)
> $$

> [!quote]- Dimostrazione
> Per ogni $\varphi \in \mathcal{S}(\mathbb{R}^n)$, la formula di inversione classica nello spazio di Schwartz assicura che:
> $$
> \check{\varphi} = \frac{1}{(2\pi)^n} \hat{\hat{\varphi}}
> $$
> Applicando la definizione per dualità della trasformata di Fourier e della riflessione di distribuzioni:
> $$
> \begin{align}
> \langle \check{T}, \varphi \rangle &= \langle T, \check{\varphi} \rangle \\
> &= \left\langle T, \frac{1}{(2\pi)^n} \hat{\hat{\varphi}} \right\rangle \\
> &= \frac{1}{(2\pi)^n} \langle T, \hat{\hat{\varphi}} \rangle \\
> &= \frac{1}{(2\pi)^n} \langle \hat{T}, \hat{\varphi} \rangle \\
> &= \frac{1}{(2\pi)^n} \langle \hat{\hat{T}}, \varphi \rangle
> \end{align}
> $$
> Poiché l'uguaglianza è verificata per ogni $\varphi \in \mathcal{S}(\mathbb{R}^n)$, si conclude che:
> $$
> \check{T} = \frac{1}{(2\pi)^n} \hat{\hat{T}} \quad \text{in } \mathcal{S}'(\mathbb{R}^n)
> $$
> che dimostra che $\mathcal{F} : \mathcal{S}'(\mathbb{R}^n) \to \mathcal{S}'(\mathbb{R}^n)$ è un automorfismo topologico. $\blacksquare$
>
### Trasformate di Fourier di Distribuzioni Fondamentali

> [!example] Delta di Dirac Traslata
> Sia $\mathbf{x}_0 \in \mathbb{R}^n$ e si consideri la delta di Dirac traslata $T = \delta_{\mathbf{x}_0} \in \mathcal{S}'(\mathbb{R}^n)$.
> Calcoliamo la trasformata $\hat{\delta}_{\mathbf{x}_0}$:
> $$
> \langle \hat{\delta}_{\mathbf{x}_0}, \varphi \rangle = \langle \delta_{\mathbf{x}_0}, \hat{\varphi} \rangle = \hat{\varphi}(\mathbf{x}_0) = \int_{\mathbb{R}^n} \varphi(\mathbf{x}) e^{-i \mathbf{x}_0 \cdot \mathbf{x}} \, d\mathbf{x}
> $$
> Definendo la funzione limitata $u_{\mathbf{x}_0}(\boldsymbol{\xi}) := e^{-i \mathbf{x}_0 \cdot \boldsymbol{\xi}}$, l'integrale a secondo membro rappresenta l'azione della distribuzione regolare $T_{u_{\mathbf{x}_0}}$:
> $$
> \int_{\mathbb{R}^n} \varphi(\mathbf{x}) e^{-i \mathbf{x}_0 \cdot \mathbf{x}} \, d\mathbf{x} = \langle T_{u_{\mathbf{x}_0}}, \varphi \rangle
> $$
> Pertanto:
> $$
> \hat{\delta}_{\mathbf{x}_0} = T_{u_{\mathbf{x}_0}} \iff \mathcal{F}(\delta_{\mathbf{x}_0})(\boldsymbol{\xi}) = e^{-i \mathbf{x}_0 \cdot \boldsymbol{\xi}}
> $$
> In particolare, per $\mathbf{x}_0 = \mathbf{0}$, otteniamo la trasformata della delta centrata nell'origine:
> $$
> \hat{\delta}_{\mathbf{0}} = 1
> $$
> dove $1$ denota la distribuzione regolare unitaria costante:
> $$
> \langle 1, \varphi \rangle = \int_{\mathbb{R}^n} \varphi(\mathbf{x}) \, d\mathbf{x}
> $$

> [!example] Distribuzione Costante Unitaria
> Calcoliamo la trasformata di Fourier della distribuzione costante $T = 1 \in \mathcal{S}'(\mathbb{R}^n)$.
> Sfruttando la formula di inversione applicata a $\hat{\delta}_{\mathbf{0}} = 1$:
> $$
> \hat{1} = \hat{\hat{\delta}}_{\mathbf{0}} = (2\pi)^n \check{\delta}_{\mathbf{0}}
> $$
> Verifichiamo l'effetto dell'operatore di riflessione sulla delta di Dirac nell'origine:
> $$
> \langle \check{\delta}_{\mathbf{0}}, \varphi \rangle = \langle \delta_{\mathbf{0}}, \check{\varphi} \rangle = \check{\varphi}(\mathbf{0}) = \varphi(-\mathbf{0}) = \varphi(\mathbf{0}) = \langle \delta_{\mathbf{0}}, \varphi \rangle \implies \check{\delta}_{\mathbf{0}} = \delta_{\mathbf{0}}
> $$
> Ne consegue l'identità fondamentale:
> $$
> \hat{1} = (2\pi)^n \delta_{\mathbf{0}}
> $$

> [!example] Monomio di Coordinate $u(\mathbf{x}) = x_k$
> Sia $u(\mathbf{x}) = x_k$ per $k \in \{1, \dots, n\}$. Interpretando $u$ come prodotto della funzione coordinata $x_k$ per la distribuzione costante $1$:
> $$
> \hat{T}_u = \mathcal{F}(x_k \cdot 1)
> $$
> Applicando la proprietà della moltiplicazione per $x_k$ (ponendo multi-indice $\alpha = e_k$, $|\alpha| = 1$):
> $$
> \mathcal{F}(x_k \cdot 1) = i \frac{\partial}{\partial \xi_k} \hat{1} = i \frac{\partial}{\partial \xi_k} \left( (2\pi)^n \delta_{\mathbf{0}} \right) = (2\pi)^n i \frac{\partial \delta_{\mathbf{0}}}{\partial \xi_k}
> $$
> Più in generale, per un qualsiasi monomio multi-indice $\mathbf{x}^\alpha$:
> $$
> \mathcal{F}(\mathbf{x}^\alpha) = (2\pi)^n i^{|\alpha|} D^\alpha \delta_{\mathbf{0}}
> $$
>
### Convoluzione e Trasformata di Fourier

> [!proposition] Trasformata di Fourier del Prodotto di Convoluzione
> Siano $f, g \in L^1(\mathbb{R}^n)$. Allora:
> $$
> \widehat{f * g} = \hat{f} \cdot \hat{g}
> $$
> Se inoltre $\hat{f}, \hat{g} \in L^1(\mathbb{R}^n)$, allora:
> $$
> \widehat{f \cdot g} = \frac{1}{(2\pi)^n} \hat{f} * \hat{g}
> $$

> [!note] Estensione alle Distribuzioni Temperate
> Il medesimo risultato algebrico sussiste se $f \in \mathcal{S}'(\mathbb{R}^n)$ e $g \in \mathcal{S}(\mathbb{R}^n)$ (o viceversa), considerando la convoluzione ben definita tra una distribuzione temperata e una funzione test a decrescita rapida:
> $$
> \mathcal{F}(f * g) = \hat{f} \cdot \hat{g}
> $$
> dove il prodotto a secondo membro è inteso nel senso naturale di moltiplicazione tra la distribuzione temperata $\hat{f} \in \mathcal{S}'(\mathbb{R}^n)$ e la funzione liscia a decrescita rapida $\hat{g} \in \mathcal{S}(\mathbb{R}^n)$.
>
## 4.11. Applicazioni delle Trasformate di Fourier alle Equazioni a Derivate Parziali

### Equazione del Calore: Problema di Cauchy in $\mathbb{R}$

Consideriamo il problema di Cauchy per l'equazione del calore omogenea sulla retta reale:
$$
\begin{cases}
\dfrac{\partial u}{\partial t} - \dfrac{\partial^2 u}{\partial x^2} = 0, & x \in \mathbb{R}, \; t > 0 \\
u(x, 0) = u_0(x), & x \in \mathbb{R}
\end{cases}
$$
Studieremo inizialmente il problema sotto l'ipotesi che il dato iniziale soddisfi $u_0 \in L^1(\mathbb{R})$.
(È altresì possibile considerare dati iniziali più generali $u_0 \in L^p(\mathbb{R})$ con $p \in [1, +\infty]$, oppure dati distribuzionali $u_0 \in \mathcal{S}'(\mathbb{R})$).

Ricordiamo le formule della trasformata e dell'antitrasformata di Fourier:
- Per $f \in L^1(\mathbb{R})$:
  $$
  \hat{f}(\xi) = \int_{\mathbb{R}} f(x) e^{-i \xi x} \, dx, \qquad \forall \xi \in \mathbb{R}
  $$
- Se inoltre $\hat{f} \in L^1(\mathbb{R})$:
  $$
  f(x) = \frac{1}{2\pi} \int_{\mathbb{R}} \hat{f}(\xi) e^{i \xi x} \, d\xi, \qquad \forall x \in \mathbb{R}
  $$

**Strategia Risolutiva:**
Si applica l'operatore di Fourier $\mathcal{F}$ esclusivamente rispetto alla variabile spaziale $x \in \mathbb{R}$, considerando il tempo $t > 0$ come un parametro fissato. L'equazione a derivate parziali si trasforma in una famiglia di equazioni differenziali ordinarie nel dominio trasformato $\xi$. Risolto il problema per $\hat{u}(\xi, t)$, l'antitrasformata restituirà la soluzione cercata $u(x, t)$.

**Derivazione Dettagliata:**

Essendo $u_0 \in L^1(\mathbb{R})$, per il lemma di Riemann-Lebesgue esiste la trasformata:
$$
\hat{u}_0(\xi) = \int_{\mathbb{R}} u_0(x) e^{-i \xi x} \, dx \in L^\infty(\mathbb{R}) \cap C^0(\mathbb{R}), \qquad \lim_{|\xi| \to +\infty} |\hat{u}_0(\xi)| = 0
$$
Ipotizziamo a priori che per ogni $t > 0$ fissato:
$$
u(\cdot, t) \in L^1_x(\mathbb{R}) \quad \text{e} \quad \frac{\partial u}{\partial t}(\cdot, t) \in L^1_x(\mathbb{R})
$$
Poiché $|e^{-i \xi x}| = 1$ per ogni $\xi, x \in \mathbb{R}$, si ha:
$$
u(x, t) e^{-i \xi x} \in L^1_x(\mathbb{R}), \qquad \frac{\partial u}{\partial t}(x, t) e^{-i \xi x} \in L^1_x(\mathbb{R})
$$
Possiamo quindi definire per ogni $t > 0$:
$$
\hat{u}(\xi, t) := \int_{\mathbb{R}} u(x, t) e^{-i \xi x} \, dx \in L^\infty_\xi(\mathbb{R}) \cap C^0_\xi(\mathbb{R})
\widehat{\left( \frac{\partial u}{\partial t} \right)}(\xi, t) := \int_{\mathbb{R}} \frac{\partial u}{\partial t}(x, t) e^{-i \xi x} \, dx \in L^\infty_\xi(\mathbb{R}) \cap C^0_\xi(\mathbb{R})
$$
Verifichiamo la validità dello scambio tra derivata temporale e trasformata di Fourier:
$$
\mathcal{F}\left( \frac{\partial u}{\partial t} \right) \stackrel{?}{=} \frac{\partial}{\partial t} \mathcal{F}(u) = \frac{\partial \hat{u}}{\partial t}
$$
Applicando il teorema della convergenza dominata di Lebesgue:
$$
\begin{align}
\frac{\partial \hat{u}}{\partial t}(\xi, t) &= \lim_{h \to 0} \frac{\hat{u}(\xi, t+h) - \hat{u}(\xi, t)}{h} \\
&= \lim_{h \to 0} \int_{\mathbb{R}} \frac{u(x, t+h) - u(x, t)}{h} e^{-i \xi x} \, dx \\
&= \int_{\mathbb{R}} \lim_{h \to 0} \frac{u(x, t+h) - u(x, t)}{h} e^{-i \xi x} \, dx \\
&= \int_{\mathbb{R}} \frac{\partial u}{\partial t}(x, t) e^{-i \xi x} \, dx \\
&= \widehat{\left( \frac{\partial u}{\partial t} \right)}(\xi, t)
\end{align}
$$
Se inoltre supponiamo che per ogni $t > 0$:
$$
\frac{\partial u}{\partial x}(\cdot, t), \; \frac{\partial^2 u}{\partial x^2}(\cdot, t) \in L^1_x(\mathbb{R})
$$
dalle proprietà note della trasformata delle derivate spaziali:
$$
\widehat{\left( \frac{\partial^2 u}{\partial x^2} \right)}(\xi, t) = (i \xi)^2 \hat{u}(\xi, t) = -\xi^2 \hat{u}(\xi, t)
$$
Pertanto, applicando $\mathcal{F}$ a entrambi i membri di $\frac{\partial u}{\partial t} - \frac{\partial^2 u}{\partial x^2} = 0$ in $\mathbb{R} \times \mathbb{R}_+$:
$$
\mathcal{F}\left[ \frac{\partial u}{\partial t} - \frac{\partial^2 u}{\partial x^2} \right] = \widehat{\left( \frac{\partial u}{\partial t} \right)} - \widehat{\left( \frac{\partial^2 u}{\partial x^2} \right)} = \frac{\partial \hat{u}}{\partial t} + \xi^2 \hat{u}(\xi, t) = 0
$$
Il problema a derivate parziali si trasforma dunque in un problema di Cauchy per un'equazione differenziale ordinaria lineare del primo ordine in $t$, parametrizzata da $\xi \in \mathbb{R}$:
$$
\begin{cases}
\dfrac{\partial \hat{u}}{\partial t} + \xi^2 \hat{u} = 0, & t > 0 \\
\hat{u}(\xi, 0) = \hat{u}_0(\xi), & \xi \in \mathbb{R}
\end{cases}
$$
La cui soluzione analitica è data da:
$$
\hat{u}(\xi, t) = \hat{u}_0(\xi) e^{-\xi^2 t} \qquad (*)
$$
(richiedendo che $u, \frac{\partial u}{\partial x}, \frac{\partial^2 u}{\partial x^2}, \frac{\partial u}{\partial t} \in L^1_x(\mathbb{R})$).

Poiché $\hat{u}_0 \in L^\infty_\xi(\mathbb{R})$ e $e^{-\xi^2 t} \in L^1_\xi(\mathbb{R})$ per ogni $t > 0$, per la disuguaglianza di Hölder:
$$
\hat{u}(\cdot, t) \in L^1_\xi(\mathbb{R}) \qquad \forall t > 0
$$
Possiamo pertanto applicare la formula di inversione di Fourier:
$$
\begin{align}
u(x, t) &= \frac{1}{2\pi} \int_{\mathbb{R}} \hat{u}(\xi, t) e^{i \xi x} \, d\xi \\
&= \frac{1}{2\pi} \int_{\mathbb{R}} \hat{u}_0(\xi) e^{-\xi^2 t} e^{i \xi x} \, d\xi \\
&= \frac{1}{2\pi} \int_{\mathbb{R}} e^{-\xi^2 t} e^{i \xi x} \left[ \int_{\mathbb{R}} u_0(y) e^{-i \xi y} \, dy \right] d\xi
\end{align}
$$
Osserviamo che per la funzione integranda nelle due variabili $(\xi, y)$:
$$
\left| e^{-\xi^2 t} e^{i \xi (x - y)} u_0(y) \right| = e^{-\xi^2 t} |u_0(y)| \in L^1_{\xi, y}(\mathbb{R}^2)
$$
poiché:
$$
\int_{\mathbb{R}} e^{-\xi^2 t} \, d\xi \int_{\mathbb{R}} |u_0(y)| \, dy < +\infty
$$
Possiamo dunque scambiare l'ordine di integrazione in virtù del teorema di Fubini-Tonelli:
$$
u(x, t) = \frac{1}{2\pi} \int_{\mathbb{R}} u_0(y) \left[ \int_{\mathbb{R}} e^{-\xi^2 t} e^{i \xi (x - y)} \, d\xi \right] dy
$$
Definendo il **nucleo del calore** $G_t(z)$:
$$
G_t(z) := \frac{1}{2\pi} \int_{\mathbb{R}} e^{-\xi^2 t} e^{i \xi z} \, d\xi
$$
si ottiene la rappresentazione convolutiva:
$$
u(x, t) = \int_{\mathbb{R}} u_0(y) G_t(x - y) \, dy = (u_0 * G_t)(x)
$$
Notiamo che $G_t(z) = \mathcal{F}^{-1}(e^{-\xi^2 t})$ è l'antitrasformata di Fourier di $e^{-\xi^2 t} \in L^1_\xi(\mathbb{R})$.
Ricordiamo la trasformata di Fourier della gaussiana:
$$
\mathcal{F}(e^{-a x^2})(\xi) = \sqrt{\frac{\pi}{a}} e^{-\frac{\xi^2}{4a}}, \qquad a > 0
$$
In particolare, scegliendo $a = \frac{1}{4t} > 0$ e normalizzando, consideriamo:
$$
\phi_t(x) := \frac{1}{\sqrt{4\pi t}} e^{-\frac{x^2}{4t}} \implies \widehat{\phi_t}(\xi) = e^{-\xi^2 t}
$$
Essendo $\phi_t \in L^1_x(\mathbb{R})$ e poiché $\phi_t$ e $\widehat{\phi_t}$ sono funzioni pari, la formula di inversione fornisce:
$$
\phi_t(x) = \frac{1}{2\pi} \int_{\mathbb{R}} e^{-\xi^2 t} e^{i \xi x} \, d\xi = G_t(x)
$$
Pertanto il nucleo del calore coincide con la gaussiana:
$$
G_t(x) = \frac{1}{\sqrt{4\pi t}} e^{-\frac{x^2}{4t}}
$$
da cui deduciamo la formula risolutiva fondamentale:

> [!theorem] Soluzione Fondamentale dell'Equazione del Calore in $\mathbb{R}$
> La soluzione del problema di Cauchy omogeneo per l'equazione del calore con dato iniziale $u_0 \in L^1(\mathbb{R})$ è data dalla convoluzione:
> $$
> u(x, t) = (u_0 * G_t)(x) = \frac{1}{\sqrt{4\pi t}} \int_{\mathbb{R}} u_0(y) e^{-\frac{(x - y)^2}{4t}} \, dy
> $$

> [!note] Verifica Rapida tramite Proposizione di Convoluzione
> Si poteva giungere alla medesima formula osservando direttamente che:
> $$
> \mathcal{F}(u_0 * G_t) = \hat{u}_0 \cdot \widehat{G_t} = \hat{u}_0(\xi) e^{-\xi^2 t} = \hat{u}(\xi, t)
> $$
> e concludendo per iniettività della trasformata di Fourier in $L^1(\mathbb{R})$.
>
**Proprietà del Nucleo del Calore e Verifica a Posteriori delle Ipotesi:**

1. **Integrabilità e Normalizzazione:**
   $$
   G_t \in L^1_x(\mathbb{R}), \qquad \int_{\mathbb{R}} G_t(x) \, dx = 1 \quad \forall t > 0
   $$
   e per ogni $x \in \mathbb{R}$, $t > 0$ si ha $G_t(x) > 0$.
2. **Proprietà di Contrazione in Norma $L^1$:**
   Essendo $u_0 \in L^1(\mathbb{R})$ e $G_t \in L^1(\mathbb{R})$, per la disuguaglianza di Young:
   $$
   \|u(\cdot, t)\|_{L^1_x} = \|u_0 * G_t\|_{L^1_x} \le \|u_0\|_{L^1_x} \|G_t\|_{L^1_x} = \|u_0\|_{L^1_x}
   $$
   Dunque $u(\cdot, t) \in L^1_x(\mathbb{R})$, verificando a posteriori l'ipotesi posta in partenza.
3. **Regolarità $C^\infty$ ed Effetto Regolarizzante:**
   Per ogni $t > 0$, la funzione $G_t \in C^\infty(\mathbb{R})$ e tutte le sue derivate spaziali appartengono a $L^1_x(\mathbb{R})$. Per le proprietà della convoluzione, per ogni $k \in \mathbb{N}$:
   $$
   \frac{\partial^k u}{\partial x^k}(x, t) = \left( u_0 * \frac{\partial^k G_t}{\partial x^k} \right)(x) = \int_{\mathbb{R}} u_0(y) \frac{\partial^k G_t}{\partial x^k}(x - y) \, dy
   $$
   In particolare, per ogni $t > 0$:
   $$
   \frac{\partial^k u}{\partial x^k}(\cdot, t) \in L^1_x(\mathbb{R}), \qquad \left\| \frac{\partial^k u}{\partial x^k} \right\|_{L^1_x(\mathbb{R})} \le \|u_0\|_{L^1_x(\mathbb{R})} \left\| \frac{\partial^k G_t}{\partial x^k} \right\|_{L^1_x(\mathbb{R})}
   $$
   Analogamente, poiché per ogni $t > 0$ le derivate temporali $\frac{\partial^k G_t}{\partial t^k} \in L^1_x(\mathbb{R}) \cap C^\infty(\mathbb{R})$:
   $$
   \frac{\partial u}{\partial t} = u_0 * \frac{\partial G_t}{\partial t} \in L^1_x(\mathbb{R}), \qquad \left\| \frac{\partial u}{\partial t} \right\|_{L^1_x(\mathbb{R})} \le \|u_0\|_{L^1_x(\mathbb{R})} \left\| \frac{\partial G_t}{\partial t} \right\|_{L^1_x(\mathbb{R})}
   $$
   Tutte le ipotesi a priori sono quindi pienamente verificate a posteriori, e ogni soluzione soddisfa:
   $$
   u \in C^\infty(\mathbb{R} \times (0, +\infty))
   $$
   La soluzione $u$ è dunque una **soluzione classica**, indipendentemente dalla regolarità del dato di Cauchy $u_0 \in L^1(\mathbb{R})$ (**effetto regolarizzante dell'equazione del calore**).

> [!note] Convergenza al Dato Iniziale
> Si verifica che:
> $$
> u(\cdot, t) \xrightarrow{t \to 0^+} u_0 \quad \text{in } L^1_x(\mathbb{R}) \iff \lim_{t \to 0^+} \|u(\cdot, t) - u_0\|_{L^1_x(\mathbb{R})} = 0
> $$
> Pertanto la soluzione tende in norma $L^1$ al dato iniziale assegnato al tendere del tempo a zero.

> [!note] Unicità
> Sotto le ipotesi di integrabilità specificate, la soluzione del problema di Cauchy è unica.

> [!warning] Velocità di Propagazione Istantanea (Infinita)
> L'equazione del calore presenta una **velocità di propagazione infinita**:
> se il dato iniziale possiede supporto compatto $\operatorname{supp}(u_0) = K \subset \mathbb{R}$, allora per ogni tempo arbitrariamente piccolo $\varepsilon > 0$:
> $$
> \operatorname{supp}(u(\cdot, \varepsilon)) = \mathbb{R}
> $$
> Infatti, per ogni $x \in \mathbb{R}$ e ogni $t > 0$, il valore $u(x, t)$ dipende strettamente dai valori di $u_0(y)$ su tutta la retta reale, poiché il nucleo gaussiano $G_t(x - y) > 0$ è ovunque positivo e non si annulla mai.
>
### Equazione delle Onde: Problema di Cauchy in $n = 1$

Consideriamo il problema di Cauchy per l'equazione delle onde omogenea unidimensionale:
$$
\begin{cases}
\dfrac{\partial^2 u}{\partial t^2} - c^2 \dfrac{\partial^2 u}{\partial x^2} = 0, & x \in \mathbb{R}, \; t > 0 \\
u(x, 0) = u_0(x), & x \in \mathbb{R} \\
\dfrac{\partial u}{\partial t}(x, 0) = u_1(x), & x \in \mathbb{R}
\end{cases}
$$
Per comodità di trattazione classica assumiamo inizialmente:
$$
\begin{cases}
u_0 \in L^1(\mathbb{R}) \cap C^2(\mathbb{R}) \\
u_1 \in L^1(\mathbb{R}) \cap C^1(\mathbb{R})
\end{cases}
$$
(È possibile studiare il problema anche con dati meno regolari, ad esempio $u_0, u_1 \in L^p(\mathbb{R})$ con $p \in [1, +\infty]$, oppure $u_0, u_1 \in \mathcal{S}'(\mathbb{R})$; in tal caso la soluzione $u$ sarà intesa in senso distribuzionale).

**Decomposizione per Linearità:**
Sfruttando la linearità dell'operatore delle onde, decomponiamo il problema nella somma di due problemi ausiliari:
$$
u(x, t) = v(x, t) + w(x, t)
$$
dove $v$ e $w$ risolvono rispettivamente:
$$
\text{(I)} \quad \begin{cases}
\dfrac{\partial^2 v}{\partial t^2} - c^2 \dfrac{\partial^2 v}{\partial x^2} = 0 \\
v(x, 0) = u_0(x) \\
\dfrac{\partial v}{\partial t}(x, 0) = 0
\end{cases}
\qquad \text{e} \qquad
\text{(II)} \quad \begin{cases}
\dfrac{\partial^2 w}{\partial t^2} - c^2 \dfrac{\partial^2 w}{\partial x^2} = 0 \\
w(x, 0) = 0 \\
\dfrac{\partial w}{\partial t}(x, 0) = u_1(x)
\end{cases}
$$
Infatti, se $v$ risolve (I) e $w$ risolve (II), allora $u = v + w$ soddisfa l'equazione originale:
$$
\frac{\partial^2 u}{\partial t^2} = \frac{\partial^2 v}{\partial t^2} + \frac{\partial^2 w}{\partial t^2} = c^2 \left[ \frac{\partial^2 v}{\partial x^2} + \frac{\partial^2 w}{\partial x^2} \right] = c^2 \frac{\partial^2 u}{\partial x^2}
$$
nonché le condizioni iniziali $u(x, 0) = u_0(x)$ e $\frac{\partial u}{\partial t}(x, 0) = u_1(x)$.

**Risoluzione del Problema (I):**

Risolviamo applicando la trasformata di Fourier spaziale. Supponiamo:
$$
u, \; \frac{\partial u}{\partial t}, \; \frac{\partial^2 u}{\partial t^2}, \; \frac{\partial u}{\partial x}, \; \frac{\partial^2 u}{\partial x^2} \in L^1_x(\mathbb{R})
$$
Per ogni $t > 0$:
$$
\widehat{\left( \frac{\partial^2 v}{\partial t^2} \right)} = \frac{\partial^2 \hat{v}}{\partial t^2}, \qquad \widehat{\left( \frac{\partial^2 v}{\partial x^2} \right)} = -\xi^2 \hat{v}
\implies \widehat{\left( \frac{\partial v}{\partial t} \right)}(\xi, 0) = \frac{\partial \hat{v}}{\partial t}(\xi, 0)
$$
Il problema (I) si trasforma in un'equazione differenziale ordinaria lineare del secondo ordine a coefficienti costanti rispetto a $t$:
$$
\begin{cases}
\dfrac{\partial^2 \hat{v}}{\partial t^2} + c^2 \xi^2 \hat{v} = 0, & t > 0 \\
\hat{v}(\xi, 0) = \hat{u}_0(\xi) \\
\dfrac{\partial \hat{v}}{\partial t}(\xi, 0) = 0
\end{cases}
$$
Il polinomio caratteristico dell'ODE è:
$$
P(\lambda) = \lambda^2 + c^2 \xi^2 = 0 \implies \lambda_{1, 2} = \pm i c \xi
$$
La soluzione generale dell'equazione differenziale omogenea è:
$$
\hat{v}(\xi, t) = C_1 e^{i c \xi t} + C_2 e^{-i c \xi t}
$$
Imponendo le condizioni iniziali:
$$
\hat{v}(\xi, 0) = C_1 + C_2 = \hat{u}_0(\xi)
\frac{\partial \hat{v}}{\partial t}(\xi, 0) = i c \xi C_1 - i c \xi C_2 = i c \xi (C_1 - C_2) = 0 \implies C_1 = C_2
$$
da cui:
$$
C_1 = C_2 = \frac{1}{2} \hat{u}_0(\xi)
$$
Pertanto la trasformata di Fourier assume la forma:
$$
\hat{v}(\xi, t) = \frac{1}{2} \hat{u}_0(\xi) \left[ e^{i c \xi t} + e^{-i c \xi t} \right]
$$
Ricordando la proprietà di traslazione della trasformata di Fourier:
$$
\mathcal{F}(f(x - x_0))(\xi) = e^{-i \xi x_0} \hat{f}(\xi), \qquad \mathcal{F}(f(x + x_0))(\xi) = e^{i \xi x_0} \hat{f}(\xi)
$$
riconosciamo immediatamente:
$$
\frac{1}{2} \hat{u}_0(\xi) e^{i c \xi t} = \mathcal{F}\left( \frac{1}{2} u_0(x + ct) \right), \qquad \frac{1}{2} \hat{u}_0(\xi) e^{-i c \xi t} = \mathcal{F}\left( \frac{1}{2} u_0(x - ct) \right)
$$
Per iniettività e linearità della trasformata di Fourier $\mathcal{F}$, ricaviamo:
$$
v(x, t) = \frac{1}{2} u_0(x + ct) + \frac{1}{2} u_0(x - ct)
$$

**Risoluzione del Problema (II):**

Similmente per il problema (II), trasformando con Fourier rispetto alla variabile spaziale $x$, per ogni $t > 0$:
$$
\hat{w}(\xi, t) = C_1 e^{i c \xi t} + C_2 e^{-i c \xi t}
$$
Imponendo le condizioni iniziali associate al problema (II):
$$
\hat{w}(\xi, 0) = C_1 + C_2 = 0 \implies C_1 = -C_2
\frac{\partial \hat{w}}{\partial t}(\xi, 0) = i c \xi (C_1 - C_2) = 2 i c \xi C_1 = \hat{u}_1(\xi)
$$
da cui ricaviamo le costanti:
$$
C_1 = -C_2 = \frac{\hat{u}_1(\xi)}{2 i c \xi}
$$
Sostituendo nell'espressione di $\hat{w}(\xi, t)$:
$$
\hat{w}(\xi, t) = \frac{\hat{u}_1(\xi)}{c \xi} \left[ \frac{e^{i c \xi t} - e^{-i c \xi t}}{2 i} \right] = \hat{u}_1(\xi) \frac{\sin(c \xi t)}{c \xi}
$$
Ricordiamo la trasformata di Fourier della funzione caratteristica dell'intervallo simmetrico $[-ct, ct]$ (funzione porta):
$$
\mathcal{F}\left( \frac{1}{2c} \chi_{[-ct, ct]} \right)(\xi) = \frac{1}{2c} \int_{-ct}^{ct} e^{-i \xi x} \, dx = \frac{1}{2c} \left[ \frac{e^{-i \xi x}}{-i \xi} \right]_{-ct}^{ct} = \frac{e^{i \xi c t} - e^{-i \xi c t}}{2 i c \xi} = \frac{\sin(c \xi t)}{c \xi}
$$
Dalle proprietà del prodotto di convoluzione, essendo $u_1 \in L^1_x(\mathbb{R})$ e $\chi_{[-ct, ct]} \in L^1_x(\mathbb{R})$, per l'iniettività e linearità di $\mathcal{F}$ si ottiene:
$$
w(x, t) = \frac{1}{2c} (u_1 * \chi_{[-ct, ct]})(x)
$$
Esplicitando la convoluzione:
$$
\begin{align}
w(x, t) &= \frac{1}{2c} \int_{\mathbb{R}} u_1(y) \chi_{[-ct, ct]}(x - y) \, dy \\
&= \frac{1}{2c} \int_{x - ct}^{x + ct} u_1(y) \, dy
\end{align}
$$
in quanto $\chi_{[-ct, ct]}(x - y) \ne 0 \iff -ct \le x - y \le ct \iff x - ct \le y \le x + ct$.

### Formula di d'Alembert

Sommando le soluzioni parziali $v(x, t)$ e $w(x, t)$, perveniamo al risultato fondamentale:

> [!theorem] Formula Risolutiva di d'Alembert per l'Equazione delle Onde ($n = 1$)
> La soluzione del problema di Cauchy per l'equazione delle onde omogenea unidimensionale è data dalla **formula di d'Alembert**:
> $$
> u(x, t) = \frac{1}{2} \left[ u_0(x + ct) + u_0(x - ct) \right] + \frac{1}{2c} \int_{x - ct}^{x + ct} u_1(y) \, dy
> $$

> [!note] Regolarità e Assenza di Effetto Regolarizzante
> In realtà, a posteriori, si nota che se:
> $$
> u_0 \in C^2(\mathbb{R}), \qquad u_1 \in C^1(\mathbb{R})
> $$
> allora la soluzione soddisfa:
> $$
> u \in C^2(\mathbb{R} \times [0, +\infty))
> $$
> Pertanto $u$ è una soluzione classica dell'equazione differenziale.
> Si osservi con attenzione che **la regolarità della soluzione $u$ dipende interamente e direttamente dalla regolarità dei dati iniziali $u_0$ e $u_1$**: se $u_0$ e $u_1$ sono meno regolari, anche $u$ risulterà meno regolare.
> A marcata differenza dell'equazione del calore, l'equazione delle onde **non possiede effetto regolarizzante**: le singolarità o discontinuità presenti nei dati iniziali non vengono smussate istantaneamente, ma si propagano inalterate lungo lo spaziotempo.

> [!note] Rette Caratteristiche, Cono di Dipendenza e Velocità Finita di Propagazione
> Gli unici dati iniziali che contribuiscono al valore dell'onda nel punto fissato $(\bar{x}, \bar{t})$ sono quelli situati sull'intervallo dell'asse $x$ (a tempo $t = 0$):
> $$
> [\bar{x} - c\bar{t}, \; \bar{x} + c\bar{t}]
> $$
> compreso tra le due rette:
> $$
> x - ct = \bar{x} - c\bar{t}, \qquad x + ct = \bar{x} + c\bar{t}
> $$
> dette **rette caratteristiche**.
> L'intervallo $[\bar{x} - c\bar{t}, \bar{x} + c\bar{t}]$ prende il nome di **intervallo di dipendenza** (o base del cono di dipendenza passato) del punto $(\bar{x}, \bar{t})$.
> 
> Pertanto la velocità di propagazione dell'onda è **finita** e pari esattamente a:
> $$
> c < +\infty
> $$
> In particolare, se i dati iniziali hanno supporto compatto contenuto in un intervallo limitato:
> $$
> \operatorname{supp}(u_0), \; \operatorname{supp}(u_1) \subseteq [-R, R]
> $$
> allora per ogni tempo $t > 0$ il supporto della soluzione rimane compatto ed è contenuto in:
> $$
> \operatorname{supp}(u(\cdot, t)) \subseteq [-R - ct, \; R + ct]
> $$

> [!note] Decomposizione in Onde Progressive e Regressive
> Definendo la funzione integrale:
> $$
> U(x) := \int_0^x u_1(y) \, dy, \qquad U \in AC(\mathbb{R})
> $$
> dove $U$ è una primitiva di $u_1$ su $\mathbb{R}$, per il teorema fondamentale del calcolo integrale possiamo riscrivere l'integrale definito come:
> $$
> \int_{x - ct}^{x + ct} u_1(y) \, dy = U(x + ct) - U(x - ct)
> $$
> Sostituendo nella formula di d'Alembert, la soluzione $u(x, t)$ si riduce alla forma:
> $$
> u(x, t) = \frac{1}{2} \left[ u_0(x + ct) + \frac{1}{c} U(x + ct) \right] + \frac{1}{2} \left[ u_0(x - ct) - \frac{1}{c} U(x - ct) \right]
> $$
> ovvero:
> $$
> u(x, t) = \underbrace{\frac{1}{2} \left[ u_0 + \frac{U}{c} \right](x + ct)}_{\text{funzione di } (x + ct)} + \underbrace{\frac{1}{2} \left[ u_0 - \frac{U}{c} \right](x - ct)}_{\text{funzione di } (x - ct)}
> $$
> La soluzione $u(x, t)$ è dunque sempre esprimibile come somma esatta di:
> - un'**onda regressiva**: funzione della variabile combinata $(x + ct)$, che propaga il proprio profilo verso sinistra a velocità $c$;
> - un'**onda progressiva**: funzione della variabile combinata $(x - ct)$, che propaga il proprio profilo verso destra a velocità $c$.
>
## 4.12. Tavola e Proprietà della Trasformata di Fourier

## 4.13. Tavola delle Trasformate di Fourier Notevoli

> [!note] Trasformate Notevoli Fondamentali in $\mathbb{R}$ e $\mathbb{R}^n$
> Si riepilogano le principali trasformate di Fourier dirette $\mathcal{F}[u](\xi) = \hat{u}(\xi) = \int_{\mathbb{R}} u(x) e^{-i\xi x} \, dx$:
> 
> 1. **Funzione caratteristica dell'intervallo $[a, b]$:**
>    $$
>    \chi_{[a,b]}(x) \;\xrightarrow[\quad\mathcal{F}\quad]{}\; \frac{\sin(b\xi) - \sin(a\xi)}{\xi} + i \, \frac{\cos(b\xi) - \cos(a\xi)}{\xi}
>    $$
> 
> 2. **Funzione rettangolo simmetrica (finestra centrata) $\chi_{[-c, c]}(x)$:**
>    $$
>    \chi_{[-c,c]}(x) \;\xrightarrow[\quad\mathcal{F}\quad]{}\; \begin{cases} 
>    2 \, \dfrac{\sin(c\xi)}{\xi} = 2c \operatorname{sinc}(c\xi) & \text{se } \xi \neq 0 \\ 
>    2c & \text{se } \xi = 0 
>    \end{cases}
>    $$
> 
> 3. **Esponenziale bilaterale (decadimento simmetrico con $a > 0$):**
>    $$
>    e^{-a|x|} \;\xrightarrow[\quad\mathcal{F}\quad]{}\; \frac{2a}{a^2 + \xi^2}
>    $$
> 
> 4. **Gaussiana ($a > 0$):**
>    $$
>    e^{-ax^2} \;\xrightarrow[\quad\mathcal{F}\quad]{}\; \sqrt{\frac{\pi}{a}} \, e^{-\frac{\xi^2}{4a}}
>    $$
> 
> 5. **Delta di Dirac centrata nell'origine (nel senso delle distribuzioni temperate $\mathcal{S}'(\mathbb{R}^n)$):**
>    $$
>    \delta_{\mathbf{0}} \;\xrightarrow[\quad\mathcal{F} \; (\text{in } \mathcal{S}'(\mathbb{R}^n))\quad]{}\; 1
>    $$
>
## 4.14. Proprietà della Trasformata di Fourier

> [!proposition] Proprietà Algebriche, Differenziali e di Inversione
> 
> ### Proprietà Algebriche
> - **Traslazione nello spazio (Shift temporale/spaziale):**
>   $$
>   u(\mathbf{x} - \mathbf{a}) \;\xrightarrow[\quad\mathcal{F}\quad]{}\; e^{-i \boldsymbol{\xi} \cdot \mathbf{a}} \, \hat{u}(\boldsymbol{\xi})
>   $$
> 
> - **Modulazione (Traslazione in frequenza):**
>   $$
>   u(\mathbf{x}) \, e^{i \mathbf{a} \cdot \mathbf{x}} \;\xrightarrow[\quad\mathcal{F}\quad]{}\; \hat{u}(\boldsymbol{\xi} - \mathbf{a})
>   $$
> 
> - **Riscalamento (Dilatazione/Compressione, con $c \neq 0$):**
>   $$
>   u\left(\frac{\mathbf{x}}{c}\right) \;\xrightarrow[\quad\mathcal{F}\quad]{}\; |c|^n \, \hat{u}(c\boldsymbol{\xi})
>   $$
> 
> ### Proprietà Differenziali
> - **Derivata della funzione (moltiplicazione polinomiale in frequenza):**
>   $$
>   D^\alpha u \;\xrightarrow[\quad\mathcal{F}\quad]{}\; (i\boldsymbol{\xi})^\alpha \, \hat{u}(\boldsymbol{\xi})
>   $$
> 
> - **Moltiplicazione per monomio nello spazio (derivata in frequenza):**
>   $$
>   (-i\mathbf{x})^\alpha u(\mathbf{x}) \;\xrightarrow[\quad\mathcal{F}\quad]{}\; D^\alpha \hat{u}(\boldsymbol{\xi})
>   $$
> 
> ### Formula di Inversione
> Per funzioni $u, \hat{u} \in L^1(\mathbb{R}^n)$ (oppure operando nell'algebra di dualità $\mathcal{S}'(\mathbb{R}^n)$):
> $$
> \check{u}(\mathbf{x}) = u(-\mathbf{x}) = \frac{1}{(2\pi)^n} \, \hat{\hat{u}}(\mathbf{x})
> $$
> ovvero:
> $$
> \mathcal{F}^{-1}[\hat{u}](\mathbf{x}) = \frac{1}{(2\pi)^n} \int_{\mathbb{R}^n} \hat{u}(\boldsymbol{\xi}) \, e^{i \boldsymbol{\xi} \cdot \mathbf{x}} \, d\boldsymbol{\xi} = \frac{1}{(2\pi)^n} \, \mathcal{F}[\hat{u}](-\mathbf{x})
> $$
>
