---
title: "Calcolo Differenziale e Sviluppi di Taylor"
domain: "math/differential-calculus"
source_course: "Analisi 1 (Cap. 6)"
tags:
  - math/calculus/derivatives
  - math/calculus/taylor
---

# 6. Calcolo Differenziale per Funzioni di una Variabile

## 6.1. Definizione di derivata e retta tangente

### Rapporto incrementale e derivata in un punto

> [!definition] Derivabilità in un punto
> Sia $f: (a, b) \to \mathbb{R}$ una funzione reale definita su un intervallo aperto, e sia $x_0 \in (a, b)$.
> Si dice che $f$ è **derivabile** nel punto $x_0$ se il limite del rapporto incrementale per $x \to x_0$ esiste ed è **finito**:
> $$
> \lim_{x \to x_0} \frac{f(x) - f(x_0)}{x - x_0} \in \mathbb{R}
> $$
> Equivalentemente, ponendo $h := x - x_0$ come incremento della variabile indipendente (da cui $x = x_0 + h$, con $h \to 0$):
> $$
> \lim_{h \to 0} \frac{f(x_0 + h) - f(x_0)}{h} \in \mathbb{R}
> $$
> Il valore di tale limite finito viene denominato **derivata prima** di $f$ in $x_0$, denotato con le notazioni equivalenti:
> $$
> f'(x_0) = \frac{df}{dx}(x_0) = D[f](x_0)
> $$

> [!note] Osservazione: Limite infinito del rapporto incrementale
> Il limite del rapporto incrementale può esistere ma risultare infinito ($\pm\infty$). In tal caso la funzione **non** è derivabile nel punto nel senso rigoroso della teoria, pur ammettendo una retta tangente verticale.
> 
> **Esempio:** Si consideri la funzione $f(x) = \sqrt[3]{x}$ nel punto $x_0 = 0$:
> $$
> \lim_{h \to 0} \frac{f(0 + h) - f(0)}{h} = \lim_{h \to 0} \frac{\sqrt[3]{h} - 0}{h} = \lim_{h \to 0} \frac{1}{h^{2/3}} = +\infty
> $$
> Poiché il limite è $+\infty$ sia da destra che da sinistra, la funzione non è derivabile nell'origine, dove presenta una retta tangente verticale (flesso a tangente verticale).

> [!note] Interpretazione geometrica del rapporto incrementale
> Fissato il punto fisso sul grafico $P = (x_0, f(x_0))$ e considerato un secondo punto variabile $Q = (x_0 + h, f(x_0 + h))$, il rapporto incrementale:
> $$
> \frac{\Delta y}{\Delta x} = \frac{f(x_0 + h) - f(x_0)}{h} = \tan \alpha = m_{\text{sec}}
> $$
> rappresenta la tangente trigonometrica dell'angolo $\alpha$ formato dalla retta secante passante per $P$ e $Q$ con l'asse orizzontale, ovvero il **coefficiente angolare** $m_{\text{sec}}$ della retta secante.
> Al tendere di $h \to 0$, il punto $Q$ scivola lungo il grafico tendendo a sovrapporsi a $P$: se la funzione è derivabile, la retta secante ruota fino a raggiungere una posizione limite ben definita, detta **retta tangente** al grafico in $P$, avente pendenza $m = f'(x_0)$.
>
### Retta tangente al grafico

> [!definition] Retta tangente al grafico
> Sia $f: (a, b) \to \mathbb{R}$ derivabile nel punto $x_0 \in (a, b)$.
> Si definisce **retta tangente** al grafico di $f$ nel punto $(x_0, f(x_0))$ la retta passante per tale punto avente coefficiente angolare pari alla derivata prima $f'(x_0)$:
> $$
> y = f(x_0) + f'(x_0)(x - x_0)
> $$

> [!note] Osservazione fondamentale: Natura analitica della retta tangente
> La definizione infinitesimale di retta tangente è di natura **rigorosamente analitica** (costituisce l'unica retta che approssima localmente la funzione al prim'ordine a meno di un infinitesimo di ordine superiore) e non coincide necessariamente con l'intuizione geometrica euclidea classica (in cui una tangente tocca la curva in un sol punto senza attraversarla).
> 
> **Controesempio analitico:** Si consideri la funzione:
> $$
> f(x) = \begin{cases}
> x^2 \sin\left(\frac{1}{x}\right), & \text{se } x \neq 0 \\
> 0, & \text{se } x = 0
> \end{cases}
> $$
> Il grafico di $f(x)$ è racchiuso tra le due parabole inviluppo $y = x^2$ e $y = -x^2$.
> Calcolando il rapporto incrementale nell'origine $x_0 = 0$:
> $$
> \frac{f(h) - f(0)}{h} = \frac{h^2 \sin\left(\frac{1}{h}\right) - 0}{h} = h \sin\left(\frac{1}{h}\right)
> $$
> Poiché il fattore sinusoidale è limitato, $\left|\sin\left(\frac{1}{h}\right)\right| \le 1$, per il teorema del confronto si ha:
> $$
> \lim_{h \to 0} h \sin\left(\frac{1}{h}\right) = 0 \implies f'(0) = 0
> $$
> La funzione è pertanto derivabile nell'origine con derivata nulla. L'equazione della retta tangente in $(0, 0)$ è:
> $$
> y = 0 + 0 \cdot (x - 0) \implies y = 0 \quad (\text{l'asse delle ascisse})
> $$
> Tuttavia, per ogni $\varepsilon > 0$, la retta tangente $y = 0$ interseca il grafico di $f(x)$ nell'intervallo $(-\varepsilon, \varepsilon)$ in **infinite volte** (in tutti i punti $x_k = \frac{1}{k\pi}$ con $k \in \mathbb{Z} \setminus \{0\}$), oscillando infinite volte al di sopra e al di sotto dell'asse. Essa è dunque una retta tangente in senso analitico, ma non nel senso geometrico classico euclideo.
>
### Teorema: Derivabilità implica continuità

> [!proposition] Teorema (Derivabilità implica continuità)
> Sia $f: (a, b) \to \mathbb{R}$ derivabile nel punto $x_0 \in (a, b)$. Allora $f$ è **continua** in $x_0$:
> $$
> \lim_{x \to x_0} f(x) = f(x_0)
> $$

> [!quote]- Dimostrazione
> Per ogni $x \in (a, b)$ con $x \neq x_0$, l'incremento della funzione $\Delta f = f(x) - f(x_0)$ può essere riscritto moltiplicando e dividendo per la quantità non nulla $x - x_0$:
> $$
> f(x) - f(x_0) = \frac{f(x) - f(x_0)}{x - x_0} (x - x_0)
> $$
> Passando al limite per $x \to x_0$ e applicando il teorema sul limite del prodotto:
> $$
> \lim_{x \to x_0} [f(x) - f(x_0)] = \lim_{x \to x_0} \left[ \frac{f(x) - f(x_0)}{x - x_0} \right] \cdot \lim_{x \to x_0} (x - x_0)
> $$
> Poiché $f$ è derivabile in $x_0$, il primo fattore ammette per definizione limite finito pari a $f'(x_0) \in \mathbb{R}$, mentre il secondo fattore tende a zero:
> $$
> \lim_{x \to x_0} [f(x) - f(x_0)] = f'(x_0) \cdot 0 = 0
> $$
> Ne consegue immediatamente che:
> $$
> \lim_{x \to x_0} f(x) = f(x_0)
> $$
> il che dimostra che la funzione $f$ è continua in $x_0$. $\blacksquare$
>
### Punti di non derivabilità (punti angolosi, cuspidi, oscillazioni)

> [!warning] Non invertibilità del teorema
> La continuità in un punto è condizione **necessaria ma non sufficiente** per la derivabilità. Esistono funzioni continue su tutto $\mathbb{R}$ che presentano punti in cui la derivata non esiste.

> [!definition] Derivata destra e derivata sinistra
> Si definiscono **derivata destra** e **derivata sinistra** di $f$ in $x_0$ i rispettivi limiti unilaterali del rapporto incrementale, qualora esistano finiti:
> $$
> f'_+(x_0) := \lim_{h \to 0^+} \frac{f(x_0 + h) - f(x_0)}{h}
> f'_-(x_0) := \lim_{h \to 0^-} \frac{f(x_0 + h) - f(x_0)}{h}
> $$

> [!note] Condizione necessaria e sufficiente di derivabilità
> Una funzione $f$ è derivabile in un punto $x_0$ se e solo se esistono finite sia la derivata destra che la derivata sinistra e coincidono tra loro:
> $$
> f \text{ è derivabile in } x_0 \iff \exists f'_+(x_0), f'_-(x_0) \in \mathbb{R} : f'_+(x_0) = f'_-(x_0) = l \in \mathbb{R}
> $$

> [!example] Esempio 1: Punto angoloso — $f(x) = |x|$
> La funzione valore assoluto:
> $$
> f(x) = |x| = \begin{cases}
> x, & \text{se } x \ge 0 \\
> -x, & \text{se } x < 0
> \end{cases}
> $$
> è continua su tutto $\mathbb{R}$, compresa l'origine $x_0 = 0$.
> Calcolando il rapporto incrementale nell'origine:
> $$
> \frac{f(h) - f(0)}{h} = \frac{|h|}{h} = \begin{cases}
> 1, & \text{se } h > 0 \\
> -1, & \text{se } h < 0
> \end{cases}
> $$
> Esistono finiti entrambi i limiti unilaterali:
> $$
> f'_+(0) = \lim_{h \to 0^+} \frac{|h|}{h} = 1, \qquad f'_-(0) = \lim_{h \to 0^-} \frac{|h|}{h} = -1
> $$
> Poiché $f'_+(0) \neq f'_-(0)$, il limite globale non esiste e la funzione non è derivabile in $x = 0$, dove presenta un **punto angoloso**.

> [!example] Esempio 2: Cuspide — $f(x) = x^{2/3}$
> Si consideri la funzione radice $f(x) = x^{2/3} = \sqrt[3]{x^2}$ nell'origine $x_0 = 0$.
> Il rapporto incrementale vale:
> $$
> \frac{f(h) - f(0)}{h} = \frac{h^{2/3}}{h} = \frac{1}{h^{1/3}} = \frac{1}{\sqrt[3]{h}}
> $$
> Valutando i limiti unilaterali da destra e da sinistra:
> $$
> \lim_{h \to 0^+} \frac{1}{\sqrt[3]{h}} = +\infty, \qquad \lim_{h \to 0^-} \frac{1}{\sqrt[3]{h}} = -\infty
> $$
> I limiti unilaterali divergono a valori infiniti di segno opposto: non esistono finite né la derivata destra né quella sinistra ($\nexists f'_+(0), \nexists f'_-(0) \implies \nexists f'(0)$).
> Il punto $(0, 0)$ è detto **cuspide** (avente retta tangente verticale comune coincidente con l'asse $y$).

> [!example] Esempio 3: Non derivabilità per oscillazione infinita — $f(x) = x \sin\left(\frac{1}{x}\right)$
> Si consideri la funzione prolungata per continuità nell'origine:
> $$
> f(x) = \begin{cases}
> x \sin\left(\frac{1}{x}\right), & \text{se } x \neq 0 \\
> 0, & \text{se } x = 0
> \end{cases}
> $$
> La funzione è continua in $x_0 = 0$ poiché $|x \sin(1/x)| \le |x| \to 0$.
> Tuttavia, impostando il limite del rapporto incrementale in $x_0 = 0$:
> $$
> \lim_{h \to 0} \frac{f(h) - f(0)}{h} = \lim_{h \to 0} \frac{h \sin\left(\frac{1}{h}\right) - 0}{h} = \lim_{h \to 0} \sin\left(\frac{1}{h}\right)
> $$
> Tale limite **non esiste** (la funzione oscilla indefinitamente tra $-1$ e $+1$ in qualunque intorno di zero). Di conseguenza $\nexists f'(0)$ e la funzione non ammette nemmeno derivate unilaterali.
>
>
## 6.2. Derivate di funzioni elementari

### Funzione potenza $x^\alpha$

> [!proposition] Derivata della funzione potenza
> Sia $f(x) = x^\alpha$ con $\alpha \in \mathbb{R}$ e $x > 0$. La funzione è derivabile per ogni $x > 0$ e:
> $$
> (x^\alpha)' = \alpha x^{\alpha - 1}
> $$

> [!quote]- Dimostrazione
> Sia $x_0 > 0$. Si imposta il limite del rapporto incrementale:
> $$
> \lim_{h \to 0} \frac{f(x_0 + h) - f(x_0)}{h} = \lim_{h \to 0} \frac{(x_0 + h)^\alpha - x_0^\alpha}{h}
> $$
> Raccogliendo il fattore $x_0^\alpha$ a numeratore:
> $$
> = \lim_{h \to 0} \frac{x_0^\alpha \left[\left(1 + \frac{h}{x_0}\right)^\alpha - 1\right]}{h} = \lim_{h \to 0} \frac{x_0^\alpha}{x_0} \cdot \frac{\left(1 + \frac{h}{x_0}\right)^\alpha - 1}{\frac{h}{x_0}}
> $$
> Ponendo la sostituzione infinitesima $t := \frac{h}{x_0} \to 0$, si applica il limite notevole fondamentale:
> $$
> \lim_{t \to 0} \frac{(1 + t)^\alpha - 1}{t} = \alpha
> $$
> Pertanto:
> $$
> \lim_{h \to 0} \frac{f(x_0 + h) - f(x_0)}{h} = x_0^{\alpha - 1} \cdot \alpha = \alpha x_0^{\alpha - 1}
> $$
> $\blacksquare$

> [!note] Estensioni del dominio e derivabilità nell'origine
> - Se $\alpha$ è tale che $x^\alpha$ sia definita su tutto $\mathbb{R} \setminus \{0\}$ (ad esempio per $\alpha \in \mathbb{Z}$ o per esponenti razionali con denominatore dispari), lo stesso identico passaggio algebrico mostra che $f'(x) = \alpha x^{\alpha - 1}$ per ogni $x \neq 0$.
> - Nel punto $x = 0$, la funzione $x^\alpha$ (per $x \ge 0$) è derivabile (da destra):
>   - se $\alpha > 1$, con derivata destra nulla: $f'_+(0) = 0$;
>   - se $\alpha = 1$ (funzione identità $f(x) = x$), con derivata destra $f'_+(0) = 1$;
>   - se $\alpha < 1$, il rapporto incrementale diverge a $+\infty$, dunque la funzione non è derivabile nell'origine.
>
### Funzione esponenziale $a^x$ ed $e^x$

> [!proposition] Derivata della funzione esponenziale
> Sia $f(x) = a^x$ con $a > 0, a \neq 1$ e $x \in \mathbb{R}$. La funzione è derivabile su tutto $\mathbb{R}$ e:
> $$
> (a^x)' = a^x \log a
> $$
> In particolare, per la base naturale $a = e$:
> $$
> (e^x)' = e^x
> $$

> [!quote]- Dimostrazione
> Sia $x_0 \in \mathbb{R}$. Si valuta il limite del rapporto incrementale:
> $$
> \lim_{h \to 0} \frac{a^{x_0 + h} - a^{x_0}}{h} = \lim_{h \to 0} \frac{a^{x_0}(a^h - 1)}{h} = a^{x_0} \lim_{h \to 0} \frac{a^h - 1}{h}
> $$
> Applicando il limite notevole esponenziale $\lim_{h \to 0} \frac{a^h - 1}{h} = \log a$:
> $$
> = a^{x_0} \log a
> $$
> Per $a = e$, sapendo che $\log e = 1$, si ricava immediatamente $(e^x)' = e^x$. $\blacksquare$
>
### Funzione logaritmica $\log_a x$ e $\log |x|$

> [!proposition] Derivata della funzione logaritmica
> Sia $f(x) = \log_a x$ con $a > 0, a \neq 1$ e $x > 0$. La funzione è derivabile per ogni $x > 0$ e soddisfa:
> $$
> (\log_a x)' = \frac{1}{x \log a}
> $$
> In particolare, per il logaritmo naturale in base $e$:
> $$
> (\log x)' = \frac{1}{x}
> $$

> [!note] Estensione per valori negativi
> La derivata del logaritmo naturale del valore assoluto vale:
> $$
> \frac{d}{dx} \log |x| = \frac{1}{x}, \quad \forall x \in \mathbb{R} \setminus \{0\}
> $$
> Infatti, se $x > 0$ si ha $\log |x| = \log x \implies (\log x)' = \frac{1}{x}$. Se $x < 0$, si ha $\log |x| = \log(-x)$; derivando come funzione composta:
> $$
> \frac{d}{dx} \log(-x) = \frac{1}{-x} \cdot (-1) = \frac{1}{x}
> $$
>
### Funzioni trigonometriche ($\sin x$, $\cos x$) e iperboliche

> [!proposition] Derivate delle funzioni trigonometriche fondamentali
> Le funzioni seno e coseno sono derivabili su tutto $\mathbb{R}$ e soddisfano:
> $$
> (\sin x)' = \cos x, \qquad (\cos x)' = -\sin x
> $$

> [!quote]- Dimostrazione
> Si calcola la derivata della funzione seno nel generico punto $x_0 \in \mathbb{R}$:
> $$
> \lim_{h \to 0} \frac{\sin(x_0 + h) - \sin x_0}{h}
> $$
> Applicando le formule di addizione $\sin(x_0 + h) = \sin x_0 \cos h + \cos x_0 \sin h$:
> $$
> \begin{align}
> \lim_{h \to 0} \frac{\sin(x_0 + h) - \sin x_0}{h} &= \lim_{h \to 0} \frac{\sin x_0 \cos h + \cos x_0 \sin h - \sin x_0}{h} \\
> &= \lim_{h \to 0} \frac{\sin x_0 (\cos h - 1) + \cos x_0 \sin h}{h} \\
> &= \lim_{h \to 0} \left[ \sin x_0 \frac{\cos h - 1}{h} + \cos x_0 \frac{\sin h}{h} \right] \\
> &= \sin x_0 \lim_{h \to 0} \frac{\cos h - 1}{h} + \cos x_0 \lim_{h \to 0} \frac{\sin h}{h}
> \end{align}
> $$
> Facendo ricorso ai limiti notevoli trigonometrici:
> $$
> \lim_{h \to 0} \frac{\cos h - 1}{h} = 0, \qquad \lim_{h \to 0} \frac{\sin h}{h} = 1
> $$
> si ottiene:
> $$
> = \sin x_0 \cdot 0 + \cos x_0 \cdot 1 = \cos x_0
> $$
> Dunque $(\sin x)' = \cos x$ per ogni $x \in \mathbb{R}$.
> In modo del tutto analogo, applicando la formula di addizione del coseno $\cos(x_0 + h) = \cos x_0 \cos h - \sin x_0 \sin h$:
> $$
> \begin{align}
> \lim_{h \to 0} \frac{\cos(x_0 + h) - \cos x_0}{h} &= \lim_{h \to 0} \left[ \cos x_0 \frac{\cos h - 1}{h} - \sin x_0 \frac{\sin h}{h} \right] \\
> &= \cos x_0 \cdot 0 - \sin x_0 \cdot 1 = -\sin x_0
> \end{align}
> $$
> dimostrando che $(\cos x)' = -\sin x$ per ogni $x \in \mathbb{R}$. $\blacksquare$

> [!note] Derivate delle funzioni iperboliche
> Dalle definizioni $\sinh x := \frac{e^x - e^{-x}}{2}$ e $\cosh x := \frac{e^x + e^{-x}}{2}$, derivando termine a termine si ha:
> $$
> (\sinh x)' = \cosh x, \qquad (\cosh x)' = \sinh x, \quad \forall x \in \mathbb{R}
> $$
>
## 6.3. Algebra delle derivate

### Teorema sull'algebra delle derivate

> [!theorem] Teorema: Algebra delle derivate
> Siano $f, g: (a, b) \to \mathbb{R}$ due funzioni derivabili nel punto $x_0 \in (a, b)$. Allora:
> 
> 1. **Linearità:** Per ogni $\lambda, \mu \in \mathbb{R}$, la combinazione lineare $\lambda f + \mu g$ è derivabile in $x_0$ e:
>    $$
>    (\lambda f + \mu g)'(x_0) = \lambda f'(x_0) + \mu g'(x_0)
>    $$
>    *L'operatore di derivazione è quindi un'applicazione lineare sullo spazio vettoriale delle funzioni derivabili.*
> 
> 2. **Prodotto (Formula di Leibniz):** La funzione prodotto $f \cdot g$ è derivabile in $x_0$ e soddisfa:
>    $$
>    (f \cdot g)'(x_0) = f'(x_0) g(x_0) + f(x_0) g'(x_0)
>    $$
> 
> 3. **Quoziente:** Se inoltre $g(x_0) \neq 0$, la funzione quoziente $\frac{f}{g}$ è derivabile in $x_0$ e vale:
>    $$
>    \left(\frac{f}{g}\right)'(x_0) = \frac{f'(x_0) g(x_0) - f(x_0) g'(x_0)}{[g(x_0)]^2}
>    $$
>
**Dimostrazioni delle regole di derivazione**

**1. Dimostrazione della linearità**

> [!quote]- Dimostrazione
> Si valuta il limite del rapporto incrementale per la funzione combinazione lineare $\lambda f + \mu g$:
> $$
> \begin{align}
> (\lambda f + \mu g)'(x_0) &= \lim_{h \to 0} \frac{[\lambda f(x_0 + h) + \mu g(x_0 + h)] - [\lambda f(x_0) + \mu g(x_0)]}{h} \\
> &= \lim_{h \to 0} \left[ \lambda \frac{f(x_0 + h) - f(x_0)}{h} + \mu \frac{g(x_0 + h) - g(x_0)}{h} \right]
> \end{align}
> $$
> Applicando i teoremi sull'algebra dei limiti, poiché entrambi i limiti dei rapporti incrementali esistono finiti:
> $$
> = \lambda \lim_{h \to 0} \frac{f(x_0 + h) - f(x_0)}{h} + \mu \lim_{h \to 0} \frac{g(x_0 + h) - g(x_0)}{h} = \lambda f'(x_0) + \mu g'(x_0)
> $$
> $\blacksquare$
>
**2. Dimostrazione della regola del prodotto (Formula di Leibniz)**

> [!quote]- Dimostrazione
> Si imposta il limite del rapporto incrementale per il prodotto $f \cdot g$:
> $$
> (f \cdot g)'(x_0) = \lim_{h \to 0} \frac{f(x_0 + h) g(x_0 + h) - f(x_0) g(x_0)}{h}
> $$
> Si applica la tecnica algebrica di sommare e sottrarre a numeratore il termine misto $f(x_0 + h) g(x_0)$:
> $$
> \begin{align}
> (f \cdot g)'(x_0) &= \lim_{h \to 0} \frac{f(x_0 + h) g(x_0 + h) - f(x_0 + h) g(x_0) + f(x_0 + h) g(x_0) - f(x_0) g(x_0)}{h} \\
> &= \lim_{h \to 0} \left[ f(x_0 + h) \frac{g(x_0 + h) - g(x_0)}{h} + g(x_0) \frac{f(x_0 + h) - f(x_0)}{h} \right]
> \end{align}
> $$
> Poiché $f$ è derivabile in $x_0$, per il teorema precedente essa è anche continua in $x_0$, da cui:
> $$
> \lim_{h \to 0} f(x_0 + h) = f(x_0)
> $$
> Inoltre, per definizione di derivabilità di $f$ e $g$:
> $$
> \lim_{h \to 0} \frac{g(x_0 + h) - g(x_0)}{h} = g'(x_0), \qquad \lim_{h \to 0} \frac{f(x_0 + h) - f(x_0)}{h} = f'(x_0)
> $$
> Passando al limite si ottiene:
> $$
> (f \cdot g)'(x_0) = f(x_0) g'(x_0) + g(x_0) f'(x_0) = f'(x_0) g(x_0) + f(x_0) g'(x_0)
> $$
> $\blacksquare$
>
**3. Dimostrazione della regola del quoziente**

> [!quote]- Dimostrazione
> Si determina preliminarmente la derivata della funzione reciproca $\frac{1}{g}$ nel punto $x_0$:
> $$
> \left(\frac{1}{g}\right)'(x_0) = \lim_{h \to 0} \frac{\frac{1}{g(x_0 + h)} - \frac{1}{g(x_0)}}{h} = \lim_{h \to 0} \frac{g(x_0) - g(x_0 + h)}{h \cdot g(x_0 + h) g(x_0)}
> $$
> Poiché $g$ è derivabile in $x_0$, essa è continua in $x_0$. Avendo assunto $g(x_0) \neq 0$, per il teorema della permanenza del segno si ha $g(x_0 + h) \neq 0$ per ogni $h$ in un opportuno intorno di zero, e $\lim_{h \to 0} g(x_0 + h) = g(x_0)$.
> Riorganizzando il limite:
> $$
> \begin{align}
> \left(\frac{1}{g}\right)'(x_0) &= -\lim_{h \to 0} \left[ \frac{g(x_0 + h) - g(x_0)}{h} \cdot \frac{1}{g(x_0 + h) g(x_0)} \right] \\
> &= -g'(x_0) \cdot \frac{1}{[g(x_0)]^2} = -\frac{g'(x_0)}{[g(x_0)]^2}
> \end{align}
> $$
> Esprimendo ora la funzione quoziente come prodotto $\frac{f}{g} = f \cdot \frac{1}{g}$ e applicando la formula di Leibniz per il prodotto:
> $$
> \begin{align}
> \left(\frac{f}{g}\right)'(x_0) &= \left( f \cdot \frac{1}{g} \right)'(x_0) = f'(x_0) \frac{1}{g(x_0)} + f(x_0) \left(\frac{1}{g}\right)'(x_0) \\
> &= \frac{f'(x_0)}{g(x_0)} - f(x_0) \frac{g'(x_0)}{[g(x_0)]^2} \\
> &= \frac{f'(x_0) g(x_0) - f(x_0) g'(x_0)}{[g(x_0)]^2}
> \end{align}
> $$
> $\blacksquare$

> [!example] Esempi applicativi: derivate di tangente e cotangente

> [!example] Derivata della funzione tangente
> Applicando la regola del quoziente alla funzione $\tan x = \frac{\sin x}{\cos x}$ (per ogni $x \neq \frac{\pi}{2} + k\pi, \; k \in \mathbb{Z}$):
> $$
> \begin{align}
> (\tan x)' &= \left(\frac{\sin x}{\cos x}\right)' = \frac{(\sin x)' \cos x - \sin x (\cos x)'}{\cos^2 x} \\
> &= \frac{\cos x \cdot \cos x - \sin x (-\sin x)}{\cos^2 x} = \frac{\cos^2 x + \sin^2 x}{\cos^2 x}
> \end{align}
> $$
> Tale risultato può essere espresso in tre forme equivalenti:
> $$
> (\tan x)' = \frac{1}{\cos^2 x} = 1 + \tan^2 x = \sec^2 x
> $$

> [!example] Derivata della funzione cotangente
> Applicando la regola del quoziente alla funzione $\cot x = \frac{\cos x}{\sin x}$ (per ogni $x \neq k\pi, \; k \in \mathbb{Z}$):
> $$
> \begin{align}
> (\cot x)' &= \left(\frac{\cos x}{\sin x}\right)' = \frac{(\cos x)' \sin x - \cos x (\sin x)'}{\sin^2 x} \\
> &= \frac{(-\sin x) \sin x - \cos x (\cos x)}{\sin^2 x} = \frac{-\sin^2 x - \cos^2 x}{\sin^2 x}
> \end{align}
> $$
> che fornisce le forme equivalenti:
> $$
> (\cot x)' = -\frac{1}{\sin^2 x} = -1 - \cot^2 x = -\csc^2 x
> $$
>
## 6.4. Differenziale, differenziabilità e approssimazione lineare

### Definizione di differenziabilità in una variabile

> [!definition] Funzione differenziabile in una variabile
> Sia $f: (a, b) \to \mathbb{R}$ una funzione reale e sia $x_0 \in (a, b)$.
> Si dice che $f$ è **differenziabile** nel punto $x_0$ se esiste una costante reale $L \in \mathbb{R}$ tale che:
> $$
> f(x_0 + h) = f(x_0) + L h + o(h) \quad \text{per } h \to 0
> $$
> Ponendo $h = x - x_0$, la relazione esprime che l'incremento totale della funzione $\Delta f = f(x_0 + h) - f(x_0)$ è approssimato dall'applicazione lineare $L h$ a meno di un termine di errore infinitesimo di ordine superiore rispetto ad $h$ ($\lim_{h \to 0} \frac{o(h)}{h} = 0$).
> 
> In tal caso, si definisce **differenziale** di $f$ in $x_0$ l'applicazione lineare $df(x_0): \mathbb{R} \to \mathbb{R}$ definita da:
> $$
> df(x_0)(h) := L h
> $$
>
### Teorema di equivalenza tra derivabilità e differenziabilità in $\mathbb{R}$

> [!theorem] Teorema di equivalenza tra derivabilità e differenziabilità in $\mathbb{R}$
> Sia $f: (a, b) \to \mathbb{R}$ e sia $x_0 \in (a, b)$. Allora:
> 
> 1. Se $f$ è derivabile in $x_0$ ($\exists f'(x_0) \in \mathbb{R}$), allora $f$ è differenziabile in $x_0$ ($\exists L \in \mathbb{R}$) e vale $L = f'(x_0)$.
> 2. Se $f$ è differenziabile in $x_0$ ($\exists L \in \mathbb{R}$), allora $f$ è derivabile in $x_0$ ($\exists f'(x_0) \in \mathbb{R}$) e vale $f'(x_0) = L$.
> 
> In sintesi, per funzioni di una variabile reale:
> $$
> f \text{ è derivabile in } x_0 \iff f \text{ è differenziabile in } x_0
> $$

> [!quote]- Dimostrazione
> Si dimostrano separatamente le due implicazioni:
>
> **Parte 1 ($\implies$):**
> Si supponga che la funzione $f$ sia derivabile nel punto $x_0$. Per definizione, il limite del rapporto incrementale esiste finito:
> $$
> \lim_{h \to 0} \frac{f(x_0 + h) - f(x_0)}{h} = f'(x_0) \in \mathbb{R}
> $$
> Per definizione di limite, il rapporto incrementale differisce dal suo limite per un infinitesimo $o(1)$ per $h \to 0$:
> $$
> \frac{f(x_0 + h) - f(x_0)}{h} = f'(x_0) + o(1) \quad \text{per } h \to 0
> $$
> Moltiplicando ambo i membri per l'incremento $h \neq 0$:
> $$
> f(x_0 + h) - f(x_0) = f'(x_0) h + h \cdot o(1)
> $$
> Ricordando che per le proprietà dei simboli di Landau $h \cdot o(1) = o(h)$ per $h \to 0$:
> $$
> f(x_0 + h) - f(x_0) = f'(x_0) h + o(h)
> $$
> Isolando $f(x_0 + h)$:
> $$
> f(x_0 + h) = f(x_0) + f'(x_0) h + o(h) \quad \text{per } h \to 0
> $$
> Tale uguaglianza coincide esattamente con la definizione di differenziabilità, ponendo $L = f'(x_0)$.
>
> **Parte 2 ($\impliedby$):**
> Si supponga che la funzione $f$ sia differenziabile in $x_0$. Esiste dunque una costante reale $L \in \mathbb{R}$ tale che:
> $$
> f(x_0 + h) = f(x_0) + L h + o(h) \quad \text{per } h \to 0
> $$
> Sottraendo $f(x_0)$ da ambo i membri e dividendo per $h \neq 0$:
> $$
> \frac{f(x_0 + h) - f(x_0)}{h} = L + \frac{o(h)}{h}
> $$
> Passando al limite per $h \to 0$, poiché per definizione di $o$ piccolo si ha $\lim_{h \to 0} \frac{o(h)}{h} = 0$:
> $$
> \lim_{h \to 0} \frac{f(x_0 + h) - f(x_0)}{h} = \lim_{h \to 0} \left[ L + \frac{o(h)}{h} \right] = L + 0 = L \in \mathbb{R}
> $$
> Il limite del rapporto incrementale esiste dunque ed è finito, provando che $f$ è derivabile in $x_0$ con derivata prima $f'(x_0) = L$. $\blacksquare$
>
### Significato geometrico del differenziale e approssimazione lineare

> [!note] Approssimazione lineare e retta tangente
> Dalla differenziabilità, ponendo $h = x - x_0$, si ottiene lo sviluppo asintotico di arresto al prim'ordine per $x \to x_0$:
> $$
> f(x) = \underbrace{f(x_0) + f'(x_0)(x - x_0)}_{\text{Retta Tangente}} + o(x - x_0)
> $$
> Tale scrittura mostra che la retta tangente costituisce la **migliore approssimazione affine locale** del grafico di $f$ nell'intorno del punto $x_0$.
> L'errore che si commette sostituendo alla funzione la retta tangente, dato da $f(x) - [f(x_0) + f'(x_0)(x - x_0)] = o(x - x_0)$, tende a zero più rapidamente della distanza $|x - x_0|$ stessa.
> La retta tangente è l'unica retta passante per $(x_0, f(x_0))$ a possedere tale proprietà di contatto del primo ordine.
>
### Osservazione: rottura dell'equivalenza in $\mathbb{R}^n$ ($n > 1$)

> [!warning] Mancanza di equivalenza per funzioni di più variabili
> Sebbene in $\mathbb{R}^n$ esistano i naturali analoghi dei concetti di derivabilità (esistenza delle derivate parziali o delle derivate direzionali lungo ogni direzione) e di differenziabilità (differenziale totale di Fréchet):
> - Quando la dimensione dello spazio è strettamente maggiore di uno ($n > 1$), **derivabilità e differenziabilità NON sono equivalenti**.
> - Vale esclusivamente l'implicazione unidirezionale:
>   $$
>   f \text{ differenziabile in } \mathbf{x}_0 \in \mathbb{R}^n \implies f \text{ ammette derivate parziali e direzionali in } \mathbf{x}_0
>   $$
>   mentre il viceversa è falso: esistono funzioni che ammettono derivate direzionali lungo qualsiasi direzione nell'origine ma che non sono nemmeno continue in quel punto.
> - L'equivalenza $f \text{ differenziabile} \iff f \text{ derivabile}$ è una proprietà caratteristica e speciale valida unicamente in dimensione uno ($n = 1$).
>
Dalla caratterizzazione della differenziabilità per funzioni reali a variabile reale:
$$
f(x) = f(x_0) + f'(x_0)(x - x_0) + o(x - x_0) \quad \text{per } x \to x_0
$$
segue immediatamente l'interpretazione geometrica fondamentale:

$$
\implies f(x) \text{ è approssimata nell'intorno del punto dalla sua retta tangente}
\Downarrow
\text{la retta tangente è l'\textbf{UNICA RETTA} che possiede tale proprietà di contatto al primo ordine.}
$$

> [!note] Osservazione: Il differenziale come applicazione lineare
> Fissato un punto $x_0 \in (a, b)$, il differenziale $df(x_0)$ è un'applicazione lineare dallo spazio degli incrementi $\mathbb{R}$ in sé:
> $$
> df(x_0)(h) = f'(x_0) \cdot h, \quad \forall h \in \mathbb{R}
> $$
> Inoltre, considerando la funzione identità $f(x) = x$, si ha:
> $$
> dx(h) = 1 \cdot h = h, \quad \forall h \in \mathbb{R}
> $$
> ovvero $dx$ è l'applicazione lineare identica.
> Possiamo pertanto riscrivere il differenziale nella notazione classica:
> $$
> df(x) = f'(x) \, dx
> $$
> dove $dx$ rappresenta la "variazione infinitesimale" (o incremento lineare) della variabile indipendente $x$.
> 
> Il formalismo differenziale risulta straordinariamente potente ed efficace poiché **NON esplicita la dipendenza da altre variabili**, godendo della proprietà di *invarianza della forma del differenziale primo*.
>
## 6.5. Regole di derivazione avanzate (funzione composta e inversa)

### Derivata delle funzioni composte (Chain Rule o Regola di Leibniz)

> [!theorem] Teorema: Regola della catena (Chain Rule / Regola di Leibniz)
> Siano $f: (a, b) \to (c, d)$ e $g: (c, d) \to \mathbb{R}$ due funzioni.
> Sia $f$ **derivabile** in un punto $x_0 \in (a, b)$ e sia $g$ **derivabile** in $y_0 := f(x_0) \in (c, d)$.
> Allora la funzione composta $g \circ f: (a, b) \to \mathbb{R}$ è **derivabile** nel punto $x_0$, e la sua derivata è data dal prodotto:
> $$
> (g \circ f)'(x_0) = g'(f(x_0)) \cdot f'(x_0)
> $$

> [!note] Notazione alternativa (Notazione di Leibniz)
> Ponendo $h = g \circ f$, con $y = f(x)$ e $h = g(y)$, se indichiamo la derivata con il simbolo leibniziano:
> $$
> f'(x) = \frac{df}{dx} \quad \left(\text{ricordando che } \frac{df}{dx} \text{ è un \textbf{SIMBOLO}, NON un rapporto algebrico!}\right)
> $$
> il teorema assume l'espressione suggestiva:
> $$
> \frac{dh}{dx} = \frac{dh}{dy} \cdot \frac{dy}{dx}
> $$
> la quale opera formalmente *"come se $dy$ si semplificasse"*.

> [!quote]- Dimostrazione
> Poiché $g$ è derivabile in $y_0 := f(x_0)$, per il teorema di equivalenza tra derivabilità e differenziabilità in dimensione uno, $g$ è differenziabile in $y_0$.
> Vale pertanto lo sviluppo al primo ordine:
> $$
> g(y_0 + k) = g(y_0) + g'(y_0)k + o(k) \quad \text{per } k \to 0 \qquad (\star)
> $$
> Sia ora $h \neq 0$ un incremento della variabile indipendente tale che $x_0 + h \in (a, b)$, e poniamo:
> $$
> k := f(x_0 + h) - f(x_0)
> $$
> Si verificano le seguenti tre proprietà:
> 1. **Comportamento asintotico di $k$:**
>    Poiché $f$ è derivabile in $x_0$, essa è continua in $x_0$. Di conseguenza:
>    $$
>    \lim_{h \to 0} k = \lim_{h \to 0} \left[ f(x_0 + h) - f(x_0) \right] = 0
>    $$
> 2. **Rapporto incrementale di $f$:**
>    $$
>    \frac{k}{h} = \frac{f(x_0 + h) - f(x_0)}{h} \xrightarrow[h \to 0]{} f'(x_0) \in \mathbb{R}
>    $$
> 3. **Argomento composto:**
>    $$
>    y_0 + k = f(x_0) + f(x_0 + h) - f(x_0) = f(x_0 + h)
>    $$
>
> Riscriviamo l'equazione differenziale $(\star)$ dividendo ambo i membri per l'incremento $h \neq 0$:
> $$
> \frac{g(y_0 + k) - g(y_0)}{h} = g'(y_0) \frac{k}{h} + \frac{o(k)}{h}
> $$
> Sostituendo le identità $y_0 = f(x_0)$ e $y_0 + k = f(x_0 + h)$ ottenute al punto (3):
> $$
> \frac{g(f(x_0 + h)) - g(f(x_0))}{h} = g'(f(x_0)) \frac{k}{h} + \frac{o(k)}{h}
> $$
> Analizziamo il comportamento del termine di resto $\frac{o(k)}{h}$ per $h \to 0$. Possiamo fattorizzarlo come:
> $$
> \frac{o(k)}{h} = \begin{cases} \displaystyle \frac{o(k)}{k} \cdot \frac{k}{h}, & \text{se } k \neq 0 \\[2ex] 0, & \text{se } k = 0 \end{cases}
> $$
> Poiché per $h \to 0$ si ha $k \to 0$ (proprietà 1), per definizione di simbolo di Landau $o(k)$ si ha che $\lim_{k \to 0} \frac{o(k)}{k} = 0$.
> Inoltre, per la proprietà (2), $\lim_{h \to 0} \frac{k}{h} = f'(x_0) \in \mathbb{R}$.
> Dunque, per il teorema sul limite del prodotto:
> $$
> \lim_{h \to 0} \frac{o(k)}{h} = 0 \cdot f'(x_0) = 0
> $$
> Passando al limite per $h \to 0$ in entrambi i membri dell'uguaglianza del rapporto incrementale:
> $$
> \lim_{h \to 0} \frac{g(f(x_0 + h)) - g(f(x_0))}{h} = g'(f(x_0)) \cdot \lim_{h \to 0} \frac{k}{h} + \lim_{h \to 0} \frac{o(k)}{h} = g'(f(x_0)) \cdot f'(x_0) + 0
> $$
> Resta così dimostrato che la funzione composta $g \circ f$ è derivabile in $x_0$ e che:
> $$
> (g \circ f)'(x_0) = g'(f(x_0)) \cdot f'(x_0) \quad \blacksquare
> $$

> [!example] Esempio applicativo
> Calcolare la derivata della funzione $y(x) = \sinh\left(e^{\sqrt{x}}\right)$ per $x > 0$.
> Applicando la regola della catena a cascata:
> $$
> \begin{align}
> \frac{d}{dx} \left[\sinh\left(e^{\sqrt{x}}\right)\right] &= \cosh\left(e^{\sqrt{x}}\right) \cdot \frac{d}{dx}\left(e^{\sqrt{x}}\right) \\
> &= \cosh\left(e^{\sqrt{x}}\right) \cdot e^{\sqrt{x}} \cdot \frac{d}{dx}(\sqrt{x}) \\
> &= \cosh\left(e^{\sqrt{x}}\right) \cdot e^{\sqrt{x}} \cdot \frac{1}{2\sqrt{x}} = \frac{e^{\sqrt{x}} \cosh\left(e^{\sqrt{x}}\right)}{2\sqrt{x}}
> \end{align}
> $$
>
### Teorema della derivata della funzione inversa

> [!theorem] Teorema: Derivata della funzione inversa
> Sia $f: (a, b) \to \mathbb{R}$ una funzione continua e **strettamente monotòna** (quindi invertibile sull'immagine $J := f((a, b))$).
> Sia $f$ derivabile in un punto $x_0 \in (a, b)$ con derivata non nulla:
> $$
> f'(x_0) \neq 0
> $$
> Allora la sua funzione inversa $f^{-1}: J \to (a, b)$, ben definita in un intorno del punto $y_0 := f(x_0)$, è **derivabile** in $y_0$ e la sua derivata vale:
> $$
> (f^{-1})'(y_0) = \frac{1}{f'(x_0)} = \frac{1}{f'(f^{-1}(y_0))}
> $$

> [!warning] Attenzione all'ipotesi $f'(x_0) \neq 0$
> Se $f'(x_0) = 0$, la funzione inversa $f^{-1}$ può esistere ma **non è derivabile** in $y_0$ (presenta retta tangente verticale).
> 
> **Controesempio:**
> Sia $f(x) = x^3$, definita e strettamente crescente su tutto $\mathbb{R}$. La derivata si annulla nell'origine:
> $$
> f'(x) = 3x^2 \implies f'(0) = 0
> $$
> La funzione inversa è la radice cubica:
> $$
> f^{-1}(y) = \sqrt[3]{y}
> $$
> Calcolando il rapporto incrementale di $f^{-1}$ in $y = 0$:
> $$
> \lim_{k \to 0} \frac{f^{-1}(k) - f^{-1}(0)}{k} = \lim_{k \to 0} \frac{\sqrt[3]{k}}{k} = \lim_{k \to 0} \frac{1}{k^{2/3}} = +\infty
> $$
> Pertanto $f^{-1}(y) = \sqrt[3]{y}$ **non è derivabile** in $y = 0$.
>
### Calcolo delle derivate delle funzioni trigonometriche inverse

**1. Derivata della funzione arcoseno ($\arcsin x$)**
Consideriamo la restrizione della funzione seno al suo intervallo fondamentale di invertibilità:
$$
f: \left[-\frac{\pi}{2}, \frac{\pi}{2}\right] \to [-1, 1], \quad f(x) = \sin x
$$
Poiché $f$ è continua e strettamente crescente, essa ammette funzione inversa:
$$
f^{-1}: [-1, 1] \to \left[-\frac{\pi}{2}, \frac{\pi}{2}\right], \quad f^{-1}(y) = \arcsin y
$$
La funzione $f(x) = \sin x$ è derivabile su $\left[-\frac{\pi}{2}, \frac{\pi}{2}\right]$ con $f'(x) = \cos x$ (intesa come derivata destra in $-\frac{\pi}{2}$ e derivata sinistra in $\frac{\pi}{2}$).
La derivata prima è strettamente non nulla nell'intervallo aperto:
$$
f'(x) = \cos x \neq 0, \quad \forall x \in \left(-\frac{\pi}{2}, \frac{\pi}{2}\right) \quad (\text{essendo } \cos(\pm\pi/2) = 0)
$$
Possiamo applicare il Teorema della funzione inversa in tale intervallo aperto.
Dalla relazione fondamentale della trigonometria, ponendo $y = \sin x$:
$$
f'(x) = \cos x = \pm \sqrt{1 - \sin^2 x} = \pm \sqrt{1 - y^2}
$$
Poiché per ogni $x \in \left(-\frac{\pi}{2}, \frac{\pi}{2}\right)$ il coseno è strettamente positivo ($\cos x > 0$), scartiamo la radice negativa:
$$
f'(x) = \sqrt{1 - \sin^2 x} = \sqrt{1 - y^2}
$$
Per il teorema, per ogni $y \in (-1, 1)$:
$$
(f^{-1})'(y) = \frac{1}{f'(x)} = \frac{1}{\sqrt{1 - y^2}}
$$
Riscrivendo nella variabile muta $x$:
$$
(\arcsin x)' = \frac{1}{\sqrt{1 - x^2}}, \quad \forall x \in (-1, 1)
$$

**2. Derivata della funzione arcocoseno ($\arccos x$)**
Consideriamo la funzione coseno ristretta all'intervallo:
$$
f: [0, \pi] \to [-1, 1], \quad f(x) = \cos x
$$
Essa è strettamente decrescente ed invertibile, con inversa:
$$
f^{-1}: [-1, 1] \to [0, \pi], \quad f^{-1}(y) = \arccos y
$$
La derivata vale $f'(x) = -\sin x$, la quale si annulla negli estremi $x = 0$ e $x = \pi$ ($x = k\pi$).
Per calcolare la derivata dell'inversa consideriamo l'intervallo aperto $(-1, 1) \to (0, \pi)$.
Nell'intervallo $x \in (0, \pi)$ il seno è strettamente positivo ($\sin x > 0$), dunque:
$$
\sin x = \sqrt{1 - \cos^2 x} = \sqrt{1 - y^2}
$$
Applicando il teorema:
$$
(f^{-1})'(y) = \frac{1}{f'(x)} = \frac{1}{-\sin x} = \frac{1}{-\sqrt{1 - \cos^2 x}} = -\frac{1}{\sqrt{1 - y^2}}
$$
Dunque:
$$
(\arccos x)' = -\frac{1}{\sqrt{1 - x^2}}, \quad \forall x \in (-1, 1)
$$

**3. Derivata della funzione arcotangente ($\arctan x$)**
Consideriamo la restrizione della funzione tangente:
$$
f: \left(-\frac{\pi}{2}, \frac{\pi}{2}\right) \to (-\infty, +\infty), \quad f(x) = \tan x
$$
La funzione è strettamente crescente e biiettiva. La sua derivata prima vale:
$$
f'(x) = 1 + \tan^2 x = 1 + y^2 > 0, \quad \forall x \in \left(-\frac{\pi}{2}, \frac{\pi}{2}\right)
$$
Non annullandosi mai, la funzione inversa $f^{-1}(y) = \arctan y$ è derivabile su tutto $\mathbb{R}$:
$$
(f^{-1})'(y) = \frac{1}{f'(x)} = \frac{1}{1 + \tan^2 x} = \frac{1}{1 + y^2}
$$
In termini della variabile $x$:
$$
(\arctan x)' = \frac{1}{1 + x^2}, \quad \forall x \in \mathbb{R}
$$

> [!note] Osservazione: L'identità $\arcsin x + \arccos x = \frac{\pi}{2}$
> Consideriamo la somma delle funzioni arcoseno e arcocoseno per ogni $x \in (-1, 1)$. Calcolandone la derivata:
> $$
> (\arcsin x + \arccos x)' = \frac{1}{\sqrt{1 - x^2}} - \frac{1}{\sqrt{1 - x^2}} = 0, \quad \forall x \in (-1, 1)
> $$
> Come corollario del Teorema di Lagrange (applicato a funzioni a derivata identicamente nulla su un intervallo):
> $$
> \exists c \in \mathbb{R} : \arcsin x + \arccos x = c, \quad \forall x \in (-1, 1)
> $$
> Per determinare il valore della costante reale $c$, valutiamo l'espressione in un punto conveniente, ad esempio ponendo $x = 0$:
> $$
> \arcsin 0 + \arccos 0 = 0 + \frac{\pi}{2} = \frac{\pi}{2} \implies c = \frac{\pi}{2}
> $$
> Si dimostra così analiticamente la celebre identità complementare:
> $$
> \arcsin x + \arccos x = \frac{\pi}{2}, \quad \forall x \in (-1, 1)
> $$
> *(identità che per continuità si estende anche agli estremi chiusi $[-1, 1]$).*
>
## 6.6. Teoremi fondamentali del calcolo differenziale (Fermat, Rolle, Lagrange, Cauchy)

### Estremi relativi e Teorema di Fermat sui punti stazionari

> [!definition] Definizione: Punto di massimo e minimo relativo (o locale)
> Sia $f: (a, b) \to \mathbb{R}$ e sia $x_0 \in (a, b)$.
> - Il punto $x_0$ si dice **PUNTO DI MASSIMO RELATIVO (o LOCALE)** per $f$ se:
>   $$
>   \exists \varepsilon > 0 : f(x_0) \ge f(x), \quad \forall x \in (x_0 - \varepsilon, x_0 + \varepsilon) \cap (a, b)
>   $$
> - Il punto $x_0$ si dice **PUNTO DI MINIMO RELATIVO (o LOCALE)** per $f$ se:
>   $$
>   \exists \varepsilon > 0 : f(x_0) \le f(x), \quad \forall x \in (x_0 - \varepsilon, x_0 + \varepsilon) \cap (a, b)
>   $$

> [!note] Morfologia geometrica dei punti estremanti
> 1. Se $f$ è derivabile in $x_0$, il grafico presenta una retta tangente orizzontale in corrispondenza del vertice locale.
> 2. L'esistenza di un estremo locale non richiede la derivabilità della funzione nel punto: possono esistere massimi e minimi in corrispondenza di punti angolosi o cuspidi (in cui $\nexists f'(x_0)$).

> [!theorem] Teorema di Fermat sui punti stazionari
> Sia $f: (a, b) \to \mathbb{R}$ una funzione **derivabile** nel punto $x_0 \in (a, b)$.
> Se $x_0 \in (a, b)$ è un **punto di massimo o di minimo relativo** per $f$, allora la derivata prima si annulla necessariamente in tale punto:
> $$
> f'(x_0) = 0
> $$
> I punti in cui $f'(x_0) = 0$ prendono il nome di **punti stazionari** (o **punti critici**).

> [!quote]- Dimostrazione
> Assumiamo senza perdita di generalità che $x_0$ sia un punto di **minimo relativo** per $f$ (il caso di massimo relativo si dimostra specularmente invertendo i versi delle disuguaglianze).
> Per definizione di minimo relativo, esiste un raggio $\varepsilon > 0$ tale che $(x_0 - \varepsilon, x_0 + \varepsilon) \subseteq (a, b)$ e:
> $$
> f(x) \ge f(x_0) \iff f(x) - f(x_0) \ge 0, \quad \forall x \in (x_0 - \varepsilon, x_0 + \varepsilon)
> $$
> Valutiamo il rapporto incrementale al variare di $x$:
> 1. **Per $x < x_0$** (ovvero $x \in (x_0 - \varepsilon, x_0)$):
>    Il numeratore è non negativo ($f(x) - f(x_0) \ge 0$) mentre il denominatore è strettamente negativo ($x - x_0 < 0$). Dunque:
>    $$
>    \frac{f(x) - f(x_0)}{x - x_0} \le 0
>    $$
>    Poiché per ipotesi $f$ è derivabile in $x_0$, il limite del rapporto incrementale esiste finito e coincide con la derivata sinistra $f'_-(x_0)$.
>    Per il **teorema di permanenza del segno** applicato ai limiti di funzioni:
>    $$
>    f'(x_0) = f'_-(x_0) = \lim_{x \to x_0^-} \frac{f(x) - f(x_0)}{x - x_0} \le 0
>    $$
> 2. **Per $x > x_0$** (ovvero $x \in (x_0, x_0 + \varepsilon)$):
>    Sia il numeratore che il denominatore sono non negativi ($f(x) - f(x_0) \ge 0$ e $x - x_0 > 0$). Dunque:
>    $$
>    \frac{f(x) - f(x_0)}{x - x_0} \ge 0
>    $$
>    Procedendo analogamente, per permanenza del segno sul limite destro:
>    $$
>    f'(x_0) = f'_+(x_0) = \lim_{x \to x_0^+} \frac{f(x) - f(x_0)}{x - x_0} \ge 0
>    $$
>
> Essendo $f$ derivabile in $x_0$, la derivata sinistra e la derivata destra devono coincidere con $f'(x_0)$:
> $$
> \lim_{x \to x_0^-} \frac{f(x) - f(x_0)}{x - x_0} = \lim_{x \to x_0^+} \frac{f(x) - f(x_0)}{x - x_0} = f'(x_0)
> $$
> Dovendo sussistere contemporaneamente le due condizioni $f'(x_0) \le 0$ e $f'(x_0) \ge 0$, si conclude necessariamente che:
> $$
> f'(x_0) = 0 \quad \blacksquare
> $$

> [!warning] Attenzione: NON vale il viceversa!
> L'annullarsi della derivata prima ($f'(x_0) = 0$) è una condizione **necessaria**, ma **NON sufficiente**, affinché un punto sia di estremo relativo.
> 
> **Controesempio fondamentale:**
> Sia $f(x) = x^3$, con derivata prima $f'(x) = 3x^2$.
> Nel punto $x_0 = 0$ si ha:
> $$
> f'(0) = 0
> $$
> Dunque l'origine è un punto stazionario con tangente orizzontale.
> Tuttavia $x_0 = 0$ **non è né un massimo né un minimo locale**: infatti per ogni intorno $(-\varepsilon, \varepsilon)$ si ha che $f(x) < 0 = f(0)$ per $x < 0$ e $f(x) > 0 = f(0)$ per $x > 0$. Si tratta di un punto di *flesso a tangente orizzontale*.
>
### Teorema di Rolle

> [!theorem] Teorema di Rolle
> Sia $f: [a, b] \to \mathbb{R}$ una funzione soddisfacente le seguenti tre ipotesi:
> 1. $f$ è **CONTINUA** sull'intervallo chiuso e limitato $[a, b]$;
> 2. $f$ è **DERIVABILE** sull'intervallo aperto $(a, b)$;
> 3. $f$ assume valori coincidenti agli estremi:
>    $$
>    f(a) = f(b)
>    $$
> Allora esiste almeno un punto interno $c \in (a, b)$ tale che:
> $$
> f'(c) = 0
> $$
> ovvero $c$ è un **punto stazionario** per $f$.

> [!quote]- Dimostrazione
> Essendo $f$ continua sull'intervallo compatto $[a, b]$, per il **Teorema di Weierstrass** la funzione ammette massimo assoluto $M$ e minimo assoluto $m$ in $[a, b]$.
> Esistono pertanto due punti $x_0, x_1 \in [a, b]$ tali che:
> $$
> M := f(x_0) = \max_{x \in [a, b]} f(x) \quad \land \quad m := f(x_1) = \min_{x \in [a, b]} f(x)
> $$
> Si aprono due scenari mutualmente esclusivi ed esaustivi:
> - **Caso 1: $M = m$**
>   Se il valore massimo coincide con il valore minimo, la funzione è identicamente costante su tutto l'intervallo:
>   $$
>   f(x) = M = m, \quad \forall x \in [a, b]
>   $$
>   Ne consegue che la derivata si annulla identicamente in ogni punto interno:
>   $$
>   f'(x) = 0, \quad \forall x \in (a, b)
>   $$
>   In questo caso, qualsiasi punto $c \in (a, b)$ soddisfa la tesi.
> - **Caso 2: $M > m$**
>   Poiché per la terza ipotesi $f(a) = f(b)$, non è possibile che entrambi i punti di estremo $x_0$ e $x_1$ coincidano con gli estremi $\{a, b\}$. Se così fosse, si avrebbe:
>   $$
>   M = f(a) = f(b) = m
>   $$
>   il che contraddirebbe l'assunzione $M > m$.
>   Di conseguenza, **almeno uno dei due punti di estremo $x_0$ o $x_1$ deve appartenere all'intervallo aperto $(a, b)$**.
>   Sia $c \in (a, b)$ tale punto interno di estremo assoluto (massimo o minimo).
>   In tale punto:
>   - $f$ è derivabile, poiché $c \in (a, b)$ e $f$ è derivabile su tutto $(a, b)$ per l'ipotesi (2);
>   - $c$ è un punto di estremo locale (essendo punto di estremo assoluto).
>   Per il **Teorema di Fermat**, si conclude immediatamente che:
>   $$
>   f'(c) = 0 \quad \blacksquare
>   $$
>
### Teorema di Cauchy (del valor medio generalizzato)

> [!theorem] Teorema di Cauchy (Teorema del valor medio generalizzato)
> Siano $f, g: [a, b] \to \mathbb{R}$ due funzioni tali che:
> 1. $f$ e $g$ sono **CONTINUE** sull'intervallo chiuso $[a, b]$;
> 2. $f$ e $g$ sono **DERIVABILI** sull'intervallo aperto $(a, b)$.
> Allora esiste almeno un punto interno $c \in (a, b)$ tale che:
> $$
> [f(b) - f(a)] \, g'(c) = [g(b) - g(a)] \, f'(c)
> $$

> [!quote]- Dimostrazione
> Si introduce la funzione ausiliaria $w: [a, b] \to \mathbb{R}$ definita da:
> $$
> w(x) := [f(b) - f(a)] \, g(x) - [g(b) - g(a)] \, f(x)
> $$
> Verifichiamo le tre ipotesi del Teorema di Rolle per la funzione $w$:
> 1. **Continuità:** $w$ è una combinazione lineare di funzioni continue su $[a, b]$, quindi è continua su $[a, b]$.
> 2. **Derivabilità:** $w$ è una combinazione lineare di funzioni derivabili su $(a, b)$, con derivata:
>    $$
>    w'(x) = [f(b) - f(a)] \, g'(x) - [g(b) - g(a)] \, f'(x)
>    $$
> 3. **Uguaglianza agli estremi:** Valutiamo esplicitamente $w(a)$ e $w(b)$:
>    $$
>    \begin{align}
>    w(a) &= [f(b) - f(a)] g(a) - [g(b) - g(a)] f(a) \\
>    &= f(b)g(a) - f(a)g(a) - g(b)f(a) + g(a)f(a) \\
>    &= f(b)g(a) - g(b)f(a) \\[2ex]
>    w(b) &= [f(b) - f(a)] g(b) - [g(b) - g(a)] f(b) \\
>    &= f(b)g(b) - f(a)g(b) - g(b)f(b) + g(a)f(b) \\
>    &= g(a)f(b) - f(a)g(b)
>    \end{align}
>    $$
>    I due valori coincidono: $w(a) = w(b)$.
>
> Essendo verificate tutte le ipotesi del Teorema di Rolle per $w$ su $[a, b]$, esiste almeno un punto $c \in (a, b)$ tale che:
> $$
> w'(c) = 0
> $$
> ovvero:
> $$
> [f(b) - f(a)] \, g'(c) - [g(b) - g(a)] \, f'(c) = 0 \iff [f(b) - f(a)] \, g'(c) = [g(b) - g(a)] \, f'(c) \quad \blacksquare
> $$
>
### Teorema di Lagrange (del valor medio)

> [!theorem] Teorema di Lagrange (Teorema del valor medio)
> Sia $f: [a, b] \to \mathbb{R}$ una funzione soddisfacente le seguenti ipotesi:
> 1. $f$ è **CONTINUA** sull'intervallo chiuso $[a, b]$;
> 2. $f$ è **DERIVABILE** sull'intervallo aperto $(a, b)$.
> Allora esiste almeno un punto $c \in (a, b)$ tale che:
> $$
> f'(c) = \frac{f(b) - f(a)}{b - a}
> $$

> [!quote]- Dimostrazione
> La dimostrazione discende in modo immediato come corollario del Teorema di Cauchy.
> Si consideri come seconda funzione la funzione identità:
> $$
> g(x) = x \implies g'(x) = 1, \quad g(b) - g(a) = b - a
> $$
> Le funzioni $f(x)$ e $g(x) = x$ soddisfano le ipotesi del Teorema di Cauchy su $[a, b]$. Esiste pertanto un punto $c \in (a, b)$ tale che:
> $$
> [f(b) - f(a)] \cdot g'(c) = [g(b) - g(a)] \cdot f'(c)
> $$
> Sostituendo $g'(c) = 1$ e $g(b) - g(a) = b - a$:
> $$
> [f(b) - f(a)] \cdot 1 = [b - a] \cdot f'(c)
> $$
> Essendo $b > a$, possiamo dividere ambo i membri per $(b - a) \neq 0$:
> $$
> f'(c) = \frac{f(b) - f(a)}{b - a} \quad \blacksquare
> $$

> [!note] Significato geometrico del Teorema di Lagrange
> Il rapporto a secondo membro rappresenta il coefficiente angolare $m_{\text{sec}}$ della retta secante passante per i punti estremi $(a, f(a))$ e $(b, f(b))$ del grafico:
> $$
> m_{\text{sec}} = \tan \theta = \frac{f(b) - f(a)}{b - a}
> $$
> Il primo membro $f'(c)$ è il coefficiente angolare della retta tangente al grafico di $f$ nel punto $(c, f(c))$.
> Il teorema garantisce che per ogni intervallo $I = [a, b]$ su cui $f$ è continua e derivabile internamente, esiste almeno un punto $c \in (a, b)$ in cui la **retta tangente al grafico è parallela alla retta secante che congiunge gli estremi**:
> $$
> f'(c) = \frac{f(b) - f(a)}{b - a} \iff \text{retta tangente in } c \parallel \text{retta congiungente } (a, f(a)) \text{ e } (b, f(b))
> $$
>
### Applicazioni fondamentali del Teorema di Lagrange

**1. Test di monotonia per funzioni derivabili**

> [!proposition] Test di monotonia
> Sia $f: (a, b) \to \mathbb{R}$ una funzione derivabile sull'intervallo $(a, b)$. Allora:
> - $f$ è **CRESCENTE** in $(a, b) \iff f'(x) \ge 0, \quad \forall x \in (a, b)$
> - $f$ è **DECRESCENTE** in $(a, b) \iff f'(x) \le 0, \quad \forall x \in (a, b)$

> [!quote]- Dimostrazione
> Dimostriamo dettagliatamente l'equivalenza per il caso di funzione crescente (la dimostrazione per le funzioni decrescenti è del tutto speculare).
>
> - **Sufficienza ($\Leftarrow$):**
>   Assumiamo che $f'(x) \ge 0$ per ogni $x \in (a, b)$.
>   Siano $x_1, x_2 \in (a, b)$ due punti generici tali che $x_1 < x_2$.
>   Consideriamo l'intervallo chiuso $[x_1, x_2] \subset (a, b)$.
>   Poiché $f$ è derivabile su $(a, b)$, essa è continua su $[x_1, x_2]$ e derivabile su $(x_1, x_2)$.
>   Possiamo pertanto applicare il **Teorema di Lagrange** sull'intervallo $[x_1, x_2]$:
>   $$
>   \exists c \in (x_1, x_2) : \frac{f(x_2) - f(x_1)}{x_2 - x_1} = f'(c)
>   $$
>   Moltiplicando per il denominatore positivo $(x_2 - x_1) > 0$:
>   $$
>   f(x_2) - f(x_1) = \underbrace{(x_2 - x_1)}_{> 0 \text{ per costruzione}} \cdot \underbrace{f'(c)}_{\ge 0 \text{ per ipotesi}} \ge 0
>   $$
>   Ne consegue che:
>   $$
>   f(x_2) - f(x_1) \ge 0 \implies f(x_2) \ge f(x_1)
>   $$
>   Essendo $x_1 < x_2$ arbitrari, $f$ è una funzione crescente su $(a, b)$.
>
> - **Necessità ($\Rightarrow$):**
>   Sia $f$ crescente in $(a, b)$, e fissiamo un arbitrario punto $x_0 \in (a, b)$.
>   Per definizione di funzione crescente, per ogni $x \in (a, b)$ con $x \neq x_0$:
>   - Se $x > x_0 \implies f(x) \ge f(x_0)$, quindi numeratore e denominatore sono positivi;
>   - Se $x < x_0 \implies f(x) \le f(x_0)$, quindi sia numeratore che denominatore sono negativi.
>   In entrambi i casi, il rapporto incrementale soddisfa:
>   $$
>   \frac{f(x) - f(x_0)}{x - x_0} \ge 0, \quad \forall x \in (a, b) \setminus \{x_0\}
>   $$
>   Poiché per ipotesi $f$ è derivabile in $x_0$, esiste il limite per $x \to x_0$.
>   Applicando il teorema di permanenza del segno:
>   $$
>   f'(x_0) = \lim_{x \to x_0} \frac{f(x) - f(x_0)}{x - x_0} \ge 0
>   $$
>   Data l'arbitrarietà di $x_0 \in (a, b)$, si ha $f'(x) \ge 0$ per ogni $x \in (a, b)$. $\blacksquare$

> [!note] Criterio di stretta monotonia
> Dalla dimostrazione sopra, se la derivata prima è strettamente positiva:
> $$
> f'(x) > 0, \quad \forall x \in (a, b) \implies f \text{ è \textbf{STRETTAMENTE CRESCENTE} in } (a, b)
> $$
> Tuttavia, **NON vale l'implicazione opposta** ($\impliedby$): una funzione può essere strettamente crescente pur avendo punti isolati in cui la derivata prima si annulla.
> **Esempio:** $f(x) = x^3$ è strettamente crescente su tutto $\mathbb{R}$, ma $f'(0) = 0$.
>
**2. Caratterizzazione delle funzioni costanti su intervalli**

> [!proposition] Teorema sulle funzioni a derivata nulla
> Sia $f: (a, b) \to \mathbb{R}$ una funzione derivabile sull'intervallo $(a, b)$.
> $$
> f \text{ è COSTANTE su } (a, b) \iff f'(x) = 0, \quad \forall x \in (a, b)
> $$

> [!quote]- Dimostrazione
> - $(\Rightarrow)$ È ovvio: se $f(x) = C$ per ogni $x \in (a, b)$, con $C \in \mathbb{R}$, il rapporto incrementale è identicamente nullo e dunque $f'(x) = 0$.
> - $(\Leftarrow)$ Assumiamo che $f'(x) = 0$ per ogni $x \in (a, b)$.
>   Siano $x_1, x_2 \in (a, b)$ due punti qualunque con $x_1 < x_2$.
>   Applicando il Teorema di Lagrange sull'intervallo $[x_1, x_2]$:
>   $$
>   \exists c \in (x_1, x_2) : \frac{f(x_2) - f(x_1)}{x_2 - x_1} = f'(c) = 0
>   $$
>   Moltiplicando per $(x_2 - x_1)$:
>   $$
>   f(x_2) - f(x_1) = 0 \implies f(x_2) = f(x_1), \quad \forall x_1 < x_2
>   $$
>   Poiché assume lo stesso valore per ogni coppia di punti, la funzione è costante su $(a, b)$. $\blacksquare$
>
**3. Proprietà e struttura dell'insieme delle primitive**

> [!corollary] Corollario: Funzioni con derivate coincidenti differiscono per una costante
> Siano $f, g: (a, b) \to \mathbb{R}$ due funzioni derivabili sull'intervallo $(a, b)$ tali che:
> $$
> f'(x) = g'(x), \quad \forall x \in (a, b)
> $$
> Allora esiste una costante $k \in \mathbb{R}$ tale che:
> $$
> f(x) = g(x) + k, \quad \forall x \in (a, b)
> $$

> [!quote]- Dimostrazione
> Definiamo la funzione ausiliaria $h(x) := f(x) - g(x)$.
> Poiché $f$ e $g$ sono derivabili, $h$ è derivabile in $(a, b)$ e:
> $$
> h'(x) = f'(x) - g'(x) = 0, \quad \forall x \in (a, b)
> $$
> Per il teorema precedente sulle funzioni a derivata nulla, $h$ è una funzione costante sull'intervallo $(a, b)$:
> $$
> h(x) = k \implies f(x) - g(x) = k \implies f(x) = g(x) + k \quad \blacksquare
> $$

> [!definition] Definizione: Primitiva di una funzione
> Siano $f, F: (a, b) \to \mathbb{R}$, con $F$ derivabile in $(a, b)$.
> Si dice che $F$ è una **PRIMITIVA** di $f$ sull'intervallo $(a, b)$ se:
> $$
> F'(x) = f(x), \quad \forall x \in (a, b)
> $$
> *(Si sottolinea che non è scontato a priori che una tale funzione $F$ esista senza opportune ipotesi di regolarità su $f$, ad esempio la continuità).*

> [!proposition] Insieme di tutte le primitive
> Siano $f, F, G: (a, b) \to \mathbb{R}$ tali che $F$ e $G$ sono entrambe primitive di $f$ sullo stesso intervallo $(a, b)$.
> Allora $F$ e $G$ differiscono per una costante additiva:
> $$
> \exists k \in \mathbb{R} : F(x) = G(x) + k, \quad \forall x \in (a, b)
> $$

> [!warning] Osservazione cruciale: L'ipotesi di INTERVALLO (Insieme Connesso)
> Nei risultati enunciati (test di monotonia, caratterizzazione delle costanti e unicità a meno di costante delle primitive) è **ASSOLUTAMENTE ESSENZIALE** che il dominio della funzione sia un **INTERVALLO** (insieme connesso di $\mathbb{R}$).
> Se il dominio è formato dall'unione disgiunta di due o più intervalli, i teoremi falliscono globalmente!
> 
> **Controesempio 1 (Funzione costante a tratti):**
> Sia $f$ definita sul dominio disconnesso $D = (-\infty, 1) \cup (3, +\infty)$:
> $$
> f(x) = \begin{cases} 0, & \text{se } x < 1 \\ 1, & \text{se } x > 3 \end{cases}
> $$
> La derivata si annulla identicamente su tutto il dominio:
> $$
> f'(x) = 0, \quad \forall x \in D
> $$
> Ciononostante, $f$ **NON è costante** su $D$, assumendo due valori distinti sui due rami!
> 
> **Controesempio 2 (Monotonia a tratti):**
> Sia $f: \mathbb{R} \setminus \{0\} \to \mathbb{R}$ definita da:
> $$
> f(x) = -\frac{1}{x}
> $$
> Il dominio è $D = (-\infty, 0) \cup (0, +\infty)$. La derivata prima vale:
> $$
> f'(x) = \frac{1}{x^2} > 0, \quad \forall x \in \mathbb{R} \setminus \{0\}
> $$
> Sebbene la derivata sia ovunque strettamente positiva, $f$ **NON è globalmente crescente** sul suo dominio: ad esempio, $-1 < 1$, ma:
> $$
> f(-1) = 1 > -1 = f(1)
> $$
> La funzione è infatti crescente solo a tratti, separatamente nei due intervalli connessi $(-\infty, 0)$ e $(0, +\infty)$.
>
**4. Proprietà dei valori intermedi per le derivate (Teorema di Darboux)**

> [!theorem] Teorema di Darboux (Proprietà dei valori intermedi delle derivate)
> Sia $f: (a, b) \to \mathbb{R}$ una funzione derivabile sull'intervallo $(a, b)$.
> Siano $x_1, x_2 \in (a, b)$ due punti generici con $x_1 < x_2$.
> Allora la funzione derivata $f'$ assume **tutti i valori compresi** tra $f'(x_1)$ e $f'(x_2)$:
> $$
> \forall \lambda \in \left( \min\{f'(x_1), f'(x_2)\}, \; \max\{f'(x_1), f'(x_2)\} \right), \quad \exists c \in (x_1, x_2) : f'(c) = \lambda
> $$

> [!note] Osservazione: Derivate non continue
> Se la funzione derivata prima $f'$ fosse continua su $(a, b)$, la tesi discenderebbe immediatamente dal classico Teorema dei valori intermedi per funzioni continue.
> Tuttavia, **una funzione derivabile può avere derivata prima $f'$ NON CONTINUA**!
> Il Teorema di Darboux afferma che, anche in presenza di derivata discontinua, $f'$ non può avere "salti" (discontinuità di prima specie o eliminabili): l'immagine di un intervallo tramite $f'$ è sempre un intervallo.

> [!example] Esempio di funzione con derivata prima discontinua
> Consideriamo la funzione:
> $$
> f(x) = \begin{cases} x^2 \sin\left(\frac{1}{x}\right), & \text{se } x \neq 0 \\ 0, & \text{se } x = 0 \end{cases}
> $$
> Verifichiamo la derivabilità in ogni punto del dominio:
> 1. **Nell'origine ($x = 0$):**
>    Calcolando il limite del rapporto incrementale:
>    $$
>    f'(0) = \lim_{h \to 0} \frac{f(h) - f(0)}{h} = \lim_{h \to 0} \frac{h^2 \sin\left(\frac{1}{h}\right) - 0}{h} = \lim_{h \to 0} h \sin\left(\frac{1}{h}\right)
>    $$
>    Poiché la funzione seno è limitata, $| \sin(1/h) | \le 1$, il limite di un infinitesimo per una funzione limitata è zero:
>    $$
>    f'(0) = 0
>    $$
>    Dunque $f$ è derivabile in $x = 0$.
> 2. **Per $x \neq 0$:**
>    Applicando le regole di derivazione del prodotto e delle funzioni composte:
>    $$
>    \begin{align}
>    f'(x) &= \frac{d}{dx}\left(x^2\right) \sin\left(\frac{1}{x}\right) + x^2 \frac{d}{dx}\left(\sin\left(\frac{1}{x}\right)\right) \\
>    &= 2x \sin\left(\frac{1}{x}\right) + x^2 \cos\left(\frac{1}{x}\right) \cdot \left(-\frac{1}{x^2}\right) \\
>    &= 2x \sin\left(\frac{1}{x}\right) - \cos\left(\frac{1}{x}\right)
>    \end{align}
>    $$
> 
> La derivata prima $f'(x)$ è pertanto definita ovunque su $\mathbb{R}$:
> $$
> f'(x) = \begin{cases} 2x \sin\left(\frac{1}{x}\right) - \cos\left(\frac{1}{x}\right), & \text{se } x \neq 0 \\ 0, & \text{se } x = 0 \end{cases}
> $$
> *(Si noti che per $x \to 0$, il termine $2x \sin(1/x) \to 0$, mentre il termine $\cos(1/x)$ oscilla indefinitamente tra $-1$ e $1$. Dunque $\lim_{x \to 0} f'(x)$ NON esiste, e di conseguenza $f'$ è discontinua in $x = 0$, pur essendo $f$ derivabile su tutto $\mathbb{R}$).*
>
## 6.7. Conseguenze del Teorema di Lagrange e Teorema di Darboux

### Proprietà dei valori intermedi per le derivate (Teorema di Darboux)

Si riprende l'analisi della proprietà dei valori intermedi per la funzione derivata prima $f'$, introdotta al termine della sezione precedente.

> [!note] Discontinuità essenziale della derivata nel controesempio $f(x) = x^2 \sin(1/x)$
> Per la funzione
> $$
> f(x) = \begin{cases} x^2 \sin\left(\frac{1}{x}\right) & x \neq 0 \\ 0 & x = 0 \end{cases}
> $$
> la derivata per $x \neq 0$ vale:
> $$
> f'(x) = 2x \sin\left(\frac{1}{x}\right) - \cos\left(\frac{1}{x}\right)
> $$
> mentre in $x = 0$ si è verificato che $f'(0) = 0$. Poiché il termine $\cos(1/x)$ oscilla indefinitamente in $[-1, 1]$ al tendere di $x$ a $0$:
> $$
> \lim_{x \to 0} f'(x) \quad \text{non esiste} \implies f'(x) \text{ è discontinua in } x = 0
> $$
> Nonostante tale discontinuità di seconda specie, la funzione derivata $f'$ soddisfa comunque la proprietà dei valori intermedi su qualsiasi intervallo contenente l'origine.

> [!theorem] Teorema di Darboux (Proprietà dei valori intermedi per le derivate)
> Sia $f: (a, b) \to \mathbb{R}$ una funzione derivabile in $(a, b)$. Siano $x_1, x_2 \in (a, b)$. Allora la derivata prima $f'$ assume tutti i valori compresi tra $f'(x_1)$ e $f'(x_2)$.

> [!quote]- Dimostrazione
> Siano $x_1, x_2 \in (a, b)$ con $x_1 < x_2$ per fissare le idee, e supponiamo senza perdita di generalità che $f'(x_1) < f'(x_2)$ (il caso opposto si tratta in modo speculare).
>
> Sia $\lambda \in (f'(x_1), f'(x_2))$ un qualsiasi valore intermedio fissato:
> $$
> f'(x_1) < \lambda < f'(x_2)
> $$
> Si definisce la funzione ausiliaria $g: (a, b) \to \mathbb{R}$:
> $$
> g(x) := f(x) - \lambda x
> $$
> Essendo combinazione lineare di funzioni derivabili, $g$ è derivabile in $(a, b)$ con derivata:
> $$
> g'(x) = f'(x) - \lambda, \quad \forall x \in (a, b)
> $$
> Valutando $g'$ negli estremi $x_1$ e $x_2$:
> $$
> \begin{align}
> g'(x_1) &= f'(x_1) - \lambda < 0 \quad (\text{poiché } \lambda > f'(x_1)) \\
> g'(x_2) &= f'(x_2) - \lambda > 0 \quad (\text{poiché } \lambda < f'(x_2))
> \end{align}
> $$
> Dunque $g'(x)$ cambia di segno tra $x_1$ e $x_2$, il che implica che $g(x)$ non può essere monotona nell'intervallo chiuso e limitato $[x_1, x_2]$.
>
> Essendo $g$ continua su $[x_1, x_2]$, per il Teorema di Weierstrass essa ammette punto di minimo e punto di massimo assoluti in $[x_1, x_2]$. Poiché $g'(x_1) < 0$, la funzione è strettamente decrescente a destra di $x_1$, quindi $x_1$ non può essere punto di minimo; analogamente, poiché $g'(x_2) > 0$, la funzione è strettamente crescente a sinistra di $x_2$, quindi $x_2$ non può essere punto di minimo. Ne segue che il minimo assoluto (o il massimo) deve essere assunto in un punto interno, oppure esistono due punti $\alpha, \beta \in [x_1, x_2]$ con $\alpha < \beta$ tali che:
> $$
> g(\alpha) = g(\beta)
> $$
> Applicando il Teorema di Rolle alla funzione $g$ nell'intervallo $[\alpha, \beta]$ (essendo $g$ continua su $[\alpha, \beta]$, derivabile in $(\alpha, \beta)$ e tale che $g(\alpha) = g(\beta)$), si ottiene che esiste un punto $c \in (\alpha, \beta) \subset (x_1, x_2)$ tale che:
> $$
> g'(c) = 0 \implies f'(c) - \lambda = 0 \implies f'(c) = \lambda
> $$
> Dunque per ogni $\lambda \in (f'(x_1), f'(x_2))$ esiste $c \in (x_1, x_2)$ tale che $f'(c) = \lambda$. $\blacksquare$
>
### Calcolo delle derivate destra e sinistra tramite limite della derivata prima

Il seguente risultato fornisce uno strumento fondamentale per stabilire la derivabilità agli estremi di un intervallo (o in punti di raccordo) senza dover calcolare esplicitamente il limite del rapporto incrementale, riconducendosi al limite della derivata prima.

> [!theorem] Teorema del limite della derivata
> Sia $f: [a, b] \to \mathbb{R}$ continua su $[a, b]$ e derivabile in $(a, b)$. Si assuma che esista finito il limite destro della derivata prima:
> $$
> \lim_{x \to a^+} f'(x) = m \in \mathbb{R}
> $$
> Allora $f$ è derivabile da destra in $x = a$ e vale:
> $$
> f'_+(a) = m
> $$

> [!warning] Condizione solo sufficiente
> L'esistenza del limite $\lim_{x \to a^+} f'(x)$ è una condizione **solo sufficiente** per l'esistenza della derivata destra $f'_+(a)$. Se esiste $f'_+(a)$, non è detto che esista $\lim_{x \to a^+} f'(x)$.
> 
> Controesempio: per la funzione $f(x) = x^2 \sin(1/x)$ (estesa con $f(0) = 0$), si ha $f'_+(0) = f'(0) = 0$, ma $\lim_{x \to 0^+} f'(x)$ non esiste per le oscillazioni di $\cos(1/x)$.

> [!quote]- Dimostrazione
> Si considera il rapporto incrementale destro di $f$ in $a$ per un incremento $h > 0$:
> $$
> \frac{f(a+h) - f(a)}{h}
> $$
> Per ogni fissato $h \in (0, b - a)$, la funzione $f$ è continua nell'intervallo $[a, a+h]$ e derivabile in $(a, a+h)$. Si applica pertanto il Teorema di Lagrange sull'intervallo $[a, a+h]$: esiste un punto $c_h \in (a, a+h)$ tale che:
> $$
> \frac{f(a+h) - f(a)}{h} = f'(c_h)
> $$
> Poiché $a < c_h < a + h$, per il teorema del confronto si ha:
> $$
> \lim_{h \to 0^+} c_h = a
> $$
> Poiché per ipotesi $\lim_{x \to a^+} f'(x) = m$, per il teorema ponte sul limite di funzioni composte (o continuità per successioni), al tendere di $h \to 0^+$ si ha:
> $$
> \lim_{h \to 0^+} f'(c_h) = \lim_{x \to a^+} f'(x) = m
> $$
> Di conseguenza:
> $$
> \lim_{h \to 0^+} \frac{f(a+h) - f(a)}{h} = \lim_{h \to 0^+} f'(c_h) = m \implies f'_+(a) = m
> $$
> $\blacksquare$

> [!note] Estensione alle derivate sinistre
> In modo del tutto analogo e speculare, se $f$ è continua su $[a, b]$, derivabile in $(a, b)$ e ammette limite sinistro della derivata prima:
> $$
> \lim_{x \to b^-} f'(x) = \ell \in \mathbb{R}
> $$
> allora $f$ è derivabile da sinistra in $x = b$ con:
> $$
> f'_-(b) = \ell
> $$
> In particolare, per un punto interno $x_0 \in (a, b)$, se $f$ è continua in $x_0$, derivabile in un intorno bucato $I(x_0) \setminus \{x_0\}$ ed esistono coincidenti i limiti destro e sinistro di $f'(x)$ per $x \to x_0$, allora $f$ è derivabile in $x_0$ con $f'(x_0) = \lim_{x \to x_0} f'(x)$.
>
### Funzioni con derivata direttamente proporzionale alla funzione stessa

Si determina la totalità delle funzioni la cui velocità istantanea di variazione è in ogni punto direttamente proporzionale al valore assunto dalla funzione stessa.

> [!proposition] Caratterizzazione dell'equazione differenziale $f'(x) = K f(x)$
> Sia $f: (a, b) \to \mathbb{R}$ una funzione derivabile in $(a, b)$ tale che:
> $$
> \exists K \in \mathbb{R} : f'(x) = K f(x), \quad \forall x \in (a, b)
> $$
> Allora esiste una costante $C_0 \in \mathbb{R}$ tale che:
> $$
> f(x) = C_0 e^{Kx}, \quad \forall x \in (a, b)
> $$
> In particolare:
> - Se $f(x) > 0$ per ogni $x \in (a, b)$, allora $C_0 > 0$;
> - Se $f(x) < 0$ per ogni $x \in (a, b)$, allora $C_0 < 0$;
> - Se $f(x) = 0$ per ogni $x \in (a, b)$, allora $C_0 = 0$.

> [!quote]- Dimostrazione
> Si consideri dapprima il caso in cui $f(x) > 0$ per ogni $x \in (a, b)$. Dividendo ambo i membri della relazione per $f(x)$:
> $$
> \frac{f'(x)}{f(x)} = K
> $$
> Riconoscendo al primo membro la derivata logaritmica di $f(x)$:
> $$
> \frac{d}{dx} \big( \log[f(x)] \big) = \frac{d}{dx} (K x)
> $$
> Portando tutti i termini sotto un'unica derivata:
> $$
> \frac{d}{dx} \big( \log[f(x)] - K x \big) = 0, \quad \forall x \in (a, b)
> $$
> Essendo la derivata identicamente nulla sull'intervallo $(a, b)$, per il corollario del Teorema di Lagrange la funzione argomento è costante. Esiste quindi una costante $M \in \mathbb{R}$ tale che:
> $$
> \log[f(x)] - K x = M, \quad \forall x \in (a, b)
> $$
> Esplicitando il logaritmo:
> $$
> \log[f(x)] = M + K x \implies f(x) = e^{M + K x} = e^M \cdot e^{K x}
> $$
> Ponendo $C_0 := e^M > 0$, si ottiene l'espressione:
> $$
> f(x) = C_0 e^{K x}
> $$
> Qualora invece $f(x) < 0$, si applica il medesimo ragionamento alla funzione strettamente positiva $-f(x)$, ottenendo $-f(x) = e^M e^{K x} \implies f(x) = -e^M e^{K x} = C_0 e^{K x}$ con $C_0 := -e^M < 0$.
>
> Nel caso banale in cui $f(x) = 0$ identicamente, essa soddisfa $f'(x) = 0 = K \cdot 0$, corrispondente alla scelta $C_0 = 0$. $\blacksquare$

> [!note] Invarianza del segno
> Dalla forma chiusa $f(x) = C_0 e^{Kx}$, essendo l'esponenziale strettamente positivo su tutto $\mathbb{R}$, si evince immediatamente che se $f'(x) \propto f(x)$ su un intervallo $(a, b)$, allora $f$ **non cambia mai segno** in $(a, b)$: o è ovunque strettamente positiva, o è ovunque strettamente negativa, o è identicamente nulla.
>
## 6.8. Teorema di De L'Hôpital

Il Teorema di De L'Hôpital fornisce un potente metodo analitico basato sul Teorema di Cauchy per la risoluzione delle forme indeterminate del tipo $\left[\frac{0}{0}\right]$ e $\left[\frac{\pm\infty}{\pm\infty}\right]$.

### Enunciato del Teorema

> [!theorem] Teorema di De L'Hôpital
> Siano $f, g: (a, b) \to \mathbb{R}$ due funzioni con $-\infty \le a < b \le +\infty$.
> Si assuma che:
> 1. $f$ e $g$ siano derivabili in $(a, b)$;
> 2. Si verifichi una delle due condizioni asintotiche per $x \to a^+$:
>    $$
>    \lim_{x \to a^+} f(x) = \lim_{x \to a^+} g(x) = 0 \quad \text{oppure} \quad \lim_{x \to a^+} |g(x)| = +\infty
>    $$
> 3. Esista (finito o infinito) il limite del rapporto delle derivate:
>    $$
>    \lim_{x \to a^+} \frac{f'(x)}{g'(x)} = \ell \in \mathbb{R} \cup \{-\infty, +\infty\}
>    $$
>    (il che implica in particolare che $g'(x) \neq 0$ definitivamente per $x \to a^+$).
> 
> Allora $g(x) \neq 0$ definitivamente per $x \to a^+$, esiste il limite del rapporto delle funzioni e coincide con $\ell$:
> $$
> \lim_{x \to a^+} \frac{f(x)}{g(x)} = \lim_{x \to a^+} \frac{f'(x)}{g'(x)} = \ell
> $$

> [!note] Estensioni dell'enunciato
> Un risultato del tutto analogo sussiste:
> - Per il limite sinistro per $x \to b^-$;
> - Per limiti all'infinito: se $a = -\infty$, il limite per $x \to a^+$ rappresenta $\lim_{x \to -\infty}$; se $b = +\infty$, il limite per $x \to b^-$ rappresenta $\lim_{x \to +\infty}$;
> - Per limiti bilateri $x \to x_0 \in (a, b)$, applicando il teorema separatamente a destra e a sinistra.
>
### Condizione sufficiente e controesempio

> [!warning] La condizione di De L'Hôpital è solo SUFFICIENTE
> Il Teorema di De L'Hôpital garantisce che **se** esiste $\lim \frac{f'(x)}{g'(x)}$, allora esiste anche $\lim \frac{f(x)}{g(x)}$ ed è uguale. Tuttavia, la non esistenza di $\lim \frac{f'(x)}{g'(x)}$ **non** implica in alcun modo che il limite originario $\lim \frac{f(x)}{g(x)}$ non esista.
> 
> **Controesempio classico:**
> Si considerino le funzioni $f, g: \mathbb{R} \to \mathbb{R}$:
> $$
> f(x) = 2x + \sin x, \quad g(x) = 2x - \sin x
> $$
> 1. $f$ e $g$ sono derivabili su tutto $\mathbb{R}$;
> 2. Per $x \to +\infty$:
>    $$
>    \lim_{x \to +\infty} f(x) = +\infty, \quad \lim_{x \to +\infty} g(x) = +\infty \quad \left[\frac{+\infty}{+\infty}\right]
>    $$
> 3. Si valuta il limite del rapporto delle derivate:
>    $$
>    \frac{f'(x)}{g'(x)} = \frac{2 + \cos x}{2 - \cos x}
>    $$
>    Poiché $\cos x$ oscilla indefinitamente tra $-1$ e $1$ al tendere di $x \to +\infty$, la frazione oscilla continuamente tra $\frac{2 - 1}{2 + 1} = \frac{1}{3}$ e $\frac{2 + 1}{2 - 1} = 3$. Di conseguenza:
>    $$
>    \lim_{x \to +\infty} \frac{f'(x)}{g'(x)} \quad \text{NON ESISTE}
>    $$
>    Nonostante ciò, il limite del rapporto delle funzioni esiste finito ed è calcolabile raccogliendo $x$:
>    $$
>    \lim_{x \to +\infty} \frac{f(x)}{g(x)} = \lim_{x \to +\infty} \frac{2x + \sin x}{2x - \sin x} = \lim_{x \to +\infty} \frac{2 + \frac{\sin x}{x}}{2 - \frac{\sin x}{x}} = \frac{2 + 0}{2 - 0} = 1
>    $$
>    Questo dimostra chiaramente che il teorema non può essere applicato al contrario.
>
### Applicazioni: Gerarchia degli infiniti e limiti notevoli

> [!example] Esempio 1: Confronto tra potenza ed esponenziale
> Si dimostra che l'esponenziale con base strettamente maggiore di $1$ domina ogni potenza reale:
> $$
> \lim_{x \to +\infty} \frac{x^b}{a^x} = 0, \quad \forall a > 1, \; \forall b > 0
> $$
> Si consideri prima il caso base con $b = 1$:
> $$
> \lim_{x \to +\infty} \frac{x}{a^x} \quad \left[\frac{+\infty}{+\infty}\right]
> $$
> Le funzioni $f(x) = x$ e $g(x) = a^x$ sono derivabili, divergono a $+\infty$ e il rapporto delle derivate vale:
> $$
> \lim_{x \to +\infty} \frac{f'(x)}{g'(x)} = \lim_{x \to +\infty} \frac{1}{a^x \log a} = 0^+ \quad (\text{essendo } a > 1 \implies \log a > 0)
> $$
> Per il Teorema di De L'Hôpital:
> $$
> \lim_{x \to +\infty} \frac{x}{a^x} = 0
> $$
> Per estendere al caso generale di qualsiasi potenza $b > 0$, si riscrive il rapporto manipolando gli esponenti:
> $$
> \frac{x^b}{a^x} = \left( \frac{x}{a^{x/b}} \right)^b = \left[ \frac{x}{(a^{1/b})^x} \right]^b = \left( \frac{x}{C^x} \right)^b
> $$
> dove si è posto $C := a^{1/b} > 1$ (poiché $a > 1$ e $b > 0$). Poiché la base $x / C^x \to 0$ per $x \to +\infty$ (per il caso $b = 1$ appena dimostrato), per la continuità della funzione potenza si conclude:
> $$
> \lim_{x \to +\infty} \frac{x^b}{a^x} = \lim_{x \to +\infty} \left( \frac{x}{C^x} \right)^b \stackrel{\text{dH}}{=} 0^b = 0
> $$

> [!example] Esempio 2: Confronto tra logaritmo e potenza
> Si consideri il limite fondamentale:
> $$
> \lim_{x \to +\infty} \frac{\log x}{x^b} = 0, \quad \forall b > 0
> $$
> Ponendo $f(x) = \log x$ e $g(x) = x^b$:
> 1. $f, g$ sono derivabili per $x > 0$;
> 2. $\lim_{x \to +\infty} f(x) = +\infty$ e $\lim_{x \to +\infty} g(x) = +\infty$;
> 3. Il rapporto delle derivate è:
>    $$
>    \lim_{x \to +\infty} \frac{f'(x)}{g'(x)} = \lim_{x \to +\infty} \frac{\frac{1}{x}}{b x^{b-1}} = \lim_{x \to +\infty} \frac{1}{b x^b} = 0
>    $$
> Per il Teorema di De L'Hôpital:
> $$
> \lim_{x \to +\infty} \frac{\log x}{x^b} = 0
> $$
> Analogamente, combinando le proprietà delle potenze e dei cambi di base, per qualsiasi esponente $c > 0$ e base $a > 1$:
> $$
> \lim_{x \to +\infty} \frac{\log_a^c x}{x^b} = 0, \quad \forall a > 1, \; \forall b, c > 0
> $$
>
**Dimostrazione del Teorema di De L'Hôpital**
>
> Si riporta la dimostrazione rigorosa per la forma indeterminata $\left[\frac{0}{0}\right]$ in un punto finito $a \in \mathbb{R}$.
>
[!quote]- Dimostrazione
> Si considera il caso in cui $a \in \mathbb{R}$ e $\lim_{x \to a^+} f(x) = \lim_{x \to a^+} g(x) = 0$.
>
> **Caso 1: Limite del rapporto delle derivate finito ($\ell \in \mathbb{R}$)**
>
> Per ipotesi:
> $$
> \lim_{t \to a^+} \frac{f'(t)}{g'(t)} = \ell \in \mathbb{R}
> $$
> Per definizione metrica di limite, per ogni $\varepsilon > 0$ fissato esiste un punto $t_0 > a$ tale che:
> $$
> \ell - \varepsilon \le \frac{f'(t)}{g'(t)} \le \ell + \varepsilon, \quad \forall t \in (a, t_0) \qquad (\star)
> $$
> (In particolare, per $\varepsilon$ sufficientemente piccolo, $g'(t) \neq 0$ per ogni $t \in (a, t_0)$).
>
> Siano ora fissati $x, y$ tali che:
> $$
> a < y < x < t_0
> $$
> Le funzioni $f$ e $g$ sono continue in $[y, x]$ e derivabili in $(y, x)$. Inoltre $g'(t) \neq 0$ su $[y, x]$, quindi per il Teorema di Rolle $g(x) - g(y) \neq 0$. Si applica il Teorema di Cauchy sull'intervallo $[y, x]$: esiste un punto $c \in (y, x)$ tale che:
> $$
> \frac{f(x) - f(y)}{g(x) - g(y)} = \frac{f'(c)}{g'(c)}
> $$
> Poiché $a < y < c < x < t_0$, si ha che $c \in (a, t_0)$, e quindi la disuguaglianza $(\star)$ è soddisfatta in $t = c$:
> $$
> \ell - \varepsilon \le \frac{f'(c)}{g'(c)} = \frac{f(x) - f(y)}{g(x) - g(y)} \le \ell + \varepsilon
> $$
> Pertanto, per ogni coppia di punti $x, y$ con $a < y < x < t_0$, vale:
> $$
> \ell - \varepsilon \le \frac{f(x) - f(y)}{g(x) - g(y)} \le \ell + \varepsilon \qquad (\bullet)
> $$
> Si fissa ora $x \in (a, t_0)$ e si passa al limite per $y \to a^+$. Ricordando che per ipotesi:
> $$
> \lim_{y \to a^+} f(y) = 0 \quad \text{e} \quad \lim_{y \to a^+} g(y) = 0
> $$
> per l'algebra dei limiti si ottiene:
> $$
> \lim_{y \to a^+} \frac{f(x) - f(y)}{g(x) - g(y)} = \frac{f(x) - 0}{g(x) - 0} = \frac{f(x)}{g(x)}
> $$
> Passando al limite nella doppia disuguaglianza $(\bullet)$ per $y \to a^+$, per il teorema di permanenza del segno/passaggio al limite nelle disuguaglianze:
> $$
> \ell - \varepsilon \le \frac{f(x)}{g(x)} \le \ell + \varepsilon, \quad \forall x \in (a, t_0)
> $$
> Essendo questa relazione valida per ogni $\varepsilon > 0$, essa coincide esattamente con la definizione metrica di limite per $x \to a^+$:
> $$
> \lim_{x \to a^+} \frac{f(x)}{g(x)} = \ell
> $$
>
> **Caso 2: Limite del rapporto delle derivate infinito ($\ell = +\infty$)**
>
> Nel caso in cui $\lim_{t \to a^+} \frac{f'(t)}{g'(t)} = +\infty$, per definizione di divergenza:
> $$
> \forall M > 0, \; \exists t_0 > a : \frac{f'(t)}{g'(t)} \ge M, \quad \forall t \in (a, t_0)
> $$
> Scegliendo nuovamente $a < y < x < t_0$, applicando il Teorema di Cauchy in $[y, x]$ esiste $c \in (y, x) \subset (a, t_0)$ tale che:
> $$
> \frac{f(x) - f(y)}{g(x) - g(y)} = \frac{f'(c)}{g'(c)} \ge M
> $$
> Passando al limite per $y \to a^+$ (sfruttando $\lim_{y \to a^+} f(y) = \lim_{y \to a^+} g(y) = 0$):
> $$
> \frac{f(x)}{g(x)} \ge M, \quad \forall x \in (a, t_0)
> $$
> Per l'arbitrarietà di $M > 0$, ciò equivale per definizione a:
> $$
> \lim_{x \to a^+} \frac{f(x)}{g(x)} = +\infty
> $$
> (Il caso $\ell = -\infty$ segue per simmetria considerando $-f$). $\blacksquare$
>
## 6.9. Formula di Taylor con resti di Peano e Lagrange

### Derivate successive e contatto di ordine superiore

> [!definition] Derivate successive
> Sia $f: (a, b) \to \mathbb{R}$. Se $f$ è derivabile in $(a, b)$, la sua derivata prima $f'$ è una nuova funzione definita su $(a, b)$. Se $f'$ è a sua volta derivabile in un punto $x_0 \in (a, b)$, la sua derivata si dice **derivata seconda** di $f$ in $x_0$ e si denota con $f''(x_0)$ o $\frac{d^2 f}{dx^2}(x_0)$.
> 
> Ricorsivamente, per $n \in \mathbb{N}$, la **derivata $n$-esima** di $f$ in $x_0$ è la derivata prima della derivata $(n-1)$-esima (purché definita ed esistente in un intorno di $x_0$):
> $$
> f^{(n)}(x_0) := \frac{d}{dx} \left[ f^{(n-1)} \right](x_0)
> $$
> Le derivate successive si indicano con:
> $$
> f', \quad f'', \quad f''', \quad f^{(4)}, \quad f^{(5)}, \quad \dots, \quad f^{(n)}
> $$
> Con la convenzione per $n = 0$: $f^{(0)} = f$.
>
Riflettiamo sul concetto geometrico ed analitico di **differenziabilità** di una funzione $f$ in un punto $x_0$:
$$
f(x) = \underbrace{f(x_0) + f'(x_0)(x - x_0)}_{g(x) \text{ (retta tangente al grafico di } f \text{ in } (x_0, f(x_0)))} + o(x - x_0) \quad \text{per } x \to x_0
$$
La funzione lineare affine $g(x) = f(x_0) + f'(x_0)(x - x_0)$ soddisfa le seguenti proprietà:
1. $g(x) \in \mathbb{R}[t]_{\le 1}$, ovvero $g$ è un polinomio a coefficienti reali di grado non superiore a $1$;
2. $f(x_0) = g(x_0)$: il polinomio coincide con la funzione in $x_0$ (la retta passa per il punto di tangenza);
3. $f'(x_0) = g'(x_0)$: la pendenza della retta coincide con la velocità di variazione istantanea della funzione.

Fissata la funzione $f$, la retta tangente $g(x)$ è **l'unica retta** (polinomio di grado $\le 1$) che possiede queste caratteristiche. Si dice che $f$ e $g$ hanno un **punto di contatto di ordine 1** in $x_0$.

### Definizione di punto di contatto di ordine $n$

Generalizzando la nozione di contatto al di là delle rette, si desidera approssimare $f$ con curve polinomiali di grado superiore che condividano non solo la posizione e la pendenza, ma anche la curvatura (derivata seconda) e le variazioni di ordine superiore.

> [!definition] Punto di contatto di ordine $n$
> Siano $n \in \mathbb{N}$ e siano $f, g: (a, b) \to \mathbb{R}$ due funzioni derivabili $n$ volte in un punto $x_0 \in (a, b)$. Si dice che $f$ e $g$ hanno un **punto di contatto di ordine $n$** in $x_0$ se:
> $$
> f^{(i)}(x_0) = g^{(i)}(x_0), \quad \forall i = 0, 1, \dots, n
> $$
> dove per convenzione $f^{(0)} = f$ e $g^{(0)} = g$.
>
**Problema fondamentale:** data una funzione $f: (a, b) \to \mathbb{R}$ derivabile $n$ volte in $x_0 \in (a, b)$, esiste un polinomio $P_n$ di grado minore o uguale a $n$ tale che $f$ e $P_n$ abbiano un punto di contatto di ordine $n$ in $x_0$?

La risposta è affermativa: tale polinomio esiste, è unico ed è fornito dalla **formula di Taylor**. Al crescere dell'ordine $n$, la parabola osculatrice $P_2$, il polinomio cubico $P_3$, ecc., aderiscono con precisione sempre maggiore al grafico di $f$ in un intorno $I(x_0)$.

### Teorema di esistenza e unicità del Polinomio di Taylor

> [!theorem] Esistenza e unicità del Polinomio di Taylor
> Sia $n \in \mathbb{N}$ e sia $f: (a, b) \to \mathbb{R}$ derivabile $n$ volte in $x_0 \in (a, b)$.
> Allora esiste ed è unico un polinomio $P_n \in \mathbb{R}[t]_{\le n}$ tale che $f$ e $P_n$ hanno in $x_0$ un punto di contatto di ordine $n$.
> Tale polinomio è dato esplicitamente da:
> $$
> P_n(x) = \sum_{k=0}^n \frac{f^{(k)}(x_0)}{k!} (x - x_0)^k
> $$

> [!note] Convenzioni di calcolo
> Per il termine di indice $k = 0$:
> $$
> f^{(0)}(x_0) = f(x_0), \quad 0! = 1, \quad (x - x_0)^0 = 1 \quad (\forall x, \text{ anche per } x = x_0)
> $$
> Il polinomio di Taylor esplicitato per esteso assume la forma:
> $$
> P_n(x) = f(x_0) + f'(x_0)(x - x_0) + \frac{f''(x_0)}{2!} (x - x_0)^2 + \dots + \frac{f^{(n)}(x_0)}{n!} (x - x_0)^n
> $$

> [!definition] Polinomio di Taylor e Polinomio di Maclaurin
> Il polinomio $P_n(x)$ sopra definito si chiama **Polinomio di Taylor di ordine $n$ per $f$ centrato in $x_0$**.
> Nel caso notevole in cui il centro coincida con l'origine ($x_0 = 0$), il polinomio prende il nome specifico di **Polinomio di Maclaurin**:
> $$
> P_n(x) = \sum_{k=0}^n \frac{f^{(k)}(0)}{k!} x^k = f(0) + f'(0) x + \frac{f''(0)}{2!} x^2 + \dots + \frac{f^{(n)}(0)}{n!} x^n
> $$

> [!example] Esempio: Sviluppo della funzione esponenziale $f(x) = e^x$
> Poiché la funzione esponenziale coincide con tutte le sue derivate successive:
> $$
> f^{(k)}(x) = e^x, \quad \forall k \in \mathbb{N}, \; \forall x \in \mathbb{R}
> $$
> - Se si sceglie il centro nell'origine ($x_0 = 0$), si ha $f^{(k)}(0) = e^0 = 1$ per ogni $k$. Il polinomio di Maclaurin di ordine $n$ è:
>   $$
>   P_n(x) = \sum_{k=0}^n \frac{1}{k!} x^k = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \dots + \frac{x^n}{n!}
>   $$
> - Se si sceglie un generico centro $x_0 \neq 0$, si può utilizzare la proprietà fondamentale dell'esponenziale $e^x = e^{x_0 + (x - x_0)} = e^{x_0} e^{x - x_0}$. Ponendo $t = x - x_0 \to 0$ per $x \to x_0$, per sostituzione:
>   $$
>   P_n(x) = e^{x_0} \sum_{k=0}^n \frac{(x - x_0)^k}{k!}
>   $$
>   che coincide esattamente con la formula generale applicata per $f^{(k)}(x_0) = e^{x_0}$:
>   $$
>   P_n(x) = \sum_{k=0}^n \frac{f^{(k)}(x_0)}{k!} (x - x_0)^k = e^{x_0} \sum_{k=0}^n \frac{(x - x_0)^k}{k!}
>   $$
> Molto spesso, con un semplice cambio di variabile lineare, gli sviluppi centrati in $x_0$ si riconducono immediatamente agli sviluppi notevoli di Maclaurin centrati in $0$.
>
> **Dimostrazione parziale (Verifica delle derivate del polinomio $P_n$)**
> Verifichiamo analiticamente che il polinomio $P_n(x) = \sum_{k=0}^n \frac{f^{(k)}(x_0)}{k!} (x - x_0)^k$ possiede effettivamente le derivate richieste in $x_0$.
>
> Per $x = x_0$, tutti i termini con esponente $k \ge 1$ si annullano:
> $$
> P_n(x_0) = \frac{f^{(0)}(x_0)}{0!} (x_0 - x_0)^0 = f(x_0)
> $$
> Derivando termine a termine $P_n(x)$ rispetto a $x$:
> $$
> \begin{align}
> P_n'(x) &= \frac{d}{dx} \left[ \sum_{k=0}^n \frac{f^{(k)}(x_0)}{k!} (x - x_0)^k \right] \\
> &= \sum_{k=1}^n \frac{f^{(k)}(x_0)}{k!} \cdot k (x - x_0)^{k-1} \\
> &= \sum_{k=1}^n \frac{f^{(k)}(x_0)}{(k-1)!} (x - x_0)^{k-1}
> \end{align}
> $$
> Effettuando il cambio di indice di sommatoria $h := k - 1$ (cosicché quando $k = 1 \implies h = 0$, e quando $k = n \implies h = n - 1$):
> $$
> P_n'(x) = \sum_{h=0}^{n-1} \frac{f^{(h+1)}(x_0)}{h!} (x - x_0)^h
> $$
> Valutando in $x = x_0$, l'unico termine non nullo è quello per $h = 0$:
> $$
> P_n'(x_0) = \frac{f'(x_0)}{0!} (x_0 - x_0)^0 = f'(x_0)
> $$
> Derivando una seconda volta:
> $$
> P_n''(x) = \sum_{h=1}^{n-1} \frac{f^{(h+1)}(x_0)}{(h-1)!} (x - x_0)^{h-1} \stackrel{j := h-1}{=} \sum_{j=0}^{n-2} \frac{f^{(j+2)}(x_0)}{j!} (x - x_0)^j
> $$
> Valutando in $x = x_0$:
> $$
> P_n''(x_0) = f''(x_0)
> $$
> Iterando il procedimento per induzione, per ogni ordine derivativo $i \in \{0, 1, \dots, n\}$:
> $$
> P_n^{(i)}(x_0) = f^{(i)}(x_0)
> $$
> L'unicità di tale polinomio discende dal fatto che un polinomio di grado $\le n$ che si annulla in $x_0$ con tutte le sue derivate fino all'ordine $n$ è identicamente nullo.
>
>
### Lemma sulla derivata del Polinomio di Taylor

Il seguente lemma stabilisce una notevole proprietà di commutazione tra l'operazione di derivazione e la costruzione del polinomio di Taylor.

> [!lemma] Derivata del Polinomio di Taylor
> Sia $f: (a, b) \to \mathbb{R}$ derivabile $n$ volte in $x_0 \in (a, b)$. Sia $P_n(f)$ il suo polinomio di Taylor di ordine $n$ centrato in $x_0$.
> Sia inoltre $P_{n-1}(f')$ il polinomio di Taylor di ordine $n-1$ centrato in $x_0$ associato alla funzione derivata $f'$ (la quale è derivabile $n-1$ volte in $x_0$).
> Allora vale l'identità polinomiale:
> $$
> \big[ P_n(f) \big]'(x) = P_{n-1}(f')(x)
> $$

> [!quote]- Dimostrazione
> Dal calcolo esplicito della derivata prima di $P_n(f, x)$ effettuato nella sezione precedente:
> $$
> \big[ P_n(f) \big]'(x) = \sum_{h=0}^{n-1} \frac{f^{(h+1)}(x_0)}{h!} (x - x_0)^h
> $$
> D'altra parte, per definizione di polinomio di Taylor di ordine $n-1$ applicato alla funzione $f'$:
> $$
> P_{n-1}(f', x) = \sum_{h=0}^{n-1} \frac{(f')^{(h)}(x_0)}{h!} (x - x_0)^h
> $$
> Poiché $(f')^{(h)}(x_0) = f^{(h+1)}(x_0)$, i due polinomi hanno identici coefficienti per ogni potenza di $(x - x_0)$, da cui la tesi:
> $$
> \big[ P_n(f) \big]'(x) = P_{n-1}(f')(x)
> $$
> $\blacksquare$
>
### Teorema della Formula di Taylor (Resto di Peano e Resto di Lagrange)

> [!theorem] Teorema della Formula di Taylor
> Sia $f: (a, b) \to \mathbb{R}$ una funzione e sia $x_0 \in (a, b)$.
> 
> **1. Formula di Taylor con resto di Peano (Carattere locale):**
> Se $f$ è derivabile $n$ volte nel punto $x_0 \in (a, b)$ con $n \in \mathbb{N}$ fissato, allora per $x \to x_0$:
> $$
> f(x) = P_n(x) + o\big((x - x_0)^n\big)
> $$
> ovvero l'errore commesso nell'approssimare $f(x)$ con $P_n(x)$ è un infinitesimo di ordine superiore rispetto a $(x - x_0)^n$:
> $$
> \lim_{x \to x_0} \frac{f(x) - P_n(x)}{(x - x_0)^n} = 0
> $$
> 
> **2. Formula di Taylor con resto di Lagrange (Carattere quantitativo/globale):**
> Se $f$ è derivabile $n+1$ volte in **tutto** l'intervallo $(a, b)$, allora per ogni $x \in (a, b)$ esiste un punto $c$ strettamente compreso tra $x$ e $x_0$ (dipendente da $x$) tale che:
> $$
> f(x) = P_n(x) + \frac{f^{(n+1)}(c)}{(n+1)!} (x - x_0)^{n+1}
> $$

> [!note] Resto di Peano vs Resto di Lagrange
> - Il **resto di Peano** $o((x - x_0)^n)$ ha natura puramente qualitativa e asintotica: richiede ipotesi minime (derivabilità solo nel punto $x_0$) ed è lo strumento principale per il **calcolo dei limiti** che presentano cancellazioni di ordini elevati.
> - Il **resto di Lagrange** fornisce un'espressione esatta dell'errore tramite la derivata $(n+1)$-esima calcolata in un punto intermedio $c$. Risulta fondamentale per le **stime numeriche** e il controllo quantitativo dell'errore di approssimazione.
>
**Dimostrazione della Formula di Taylor con resto di Peano**

> [!quote]- Dimostrazione
> Per definizione di simbolo di Landau $o$, dimostrare che $f(x) = P_n(x) + o((x - x_0)^n)$ equivale a provare che:
> $$
> \lim_{x \to x_0} \frac{f(x) - P_n(x)}{(x - x_0)^n} = 0 \qquad (\star)
> $$
> per ogni funzione $f$ soddisfacente le ipotesi.
>
> Si procede per induzione matematica su $n \in \mathbb{N}_{\ge 1}$.
>
> **Base dell'induzione ($n = 1$)**
> Per $n = 1$, il polinomio di Taylor di primo grado è:
> $$
> P_1(x) = f(x_0) + f'(x_0)(x - x_0)
> $$
> Il limite $(\star)$ diventa:
> $$
> \lim_{x \to x_0} \frac{f(x) - P_1(x)}{x - x_0} = \lim_{x \to x_0} \frac{f(x) - [f(x_0) + f'(x_0)(x - x_0)]}{x - x_0} = 0
> $$
> Questa relazione è identicamente vera poiché coincide con la definizione di differenziabilità di $f$ in $x_0$, garantita dall'ipotesi di esistenza di $f'(x_0)$. La base dell'induzione è dunque verificata.
>
> **Passo induttivo ($n - 1 \implies n$)**
> Si assume vera l'ipotesi induttiva all'ordine $n - 1$: per ogni funzione $g$ derivabile $n-1$ volte in $x_0$, vale:
> $$
> g(x) - P_{n-1}(g)(x) = o\big((x - x_0)^{n-1}\big) \quad \text{per } x \to x_0
> $$
> Sia ora $f$ derivabile $n$ volte in $x_0$. Allora la funzione derivata $f'$ è derivabile $n-1$ volte in $x_0$. Applicando l'ipotesi induttiva a $f'$:
> $$
> f'(x) - P_{n-1}(f')(x) = o\big((x - x_0)^{n-1}\big) \quad \text{per } x \to x_0
> $$
> Per il Lemma sulla derivata del polinomio di Taylor ([§ 5.8.4](#584-lemma-sulla-derivata-del-polinomio-di-taylor)), si ha $P_{n-1}(f')(x) = \big[ P_n(f) \big]'(x)$. Sostituendo:
> $$
> f'(x) - \big[ P_n(f) \big]'(x) = o\big((x - x_0)^{n-1}\big)
> $$
> il che per definizione significa:
> $$
> \lim_{x \to x_0} \frac{f'(x) - \big[ P_n(f) \big]'(x)}{(x - x_0)^{n-1}} = 0
> $$
> Si consideri ora il limite del rapporto originario all'ordine $n$:
> $$
> \lim_{x \to x_0} \frac{f(x) - P_n(x)}{(x - x_0)^n}
> $$
> Verifichiamo le ipotesi del Teorema di De L'Hôpital:
> 1. Le funzioni al numeratore $f(x) - P_n(x)$ e al denominatore $(x - x_0)^n$ sono derivabili in un intorno di $x_0$;
> 2. Per $x \to x_0$, $f(x) \to f(x_0)$ e $P_n(x) \to P_n(x_0) = f(x_0)$, quindi il numeratore tende a $0$; il denominatore $(x - x_0)^n \to 0$. Si tratta dunque di una forma indeterminata del tipo $\left[ \frac{0}{0} \right]$;
> 3. Si valuta il limite del rapporto delle derivate prime:
>    $$
>    \lim_{x \to x_0} \frac{\frac{d}{dx}\big[ f(x) - P_n(x) \big]}{\frac{d}{dx}\big[ (x - x_0)^n \big]} = \lim_{x \to x_0} \frac{f'(x) - \big[ P_n(f) \big]'(x)}{n (x - x_0)^{n-1}} = \frac{1}{n} \lim_{x \to x_0} \frac{f'(x) - \big[ P_n(f) \big]'(x)}{(x - x_0)^{n-1}}
>    $$
>    Per l'ipotesi induttiva unita al lemma, tale limite esiste ed è pari a:
>    $$
>    \frac{1}{n} \cdot 0 = 0
>    $$
>
> Essendo verificate tutte le ipotesi, per il Teorema di De L'Hôpital si conclude che:
> $$
> \lim_{x \to x_0} \frac{f(x) - P_n(x)}{(x - x_0)^n} = \lim_{x \to x_0} \frac{f'(x) - \big[ P_n(f) \big]'(x)}{n (x - x_0)^{n-1}} = 0
> $$
> Ciò dimostra che:
> $$
> f(x) - P_n(x) = o\big((x - x_0)^n\big) \iff f(x) = P_n(x) + o\big((x - x_0)^n\big)
> $$
> completando il passo induttivo e la dimostrazione del teorema. $\blacksquare$
>
**Dimostrazione della Formula di Taylor con resto di Lagrange**

La dimostrazione della formula di Taylor con resto di Lagrange per una funzione $f: (a, b) \to \mathbb{R}$ derivabile $n+1$ volte in $(a, b)$ si sviluppa applicando iterativamente il **Teorema di Cauchy**.

> [!quote]- Dimostrazione
> Siano $x_0, x \in (a, b)$. Per fissare le idee, supponiamo $x > x_0$ (il caso $x < x_0$ si tratta in modo del tutto speculare considerando gli intervalli $[x, x_0]$).
>
> Si definiscono due funzioni ausiliarie $g, w: [x_0, x] \to \mathbb{R}$:
> $$
> g(t) := f(t) - P_n(t)
> w(t) := (t - x_0)^{n+1}
> $$
> dove $P_n(t) = \sum_{k=0}^n \frac{f^{(k)}(x_0)}{k!} (t - x_0)^k$ è il polinomio di Taylor di ordine $n$ centrato in $x_0$.
>
> Analizziamo le proprietà delle due funzioni e delle loro derivate:
> 1. **Proprietà di $g(t)$:**
>    Poiché $f$ e $P_n$ hanno un punto di contatto di ordine $n$ in $x_0$ ([§ 5.8.2](#582-definizione-di-punto-di-contatto-di-ordine-n)), le derivate fino all'ordine $n$ coincidono:
>    $$
>    g^{(i)}(x_0) = f^{(i)}(x_0) - P_n^{(i)}(x_0) = 0 \qquad \forall i \in \{0, 1, \dots, n\}
>    $$
>    Inoltre, essendo $P_n(t)$ un polinomio di grado $\le n$, la sua derivata di ordine $n+1$ è identicamente nulla: $P_n^{(n+1)}(t) \equiv 0$. Ne segue che:
>    $$
>    g^{(n+1)}(t) = f^{(n+1)}(t) - \underbrace{P_n^{(n+1)}(t)}_{= 0} = f^{(n+1)}(t) \qquad \forall t \in (a, b)
>    $$
>
> 2. **Proprietà di $w(t)$:**
>    Calcolando le derivate successive di $w(t) = (t - x_0)^{n+1}$ nel punto $t = x_0$:
>    $$
>    w(x_0) = 0, \quad w'(x_0) = 0, \quad w''(x_0) = 0, \quad \dots, \quad w^{(n)}(x_0) = 0
>    $$
>    mentre la derivata di ordine $n+1$ è costante:
>    $$
>    w^{(n+1)}(t) = (n+1)! \qquad \forall t \in \mathbb{R}
>    $$
>
> Essendo $f$ derivabile $n+1$ volte in $(a, b)$, le funzioni $g$ e $w$ sono continue su $[x_0, x]$ e derivabili su $(x_0, x)$. Inoltre $w'(t) = (n+1)(t - x_0)^n \neq 0$ per ogni $t \in (x_0, x)$.
>
> Possiamo pertanto applicare il **Teorema del valor medio di Cauchy** a $g$ e $w$ sull'intervallo $[x_0, x]$:
> esiste un punto $c_1 \in (x_0, x)$ tale che:
> $$
> \frac{g(x) - g(x_0)}{w(x) - w(x_0)} = \frac{g'(c_1)}{w'(c_1)}
> $$
> Poiché $g(x_0) = 0$ e $w(x_0) = 0$, la relazione si riduce a:
> $$
> \frac{g(x)}{w(x)} = \frac{g'(c_1)}{w'(c_1)}
> $$
>
> Iteriamo il procedimento: consideriamo ora le funzioni derivate prime $g'$ e $w'$ sull'intervallo $[x_0, c_1] \subset [x_0, x]$. Esse soddisfano a loro volta le ipotesi del Teorema di Cauchy; esiste dunque un punto $c_2 \in (x_0, c_1)$ tale che:
> $$
> \frac{g'(c_1) - g'(x_0)}{w'(c_1) - w'(x_0)} = \frac{g''(c_2)}{w''(c_2)}
> $$
> Essendo $g'(x_0) = 0$ e $w'(x_0) = 0$, si ha:
> $$
> \frac{g'(c_1)}{w'(c_1)} = \frac{g''(c_2)}{w''(c_2)} \implies \frac{g(x)}{w(x)} = \frac{g''(c_2)}{w''(c_2)}
> $$
>
> Procedendo per induzione a cascata, si applica il Teorema di Cauchy alle derivate $i$-esime $g^{(i)}$ e $w^{(i)}$ sull'intervallo $[x_0, c_i]$ per ogni $i = 0, 1, \dots, n$. Si individua così una sequenza ordinata di $n+1$ punti:
> $$
> x_0 < c_{n+1} < c_n < \dots < c_2 < c_1 < x
> $$
> tali che:
> $$
> \frac{g(x)}{w(x)} = \frac{g'(c_1)}{w'(c_1)} = \frac{g''(c_2)}{w''(c_2)} = \dots = \frac{g^{(i)}(c_i)}{w^{(i)}(c_i)} \qquad \forall i \in \{1, 2, \dots, n+1\}
> $$
>
> Valutando la catena di uguaglianze all'ordine massimo $i = n+1$:
> $$
> \frac{g(x)}{w(x)} = \frac{g^{(n+1)}(c_{n+1})}{w^{(n+1)}(c_{n+1})}
> $$
> Sostituendo i valori calcolati in precedenza $g^{(n+1)}(c_{n+1}) = f^{(n+1)}(c_{n+1})$ e $w^{(n+1)}(c_{n+1}) = (n+1)!$:
> $$
> \frac{g(x)}{w(x)} = \frac{f^{(n+1)}(c_{n+1})}{(n+1)!}
> $$
> Esplicitando $g(x) = f(x) - P_n(x)$ e $w(x) = (x - x_0)^{n+1}$:
> $$
> \frac{f(x) - P_n(x)}{(x - x_0)^{n+1}} = \frac{f^{(n+1)}(c_{n+1})}{(n+1)!}
> $$
> Moltiplicando ambo i membri per $(x - x_0)^{n+1}$ e isolando $f(x)$:
> $$
> f(x) = P_n(x) + \frac{f^{(n+1)}(c_{n+1})}{(n+1)!} (x - x_0)^{n+1}
> $$
> Ponendo $c := c_{n+1}$, risulta verificato che $c \in (x_0, x)$ e la tesi è dimostrata per $x > x_0$.
>
> Nel caso in cui $x < x_0$, l'iterazione del Teorema di Cauchy sugli intervalli $[x, x_0], [c_1, x_0], \dots, [c_n, x_0]$ produce analogamente una catena di punti ordinati $x < c_1 < c_2 < \dots < c_{n+1} < x_0$, conducendo alla medesima identità con $c \in (x, x_0)$. $\blacksquare$
>
## 6.10. Applicazioni della Formula di Taylor ed estremi locali

### Caratterizzazione dei punti stazionari (Test delle derivate successive)

La formula di Taylor con resto di Peano consente di determinare con precisione la natura locale di un punto stazionario esaminando la prima derivata di ordine superiore che non si annulla in tale punto.

> [!theorem] Teorema delle derivate successive per i punti stazionari
> Sia $n \in \mathbb{N}_{\ge 2}$ e sia $f: (a, b) \to \mathbb{R}$ una funzione derivabile $n$ volte nel punto $x_0 \in (a, b)$.
> Supponiamo che:
> $$
> f'(x_0) = f''(x_0) = \dots = f^{(n-1)}(x_0) = 0 \quad \text{e} \quad f^{(n)}(x_0) \neq 0
> $$
> Allora:
> 1. **Se $n$ è pari:**
>    - se $f^{(n)}(x_0) > 0 \implies x_0$ è un **punto di minimo locale stretto** per $f$;
>    - se $f^{(n)}(x_0) < 0 \implies x_0$ è un **punto di massimo locale stretto** per $f$.
> 2. **Se $n$ è dispari:**
>    - $x_0$ **non è un punto di estremo locale** (né di massimo né di minimo: la funzione attraversa il valore $f(x_0)$ cambiando segno rispetto ad esso; si tratta di un flesso a tangente orizzontale).

> [!quote]- Dimostrazione
> Poiché $f$ è derivabile $n$ volte in $x_0$, sviluppiamo $f$ tramite la formula di Taylor con resto di Peano all'ordine $n$ per $x \to x_0$:
> $$
> f(x) = \sum_{k=0}^n \frac{f^{(k)}(x_0)}{k!} (x - x_0)^k + o\big((x - x_0)^n\big)
> $$
> Sfruttando l'ipotesi di annullamento delle derivate intermedie $f'(x_0) = f''(x_0) = \dots = f^{(n-1)}(x_0) = 0$, la sommatoria si riduce ai soli termini di ordine $k = 0$ e $k = n$:
> $$
> f(x) = f(x_0) + \frac{f^{(n)}(x_0)}{n!} (x - x_0)^n + o\big((x - x_0)^n\big)
> $$
> Sottraendo $f(x_0)$ ad ambo i membri e raccogliendo il fattore $(x - x_0)^n$:
> $$
> f(x) - f(x_0) = (x - x_0)^n \left[ \frac{f^{(n)}(x_0)}{n!} + \frac{o\big((x - x_0)^n\big)}{(x - x_0)^n} \right]
> $$
> Posto per definizione di o-piccolo $\frac{o((x - x_0)^n)}{(x - x_0)^n} = o(1) \xrightarrow[x \to x_0]{} 0$, riscriviamo:
> $$
> f(x) - f(x_0) = (x - x_0)^n \left[ \frac{f^{(n)}(x_0)}{n!} + o(1) \right] \qquad (\star)
> $$
>
> Studiamo il segno dei due fattori al secondo membro di $(\star)$ per $x$ appartenente a un intorno bucato $U \setminus \{x_0\}$:
> - **Segno della parentesi quadra:** Poiché $\lim_{x \to x_0} \left[ \frac{f^{(n)}(x_0)}{n!} + o(1) \right] = \frac{f^{(n)}(x_0)}{n!} \neq 0$, per il **Teorema della permanenza del segno** esiste un intorno $U$ di $x_0$ tale che per ogni $x \in U$ il termine $\left[ \frac{f^{(n)}(x_0)}{n!} + o(1) \right]$ ha concordemente lo stesso segno di $f^{(n)}(x_0)$.
> - **Segno di $(x - x_0)^n$:**
>   - **Caso 1: $n$ pari.**
>     Essendo l'esponente pari, si ha $(x - x_0)^n > 0$ per ogni $x \neq x_0$. Di conseguenza, per ogni $x \in U \setminus \{x_0\}$ il segno di $f(x) - f(x_0)$ è interamente determinato dal segno di $f^{(n)}(x_0)$:
>     - se $f^{(n)}(x_0) > 0 \implies f(x) - f(x_0) > 0 \implies f(x) > f(x_0)$, dunque $x_0$ è un punto di minimo locale stretto;
>     - se $f^{(n)}(x_0) < 0 \implies f(x) - f(x_0) < 0 \implies f(x) < f(x_0)$, dunque $x_0$ è un punto di massimo locale stretto.
>   - **Caso 2: $n$ dispari.**
>     Essendo l'esponente dispari, il fattore $(x - x_0)^n$ è strettamente positivo a destra di $x_0$ e strettamente negativo a sinistra di $x_0$:
>     $$
>     (x - x_0)^n > 0 \quad \text{per } x > x_0, \qquad (x - x_0)^n < 0 \quad \text{per } x < x_0
>     $$
>     Poiché il termine tra parentesi quadre mantiene segno costante in $U$, il prodotto cambia segno nell'attraversare $x_0$. Pertanto la differenza $f(x) - f(x_0)$ assume valori positivi da un lato e negativi dall'altro in ogni intorno di $x_0$, il che esclude che $x_0$ possa essere punto di massimo o di minimo locale. $\blacksquare$

> [!note] Applicazione per la derivata seconda ($n=2$)
> Nella prassi del calcolo, il criterio si applica prevalentemente per $n=2$:
> dato un punto stazionario $x_0$ ($f'(x_0) = 0$):
> - se $f''(x_0) > 0 \implies x_0$ è un punto di **minimo locale**;
> - se $f''(x_0) < 0 \implies x_0$ è un punto di **massimo locale**;
> - se $f''(x_0) = 0 \implies$ il test del secondo ordine è inconcludente e si procede calcolando $f'''(x_0), f^{(4)}(x_0), \dots$ fino a trovare la prima derivata non nulla.
>
**Calcolo approssimato e controllo dell'errore tramite Resto di Lagrange**

Il resto di Lagrange fornisce una formula esatta per l'errore commesso sostituendo alla funzione $f(x)$ il suo polinomio di Taylor $P_n(x)$:
$$
|f(x) - P_n(x)| = \left| \frac{f^{(n+1)}(c)}{(n+1)!} (x - x_0)^{n+1} \right| \le \frac{\sup_{t \in I_{x_0, x}} |f^{(n+1)}(t)|}{(n+1)!} |x - x_0|^{n+1}
$$
Tale maggiorazione a priori permette di determinare l'ordine $n$ minimo necessario affinché l'approssimazione numerica rispetti una tolleranza prefissata $\varepsilon > 0$.

> [!example] Esempio 1: Calcolo numerico di $\sqrt[7]{e}$ con errore inferiore a $10^{-3}$
> Si desidera calcolare un valore approssimato di $\sqrt[7]{e} = e^{1/7}$ con una precisione $\varepsilon < \frac{1}{1000} = 10^{-3}$.
>
> Si sceglie la funzione $f(x) = e^x$, centrata in $x_0 = 0$ e valutata in $x = \frac{1}{7}$.
> La formula di Taylor con resto di Lagrange all'ordine $n$ è:
> $$
> e^x = \sum_{k=0}^n \frac{x^k}{k!} + \frac{e^c}{(n+1)!} x^{n+1} \qquad \text{con } c \text{ compreso tra } 0 \text{ e } x
> $$
> Sostituendo $x = \frac{1}{7}$:
> $$
> e^{1/7} = \underbrace{\sum_{k=0}^n \frac{1}{7^k k!}}_{\text{Approssimazione } P_n(1/7)} + \underbrace{\frac{e^c}{7^{n+1}(n+1)!}}_{\text{Errore commesso } \varepsilon(n)} \qquad \text{con } c \in \left(0, \frac{1}{7}\right)
> $$
> Poiché $c \in (0, 1/7)$ e la funzione esponenziale è strettamente crescente:
> $$
> 1 = e^0 < e^c < e^{1/7}
> $$
> Per maggiorare $e^{1/7}$ senza presupporne la conoscenza, notiamo che $e < 2.718 < 3 < 1.5^7 \approx 17.085$ (oppure semplicemente $e^{1/7} < \sqrt{e} < \sqrt{4} = 2 < 1.5$ per difetto o eccesso; $1.5$ è una comoda stima per eccesso: $1.5^7 = (3/2)^7 = 2187/128 \approx 17.08 > e$). Vale dunque:
> $$
> \frac{1}{7^{n+1}(n+1)!} < \varepsilon(n) < \frac{1.5}{7^{n+1}(n+1)!}
> $$
> Valutiamo l'errore per valori crescenti di $n$:
> - Per $n = 1$:
>   $$
>   \varepsilon(1) < \frac{1.5}{7^2 \cdot 2!} = \frac{1.5}{49 \cdot 2} = \frac{1.5}{98} \approx 0.0153 > \frac{1}{1000}
>   $$
> - Per $n = 2$:
>   $$
>   \varepsilon(2) < \frac{1.5}{7^3 \cdot 6} = \frac{1.5}{343 \cdot 6} = \frac{1}{343 \cdot 4} = \frac{1}{1372} < \frac{1}{1000}
>   $$
> L'ordine $n = 2$ è sufficiente per garantire un errore inferiore a $10^{-3}$.
> Calcoliamo quindi il polinomio di Taylor di secondo grado in $x = 1/7$:
> $$
> e^{1/7} = 1 + \frac{1}{7 \cdot 1!} + \frac{1}{7^2 \cdot 2!} + \varepsilon(2) = 1 + \frac{1}{7} + \frac{1}{98} + \varepsilon(2)
> $$
> Riducendo a frazione:
> $$
> e^{1/7} = \frac{98 + 14 + 1}{98} + \varepsilon(2) = \frac{113}{98} + \varepsilon(2) \approx 1.15306
> $$
> con errore garantito $|\varepsilon(2)| < \frac{1}{1372} \approx 7.28 \times 10^{-4} < 10^{-3}$.
>
[!example] Esempio 2: Approssimazione uniforme di $\cos(x^2)$ su $[-1, 1]$ con errore $< 10^{-4}$
> Si intende determinare un polinomio $P_m(x)$ tale da approssimare la funzione $f(x) = \cos(x^2)$ su tutto l'intervallo compatto $[-1, 1]$ con un errore uniforme:
> $$
> \varepsilon < \frac{1}{10000} = 10^{-4}
> $$
>
> Poniamo $t = x^2$. Quando $x \in [-1, 1]$, la nuova variabile varia nell'intervallo $t \in [0, 1] \subset [-1, 1]$.
> Sviluppiamo la funzione $\cos t$ attorno a $t_0 = 0$ con resto di Lagrange. Poiché il coseno ha sole potenze pari, il polinomio di Taylor di ordine $2n$ coincide con quello di ordine $2n+1$:
> $$
> \cos t = \sum_{k=0}^n (-1)^k \frac{t^{2k}}{(2k)!} + R_{2n+1}(t)
> $$
> dove il resto di Lagrange espresso all'ordine $2n+2$ assume la forma:
> $$
> R_{2n+1}(t) = \left. \frac{d^{2n+2}}{ds^{2n+2}}(\cos s) \right|_{s=c} \frac{t^{2n+2}}{(2n+2)!} \qquad \text{con } c \text{ compreso tra } 0 \text{ e } t
> $$
> La derivata $(2n+2)$-esima di $\cos s$ è pari a $\pm \cos s$ (se $n$ è dispari) oppure $\pm \sin s$ (se $n$ è pari). In ogni caso, per ogni $s \in \mathbb{R}$ vale:
> $$
> \left| \frac{d^{2n+2}}{ds^{2n+2}}(\cos s) \right| \le 1
> $$
> Di conseguenza, il modulo dell'errore $\varepsilon_n(t)$ si maggiora uniformemente su $[0, 1]$:
> $$
> |\varepsilon_n(t)| = |R_{2n+1}(t)| \le 1 \cdot \frac{|t|^{2n+2}}{(2n+2)!} \le \frac{1}{(2n+2)!} \qquad \forall t \in [0, 1]
> $$
> Imponiamo che l'errore sia minore della tolleranza richiesta:
> $$
> \frac{1}{(2n+2)!} < \frac{1}{10000} \iff (2n+2)! > 10000
> $$
> Verifichiamo i fattoriali successivi:
> - Per $n = 2$: $(2n+2)! = 6! = 720 < 10000$
> - Per $2n+2 = 7$: $7! = 5040 < 10000$
> - Per $n = 3$: $(2n+2)! = 8! = 40320 > 10000$
>
> Scegliendo dunque $n = 3$, l'ordine dello sviluppo in $t$ è $2n = 6$:
> $$
> \cos t = 1 - \frac{t^2}{2} + \frac{t^4}{24} - \frac{t^6}{720} + \varepsilon_3, \qquad \text{con } |\varepsilon_3| \le \frac{1}{8!} = \frac{1}{40320} < 10^{-4}
> $$
> Sostituendo a ritroso $t = x^2$:
> $$
> \cos(x^2) = 1 - \frac{x^4}{2} + \frac{x^8}{24} - \frac{x^{12}}{720} + \varepsilon_3 \qquad \forall x \in [-1, 1]
> $$
> Il polinomio approssimante cercato è quindi il polinomio pari di grado $12$:
> $$
> P_{12}(x) = 1 - \frac{x^4}{2} + \frac{x^8}{24} - \frac{x^{12}}{720}
> $$

> [!note] Esercizio analogo per $\sin(x^2)$
> In modo del tutto analogo, per approssimare $f(x) = \sin(x^2)$ su $[-1, 1]$ con tolleranza $\varepsilon < 10^{-2}$, si sviluppa $\sin t = t - \frac{t^3}{6} + \dots$ con resto maggiorato da $\frac{1}{(2n+3)!} < \frac{1}{100}$. Essendo $5! = 120 > 100$, è sufficiente arrestarsi al termine cubico in $t$ ($n=1$), ottenendo $P_6(x) = x^2 - \frac{x^6}{6}$.
>
**Studio analitico di funzione: schema metodologico in 12 punti**

L'analisi quantitativa e qualitativa del grafico di una funzione reale a variabile reale $f: D \to \mathbb{R}$ si articola secondo la seguente procedura sistematica:

1. **Dominio di definizione ($D$):** Determinazione dell'insieme massimale di esistenza in $\mathbb{R}$ (condizioni su denominatori, argomenti di radici pari, logaritmi, basi di funzioni potenza con esponente irrazionale).
2. **Simmetrie e periodicità:**
   - Funzione pari: $f(-x) = f(x) \implies$ simmetria rispetto all'asse delle ordinate $y$;
   - Funzione dispari: $f(-x) = -f(x) \implies$ simmetria rispetto all'origine $(0, 0)$;
   - Funzione periodica: $f(x + T) = f(x) \implies$ studio ridotto all'intervallo fondamentale $[0, T)$.
3. **Segno della funzione:** Risoluzione della disequazione $f(x) > 0$ per individuare le regioni di piano in cui il grafico giace al di sopra o al di sotto dell'asse delle ascisse.
4. **Intersezioni con gli assi cartesiani:**
   - Asse $y$: se $0 \in D$, calcolo del punto $(0, f(0))$;
   - Asse $x$: risoluzione dell'equazione $f(x) = 0$ (zeri della funzione).
5. **Limiti ai punti di frontiera del dominio:** Calcolo dei limiti per $x \to \pm\infty$ (se illimitato) e per $x \to x_0^\pm$ con $x_0 \in \partial D \setminus D$.
6. **Ricerca degli asintoti:**
   - **Asintoti verticali:** rette $x = x_0$ se $\lim_{x \to x_0^\pm} f(x) = \pm\infty$;
   - **Asintoti orizzontali:** rette $y = \ell$ se $\lim_{x \to \pm\infty} f(x) = \ell \in \mathbb{R}$;
   - **Asintoti obliqui:** rette $y = mx + q$ con $m = \lim_{x \to \pm\infty} \frac{f(x)}{x} \neq 0$ e $q = \lim_{x \to \pm\infty} (f(x) - mx)$.

   > [!tip] Asintoti obliqui tramite sviluppi di Taylor/Laurent
   > La ricerca degli asintoti per $x \to \pm\infty$ è frequentemente semplificata ponendo $t = 1/x \to 0$ ed espandendo la funzione con Taylor:
   > $$
   > f(x) = mx + q + o(1) \quad \text{per } x \to \pm\infty
   > $$
   > Il coefficiente angolare $m$ e l'intercetta $q$ emergono direttamente dalla parte polinomiale, mentre il termine successivo nello sviluppo fornisce la posizione relativa della curva rispetto all'asintoto (se $f(x) - (mx + q) \sim \frac{c}{x}$, il segno di $c$ indica se il grafico si trova sopra o sotto la retta).
7. **Continuità e punti di discontinuità:** Classificazione dei punti singolari (discontinuità eliminabile, di prima specie a salto, di seconda specie essenziale).
8. **Calcolo della derivata prima $f'(x)$:** Determinazione formale dell'espressione analitica di $f'(x)$ tramite le regole di derivazione.
9. **Dominio e limiti della derivata prima:** Verifica della derivabilità nei punti di continuità singolari (punti angolosi, cuspidi, punti a tangente verticale tramite il limite di $f'(x)$ per $x \to x_0^\pm$).
10. **Segno di $f'(x)$, monotonia ed estremi locali:** Studio di $f'(x) \ge 0$ per identificare gli intervalli di crescenza/decrescenza e determinare la natura dei punti stazionari ($f'(x_0) = 0$).
11. **Calcolo della derivata seconda $f''(x)$:** Determinazione dell'espressione analitica della derivata seconda.
12. **Segno di $f''(x)$, concavità, convessità e flessi:** Studio di $f''(x) \ge 0$ per determinare la concavità verso l'alto (convessità) o verso il basso (concavità) e i punti di flesso in cui la concavità cambia segno.

**Cenni alle Serie di Taylor e funzioni analitiche reali**

L'estensione naturale del polinomio di Taylor all'infinito conduce al concetto di **serie di Taylor**.

> [!definition] Serie numerica e successione delle somme parziali
> Sia $\{a_n\}_{n \in \mathbb{N}}$ una successione a valori reali.
> Si definisce successione delle **somme parziali** $\{s_n\}_{n \in \mathbb{N}}$ la successione:
> $$
> s_n := \sum_{i=1}^n a_i = a_1 + a_2 + \dots + a_n
> $$
> La coppia costituita dalla successione $\{a_n\}$ e dalla successione delle somme parziali $\{s_n\}$ prende il nome di **serie numerica** di termine generale $a_n$.

> [!note] Natura formale del concetto di serie
> Una serie **non è** una somma infinita in senso algebrico (l'operazione di addizione è definita per un numero finito di operandi). Una serie è a tutti gli effetti una **successione** (quella delle somme parziali $s_n$), della quale si studia il comportamento asintotico mediante il limite:
> $$
> \lim_{n \to +\infty} s_n
> $$

> [!definition] Comportamento e carattere di una serie
> Si dice che la serie di termine generale $a_n$:
> - **converge** ad una somma $S \in \mathbb{R}$ se il limite delle somme parziali esiste finito:
>   $$
>   \lim_{n \to +\infty} s_n = S \in \mathbb{R} \qquad \left( \text{e si scrive } \sum_{n=1}^{+\infty} a_n = S \right)
>   $$
> - **diverge** positivamente o negativamente se:
>   $$
>   \lim_{n \to +\infty} s_n = +\infty \quad (\text{oppure } -\infty) \qquad \left( \sum_{n=1}^{+\infty} a_n = \pm\infty \right)
>   $$
> - è **indeterminata** (o oscillante) se il limite $\lim_{n \to +\infty} s_n$ non esiste in $\overline{\mathbb{R}}$.
>
**Convergenza delle serie di Taylor delle funzioni elementari**

Consideriamo la funzione esponenziale $f(x) = e^x$. Il suo polinomio di Taylor di ordine $n$ centrato in $x_0 = 0$ è:
$$
P_n(x) = \sum_{k=0}^n \frac{x^k}{k!}
$$
Per la formula di Taylor con resto di Lagrange, per ogni $x \in \mathbb{R}$ e per ogni $n \in \mathbb{N}$:
$$
e^x = \sum_{k=0}^n \frac{x^k}{k!} + \frac{e^{c_n}}{(n+1)!} x^{n+1}
$$
dove $c_n$ è un punto strettamente compreso tra $0$ e $x$.
Fissiamo arbitrariamente $x \in \mathbb{R}$ e poniamo $R_n(x) := \frac{e^{c_n}}{(n+1)!} x^{n+1}$.
Valutiamo il limite del resto per $n \to +\infty$:
- Se $x > 0$: poiché $0 < c_n < x$, l'esponenziale è crescente e si ha $e^{c_n} < e^x$, da cui:
  $$
  |R_n(x)| \le \frac{e^x x^{n+1}}{(n+1)!} \xrightarrow[n \to +\infty]{} 0
  $$
- Se $x < 0$: poiché $x < c_n < 0$, si ha $e^{c_n} < e^0 = 1$, da cui:
  $$
  |R_n(x)| \le \frac{1 \cdot |x|^{n+1}}{(n+1)!} \xrightarrow[n \to +\infty]{} 0
  $$
- Se $x = 0$: $R_n(0) = 0$ banalmente per ogni $n$.

In tutti i casi, per la gerarchia degli infiniti (la crescita fattoriale domina su qualsiasi crescita esponenziale), il resto di Lagrange tende a zero:
$$
\lim_{n \to +\infty} R_n(x) = 0 \qquad \forall x \in \mathbb{R}
$$
Passando al limite per $n \to +\infty$ nella formula di Taylor:
$$
e^x = \lim_{n \to +\infty} \left( \sum_{k=0}^n \frac{x^k}{k!} + R_n(x) \right) = \lim_{n \to +\infty} \sum_{k=0}^n \frac{x^k}{k!} + \lim_{n \to +\infty} R_n(x) = \sum_{k=0}^{+\infty} \frac{x^k}{k!}
$$
Abbiamo così dimostrato che la serie di Taylor di $e^x$ **converge alla funzione stessa per ogni $x \in \mathbb{R}$**:
$$
e^x = \sum_{k=0}^{+\infty} \frac{x^k}{k!} = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \dots \qquad \forall x \in \mathbb{R}
$$
In particolare, ponendo $x = 1$ si ottiene la celebre rappresentazione numerica della costante di Nepero:
$$
e = \sum_{k=0}^{+\infty} \frac{1}{k!} = 1 + 1 + \frac{1}{2} + \frac{1}{6} + \frac{1}{24} + \dots
$$

In modo analogo, per la funzione $f(x) = \sin x$, il resto di Lagrange all'ordine dispari $2n+1$ è:
$$
R_{2n+1}(x) = \left. \frac{d^{2n+3}}{dt^{2n+3}}(\sin t) \right|_{t=c_n} \frac{x^{2n+3}}{(2n+3)!}
$$
Poiché tutte le derivate del seno sono maggiorate in modulo da $1$, si ha:
$$
|R_{2n+1}(x)| \le \frac{|x|^{2n+3}}{(2n+3)!} \xrightarrow[n \to +\infty]{} 0 \qquad \forall x \in \mathbb{R}
$$
da cui discendono le rappresentazioni in serie di Maclaurin delle funzioni trigonometriche:
$$
\sin x = \sum_{k=0}^{+\infty} (-1)^k \frac{x^{2k+1}}{(2k+1)!} = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \dots \qquad \forall x \in \mathbb{R}
\cos x = \sum_{k=0}^{+\infty} (-1)^k \frac{x^{2k}}{(2k)!} = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \dots \qquad \forall x \in \mathbb{R}
$$

**Il controesempio di Cauchy: funzioni $C^\infty$ non analitiche**

> [!warning] La serie di Taylor non coincide sempre con la funzione!
> L'uguaglianza tra una funzione e la sua serie di Taylor:
> $$
> f(x) \stackrel{?}{=} \sum_{k=0}^{+\infty} \frac{f^{(k)}(x_0)}{k!} (x - x_0)^k \qquad (\star)
> $$
> **è in generale FALSA**, anche qualora la funzione sia infinitamente derivabile ($f \in C^\infty$) e la serie al secondo membro converga per ogni $x \in \mathbb{R}$!
>
Per dimostrare questa fondamentale anomalia dell'analisi reale, si considera il controesempio scoperto da Augustin-Louis Cauchy.

Si consideri la funzione:
$$
f(x) = \begin{cases} e^{-1/x^2}, & \text{se } x \neq 0 \\ 0, & \text{se } x = 0 \end{cases}
$$
La funzione è pari, strettamente positiva per ogni $x \neq 0$ e continua in $x = 0$ poiché $\lim_{x \to 0} e^{-1/x^2} = e^{-\infty} = 0 = f(0)$.

Calcoliamo le derivate successive nell'origine:
- Per $x \neq 0$, la derivata prima è:
  $$
  f'(x) = e^{-1/x^2} \cdot \left( -\frac{1}{x^2} \right)' = \frac{2}{x^3} e^{-1/x^2}
  $$
  Valutiamo il limite per $x \to 0$: ponendo $y = 1/x^2 \to +\infty$, si ha:
  $$
  \lim_{x \to 0} f'(x) = \lim_{y \to +\infty} 2 y^{3/2} e^{-y} = 0
  $$
  Essendo $f$ continua in $0$ e ammettendo limite finito della derivata, per il Teorema del limite della derivata si ha $f'(0) = 0$.
- Per la derivata seconda in $x \neq 0$:
  $$
  f''(x) = \left( -\frac{6}{x^4} + \frac{4}{x^6} \right) e^{-1/x^2} = 2 e^{-1/x^2} \left[ \frac{2}{x^6} - \frac{3}{x^4} \right]
  $$
  il cui limite per $x \to 0$ è ancora identicamente nullo per il dominio esponenziale, dunque $f''(0) = 0$.
- Si dimostra per induzione che per ogni ordine $k \in \mathbb{N}$, per $x \neq 0$ la derivata $k$-esima ha la forma:
  $$
  f^{(k)}(x) = P_{3k}\left(\frac{1}{x}\right) e^{-1/x^2}
  $$
  dove $P_{3k}$ è un polinomio. Poiché per qualunque potenza vale $\lim_{x \to 0} \frac{1}{x^m} e^{-1/x^2} = 0$, ne consegue che:
  $$
  f^{(k)}(0) = 0 \qquad \forall k \in \mathbb{N}
  $$

Costruiamo ora la serie di Taylor di $f$ centrata in $x_0 = 0$:
$$
\sum_{k=0}^{+\infty} \frac{f^{(k)}(0)}{k!} x^k = \sum_{k=0}^{+\infty} \frac{0}{k!} x^k = 0 \qquad \forall x \in \mathbb{R}
$$
La serie converge assolutamente per ogni $x \in \mathbb{R}$, ma converge alla funzione costante $g(x) \equiv 0$, la quale **non coincide** con $f(x) = e^{-1/x^2} > 0$ per alcun $x \neq 0$!
In questo caso la formula di Taylor con resto di Lagrange all'ordine $n$ resta formalmente valida ad ogni ordine finito:
$$
f(x) = 0 + R_n(x) = R_n(x)
$$
ma il resto di Lagrange **non tende a zero** per $n \to +\infty$: $|R_n(x)| \not\to 0$.

> [!definition] Funzioni analitiche reali ($C^\omega$)
> Una funzione $f: (a, b) \to \mathbb{R}$ di classe $C^\infty(a, b)$ si dice **analitica reale** (e si scrive $f \in C^\omega(a, b)$) se per ogni punto $x_0 \in (a, b)$ esiste un intorno $U(x_0)$ tale che la serie di Taylor di $f$ centrata in $x_0$ converge ed ha per somma $f(x)$ per ogni $x \in U(x_0)$:
> $$
> f(x) = \sum_{k=0}^{+\infty} \frac{f^{(k)}(x_0)}{k!} (x - x_0)^k \qquad \forall x \in U(x_0)
> $$
> Una condizione sufficiente affinché $f \in C^\infty(a, b)$ sia analitica è che le sue derivate soddisfino stime di tipo Gevrey-1: esistono due costanti $M, C > 0$ tali che:
> $$
> |f^{(k)}(x)| \le M \cdot C^k \cdot k! \qquad \forall x \in (a, b), \; \forall k \in \mathbb{N}
> $$
>
**Esponenziale complesso e dimostrazione della Formula di Eulero**

Sfruttando le serie di Taylor è possibile estendere in modo rigoroso e canonico le funzioni elementari al campo dei numeri complessi $\mathbb{C}$.

> [!definition] Serie nei numeri complessi
> Sia $\{z_n\}_{n \in \mathbb{N}} \subset \mathbb{C}$ una successione di numeri complessi, con forma cartesiana $z_n = x_n + i y_n$ ($x_n, y_n \in \mathbb{R}$).
> Si dice che la serie complessa $\sum_{n=0}^{+\infty} z_n$ **converge** se convergono separatamente le due serie a termini reali costituite dalle parti reali e dalle parti immaginarie:
> $$
> \sum_{n=0}^{+\infty} x_n = X \in \mathbb{R} \quad \text{e} \quad \sum_{n=0}^{+\infty} y_n = Y \in \mathbb{R}
> $$
> In tal caso, si definisce la somma della serie come:
> $$
> \sum_{n=0}^{+\infty} z_n := \sum_{n=0}^{+\infty} x_n + i \sum_{n=0}^{+\infty} y_n = X + i Y
> $$

> [!definition] Esponenziale complesso
> Per ogni numero complesso $z \in \mathbb{C}$, si definisce la funzione **esponenziale complesso** mediante la serie di potenze:
> $$
> e^z := \sum_{k=0}^{+\infty} \frac{z^k}{k!} = 1 + z + \frac{z^2}{2!} + \frac{z^3}{3!} + \dots \qquad \forall z \in \mathbb{C}
> $$

> [!note] Unicità dell'estensione olomorfa
> Si dimostra (nel quadro della teoria delle funzioni di variabile complessa / Analisi III) che tale serie converge assolutamente per ogni $z \in \mathbb{C}$, coincide con l'esponenziale ordinario per $z \in \mathbb{R}$, ed è **l'unica estensione olomorfa** (derivabile in senso complesso) su tutto $\mathbb{C}$ che preserva la legge dell'esponente $e^{z_1 + z_2} = e^{z_1} e^{z_2}$.
>
Dimostriamo ora la celebre formula che connette l'esponenziale alle funzioni trigonometriche.

> [!theorem] Formula di Eulero
> Per ogni numero reale $t \in \mathbb{R}$ vale:
> $$
> e^{it} = \cos t + i \sin t
> $$

> [!quote]- Dimostrazione
> Poniamo nella definizione di esponenziale complesso $z = i t$ con $t \in \mathbb{R}$:
> $$
> e^{it} = \sum_{k=0}^{+\infty} \frac{(it)^k}{k!}
> $$
> Poiché la serie è assolutamente convergente, possiamo separare i termini di indice pari ($k = 2m$) e i termini di indice dispari ($k = 2m + 1$):
> $$
> e^{it} = \sum_{m=0}^{+\infty} \frac{(it)^{2m}}{(2m)!} + \sum_{m=0}^{+\infty} \frac{(it)^{2m+1}}{(2m+1)!}
> $$
> Calcoliamo le potenze dell'unità immaginaria $i$:
> $$
> i^{2m} = (i^2)^m = (-1)^m \in \mathbb{R}
> i^{2m+1} = i \cdot i^{2m} = i (-1)^m
> $$
> Sostituendo all'interno delle due sommatorie:
> $$
> e^{it} = \sum_{m=0}^{+\infty} \frac{(-1)^m t^{2m}}{(2m)!} + i \sum_{m=0}^{+\infty} \frac{(-1)^m t^{2m+1}}{(2m+1)!}
> $$
> Riconosciamo al primo membro la serie di Taylor della funzione coseno reale e al secondo membro la serie di Taylor della funzione seno reale ([§ 5.9.4](#convergenza-delle-serie-di-taylor-delle-funzioni-elementari)):
> $$
> \sum_{m=0}^{+\infty} (-1)^m \frac{t^{2m}}{(2m)!} = \cos t, \qquad \sum_{m=0}^{+\infty} (-1)^m \frac{t^{2m+1}}{(2m+1)!} = \sin t
> $$
> Sostituendo si ottiene la tesi:
> $$
> e^{it} = \cos t + i \sin t \qquad \forall t \in \mathbb{R}
> $$
> $\blacksquare$
>
**Dimostrazione dell'irrazionalità del numero $e$**

La formula di Taylor con resto di Lagrange consente di fornire una dimostrazione breve ed elegante dell'irrazionalità della costante di Nepero $e$.

> [!theorem] Irrazionalità del numero $e$
> Il numero di Nepero $e$ è un numero irrazionale:
> $$
> e \notin \mathbb{Q}
> $$

> [!quote]- Dimostrazione
> Consideriamo la formula di Taylor con resto di Lagrange per la funzione esponenziale $f(x) = e^x$ centrata in $x_0 = 0$ all'ordine $n \in \mathbb{N}_{\ge 1}$:
> $$
> e^x = \sum_{k=0}^n \frac{x^k}{k!} + \frac{e^c}{(n+1)!} x^{n+1} \qquad \text{con } c \in (0, x)
> $$
> Valutiamo l'identità per $x = 1$:
> $$
> e = \sum_{k=0}^n \frac{1}{k!} + \frac{e^c}{(n+1)!} \qquad \text{con } c \in (0, 1)
> $$
> Isolando il resto a secondo membro:
> $$
> e - \sum_{k=0}^n \frac{1}{k!} = \frac{e^c}{(n+1)!}
> $$
> Poiché $0 < c < 1$ e la funzione esponenziale è strettamente crescente, si ha $1 = e^0 < e^c < e^1 < 3$. Dunque:
> $$
> 0 < e - \sum_{k=0}^n \frac{1}{k!} = \frac{e^c}{(n+1)!} < \frac{3}{(n+1)!} \qquad (\bullet)
> $$
>
> Procediamo per **assurdo**: supponiamo che $e$ sia razionale. Esistono allora due interi positivi coprimi $p, q \in \mathbb{N}_{\ge 1}$ tali che:
> $$
> e = \frac{p}{q}
> $$
> Sostituendo tale frazione in $(\bullet)$:
> $$
> 0 < \frac{p}{q} - \sum_{k=0}^n \frac{1}{k!} < \frac{3}{(n+1)!}
> $$
> Moltiplichiamo tutti i membri della catena di disuguaglianze per il fattoriale $n!$:
> $$
> 0 < n! \left( \frac{p}{q} - \sum_{k=0}^n \frac{1}{k!} \right) < \frac{3 \cdot n!}{(n+1)!} = \frac{3}{n+1}
> $$
> Definiamo la quantità centrale:
> $$
> \alpha_n := n! \left( \frac{p}{q} - \sum_{k=0}^n \frac{1}{k!} \right) = \frac{p \cdot n!}{q} - \sum_{k=0}^n \frac{n!}{k!} \qquad (\star\star)
> $$
> Poiché $n$ nella formula di Taylor può essere scelto grande a piacere, scegliamo un indice intero:
> $$
> n > \max(q, 3)
> $$
> Esaminiamo la natura di $\alpha_n$ sotto tale scelta:
> 1. **$\alpha_n$ è un numero intero:**
>    - Il termine $\frac{p \cdot n!}{q}$ è un intero poiché $n > q \implies q$ divide $n! = 1 \cdot 2 \dots q \dots n$;
>    - Per ogni $k \in \{0, 1, \dots, n\}$, il rapporto $\frac{n!}{k!} = n(n-1)\dots(k+1)$ è il prodotto di interi positivi (con la convenzione $\frac{n!}{0!} = n!$), pertanto la sommatoria $\sum_{k=0}^n \frac{n!}{k!}$ è una somma di interi, dunque un intero.
>    Essendo la differenza di due numeri interi, deduciamo che:
>    $$
>    \alpha_n \in \mathbb{Z}
>    $$
>
> 2. **Limitazione di $\alpha_n$:**
>    Dalla disequazione precedente:
>    $$
>    0 < \alpha_n < \frac{3}{n+1}
>    $$
>    Poiché abbiamo imposto $n > 3$, si ha $n+1 \ge 5 > 3$, da cui discende:
>    $$
>    \frac{3}{n+1} \le \frac{3}{5} < 1
>    $$
>    Ne segue che:
>    $$
>    0 < \alpha_n < 1
>    $$
>
> Abbiamo stabilito che $\alpha_n$ è un numero intero strettamente compreso tra $0$ e $1$:
> $$
> \alpha_n \in \mathbb{Z} \cap (0, 1) = \emptyset
> $$
> Ciò costituisce un palese **ASSURDO**.
> Di conseguenza l'ipotesi per assurdo $e \in \mathbb{Q}$ è falsa: il numero $e$ è irrazionale. $\blacksquare$

> [!note] Trascendenza di $e$
> L'irrazionalità di $e$ garantisce che esso non sia rapporto di due interi. Charles Hermite nel 1873 rafforzò radicalmente questo risultato dimostrando che $e$ è un **numero trascendente**, ovvero non può essere radice di alcuna equazione polinomiale a coefficienti interi del tipo:
> $$
> a_m e^m + a_{m-1} e^{m-1} + \dots + a_1 e + a_0 = 0 \qquad \text{con } a_i \in \mathbb{Z}, \; a_m \neq 0
> $$
>
## 6.11. Concavità, convessità, epigrafici e punti di flesso

### Insiemi convessi in $\mathbb{R}^n$

La nozione di convessità affonda le sue radici nella geometria affine e costituisce il fondamento per lo studio della curvatura e della concavità delle funzioni reali.

> [!definition] Segmento tra due punti in $\mathbb{R}^n$
> Siano $\mathbf{x}_1, \mathbf{x}_2 \in \mathbb{R}^n$. Si definisce **segmento** di estremi $\mathbf{x}_1$ e $\mathbf{x}_2$, denotato con $[\mathbf{x}_1, \mathbf{x}_2]$, l'insieme dei punti individuati dalla combinazione convessa:
> $$
> \mathbf{S}(t) := \mathbf{x}_1 + t(\mathbf{x}_2 - \mathbf{x}_1) = (1 - t)\mathbf{x}_1 + t\mathbf{x}_2, \qquad t \in [0, 1]
> $$

> [!definition] Insieme convesso
> Un sottoinsieme $X \subseteq \mathbb{R}^n$ si dice **convesso** se per ogni coppia di punti appartenenti a $X$, l'intero segmento che li congiunge è completamente contenuto in $X$:
> $$
> \forall \mathbf{x}_1, \mathbf{x}_2 \in X \implies (1 - t)\mathbf{x}_1 + t\mathbf{x}_2 \in X \qquad \forall t \in [0, 1]
> $$

> [!warning] Asimmetria terminologica: non esistono insiemi "concavi"
> Nella teoria degli insiemi e nell'analisi convessa **non esiste** il concetto di insieme "concavo". Un insieme geometrico o soddisfa la proprietà di convessità oppure è semplicemente **non convesso**.
> L'aggettivo "concavo" è riservato esclusivamente alle **funzioni**, in base alla convessità o meno dei rispettivi sottoinsiemi di piano associati (epigrafico e ipografico).
>
```
   INSIEME CONVESSO (X)                     INSIEME NON CONVESSO (Y)
     .-----------------.                      .-----------------.
    /   x1           x2 \                    /   x1       \     x2\
   (     o-----------o   )                  (     o        \     o )
    \    \           /  /                    \     \   OUT  \   / /
     \    o---------o  /                      \     \---x---/  / /
      '---------------'                        '--------------'
   Tutti i segmenti interni               Esistono punti il cui segmento
    giacciono dentro a X.                  esce dal bordo dell'insieme.
```

### Epigrafico di una funzione

La convessità di una funzione reale a variabile reale viene formalizzata traducendo le proprietà geometriche del suo grafico in quelle di un sottoinsieme convesso dello spazio cartesiano $\mathbb{R}^2$.

> [!definition] Epigrafico di una funzione
> Sia $I \subseteq \mathbb{R}$ un intervallo e sia $f: I \to \mathbb{R}$ una funzione reale.
> Si definisce **epigrafico** di $f$, denotato con $\operatorname{epi}(f)$, il sottoinsieme del piano $\mathbb{R}^2$ costituito da tutti i punti che si trovano al di sopra o sul grafico di $f$:
> $$
> \operatorname{epi}(f) := \big\{ (x, y) \in \mathbb{R}^2 : x \in I, \; y \ge f(x) \big\}
> $$
>
```
        y ^
          |                 epi(f)  (Regione superiore)
          |              .-----------------------------
          |             /  y >= f(x)
          |            /
          |       y --o (x, y)
          |          /|
          |         / |
          |  f(x) -o  |      y = f(x)
          |       /|  |
          +------/----+----------->
          0     x     x           x
```

La definizione analitica e geometrica di **funzione convessa** discende direttamente da questa costruzione: una funzione $f$ si dirà convessa su un intervallo $I$ se e solo se il suo epigrafico $\operatorname{epi}(f)$ è un **insieme convesso** in $\mathbb{R}^2$.

### Definizione di Funzione Convessa e Concava tramite Epigrafico

Richiamata la nozione di insieme convesso in $\mathbb{R}^n$ e la definizione di epigrafico di una funzione $f: I \subseteq \mathbb{R} \to \mathbb{R}$:
$$
\operatorname{epi}(f) := \left\{ (x, y) \in \mathbb{R}^2 : x \in I, \; y \ge f(x) \right\}
$$
si introduce la definizione formale di convessità e concavità per una funzione reale di variabile reale.

> [!definition] Definizione: Funzione Convessa e Concava
> Sia $I \subseteq \mathbb{R}$ un intervallo e sia $f: I \to \mathbb{R}$.
> 1. La funzione $f$ si dice **convessa** su $I$ se il suo epigrafico $\operatorname{epi}(f)$ è un insieme convesso in $\mathbb{R}^2$:
>    $$
>    \forall P_1, P_2 \in \operatorname{epi}(f), \quad (1-t)P_1 + t P_2 \in \operatorname{epi}(f) \quad \forall t \in [0, 1]
>    $$
> 2. La funzione $f$ si dice **concava** su $I$ se l'epigrafico della funzione opposta, $\operatorname{epi}(-f)$, è un insieme convesso in $\mathbb{R}^2$, ovvero se l'insieme dei punti che giacciono al di sotto del grafico (talvolta detto *ipografico*):
>    $$
>    \operatorname{hypo}(f) := \left\{ (x, y) \in \mathbb{R}^2 : x \in I, \; y \le f(x) \right\}
>    $$
>    è un insieme convesso. Equivalentemente, $f$ è concava su $I$ se e solo se $-f$ è convessa su $I$.

> [!note] Osservazione: Funzioni né convesse né concave
> Una generica funzione $f: I \to \mathbb{R}$ può non essere né convessa né concava sull'intero intervallo $I$. In tal caso l'epigrafico $\operatorname{epi}(f)$ non è convesso e neppure $\operatorname{epi}(-f)$ lo è (esistono segmenti congiungenti punti dell'epigrafico che fuoriescono da esso).

> [!note] Osservazione: Convessità e Derivabilità
> La convessità di una funzione è una proprietà globale di tipo geometrico/insiemistico e **non implica affatto la derivabilità** della funzione.
> Ad esempio, la funzione valore assoluto $f(x) = |x|$ definita su $I = [-1, 1]$ è convessa su $I$ (il suo epigrafico in $\mathbb{R}^2$ è l'intersezione di due semipiani chiusi, dunque un insieme convesso), ma $f$ non è derivabile nell'origine $x = 0$.
>
**Caratterizzazione tramite Secanti**

> [!theorem] Teorema: Caratterizzazione geometrica tramite secanti
> Sia $I \subseteq \mathbb{R}$ un intervallo e sia $f: I \to \mathbb{R}$.
> 1. La funzione $f$ è **convessa** su $I$ se e solo se, per ogni coppia di punti distinti $x_1, x_2 \in I$, il segmento che congiunge $(x_1, f(x_1))$ e $(x_2, f(x_2))$ non ha punti strettamente al di sotto del grafico di $f$. In termini analitici, per ogni $x_1, x_2 \in I$ e per ogni $t \in [0, 1]$:
>    $$
>    f\big((1-t)x_1 + t x_2\big) \le (1-t)f(x_1) + t f(x_2)
>    $$
> 2. La funzione $f$ è **concava** su $I$ se e solo se, per ogni coppia di punti distinti $x_1, x_2 \in I$, il segmento che congiunge $(x_1, f(x_1))$ e $(x_2, f(x_2))$ non ha punti strettamente al di sopra del grafico di $f$:
>    $$
>    f\big((1-t)x_1 + t x_2\big) \ge (1-t)f(x_1) + t f(x_2) \quad \forall t \in [0, 1]
>    $$

> [!note] Osservazione: Coincidenza locale con la secante
> Nella definizione di convessità debole il segmento congiungente può coincidere localmente con tratti del grafico di $f$ (ad esempio se la funzione è affine o costante su un sottointervallo).

> [!definition] Definizione: Stretta Convessità e Stretta Concavità
> Sia $I \subseteq \mathbb{R}$ un intervallo e sia $f: I \to \mathbb{R}$.
> 1. $f$ si dice **strettamente convessa** su $I$ se, per ogni $x_1, x_2 \in I$ con $x_1 \ne x_2$ e per ogni $t \in (0, 1)$, il segmento congiungente giace **strettamente sopra** al grafico di $f$:
>    $$
>    f\big((1-t)x_1 + t x_2\big) < (1-t)f(x_1) + t f(x_2)
>    $$
> 2. $f$ si dice **strettamente concava** su $I$ se, per ogni $x_1, x_2 \in I$ con $x_1 \ne x_2$ e per ogni $t \in (0, 1)$:
>    $$
>    f\big((1-t)x_1 + t x_2\big) > (1-t)f(x_1) + t f(x_2)
>    $$
>
**Proprietà di Regolarità a Priori delle Funzioni Convesse**

Le funzioni convesse (o concave) su un intervallo posseggono un notevole grado di regolarità intrinseca all'interno del loro dominio, anche in assenza di ipotesi iniziali di continuità o derivabilità.

> [!theorem] Teorema: Continuità e derivate laterali per funzioni convesse
> Sia $f: (a, b) \to \mathbb{R}$ una funzione convessa (o concava) su un intervallo **aperto** $(a, b)$. Allora:
> 1. $f$ è **continua** su tutto $(a, b)$;
> 2. Per ogni punto $x_0 \in (a, b)$, esistono finite sia la derivata destra che la derivata sinistra:
>    $$
>    \exists f'_+(x_0) \in \mathbb{R}, \qquad \exists f'_-(x_0) \in \mathbb{R}
>    $$
>    In generale, tali derivate laterali possono essere distinte (soddisfacendo sempre la disuguaglianza $f'_-(x_0) \le f'_+(x_0)$ per funzioni convesse). In particolare, $f$ è derivabile in $x_0$ se e solo se $f'_-(x_0) = f'_+(x_0)$, fatto che accade al più tranne che in un insieme numerabile di punti angolosi.

> [!warning] Attenzione: Comportamento agli estremi di intervalli chiusi
> Se si considera un intervallo chiuso $[a, b]$ anziché aperto $(a, b)$:
> 1. La continuità può venire a cadere negli estremi $a$ e $b$: una funzione convessa su $[a, b]$ può presentare discontinuità di salto verso l'alto negli estremi (ad esempio $f(x) = 0$ per $x \in [a, b)$ e $f(b) = 1$);
> 2. Anche qualora $f$ sia continua fino al bordo, le derivate ai bordi possono non esistere in senso finito, poiché il limite del rapporto incrementale può tendere a $\pm\infty$ (tangente verticale al bordo, come accade per $f(x) = -\sqrt{1 - x^2}$ in $[-1, 1]$).
>
**Caratterizzazione tramite Retta Tangente**

Se la funzione è differenziabile, la convessità ammette una formulazione tramite la posizione reciproca del grafico e delle rette tangenti.

> [!theorem] Teorema: Posizione della retta tangente
> Sia $f: (a, b) \to \mathbb{R}$ derivabile in $x_0 \in (a, b)$.
> 1. Se $f$ è **convessa** su $(a, b)$, allora la retta tangente al grafico di $f$ in $\big(x_0, f(x_0)\big)$ sta **non strettamente sotto** al grafico di $f$ in tutto $(a, b)$:
>    $$
>    f(x) \ge f(x_0) + f'(x_0)(x - x_0) \quad \forall x \in (a, b)
>    $$
> 2. Se $f$ è **concava** su $(a, b)$, allora la retta tangente in $\big(x_0, f(x_0)\big)$ sta **non strettamente sopra** al grafico di $f$ in tutto $(a, b)$:
>    $$
>    f(x) \le f(x_0) + f'(x_0)(x - x_0) \quad \forall x \in (a, b)
>    $$
> 
> Inoltre, se $f$ è derivabile in ogni punto di $(a, b)$, la condizione è necessaria e sufficiente:
> $$
> f \text{ è convessa su } (a, b) \iff f(x) \ge f(x_0) + f'(x_0)(x - x_0) \quad \forall x, x_0 \in (a, b)
> f \text{ è concava su } (a, b) \iff f(x) \le f(x_0) + f'(x_0)(x - x_0) \quad \forall x, x_0 \in (a, b)
> $$
>
**Criteri di Convessità tramite Derivata Prima e Seconda**

> [!theorem] Teorema: Criterio di convessità tramite derivata prima e seconda
> Sia $f: (a, b) \to \mathbb{R}$.
> 
> 1. **Criterio della derivata prima:** Se $f$ è derivabile in $(a, b)$, allora:
>    $$
>    f \text{ è convessa su } (a, b) \iff f' \text{ è crescente (non decrescente) su } (a, b)
>    f \text{ è concava su } (a, b) \iff f' \text{ è decrescente (non crescente) su } (a, b)
>    $$
> 
> 2. **Criterio della derivata seconda:** Se $f$ è derivabile due volte in $(a, b)$, allora:
>    $$
>    f \text{ è convessa su } (a, b) \iff f''(x) \ge 0 \quad \forall x \in (a, b)
>    f \text{ è concava su } (a, b) \iff f''(x) \le 0 \quad \forall x \in (a, b)
>    $$

> [!note] Osservazioni e precisazioni
> 1. **Rette:** Ogni funzione affine $f(x) = m x + q$ ha derivata seconda $f''(x) \equiv 0$, dunque è simultaneamente convessa e concava su tutto $\mathbb{R}$.
> 2. **Stretta convessità:** Condizione sufficiente affinché $f$ sia strettamente convessa su $(a, b)$ è che $f''(x) > 0$ per ogni $x \in (a, b)$. Più in generale, $f$ è strettamente convessa se e solo se $f''(x) \ge 0$ su $(a, b)$ e l'insieme dei punti in cui $f''(x) = 0$ non contiene intervalli non banali (ad esempio per $f(x) = x^4$, si ha $f''(0) = 0$ ma la funzione è strettamente convessa su $\mathbb{R}$).
> 3. **Legame tra le due parti del teorema:** La seconda parte del teorema discende immediatamente dalla prima combinata con il test di monotonia per la derivata prima $f'$.
>
**Dimostrazione (Criterio della derivata seconda tramite formula di Taylor)**

> [!quote]- Dimostrazione
> Si dimostra che se $f''(x) \ge 0$ per ogni $x \in (a, b)$, allora $f$ è convessa su $(a, b)$.
>
> Fissato un generico punto $x_0 \in (a, b)$, si applica la formula di Taylor con resto di Lagrange arrestata all'ordine $n = 1$: per ogni $x \in (a, b)$, esiste un punto $c$ strettamente compreso tra $x$ e $x_0$ tale che:
> $$
> f(x) = f(x_0) + f'(x_0)(x - x_0) + \frac{f''(c)}{2!} (x - x_0)^2
> $$
> Per ipotesi, $f''(t) \ge 0$ per ogni $t \in (a, b)$, dunque in particolare $f''(c) \ge 0$. Inoltre, per qualsiasi $x \in (a, b)$ si ha $(x - x_0)^2 \ge 0$. Ne segue che il termine di resto è non negativo:
> $$
> \frac{f''(c)}{2!} (x - x_0)^2 \ge 0
> $$
> Di conseguenza:
> $$
> f(x) \ge f(x_0) + f'(x_0)(x - x_0) \quad \forall x \in (a, b)
> $$
> Poiché il grafico di $f$ giace non al di sotto della retta tangente passante per un qualsiasi punto $(x_0, f(x_0))$, per il teorema di caratterizzazione tramite retta tangente si conclude che $f$ è convessa su $(a, b)$. $\blacksquare$

> [!definition] Definizione: Punto di Flesso
> Sia $f: (a, b) \to \mathbb{R}$ e sia $x_0 \in (a, b)$. Si assuma che $f$ sia derivabile in $x_0$, oppure che in $x_0$ il rapporto incrementale ammetta limite infinito:
> $$
> \lim_{h \to 0} \frac{f(x_0 + h) - f(x_0)}{h} = +\infty \quad \lor \quad \lim_{h \to 0} \frac{f(x_0 + h) - f(x_0)}{h} = -\infty
> $$
> Il punto $x_0$ si dice **punto di flesso** per la funzione $f$ se la concavità di $f$ cambia strettamente nell'attraversamento di $x_0$, ovvero se:
> $$
> \exists \varepsilon > 0 : \begin{cases} f \text{ è strettamente convessa in } [x_0, x_0 + \varepsilon] \\ f \text{ è strettamente concava in } [x_0 - \varepsilon, x_0] \end{cases}
> $$
> oppure viceversa (strettamente concava a destra e strettamente convessa a sinistra).
> 
> Dal punto di vista geometrico, in un punto di flesso il grafico della funzione attraversa la propria retta tangente (che esiste, finita o verticale).

> [!example] Esempio Patologico: Attraversamento della tangente senza cambio di convessità
> Si consideri la funzione:
> $$
> f(x) = \begin{cases} x^3 \sin^2\left(\frac{1}{x}\right) & \text{se } x \ne 0 \\ 0 & \text{se } x = 0 \end{cases}
> $$
> 
> Calcolando la derivata prima nell'origine tramite il rapporto incrementale:
> $$
> f'(0) = \lim_{h \to 0} \frac{f(h) - f(0)}{h} = \lim_{h \to 0} \frac{h^3 \sin^2\left(\frac{1}{h}\right)}{h} = \lim_{h \to 0} h^2 \sin^2\left(\frac{1}{h}\right) = 0
> $$
> La retta tangente al grafico nell'origine ha equazione $y = 0$ (l'asse delle ascisse).
> 
> Per $x > 0$, poiché $x^3 > 0$ e $\sin^2(1/x) \ge 0$, si ha $f(x) \ge 0$ (la funzione giace sopra la tangente).
> Per $x < 0$, poiché $x^3 < 0$ e $\sin^2(1/x) \ge 0$, si ha $f(x) \le 0$ (la funzione giace sotto la tangente).
> 
> Di conseguenza, nell'origine il grafico attraversa la retta tangente passando da sotto a sopra. Talvolta nei testi divulgativi si assume l'attraversamento della tangente come definizione euristica di flesso. Tuttavia, tale proprietà **non è equivalente** alla definizione rigorosa di punto di flesso: infatti la funzione $f$ oscilla infinite volte in ogni intorno $(-\varepsilon, \varepsilon)$ di $0$, cambiando segno della derivata seconda infinite volte. Non esiste alcun $\varepsilon > 0$ tale che la funzione sia interamente convessa o concava su $[0, \varepsilon]$ o $[-\varepsilon, 0]$. Pertanto, $x_0 = 0$ **non è un punto di flesso** secondo la definizione formale.
>
