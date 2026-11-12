---
title: "Analisi Complessa: Olomorfia, Integrazione e Residui"
domain: "math/complex-analysis"
source_course: "Analisi 3 (Cap. 1)"
tags:
  - math/complex/holomorphic
  - math/complex/cauchy-riemann
  - math/complex/residues
  - math/complex/laurent
---

# 1. Analisi Complessa: Fondamenti, Funzioni Elementari e Olomorfia

## 1.1. Funzioni complesse di variabile complessa

Tratteremo lo studio delle funzioni di variabile complessa a valori complessi:
$$f: \mathbb{C} \longrightarrow \mathbb{C}$$

> [!definition] Funzione complessa di variabile complessa
> Una **funzione complessa di variabile complessa** è un'applicazione:
> $$f: \Omega \subseteq \mathbb{C} \longrightarrow \mathbb{C}$$
> definita su un sottoinsieme aperto $\Omega \subseteq \mathbb{C}$.

> [!note] Forme di rappresentazione di un numero complesso
> Un generico punto $z \in \mathbb{C}$ può essere espresso in tre forme equivalenti:
> 1. **Forma algebrica:**
>    $$z = x + iy, \quad x = \operatorname{Re}(z) \in \mathbb{R}, \quad y = \operatorname{Im}(z) \in \mathbb{R}$$
> 2. **Forma trigonometrica:**
>    $$z = \rho (\cos\theta + i\sin\theta), \quad \rho = |z| > 0, \quad \theta \in \mathbb{R}$$
> 3. **Forma esponenziale:**
>    $$z = \rho e^{i\theta}, \quad \rho = |z| > 0, \quad \theta \in \mathbb{R}$$

> [!note] Interpretazione geometrica come campo vettoriale in $\mathbb{R}^2$
> Una funzione complessa $f: \Omega \subseteq \mathbb{C} \to \mathbb{C}$ può essere canonicamente interpretata come un campo vettoriale reale nel piano:
> $$\mathbf{F}: \Omega \subseteq \mathbb{R}^2 \longrightarrow \mathbb{R}^2$$
> Decomponendo $f$ nella sua parte reale e nella sua parte immaginaria:
> $$f(z) = u(z) + i v(z)$$
> dove $u, v: \Omega \to \mathbb{R}$ sono funzioni scalari a due variabili reali ($z \in \Omega \subseteq \mathbb{C}$).
> Identificando liberamente $\mathbb{C}$ con $\mathbb{R}^2$:
> $$z = x + iy \longleftrightarrow \begin{pmatrix} x \\ y \end{pmatrix} \in \mathbb{R}^2, \qquad f(z) = u(x,y) + i v(x,y) \longleftrightarrow \mathbf{F}(x,y) = \begin{pmatrix} u(x,y) \\ v(x,y) \end{pmatrix}$$

> [!note] Rappresentazione grafica del dominio e delle componenti
> Il grafico di una funzione complessa $f$ è un sottoinsieme dello spazio a 4 dimensioni reali:
> $$\operatorname{graf}(f) = \{(z, f(z)) \in \mathbb{C} \times \mathbb{C}\} \cong \mathbb{R}^4$$
> Pertanto $\operatorname{graf}(f)$ non può essere visualizzato direttamente nel nostro spazio tridimensionale.
> Al contrario, le due funzioni scalari componenti possiedono grafici in $\mathbb{R}^3$:
> $$\operatorname{graf}(u) \subseteq \mathbb{R}^3, \qquad \operatorname{graf}(v) \subseteq \mathbb{R}^3$$
> e possono quindi essere rappresentate singolarmente come superfici cartesiane sopra il dominio $\Omega \subseteq \mathbb{R}^2$.
>
## 1.2. Rassegna delle funzioni elementari nel campo complesso

### Costante, identità, proiezioni e modulo

**1. Funzione costante:**
Sia $z_0 \in \mathbb{C}$ fissato.
$$f(z) = z_0, \quad \forall z \in \Omega \subseteq \mathbb{C}$$
Le relative componenti reali sono costanti:
$$u(z) = \operatorname{Re}(z_0), \qquad v(z) = \operatorname{Im}(z_0)$$

**2. Funzione identità:**
$$f(z) = z, \quad \forall z \in \Omega \subseteq \mathbb{C}$$
$$z = x + iy \implies u(z) = \operatorname{Re}(z) = x, \qquad v(z) = \operatorname{Im}(z) = y$$

**3. Funzione parte reale:**
$$f(z) = \operatorname{Re}(z) = x \implies u(z) = \operatorname{Re}(z) = x, \qquad v(z) = 0$$

**4. Funzione parte immaginaria:**
$$f(z) = \operatorname{Im}(z) = y \implies u(z) = \operatorname{Im}(z) = y, \qquad v(z) = 0$$

**5. Funzione modulo:**
$$f(z) = |z| = \sqrt{x^2 + y^2} \implies u(z) = \sqrt{x^2 + y^2}, \qquad v(z) = 0$$

### Polinomi complessi e funzioni razionali fratte

**6. Polinomi a coefficienti complessi:**
Sia $P_n$ un polinomio di grado $n \in \mathbb{N}$ a coefficienti $a_k \in \mathbb{C}$:
$$f(z) = P_n(z) = a_n z^n + a_{n-1} z^{n-1} + \dots + a_1 z + a_0, \quad \text{con } a_n \neq 0$$
Per determinare esplicitamente le componenti $u(x,y)$ e $v(x,y)$, si sostituisce $z = x + iy$ e si espandono le potenze mediante la formula del binomio di Newton:
$$(x + iy)^k = \sum_{j=0}^k \binom{k}{j} x^{k-j} (iy)^j$$

> [!example] Esempio
> Calcoliamo le componenti reali del polinomio quadratico:
> $$f(z) = z^2 + iz + 2$$
> Ponendo $z = x + iy$:
> $$
> \begin{align}
> f(z) &= (x + iy)^2 + i(x + iy) + 2 \\
> &= x^2 + 2ixy - y^2 + ix - y + 2 \\
> &= (x^2 - y^2 - y + 2) + i(2xy + x)
> \end{align}
> $$
> da cui si ricavano:
> $$u(x,y) = x^2 - y^2 - y + 2, \qquad v(x,y) = 2xy + x$$
> *(Nel caso in cui il termine lineare sia moltiplicato diversamente, come $i(x-iy)$, i segni si adattano di conseguenza).*
>
**7. Funzioni razionali fratte:**
$$f(z) = \frac{P(z)}{Q(z)}$$
dove $P(z)$ e $Q(z)$ sono polinomi a coefficienti complessi. Il dominio naturale è dato da:
$$\Omega = \{z \in \mathbb{C} : Q(z) \neq 0\}$$

> [!note] Teorema fondamentale dell'algebra e poli
> Per il Teorema Fondamentale dell'Algebra, ogni polinomio complesso non costante di grado $m \in \mathbb{N}$ ammette esattamente $m$ radici in $\mathbb{C}$ (contate con la rispettiva molteplicità algebrica):
> $$Q(z) = 0 \iff z \in \{z_1, z_2, \dots, z_m\}$$
> Di conseguenza, il dominio $\Omega$ coincide con l'intero piano complesso privato di un numero finito di punti isolati:
> $$\Omega = \mathbb{C} \setminus \{z_1, \dots, z_m\}$$

> [!example] Esempio
> Sia $f(z) = \frac{P(z)}{z^2 + 1}$.
> Risolvendo $Q(z) = z^2 + 1 = 0 \iff z^2 = -1 \iff z = \pm i$, il dominio massimale è:
> $$\Omega = \mathbb{C} \setminus \{i, -i\}$$
>

### La funzione esponenziale complessa

**8. Funzione esponenziale:**
$$f(z) = e^z$$
L'obiettivo è estendere l'esponenziale reale $x \mapsto e^x$ su tutto il campo complesso $\mathbb{C}$, preservando le proprietà algebriche fondamentali (in particolare l'omomorfismo additivo $e^{z_1+z_2} = e^{z_1}e^{z_2}$).

> [!definition] Funzione esponenziale complessa
> Per ogni $z = x + iy \in \mathbb{C}$, la **funzione esponenziale complessa** è definita ponendo:
> $$e^z = e^{x+iy} := e^x (\cos y + i \sin y)$$
> Le componenti cartesiane sono pertanto date da:
> $$u(x,y) = e^x \cos y, \qquad v(x,y) = e^x \sin y$$

> [!note] Proprietà fondamentali dell'esponenziale complesso
> 1. **Coerenza con il caso reale:**
>    Se $z = x \in \mathbb{R}$ ($y = 0$):
>    $$e^{x+i0} = e^x (\cos 0 + i \sin 0) = e^x (1 + 0) = e^x$$
>    dunque la definizione complessa estende esattamente l'esponenziale classico su $\mathbb{R}$.
> 
> 2. **Legge degli esponenti:**
>    Per ogni $z_1, z_2 \in \mathbb{C}$, vale l'identità omomorfica:
>    $$e^{z_1 + z_2} = e^{z_1} e^{z_2}$$

> [!quote]- Dimostrazione della legge degli esponenti
> Siano $z_1 = x_1 + i y_1$ e $z_2 = x_2 + i y_2$. Sviluppando il primo membro:
> $$
> \begin{align}
> e^{z_1 + z_2} &= e^{(x_1 + x_2) + i(y_1 + y_2)} \\
> &= e^{x_1 + x_2} \left[ \cos(y_1 + y_2) + i \sin(y_1 + y_2) \right]
> \end{align}
> $$
> Applicando le formule di addizione per seno e coseno:
> $$
> \begin{align}
> \cos(y_1 + y_2) &= \cos y_1 \cos y_2 - \sin y_1 \sin y_2 \\
> \sin(y_1 + y_2) &= \sin y_1 \cos y_2 + \cos y_1 \sin y_2
> \end{align}
> $$
> Sostituendo ed espandendo:
> $$
> \begin{align}
> e^{z_1 + z_2} &= e^{x_1} e^{x_2} \left[ (\cos y_1 \cos y_2 - \sin y_1 \sin y_2) + i(\sin y_1 \cos y_2 + \cos y_1 \sin y_2) \right] \\
> &= e^{x_1} e^{x_2} (\cos y_1 + i \sin y_1)(\cos y_2 + i \sin y_2) \\
> &= \left( e^{x_1} e^{iy_1} \right) \left( e^{x_2} e^{iy_2} \right) = e^{z_1} e^{z_2}
> \end{align}
> $$
> Il che prova la tesi. $\blacksquare$

> [!note] Periodicità immaginaria ed assenza di zeri
> - **Periodicità immaginaria pura:** la funzione esponenziale è periodica con periodo fondamentale immaginario $T = 2\pi i$. Infatti:
>   $$e^{z + 2\pi i} = e^z e^{2\pi i} = e^z (\cos 2\pi + i \sin 2\pi) = e^z (1 + 0) = e^z$$
> - **Assenza di zeri nel piano complesso:** per ogni $z \in \mathbb{C}$, $e^z \neq 0$.
>   Infatti, calcolandone il modulo:
>   $$|e^z| = |e^x (\cos y + i \sin y)| = e^x \sqrt{\cos^2 y + \sin^2 y} = e^x$$
>   Poiché per ogni $x \in \mathbb{R}$ l'esponenziale reale è strettamente positivo ($e^x > 0$):
>   $$e^z = 0 \iff |e^z| = 0 \iff e^x = 0 \quad \text{\Large\Lightning}$$
>   Un'equazione priva di soluzioni su $\mathbb{C}$.
>
### Funzioni trigonometriche circolari

**9. Coseno e Seno complessi:**

> [!definition] Coseno e seno nel campo complesso
> Sfruttando le formule di Eulero per angoli reali, si estendono le funzioni trigonometriche circolari $\cos z$ e $\sin z$ a tutto il piano complesso ponendo:
> $$\cos z := \frac{e^{iz} + e^{-iz}}{2}, \qquad \sin z := \frac{e^{iz} - e^{-iz}}{2i}, \quad \forall z \in \mathbb{C}$$

> [!note] Definizione equivalente tramite serie di potenze
> Equivalentemente, le funzioni possono essere introdotte prolungando le rispettive serie di Taylor di Maclaurin su $\mathbb{C}$ (aventi raggio di convergenza $R = +\infty$):
> $$\cos z = \sum_{n=0}^{+\infty} (-1)^n \frac{z^{2n}}{(2n)!}, \qquad \sin z = \sum_{n=0}^{+\infty} (-1)^n \frac{z^{2n+1}}{(2n+1)!}, \quad \forall z \in \mathbb{C}$$

> [!note] Proprietà analitiche di seno e coseno complessi
> 1. **Coincidenza con le funzioni trigonometriche reali:**
>    Sia $z = x \in \mathbb{R}$. Allora:
>    $$\cos x = \frac{e^{ix} + e^{-ix}}{2} = \frac{1}{2}\left[ (\cos x + i \sin x) + (\cos x - i \sin x) \right] = \frac{2\cos x}{2} = \cos x$$
>    e similmente per il seno:
>    $$\sin x = \frac{e^{ix} - e^{-ix}}{2i} = \frac{1}{2i}\left[ (\cos x + i \sin x) - (\cos x - i \sin x) \right] = \frac{2i\sin x}{2i} = \sin x$$
> 
> 2. **Periodicità reale:**
>    Entrambe le funzioni sono periodiche con periodo reale $T = 2\pi$:
>    $$\cos(z + 2\pi) = \frac{e^{i(z + 2\pi)} + e^{-i(z + 2\pi)}}{2} = \frac{e^{iz} e^{2\pi i} + e^{-iz} e^{-2\pi i}}{2} = \frac{e^{iz} + e^{-iz}}{2} = \cos z$$
>    e analogamente $\sin(z + 2\pi) = \sin z$ per ogni $z \in \mathbb{C}$.
> 
> 3. **Decomposizione in parte reale e immaginaria:**
>    Sia $z = x + iy$. Riscrivendo gli esponenti:
>    $$e^{iz} = e^{i(x+iy)} = e^{-y + ix} = e^{-y}(\cos x + i \sin x)$$
>    $$e^{-iz} = e^{-i(x+iy)} = e^{y - ix} = e^y(\cos x - i \sin x)$$
>    Sostituendo nella definizione di $\cos z$:
>    $$
>    \begin{align}
>    \cos z &= \frac{1}{2} \left[ e^{-y}(\cos x + i \sin x) + e^y(\cos x - i \sin x) \right] \\
>    &= \cos x \left( \frac{e^y + e^{-y}}{2} \right) - i \sin x \left( \frac{e^y - e^{-y}}{2} \right) \\
>    &= \cos x \cosh y - i \sin x \sinh y
>    \end{align}
>    $$
>    Pertanto:
>    $$u(x,y) = \cos x \cosh y, \qquad v(x,y) = -\sin x \sinh y$$
>    Svolgendo in modo del tutto analogo per $\sin z$:
>    $$
>    \begin{align}
>    \sin z &= \frac{1}{2i} \left[ e^{-y}(\cos x + i \sin x) - e^y(\cos x - i \sin x) \right] \\
>    &= \frac{1}{2i} \left[ \cos x (e^{-y} - e^y) + i \sin x (e^{-y} + e^y) \right] \\
>    &= \sin x \left( \frac{e^y + e^{-y}}{2} \right) + i \cos x \left( \frac{e^y - e^{-y}}{2} \right) \\
>    &= \sin x \cosh y + i \cos x \sinh y
>    \end{align}
>    $$
>    da cui:
>    $$u(x,y) = \sin x \cosh y, \qquad v(x,y) = \cos x \sinh y$$
> 
> 4. **Zeri complessi di seno e coseno:**
>    Determiniamo i punti $z = x + iy$ in cui $\cos z = 0$:
>    $$\cos z = 0 \iff \begin{cases} \cos x \cosh y = 0 \\ \sin x \sinh y = 0 \end{cases}$$
>    Poiché $\cosh y = \frac{e^y + e^{-y}}{2} \ge 1 > 0$ per ogni $y \in \mathbb{R}$, la prima equazione impone:
>    $$\cos x = 0 \iff x = \frac{\pi}{2} + k\pi, \quad k \in \mathbb{Z}$$
>    Sostituendo tale valore nella seconda equazione:
>    $$\sin\left(\frac{\pi}{2} + k\pi\right) \sinh y = (-1)^k \sinh y = 0 \iff \sinh y = 0 \iff y = 0$$
>    Di conseguenza, tutti gli zeri di $\cos z$ giacciono esclusivamente sull'asse reale:
>    $$\cos z = 0 \iff z = \frac{\pi}{2} + k\pi, \quad k \in \mathbb{Z}$$
>    Con ragionamento identico per il seno:
>    $$\sin z = 0 \iff \begin{cases} \sin x \cosh y = 0 \\ \cos x \sinh y = 0 \end{cases} \iff \begin{cases} x = k\pi, \; k \in \mathbb{Z} \\ y = 0 \end{cases} \iff z = k\pi, \quad k \in \mathbb{Z}$$
>    Anche $\sin z$ ammette solo gli zeri reali già noti.
> 
> 5. **Comportamento lungo l'asse immaginario puro:**
>    Sia $z = iy$ con $y \in \mathbb{R}$. Allora:
>    $$\cos(iy) = \frac{e^{i(iy)} + e^{-i(iy)}}{2} = \frac{e^{-y} + e^y}{2} = \cosh y$$
>    $$\sin(iy) = \frac{e^{i(iy)} - e^{-i(iy)}}{2i} = \frac{e^{-y} - e^y}{2i} = i \left( \frac{e^y - e^{-y}}{2} \right) = i \sinh y$$

> [!warning] Illimitatezza delle funzioni circolari in $\mathbb{C}$
> Nel campo reale le funzioni trigonometriche sono vincolate tra $-1$ e $+1$ ($|\cos x| \le 1, |\sin x| \le 1$). Nel campo complesso questa proprietà decade drasticamente!
> Restringendo le funzioni lungo la retta dei numeri immaginari puri $i\mathbb{R}$:
> $$|\cos(iy)| = \cosh y \xrightarrow{y \to \pm\infty} +\infty$$
> $$|\sin(iy)| = |i \sinh y| = |\sinh y| \xrightarrow{y \to \pm\infty} +\infty$$
> Pertanto $\cos z$ e $\sin z$ **NON sono limitate** su $\mathbb{C}$.

> [!note] Identità fondamentale (Pitagorica)
> L'identità fondamentale della trigonometria sussiste incondizionatamente in tutto $\mathbb{C}$:
> $$\cos^2 z + \sin^2 z = 1, \quad \forall z \in \mathbb{C}$$
> Infatti:
> $$
> \begin{align}
> \cos^2 z + \sin^2 z &= \left( \frac{e^{iz} + e^{-iz}}{2} \right)^2 + \left( \frac{e^{iz} - e^{-iz}}{2i} \right)^2 \\
> &= \frac{e^{2iz} + e^{-2iz} + 2}{4} + \frac{e^{2iz} + e^{-2iz} - 2}{-4} \\
> &= \frac{e^{2iz} + e^{-2iz} + 2 - (e^{2iz} + e^{-2iz} - 2)}{4} \\
> &= \frac{4}{4} = 1
> \end{align}
> $$
>
### Funzioni trigonometriche iperboliche

**10. Coseno e Seno Iperbolici complessi:**

> [!definition] Coseno e seno iperbolici nel campo complesso
> Si definiscono $\cosh z$ e $\sinh z$ ponendo per ogni $z \in \mathbb{C}$:
> $$\cosh z := \frac{e^z + e^{-z}}{2}, \qquad \sinh z := \frac{e^z - e^{-z}}{2}$$

> [!note] Proprietà analitiche delle funzioni iperboliche
> 1. **Decomposizione cartesiana in componenti reali:**
>    Ponendo $z = x + iy$:
>    $$
>    \begin{align} \cosh z &= \frac{e^{x+iy} + e^{-(x+iy)}}{2} = \frac{e^x(\cos y + i \sin y) + e^{-x}(\cos y - i \sin y)}{2} \\ &= \left( \frac{e^x + e^{-x}}{2} \right) \cos y + i \left( \frac{e^x - e^{-x}}{2} \right) \sin y \\ &= \cosh x \cos y + i \sinh x \sin y \end{align}
>    $$
>    da cui:
>    $$u(x,y) = \cosh x \cos y, \qquad v(x,y) = \sinh x \sin y$$
>    Analogamente per il seno iperbolico:
>    $$
>    \begin{align} \sinh z &= \frac{e^{x+iy} - e^{-(x+iy)}}{2} = \frac{e^x(\cos y + i \sin y) - e^{-x}(\cos y - i \sin y)}{2} \\
>    &= \left( \frac{e^x - e^{-x}}{2} \right) \cos y + i \left( \frac{e^x + e^{-x}}{2} \right) \sin y \\
>    &= \sinh x \cos y + i \cosh x \sin y
>    \end{align}
>    $$
>    da cui:
>    $$u(x,y) = \sinh x \cos y, \qquad v(x,y) = \cosh x \sin y$$
> 
> 2. **Identità iperbolica fondamentale:**
>    $$\cosh^2 z - \sinh^2 z = 1, \quad \forall z \in \mathbb{C}$$
> 
> 3. **Periodicità immaginaria:**
>    Entrambe le funzioni iperboliche ereditano la periodicità dell'esponenziale: sono periodiche di periodo fondamentale immaginario puro:
>    $$T = 2\pi i$$
>
### Scheda sinottica riassuntiva delle funzioni elementari

| Funzione $f(z)$ | Definizione algebrica / Serie | Componenti $u(x,y)$ e $v(x,y)$ | Periodicità | Limitata? | Zeri |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **$P_n(z)$** | $\sum_{j=0}^n a_j z^j$ | Dipendono dai coefficienti | Nessuna ($\nexists T$) | Illimitata | Esattamente $n$ radici in $\mathbb{C}$ |
| **$e^z$** | $\sum_{n=0}^{+\infty} \frac{z^n}{n!}$ | $u = e^x \cos y$<br>$v = e^x \sin y$ | $T = 2\pi i$ | Illimitata | Nessuno zero ($e^z \neq 0, \forall z$) |
| **$\cos z$** | $\frac{e^{iz}+e^{-iz}}{2} = \sum_{n=0}^{+\infty} (-1)^n \frac{z^{2n}}{(2n)!}$ | $u = \cos x \cosh y$<br>$v = -\sin x \sinh y$ | $T = 2\pi$ | Illimitata | $z = \frac{\pi}{2} + k\pi, \; k \in \mathbb{Z}$ |
| **$\sin z$** | $\frac{e^{iz}-e^{-iz}}{2i} = \sum_{n=0}^{+\infty} (-1)^n \frac{z^{2n+1}}{(2n+1)!}$ | $u = \sin x \cosh y$<br>$v = \cos x \sinh y$ | $T = 2\pi$ | Illimitata | $z = k\pi, \; k \in \mathbb{Z}$ |
| **$\cosh z$** | $\frac{e^z+e^{-z}}{2} = \sum_{n=0}^{+\infty} \frac{z^{2n}}{(2n)!}$ | $u = \cosh x \cos y$<br>$v = \sinh x \sin y$ | $T = 2\pi i$ | Illimitata | $z = i\left(\frac{\pi}{2} + k\pi\right), \; k \in \mathbb{Z}$ |
| **$\sinh z$** | $\frac{e^z-e^{-z}}{2} = \sum_{n=0}^{+\infty} \frac{z^{2n+1}}{(2n+1)!}$ | $u = \sinh x \cos y$<br>$v = \cosh x \sin y$ | $T = 2\pi i$ | Illimitata | $z = i k\pi, \; k \in \mathbb{Z}$ |

## 1.3. Topologia in $\mathbb{C}$, Limiti e Continuità

### Intorni e punti di accumulazione

Nel piano complesso $\mathbb{C} \cong \mathbb{R}^2$, la metrica euclidea naturale è indotta dal modulo $|z| = \sqrt{x^2+y^2}$.
- Un **intorno circolare** (o disco aperto) di centro $z_0 \in \mathbb{C}$ e raggio $R > 0$ è l'insieme:
  $$B_R(z_0) := \{z \in \mathbb{C} : |z - z_0| < R\}$$
- Un punto $z_0 \in \mathbb{C}$ si dice **punto di accumulazione** per un sottoinsieme $\Omega \subseteq \mathbb{C}$ se per ogni intorno $U$ di $z_0$ esiste almeno un punto $z \in \Omega$, distinto da $z_0$, appartenente all'intorno:
  $$\forall U \in \mathcal{I}(z_0), \quad (U \setminus \{z_0\}) \cap \Omega \neq \emptyset$$

### La definizione topologica e metrica di limite

> [!definition] Limite di una funzione complessa
> Sia $f: \Omega \subseteq \mathbb{C} \to \mathbb{C}$, $z_0 \in \mathbb{C}$ un punto di accumulazione per $\Omega$, e sia $l \in \mathbb{C}$.
> Si dice che il **limite** di $f(z)$ per $z$ tendente a $z_0$ è pari ad $l$, e si scrive:
> $$\lim_{z \to z_0} f(z) = l$$
> se per ogni intorno $V$ di $l$ esiste un intorno $U$ di $z_0$ tale che:
> $$\forall z \in (U \cap \Omega) \setminus \{z_0\} \implies f(z) \in V$$

> [!note] Formulazione metrica $(\varepsilon$-$\delta)$ e proprietà
> 1. Per definizione di punto di accumulazione, l'insieme perforato $(U \cap \Omega) \setminus \{z_0\}$ non è mai vuoto.
> 2. Il valore assunto da $f$ nel punto $z_0$ (qualora $z_0 \in \Omega$) è del tutto ininfluente ai fini dell'esistenza o del valore del limite.
> 3. **Definizione metrica equivalente:**
>    $$\lim_{z \to z_0} f(z) = l \iff \forall \varepsilon > 0, \; \exists \delta > 0 : \forall z \in \Omega, \; 0 < |z - z_0| < \delta \implies |f(z) - l| < \varepsilon$$
> 4. **Continuità puntuale:**
>    Una funzione $f: \Omega \subseteq \mathbb{C} \to \mathbb{C}$, con $z_0 \in \Omega$, è **continua in $z_0$** se e solo se:
>    $$\lim_{z \to z_0} f(z) = f(z_0)$$

> [!theorem] Teoremi di corrispondenza con $\mathbb{R}^2$ e algebra dei limiti
> Dalle proprietà metriche dello spazio vettoriale $\mathbb{R}^2$ discendono immediatamente i seguenti risultati:
> 1. **Riduzione alle componenti reali:**
>    Siano $f(z) = u(z) + iv(z)$ ed $l = l_1 + il_2 \in \mathbb{C}$. Allora:
>    $$\lim_{z \to z_0} f(z) = l \iff \begin{cases} \lim_{z \to z_0} u(z) = l_1 \\ \lim_{z \to z_0} v(z) = l_2 \end{cases}$$
> 2. **Continuità per componenti:**
>    $$f \text{ è continua in } z_0 \iff u \text{ e } v \text{ sono continue in } (x_0, y_0)$$
> 3. **Continuità delle funzioni elementari:**
>    Tutte le funzioni elementari introdotte ($z^n, e^z, \sin z, \cos z, \sinh z, \cosh z$) sono funzioni continue sull'intero campo complesso $\mathbb{C}$. Le funzioni razionali $P(z)/Q(z)$ sono continue in ogni punto del loro dominio naturale $\Omega = \{z : Q(z) \neq 0\}$.
> 4. **Algebra dei limiti:**
>    Se $\lim_{z \to z_0} f(z) = l$ e $\lim_{z \to z_0} g(z) = m$, allora:
>    $$\lim_{z \to z_0} (f(z) \pm g(z)) = l \pm m, \qquad \lim_{z \to z_0} (f(z) \cdot g(z)) = l \cdot m$$
>    e se $m \neq 0$:
>    $$\lim_{z \to z_0} \frac{f(z)}{g(z)} = \frac{l}{m}$$
> 5. **Teorema del limite della funzione composta:**
>    Se $\lim_{z \to z_0} f(z) = w_0$ e $g$ è continua in $w_0$, allora:
>    $$\lim_{z \to z_0} (g \circ f)(z) = g(w_0)$$
> 6. Somma, prodotto, quoziente (ove il denominatore non si annulla) e composizione di funzioni continue sono continue.
>
## 1.4. Il punto all'infinito e la sfera di Riemann $\overline{\mathbb{C}}$

Mentre sulla retta reale la compattificazione standard introduce due punti distinti all'infinito:
$$\overline{\mathbb{R}} = \mathbb{R} \cup \{-\infty, +\infty\}$$
nel piano complesso $\mathbb{C}$ non sussiste alcun ordinamento algebrico. Di conseguenza, si introduce un **unico punto all'infinito** privo di segno, ottenendo la compattificazione di Alexandrov a un punto:
$$\overline{\mathbb{C}} := \mathbb{C} \cup \{\infty\}$$
Tale insieme $\overline{\mathbb{C}}$ è denominato **piano complesso esteso** o **sfera di Riemann**.

> [!note] La proiezione stereografica
> Dal punto di vista geometrico e topologico, $\overline{\mathbb{C}}$ è omeomorfo alla sfera bidimensionale unitaria $S^2 \subset \mathbb{R}^3$.
> La corrispondenza biunivoca è data dalla **proiezione stereografica**:
> - Si considera una sfera $S^2$ tangente al piano complesso $\mathbb{C}$ nell'origine (Polo Sud $S = 0$).
> - Dal Polo Nord $N = (0, 0, 1)$, scelto come centro di proiezione, si traccia una semiretta passante per un generico punto $P$ della sfera.
> - Tale semiretta interseca il piano equatoriale $\mathbb{C}$ in un unico punto $z$.
> 
> La mappa così definita:
> $$\pi: S^2 \setminus \{N\} \longrightarrow \mathbb{C}$$
> è un biiezione continua con inversa continua (omeomorfismo).
> Aggiungendo il Polo Nord $N$, esso corrisponde per definizione all'unico punto all'infinito:
> $$N \longleftrightarrow \infty \in \overline{\mathbb{C}}$$

> [!definition] Intorno di $\infty$ nel piano esteso
> Un **intorno del punto all'infinito** in $\mathbb{C}$ è il complementare di un disco chiuso limitato centrato nell'origine, ovvero l'esterno di una circonferenza di raggio $R > 0$:
> $$U_\infty := \{z \in \mathbb{C} : |z| > R\}, \quad R > 0$$

> [!definition] Limite nel piano complesso esteso
> Siano $f: \Omega \subseteq \mathbb{C} \to \mathbb{C}$, $z_0 \in \overline{\mathbb{C}}$ punto di accumulazione per $\Omega$, ed $l \in \overline{\mathbb{C}}$.
> Diciamo che:
> $$\lim_{z \to z_0} f(z) = l \iff \forall V \in \mathcal{I}(l), \; \exists U \in \mathcal{I}(z_0) : \forall z \in (U \cap \Omega) \setminus \{z_0\} \implies f(z) \in V$$

> [!note] Unicità del limite in $\overline{\mathbb{C}}$
> Anche nel piano esteso $\overline{\mathbb{C}}$, qualora il limite esista, esso è rigorosamente **unico**.
> Ciò discende dal fatto fondamentale che la sfera di Riemann $\overline{\mathbb{C}}$ è uno spazio topologico di Hausdorff ($T_2$): presi due punti distinti $a, b \in \overline{\mathbb{C}}$ con $a \neq b$, esistono sempre due intorni aperti disgiunti $A \in \mathcal{I}(a)$ e $B \in \mathcal{I}(b)$ tali che:
> $$A \cap B = \emptyset$$
>
## 1.5. Derivabilità in senso complesso e condizioni di Cauchy-Riemann

### Definizione di derivata complessa

> [!definition] Derivabilità in senso complesso
> Sia $f: \Omega \subseteq \mathbb{C} \to \mathbb{C}$, con $\Omega$ aperto, e sia $z_0 \in \Omega$.
> Diciamo che $f$ è **derivabile in senso complesso** in $z_0$ se esiste ed è finito il limite del rapporto incrementale:
> $$\lim_{z \to z_0} \frac{f(z) - f(z_0)}{z - z_0} =: f'(z_0) \in \mathbb{C}$$
> Il numero complesso $f'(z_0)$ è detto **derivata prima complessa** di $f$ in $z_0$.
> 
> Equivalentemente, ponendo $z = z_0 + h$ con incremento $h \in \mathbb{C} \setminus \{0\}$:
> $$\lim_{h \to 0} \frac{f(z_0 + h) - f(z_0)}{h} = f'(z_0)$$
> o in forma differenziale incrementale:
> $$f(z_0 + h) = f(z_0) + f'(z_0)h + o(h) \quad \text{per } h \to 0$$
> (nel campo complesso la derivabilità coincide esattamente con la differenziabilità complessa).

> [!proposition] La derivabilità implica la continuità
> Se una funzione $f$ è derivabile in senso complesso in $z_0$, allora $f$ è continua in $z_0$.

> [!quote]- Dimostrazione
> Calcoliamo il limite dell'incremento $f(z) - f(z_0)$ per $z \to z_0$:
> $$
> \begin{align}
> \lim_{z \to z_0} \left[ f(z) - f(z_0) \right] &= \lim_{z \to z_0} \left[ \frac{f(z) - f(z_0)}{z - z_0} \cdot (z - z_0) \right] \\
> &= \left( \lim_{z \to z_0} \frac{f(z) - f(z_0)}{z - z_0} \right) \cdot \left( \lim_{z \to z_0} (z - z_0) \right) \\
> &= f'(z_0) \cdot 0 = 0
> \end{align}
> $$
> Pertanto $\lim_{z \to z_0} f(z) = f(z_0)$, il che certifica la continuità in $z_0$. $\blacksquare$

> [!example] Esempio
> Calcoliamo la derivata complessa della funzione monomio $f(z) = z^n$ per $n \in \mathbb{N}$.

> [!quote]- Dimostrazione della derivata del monomio
> Sfruttiamo l'identità algebrica notevole per la differenza di due potenze $n$-esime:
> $$f(z) - f(z_0) = z^n - z_0^n = (z - z_0)(z^{n-1} + z^{n-2} z_0 + z^{n-3} z_0^2 + \dots + z z_0^{n-2} + z_0^{n-1})$$
> Rapportando all'incremento $z - z_0 \neq 0$:
> $$\frac{f(z) - f(z_0)}{z - z_0} = z^{n-1} + z^{n-2} z_0 + \dots + z_0^{n-1} = \sum_{k=0}^{n-1} z^{n-1-k} z_0^k$$
> Passando al limite per $z \to z_0$:
> $$\lim_{z \to z_0} \frac{f(z) - f(z_0)}{z - z_0} = \sum_{k=0}^{n-1} z_0^{n-1-k} z_0^k = \sum_{k=0}^{n-1} z_0^{n-1} = n z_0^{n-1}$$
> Pertanto la consueta regola di derivazione reale vale identicamente su $\mathbb{C}$:
> $$(z^n)' = n z^{n-1} \quad \blacksquare$$
>
### La frattura tra calcolo reale e calcolo complesso

Nel calcolo reale a più variabili, una funzione $\mathbf{F}: \mathbb{R}^2 \to \mathbb{R}^2$ è differenziabile se e solo se le sue componenti ammettono derivate parziali e soddisfano l'approssimazione lineare.
Nel campo complesso, invece, la richiesta che il rapporto incrementale ammetta limite unico per $h \to 0$ lungo **qualsiasi direzione del piano complesso** ($h \in \mathbb{C}$) impone un vincolo geometrico enormemente più severo.

> [!warning] La non-derivabilità complessa di parte immaginaria, reale e coniugato
> Consideriamo la funzione:
> $$f(z) = \operatorname{Im}(z)$$
> Le sue componenti reali sono $u(x,y) = y$ e $v(x,y) = 0$, le quali appartengono a $C^\infty(\mathbb{R}^2)$.
> Ciononostante, $f(z)$ **NON è derivabile in senso complesso in alcun punto**, ad esempio in $z_0 = 0$.
> 
> Verifichiamo direttamente il limite del rapporto incrementale per $z \to 0$:
> $$\lim_{z \to 0} \frac{f(z) - f(0)}{z - 0} = \lim_{z \to 0} \frac{\operatorname{Im}(z)}{z}$$
> - **Restrizione lungo l'asse reale ($z = x + 0i \in \mathbb{R}$ con $x \to 0$):**
>   $$\lim_{x \to 0} \frac{\operatorname{Im}(x + 0i)}{x} = \lim_{x \to 0} \frac{0}{x} = 0$$
> - **Restrizione lungo l'asse immaginario puro ($z = 0 + iy \in i\mathbb{R}$ con $y \to 0$):**
>   $$\lim_{y \to 0} \frac{\operatorname{Im}(0 + iy)}{iy} = \lim_{y \to 0} \frac{y}{iy} = \frac{1}{i} = -i$$
> 
> Poiché i due limiti direzionali sono distinti:
> $$0 \neq -i \implies \nexists \lim_{z \to 0} \frac{\operatorname{Im}(z)}{z}$$
> Dunque $f(z) = \operatorname{Im}(z)$ non ammette derivata complessa.
> Il medesimo identico risultato di non-derivabilità si ottiene per:
> $$f(z) = \operatorname{Re}(z) \qquad \text{e} \qquad f(z) = \bar{z} = x - iy$$

> [!note] Problema centrale
> È falso che se $f(z) = u(x,y) + iv(x,y)$ con $u, v$ differenziabili in senso reale in $(x_0, y_0)$, allora $f$ è derivabile in senso complesso.
> Qual è il legame strutturale necessario e sufficiente tra la derivabilità complessa di $f$ e la differenziabilità reale di $u$ e $v$?
>
### Il Teorema di Cauchy-Riemann

> [!theorem] Teorema di caratterizzazione della derivabilità complessa (Cauchy-Riemann)
> Sia $f: \Omega \subseteq \mathbb{C} \to \mathbb{C}$, con $\Omega$ aperto, e poniamo:
> $$f(z) = u(x,y) + i v(x,y)$$
> con $u, v: \Omega \to \mathbb{R}$.
> La funzione $f$ è derivabile in senso complesso in $z_0 = x_0 + i y_0 \in \Omega$ se e solo se:
> 1. Le funzioni $u(x,y)$ e $v(x,y)$ sono differenziabili in senso reale nel punto $(x_0, y_0) \in \mathbb{R}^2$.
> 2. Valgono le **condizioni di Cauchy-Riemann**:
>    $$\begin{cases} \dfrac{\partial u}{\partial x}(x_0, y_0) = \dfrac{\partial v}{\partial y}(x_0, y_0) \\[2ex] \dfrac{\partial v}{\partial x}(x_0, y_0) = -\dfrac{\partial u}{\partial y}(x_0, y_0) \end{cases}$$
> 
> In tal caso, la derivata complessa $f'(z_0)$ può essere calcolata equivalentemente tramite le derivate parziali:
> $$
> \begin{align}
> f'(z_0) &= \frac{\partial u}{\partial x}(x_0, y_0) - i \frac{\partial u}{\partial y}(x_0, y_0) \\
> &= \frac{\partial v}{\partial y}(x_0, y_0) + i \frac{\partial v}{\partial x}(x_0, y_0)
> \end{align}
> $$

> [!note] Forma matriciale conforme dello Jacobiano
> Riscrivendo le condizioni di Cauchy-Riemann in termini della matrice Jacobiana del campo vettoriale associato $\boldsymbol{\Phi}(x,y) = \begin{pmatrix} u(x,y) \\ v(x,y) \end{pmatrix}$:
> $$J_{\boldsymbol{\Phi}}(x_0, y_0) = \begin{pmatrix} \dfrac{\partial u}{\partial x} & \dfrac{\partial u}{\partial y} \\[1.5ex] \dfrac{\partial v}{\partial x} & \dfrac{\partial v}{\partial y} \end{pmatrix} = \begin{pmatrix} \alpha & -\beta \\ \beta & \alpha \end{pmatrix}$$
> dove $\alpha = \operatorname{Re}(f'(z_0))$ e $\beta = \operatorname{Im}(f'(z_0))$.
> Una matrice con questa specifica simmetria rappresenta una **roto-dilatazione** (matrice conforme): conserva gli angoli e preserva l'orientazione.

> [!example] Esempio di verifica negativa
> Per $f(z) = \operatorname{Im}(z)$, si ha $u(x,y) = y$ e $v(x,y) = 0$.
> Calcolando le derivate parziali nell'origine $(0,0)$:
> $$\frac{\partial u}{\partial x}(0,0) = 0, \quad \frac{\partial u}{\partial y}(0,0) = 1, \quad \frac{\partial v}{\partial x}(0,0) = 0, \quad \frac{\partial v}{\partial y}(0,0) = 0$$
> Verificando Cauchy-Riemann:
> $$\frac{\partial u}{\partial y}(0,0) = 1 \neq -\frac{\partial v}{\partial x}(0,0) = 0$$
> Le condizioni falliscono drasticamente $\implies f$ non è derivabile.

> [!example] Esempio di verifica positiva
> Per $f(z) = e^z$, si ha $u(x,y) = e^x \cos y$ e $v(x,y) = e^x \sin y$.
> Calcoliamo lo Jacobiano:
> $$J = \begin{pmatrix} \dfrac{\partial u}{\partial x} & \dfrac{\partial u}{\partial y} \\[1.5ex] \dfrac{\partial v}{\partial x} & \dfrac{\partial v}{\partial y} \end{pmatrix} = \begin{pmatrix} e^x \cos y & -e^x \sin y \\ e^x \sin y & e^x \cos y \end{pmatrix}$$
> Poiché le derivate parziali esistono e sono continue ovunque in $\mathbb{R}^2$, le funzioni $u$ e $v$ sono differenziabili. Inoltre:
> $$\frac{\partial u}{\partial x} = e^x \cos y = \frac{\partial v}{\partial y}, \qquad \frac{\partial v}{\partial x} = e^x \sin y = -\frac{\partial u}{\partial y}$$
> Le condizioni di Cauchy-Riemann sono soddisfatte identicamente su tutto $\mathbb{C}$.
> Pertanto $f(z) = e^z$ è derivabile ovunque, con derivata:
> $$f'(z) = \frac{\partial u}{\partial x} + i \frac{\partial v}{\partial x} = e^x \cos y + i e^x \sin y = e^z$$
> Il medesimo riscontro si ottiene per i polinomi complessi, le funzioni trigonometriche $\sin z, \cos z$ e le funzioni iperboliche $\sinh z, \cosh z$.
>
[!quote]- Dimostrazione del Teorema di Cauchy-Riemann
> **Necessità ($\implies$):**
> Supponiamo che $f$ sia derivabile in senso complesso in $z_0 = x_0 + i y_0$, e poniamo:
> $$f'(z_0) = \alpha + i\beta \in \mathbb{C}$$
> Per la definizione differenziale di derivata, per ogni incremento complesso $h = h_1 + ih_2 \to 0$:
> $$f(z_0 + h) = f(z_0) + f'(z_0)h + g(h)$$
> dove $g(h) = o(|h|)$ per $|h| \to 0$.
> Decomponiamo l'errore $g(h)$ nelle sue componenti reale ed immaginaria:
> $$g(h) = g_1(h_1, h_2) + i g_2(h_1, h_2)$$
> Espandiamo il termine lineare di primo grado:
> $$
> \begin{align}
> f'(z_0)h &= (\alpha + i\beta)(h_1 + ih_2) \\
> &= (\alpha h_1 - \beta h_2) + i(\beta h_1 + \alpha h_2)
> \end{align}
> $$
> Sostituendo nella relazione differenziale:
> $$
> \begin{align}
> u(x_0 + h_1, y_0 + h_2) + i v(x_0 + h_1, y_0 + h_2) &= \left[ u(x_0, y_0) + i v(x_0, y_0) \right] \\
> &\quad + \left[ (\alpha h_1 - \beta h_2) + i(\beta h_1 + \alpha h_2) \right] \\
> &\quad + \left[ g_1(h_1, h_2) + i g_2(h_1, h_2) \right]
> \end{align}
> $$
> Separando rigorosamente la parte reale e la parte immaginaria:
> $$\begin{cases} u(x_0 + h_1, y_0 + h_2) = u(x_0, y_0) + (\alpha h_1 - \beta h_2) + g_1(h_1, h_2) \\[1ex] v(x_0 + h_1, y_0 + h_2) = v(x_0, y_0) + (\beta h_1 + \alpha h_2) + g_2(h_1, h_2) \end{cases} \qquad (*)$$
> Si osserva che le applicazioni:
> $$\begin{pmatrix} h_1 \\ h_2 \end{pmatrix} \longmapsto \alpha h_1 - \beta h_2 = \begin{pmatrix} \alpha \\ -\beta \end{pmatrix} \cdot \begin{pmatrix} h_1 \\ h_2 \end{pmatrix}$$
> $$\begin{pmatrix} h_1 \\ h_2 \end{pmatrix} \longmapsto \beta h_1 + \alpha h_2 = \begin{pmatrix} \beta \\ \alpha \end{pmatrix} \cdot \begin{pmatrix} h_1 \\ h_2 \end{pmatrix}$$
> sono trasformazioni lineari da $\mathbb{R}^2$ a $\mathbb{R}$.
> Inoltre, poiché $|g(h)| = \sqrt{g_1^2 + g_2^2} = o(|h|)$, segue che:
> $$|g_1(h_1, h_2)| \le |g(h)| = o(|h|), \qquad |g_2(h_1, h_2)| \le |g(h)| = o(|h|)$$
> Per la definizione classica di differenziabilità per funzioni di due variabili reali in $\mathbb{R}^2$, le relazioni $(*)$ stabiliscono che $u$ e $v$ sono differenziabili in $(x_0, y_0)$, con gradienti dati dai coefficienti delle forme lineari:
> $$\nabla u(x_0, y_0) = \begin{pmatrix} \dfrac{\partial u}{\partial x}(x_0, y_0) \\[1ex] \dfrac{\partial u}{\partial y}(x_0, y_0) \end{pmatrix} = \begin{pmatrix} \alpha \\ -\beta \end{pmatrix}$$
> $$\nabla v(x_0, y_0) = \begin{pmatrix} \dfrac{\partial v}{\partial x}(x_0, y_0) \\[1ex] \dfrac{\partial v}{\partial y}(x_0, y_0) \end{pmatrix} = \begin{pmatrix} \beta \\ \alpha \end{pmatrix}$$
> Uguagliando le singole componenti si deducono immediatamente:
> $$\frac{\partial u}{\partial x}(x_0, y_0) = \alpha = \frac{\partial v}{\partial y}(x_0, y_0)$$
> $$\frac{\partial v}{\partial x}(x_0, y_0) = \beta = -\frac{\partial u}{\partial y}(x_0, y_0)$$
> che costituiscono esattamente le condizioni di Cauchy-Riemann.
> 
> **Sufficienza ($\impliedby$):**
> Supponiamo che $u$ e $v$ siano differenziabili in $(x_0, y_0)$ e che soddisfino le condizioni di Cauchy-Riemann.
> Ponendo $\alpha := \frac{\partial u}{\partial x}(x_0, y_0) = \frac{\partial v}{\partial y}(x_0, y_0)$ e $\beta := \frac{\partial v}{\partial x}(x_0, y_0) = -\frac{\partial u}{\partial y}(x_0, y_0)$, la differenziabilità reale garantisce la validità delle equazioni $(*)$ con resti $g_1, g_2 = o(|h|)$.
> Moltiplicando la seconda equazione per $i$ e sommandola alla prima, si riottiene esattamente la relazione:
> $$f(z_0 + h) = f(z_0) + (\alpha + i\beta)h + o(|h|)$$
> che certifica la derivabilità in senso complesso di $f$ in $z_0$, con $f'(z_0) = \alpha + i\beta$. $\blacksquare$
>
## 1.6. Funzioni Olomorfe e Teorema di Invertibilità Locale

> [!definition] Funzione Olomorfa
> Sia $\Omega \subseteq \mathbb{C}$ un insieme aperto.
> Una funzione $f: \Omega \to \mathbb{C}$ si dice **olomorfa** in $\Omega$ (e si scrive $f \in \mathcal{H}(\Omega)$) se è derivabile in senso complesso in ogni punto $z_0 \in \Omega$:
> $$f \text{ è olomorfa in } \Omega \iff \exists f'(z_0) \in \mathbb{C}, \quad \forall z_0 \in \Omega$$
>
### Il Teorema di Invertibilità Locale

> [!theorem] Teorema di invertibilità locale per funzioni olomorfe
> Sia $f: \Omega \subseteq \mathbb{C} \to \mathbb{C}$, con $\Omega$ aperto, una funzione olomorfa in $\Omega$.
> Sia $z_0 \in \Omega$ tale che:
> $$f'(z_0) \neq 0$$
> Allora $f$ è **localmente invertibile** attorno a $z_0$: esiste cioè un intorno aperto $U \subseteq \Omega$ di $z_0$ tale che la restrizione $\left.f\right|_U$ sia invertibile sulla sua immagine $V = f(U)$, con $V \subseteq \mathbb{C}$ aperto.
> Inoltre, la funzione inversa:
> $$f^{-1}: V \longrightarrow U$$
> è olomorfa in $V$ e la sua derivata complessa nel punto $w_0 = f(z_0)$ vale:
> $$(f^{-1})'(w_0) = \frac{1}{f'(z_0)}$$

> [!example] Esempio: Invertibilità locale di $e^z$ e il logaritmo complesso
> Consideriamo la funzione esponenziale $f(z) = e^z$.
> Abbiamo dimostrato che $f'(z) = e^z \neq 0$ per ogni $z \in \mathbb{C}$.
> Pertanto, per ogni punto $z_0 \in \mathbb{C}$, esistono un intorno $U$ di $z_0$ e un intorno $V$ di $e^{z_0}$ su cui è ben definito un ramo locale della funzione inversa (il logaritmo complesso):
> $$\log: V \longrightarrow U, \quad \text{tale che } e^{\log z} = z, \quad \forall z \in V$$
> Inoltre, la derivata di tale inversa è calcolata tramite il teorema:
> $$\frac{d}{dz} \log(e^{z_0}) = \frac{1}{f'(z_0)} = \frac{1}{e^{z_0}} \implies \frac{d}{dz} \log z = \frac{1}{z}$$
>
[!quote]- Dimostrazione del Teorema di invertibilità locale
> Sia $z_0 = x_0 + i y_0$ e $f(z) = u(x,y) + i v(x,y)$.
> Consideriamo la mappa reale associata:
> $$\boldsymbol{\Phi}: \Omega \subseteq \mathbb{R}^2 \longrightarrow \mathbb{R}^2, \qquad \boldsymbol{\Phi}(x,y) = \begin{pmatrix} u(x,y) \\ v(x,y) \end{pmatrix}$$
> Poiché $f$ è olomorfa in $\Omega$, le funzioni $u$ e $v$ sono differenziabili in senso reale e soddisfano le condizioni di Cauchy-Riemann. La matrice Jacobiana di $\boldsymbol{\Phi}$ in $(x_0, y_0)$ assume la forma:
> $$J_{\boldsymbol{\Phi}}(x_0, y_0) = \begin{pmatrix} \dfrac{\partial u}{\partial x} & \dfrac{\partial u}{\partial y} \\[1.5ex] \dfrac{\partial v}{\partial x} & \dfrac{\partial v}{\partial y} \end{pmatrix} =: \begin{pmatrix} \alpha & -\beta \\ \beta & \alpha \end{pmatrix}$$
> dove $f'(z_0) = \alpha + i\beta$.
> Calcoliamo il determinante Jacobiano:
> $$\det J_{\boldsymbol{\Phi}}(x_0, y_0) = \alpha^2 - (-\beta^2) = \alpha^2 + \beta^2 = |f'(z_0)|^2$$
> Poiché per ipotesi fondamentale $f'(z_0) \neq 0$, segue che:
> $$\det J_{\boldsymbol{\Phi}}(x_0, y_0) = \alpha^2 + \beta^2 > 0$$
> Per il Teorema di Invertibilità Locale del calcolo differenziale per campi vettoriali in $\mathbb{R}^2$, esistono un intorno aperto $U$ di $(x_0, y_0)$ e un intorno aperto $V$ di $\boldsymbol{\Phi}(x_0, y_0)$ tali che $\boldsymbol{\Phi}: U \to V$ è un diffeomorfismo di classe $C^1$ (biiettiva con inversa differenziabile).
> 
> Dalla formula algebrica per l'inversa di una matrice quadrata di ordine 2:
> $$J_{\boldsymbol{\Phi}}^{-1}(x_0, y_0) = \begin{pmatrix} \alpha & -\beta \\ \beta & \alpha \end{pmatrix}^{-1} = \frac{1}{\alpha^2 + \beta^2} \begin{pmatrix} \alpha & \beta \\ -\beta & \alpha \end{pmatrix} \qquad (*)$$
> Poniamo ora l'inversa vettoriale pari a:
> $$\boldsymbol{\Phi}^{-1}(x,y) = \begin{pmatrix} g(x,y) \\ h(x,y) \end{pmatrix}$$
> con $g, h \in C^1(V)$. Definiamo la funzione inversa complessa:
> $$f^{-1}(z) := g(x,y) + i h(x,y), \quad \forall z = x + iy \in V$$
> Lo Jacobiano di $\boldsymbol{\Phi}^{-1}$ nel punto $(u_0, v_0)$ corrisponde alla matrice inversa calcolata in $(*)$:
> $$J_{\boldsymbol{\Phi}^{-1}}(u_0, v_0) = \begin{pmatrix} \dfrac{\partial g}{\partial x} & \dfrac{\partial g}{\partial y} \\[1.5ex] \dfrac{\partial h}{\partial x} & \dfrac{\partial h}{\partial y} \end{pmatrix} = \begin{pmatrix} \dfrac{\alpha}{\alpha^2 + \beta^2} & \dfrac{\beta}{\alpha^2 + \beta^2} \\[1.5ex] -\dfrac{\beta}{\alpha^2 + \beta^2} & \dfrac{\alpha}{\alpha^2 + \beta^2} \end{pmatrix}$$
> Dalla struttura della matrice leggiamo direttamente:
> $$\frac{\partial g}{\partial x} = \frac{\alpha}{\alpha^2 + \beta^2} = \frac{\partial h}{\partial y}$$
> $$\frac{\partial h}{\partial x} = -\frac{\beta}{\alpha^2 + \beta^2} = -\frac{\partial g}{\partial y}$$
> Di conseguenza, le componenti $g$ ed $h$ dell'inversa verificano esattamente le condizioni di Cauchy-Riemann in $V$.
> Essendo $g, h \in C^1(V)$, esse sono differenziabili, per cui $f^{-1}$ è olomorfa in $V$.
> 
> Infine, calcoliamo la derivata complessa dell'inversa nel punto $w_0 = f(z_0)$:
> $$
> \begin{align}
> (f^{-1})'(w_0) &= \frac{\partial g}{\partial x}(u_0, v_0) + i \frac{\partial h}{\partial x}(u_0, v_0) \\
> &= \frac{\alpha}{\alpha^2 + \beta^2} - i \frac{\beta}{\alpha^2 + \beta^2} \\
> &= \frac{\alpha - i\beta}{\alpha^2 + \beta^2} \\
> &= \frac{1}{\alpha + i\beta} = \frac{1}{f'(z_0)}
> \end{align}
> $$
> Il che conclude rigorosamente la dimostrazione. $\blacksquare$

> [!note] Invertibilità in $\mathbb{C}$ e multifunzioni
> $\forall n \in \mathbb{N}$, se $z = \rho e^{i\theta}$, allora:
> $$
> z^{\frac{1}{n}} = \sqrt[n]{\rho} \, e^{i\left(\frac{\theta}{n} + \frac{2k\pi}{n}\right)}, \quad k \in \{0, 1, \dots, n-1\}
> $$
> Si nota che la funzione è periodica $\implies$ non si può invertire globalmente.
> Lo stesso vale per $e^z$, $\sin z$, $\cos z$. Le inversioni in $\mathbb{C}$ sono solo **locali**.
>
## 1.7. Integrazione nel campo complesso

Data $f: \Omega \subseteq \mathbb{C} \to \mathbb{C}$, esiste o meno una funzione primitiva?

> [!definition] Primitiva nel campo complesso
> Siano $f, F: \Omega \subseteq \mathbb{C} \to \mathbb{C}$. Dico che $F$ è la **primitiva** di $f$ in $\Omega \iff F$ è olomorfa e:
> $$
> F'(z) = f(z) \quad \forall z \in \Omega
> $$

> [!proposition] Unicità della primitiva
> Siano $f, F: \Omega \subseteq \mathbb{C} \to \mathbb{C}$, con $\Omega$ connesso per archi.
> Se $F$ è primitiva di $f$ in $\Omega$, allora tutte e sole le primitive di $f$ sono del tipo:
> $$
> F + \lambda, \quad \lambda \in \mathbb{C}
> $$

> [!quote]- Dimostrazione
> 1. Se $F$ è primitiva, $F + \lambda$ è primitiva perché $\forall z \in \Omega$:
>    $$
>    (F + \lambda)'(z) = F'(z) + \lambda' = f(z)
>    $$
> 2. Siano $F_1, F_2$ primitive di $f$. Posta $G = F_1 - F_2$, si ha:
>    $$
>    G'(z) = F_1'(z) - F_2'(z) = 0 \quad \forall z \in \Omega
>    $$
>    ($G$ è olomorfa in quanto combinazione lineare di funzioni olomorfe).
>    Inoltre, posta $G = u + iv$, per le condizioni di Cauchy-Riemann deve valere che:
>    $$
>    \begin{cases}
>    G'(z) = \frac{\partial u}{\partial x}(x,y) + i \frac{\partial v}{\partial y}(x,y) = 0 \\
>    G'(z) = \frac{\partial u}{\partial y}(x,y) - i \frac{\partial v}{\partial x}(x,y) = 0
>    \end{cases} \quad \forall z \in \Omega
>    \implies \nabla u = \nabla v = \mathbf{0} \quad \forall \mathbf{x} \in \Omega \implies u, v \text{ costanti} \implies G \text{ costante}
>    $$
>    *(connessione per archi di $\Omega$ necessaria).*
>    $$
>    \implies G(z) = F_2(z) - F_1(z) = \lambda \in \mathbb{C} \quad \forall z \in \Omega
>    $$
>    $\blacksquare$
>
### Esistenza delle primitive e forme differenziali

**Quando esistono primitive?**
Data $f = u + iv$, quando è possibile trovarne una primitiva $F = U + iV$ ($f, F: \Omega \subseteq \mathbb{C} \to \mathbb{C}$, $\Omega$ aperto)?

Per le equazioni di Cauchy-Riemann, affinché $F$ sia olomorfa deve valere:
$$
F' = U_x - i U_y = V_y + i V_x
$$
e per definizione di primitiva:
$$
F' = f \implies \begin{cases} U_x = u \\ U_y = -v \end{cases} \quad \land \quad \begin{cases} V_x = v \\ V_y = u \end{cases}
$$
$\implies U$ è potenziale della forma differenziale:
$$
\omega_1 = u\,dx - v\,dy
$$
mentre $V$ è potenziale della forma differenziale:
$$
\omega_2 = v\,dx + u\,dy
$$

> [!proposition] Esistenza della primitiva e forme differenziali esatte
> Siano $f: \Omega \subseteq \mathbb{C} \to \mathbb{C}$, $\Omega$ aperto, $f = u + iv$. Siano:
> $$
> \omega_1 = u\,dx - v\,dy, \quad \omega_2 = v\,dx + u\,dy
> $$
> Allora:
> $$
> f \text{ ammette primitiva} \iff \omega_1, \omega_2 \text{ sono esatte}
> $$
> In tal caso una sua primitiva è:
> $$
> F = U + iV, \quad \text{con } \omega_1 = dU, \quad \omega_2 = dV
> $$

> [!proposition] Olomorfia e chiusura delle forme differenziali
> Siano $f: \Omega \subseteq \mathbb{C} \to \mathbb{C}$, $f = u + iv$. Siano $\omega_1 = u\,dx - v\,dy$, $\omega_2 = v\,dx + u\,dy$.
> $$
> f \text{ olomorfa} \iff u, v \text{ differenziabili e } \omega_1, \omega_2 \text{ chiuse}
> $$

> [!quote]- Dimostrazione
> Per le equazioni di Cauchy-Riemann:
> $$
> f \text{ olomorfa} \iff \begin{cases} \frac{\partial u}{\partial x} = \frac{\partial v}{\partial y} \\ \frac{\partial u}{\partial y} = -\frac{\partial v}{\partial x} \end{cases}
> $$
> mentre la chiusura delle forme differenziali implica:
> $$
> \omega_1, \omega_2 \text{ chiuse} \iff \begin{cases} \frac{\partial u}{\partial y} = -\frac{\partial v}{\partial x} & (\omega_1 \text{ chiusa}) \\ \frac{\partial u}{\partial x} = \frac{\partial v}{\partial y} & (\omega_2 \text{ chiusa}) \end{cases}
> $$
> I due sistemi si identificano identicamente. $\blacksquare$

> [!theorem] Condizioni per l'esistenza della primitiva
> Sia $f: \Omega \subseteq \mathbb{C} \to \mathbb{C}$, $\Omega$ aperto.
> Vale la condizione:
> $$
> f \text{ ammette primitiva} \implies f \text{ olomorfa}
> $$
> Se $\Omega$ è **semplicemente connesso**:
> $$
> f \text{ ammette primitiva} \iff f \text{ olomorfa}
> $$
> In tal caso una primitiva di $f$ è data da:
> $$
> F: \Omega \to \mathbb{C}, \quad F = U + iV
> $$
> con $U$ potenziale di $\omega_1 = u\,dx - v\,dy$ e $V$ potenziale di $\omega_2 = v\,dx + u\,dy$.

> [!quote]- Dimostrazione
> (Ci limitiamo al caso $u, v \in C^1$).
> Abbiamo dimostrato che:
> 1. $f \text{ ammette primitiva} \iff \omega_1, \omega_2 \text{ esatte}$
> 2. $\omega_1, \omega_2 \text{ esatte} \implies \omega_1, \omega_2 \text{ chiuse}$
> 3. $f \text{ olomorfa} \iff \omega_1, \omega_2 \text{ chiuse}$
> 
> Dalla catena di implicazioni segue immediatamente:
> $$
> f \text{ ammette primitiva} \implies f \text{ olomorfa}
> $$
> Se $\Omega$ è semplicemente connesso, la proprietà (2) diventa una coimplicazione (per il Teorema di Poincaré):
> $$
> (2') \quad \omega_1, \omega_2 \text{ esatte} \iff \omega_1, \omega_2 \text{ chiuse}
> $$
> Pertanto:
> $$
> f \text{ ammette primitiva} \iff f \text{ olomorfa}
> $$
> In tal caso, essendo le forme esatte, una primitiva di $f$ è data da $F = U + iV$, con $U, V$ potenziali di $\omega_1, \omega_2$. $\blacksquare$

> [!note] Differenza strutturale tra $\mathbb{R}$ e $\mathbb{C}$
> C'è una grande differenza tra $\mathbb{R}$ e $\mathbb{C}$:
> - In $\mathbb{R}$, **tutte** le funzioni continue ammettono primitive.
> - In $\mathbb{C}$, per ammettere primitive una funzione $f$ **deve almeno** essere olomorfa (e l'olomorfia non è comunque sufficiente se $\Omega$ non è semplicemente connesso).

> [!note] Calcolo del potenziale lungo curve (richiamo da Analisi II)
> Essendo $\omega_1$ e $\omega_2$ esatte, se $\mathbf{r}: [0,1] \to \mathbb{R}^2$ è una curva con $\mathbf{r}(0) = \mathbf{0}$, $\mathbf{r}(1) = \mathbf{x}$, $\mathbf{r}([0,1]) = \gamma$, vale che:
> $$
> U(\mathbf{x}) = \int_\gamma \omega_1, \quad V(\mathbf{x}) = \int_\gamma \omega_2
> $$

> [!example] Mancanza di primitiva globale per $f(z) = 1/z$
> Si consideri $f(z) = \frac{1}{z}$. Si verifica che $\frac{1}{z}$ è olomorfa in $\mathbb{C} \setminus \{0\}$.
> Siano:
> $$
> \Omega_1 = \{z \in \mathbb{C} : \operatorname{Re} z > 0\}, \quad \Omega_2 = \{z \in \mathbb{C} : \operatorname{Re} z < 0\}
> $$
> (entrambi domini semplicemente connessi).
> Essendo $f$ olomorfa e $\Omega_1, \Omega_2$ semplicemente connessi, $f$ ammette primitive in $\Omega_1$ e $\Omega_2$ separatamente.
> Si verifica tuttavia che $f$ **non** ammette primitive globali in $\mathbb{C} \setminus \{0\}$, perché:
> $$
> \int_\gamma \omega_1 \ne 0 \quad \lor \quad \int_\gamma \omega_2 \ne 0
> $$
>
### Integrali curvilinei nel campo complesso

> [!definition] Integrale curvilineo complesso lungo una curva regolare
> Data $f: \Omega \subseteq \mathbb{C} \to \mathbb{C}$, $\Omega$ aperto, sia $r: [a,b] \to \Omega$ una curva regolare con sostegno $r([a,b]) = \gamma$ e parametrizzazione:
> $$
> r(t) = r_1(t) + i r_2(t), \quad \forall t \in [a,b]
> $$
> Se $f = u + iv$ con $u, v \in C^1$ ($f \in C^0$), allora si definisce:
> $$
> \int_\gamma f(z)\,dz := \int_a^b f(r(t)) \, r'(t)\,dt \quad (\text{prodotto complesso})
> $$

> [!note] Decomposizione in forme differenziali reali
> Vale l'identità fondamentale:
> $$
> \int_\gamma f(z)\,dz = \int_\gamma \omega_1 + i \int_\gamma \omega_2
> $$
> **Infatti:**
> $$
> \begin{aligned}
> \int_\gamma \Big(u(r_1(t), r_2(t)) + i v(r_1(t), r_2(t))\Big) \Big(r_1'(t) + i r_2'(t)\Big)\,dt &= \int_\gamma \Big(u r_1' - v r_2'\Big)\,dt + i \int_\gamma \Big(u r_2' + v r_1'\Big)\,dt \\
> &= \int_\gamma \begin{pmatrix} u \\ -v \end{pmatrix} \cdot d\mathbf{r} + i \int_\gamma \begin{pmatrix} v \\ u \end{pmatrix} \cdot d\mathbf{r} \\
> &= \int_\gamma \omega_1 + i \int_\gamma \omega_2
> \end{aligned}
> $$
> $\implies$ **Tutte** le proprietà degli integrali curvilinei reali si trasportano direttamente agli integrali curvilinei complessi.
> In particolare, se $(-\gamma)$ è la curva percorsa con parametrizzazione opposta a $\gamma$:
> $$
> \int_{-\gamma} f(z)\,dz = -\int_\gamma f(z)\,dz
> $$

> [!proposition] Integrale lungo curve chiuse e primitive
> Sia $f: \Omega \subseteq \mathbb{C} \to \mathbb{C}$ e sia $\mathbf{r}: [a,b] \to \Omega$ con $r(a) = r(b)$, $r([a,b]) = \gamma$ curva regolare chiusa. Allora:
> $$
> f \text{ ammette primitiva} \iff \oint_\gamma f(z)\,dz = 0
> $$

> [!quote]- Dimostrazione
> $$
> \begin{aligned}
> f \text{ ammette primitiva} &\iff \omega_1, \omega_2 \text{ esatte} \\
> &\iff \oint_\gamma \omega_1 = 0 \quad \land \quad \oint_\gamma \omega_2 = 0 \\
> &\iff \oint_\gamma f(z)\,dz = 0
> \end{aligned}
> $$
> $\blacksquare$

> [!theorem] Teorema di Cauchy (Invarianza per omotopia)
> Sia $f: \Omega \subseteq \mathbb{C} \to \mathbb{C}$ e sia $r: [a,b] \to \Omega$ con $r([a,b]) = \gamma$ curva chiusa. Allora:
> $$
> f \text{ olomorfa} \implies \oint_\gamma f(z)\,dz \quad \text{non cambia per ogni curva omotopa a } \gamma
> $$

> [!quote]- Dimostrazione
> $f \text{ olomorfa} \iff \omega_1, \omega_2 \text{ chiuse} \implies \oint_\gamma \omega_1, \oint_\gamma \omega_2$ non cambiano per curve omotope a $\gamma \iff \oint_\gamma f(z)\,dz$ ha la stessa proprietà di invarianza omotopica. $\blacksquare$

> [!note] Curve omotope a un punto
> Se la curva chiusa $\gamma$ è omotopa a un punto in $\Omega$:
> $$
> \oint_\gamma f(z)\,dz = 0
> $$

> [!theorem] Teorema di Morera
> Sia $f: \Omega \subseteq \mathbb{C} \to \mathbb{C}$, $\Omega$ aperto, $f \in C^0(\Omega)$ tale che:
> $$
> \oint_\gamma f(z)\,dz = 0 \quad \forall \gamma = r([a,b]) \subseteq \Omega \text{ curva regolare chiusa } (r(a) = r(b))
> $$
> Allora:
> $$
> f \text{ è olomorfa in } \Omega
> $$

> [!quote]- Dimostrazione
> Siano $\gamma_1, \gamma_2 \subseteq \Omega$ curve regolari omotope in $\Omega$ aventi gli stessi estremi. Allora $\gamma_1 \cup (-\gamma_2)$ è una curva regolare chiusa. Pertanto:
> $$
> \int_{\gamma_1} f(z)\,dz + \int_{-\gamma_2} f(z)\,dz = 0 \implies \int_{\gamma_1} f(z)\,dz = \int_{\gamma_2} f(z)\,dz
> $$
> Allora $\forall z_0, z \in \Omega$ è ben definita la funzione:
> $$
> F(z) = \int_{\gamma_z} f(w)\,dw
> $$
> con $\gamma_z$ generica curva regolare omotopa al segmento rettilineo $\delta$, parametrizzato da $r: [0,1] \to \mathbb{C}$, $\delta = r([0,1])$, con $r(t) = z_0 + (z - z_0)t$.
> 
> Vale che, per il teorema della media integrale:
> $$
> \begin{aligned}
> F(z) &= \int_0^1 f(z_0 + (z - z_0)t)(z - z_0)\,dt \\
> &= f(z_0 + (z - z_0)\bar{t})(z - z_0) \quad \text{con } \bar{t} \in [0,1]
> \end{aligned}
> $$
> Allora se $z_0 + h \in \Omega$:
> $$
> F(z_0 + h) - F(z_0) = f(z_0 + h\bar{t})h - 0
> $$
> Passando al limite per l'incremento $h \to 0$:
> $$
> \lim_{h \to 0} \frac{F(z_0 + h) - F(z_0)}{h} = f(z_0)
> $$
> essendo $f$ continua. Ma allora $\forall z_0 \in \Omega$:
> $$
> F'(z_0) = f(z_0) \implies F \text{ è una primitiva di } f \text{ in } \Omega
> $$
> Segue da quanto già dimostrato che $f$, ammettendo primitiva, è olomorfa in $\Omega$. $\blacksquare$

> [!example] Circuitazione di $1/z$ attorno all'origine
> La funzione $f(z) = \frac{1}{z}$ non ammette primitive in $\mathbb{C} \setminus \{0\}$, pur essendovi olomorfa.
> Calcoliamo la circuitazione $\oint_\gamma f(z)\,dz$, dove $\gamma = r([0, 2\pi])$ con $r(t) = e^{it}$ (circonferenza unitaria):
> $$
> r'(t) = i e^{it}
> \oint_\gamma \frac{1}{z}\,dz = \int_0^{2\pi} \frac{1}{e^{it}} \, i e^{it}\,dt = \int_0^{2\pi} i\,dt = 2\pi i \ne 0
> $$
> *(Il risultato è identico per la circuitazione lungo ogni curva chiusa omotopa a $\gamma$ che avvolge l'origine).*
> $$
> \implies f \text{ non ammette primitiva in } \mathbb{C} \setminus \{0\} \quad (\text{in particolare la forma differenziale } \omega_2 \text{ non è esatta})
> $$
>
## 1.8. Funzioni analitiche

Sia $f: \Omega \subseteq \mathbb{C} \to \mathbb{C}$ olomorfa. Allora è ben definita la derivata $f': \Omega \to \mathbb{C}$. Definiamo come di consueto la derivata seconda:
$$
f''(z) = \lim_{h \to 0} \frac{f'(z+h) - f'(z)}{h} \quad \text{se esiste finito}
$$
In generale, se $f$ è derivabile $k$ volte, si definisce la derivata $(k+1)$-esima:
$$
f^{(k+1)}(z) = \lim_{h \to 0} \frac{f^{(k)}(z+h) - f^{(k)}(z)}{h} \quad \text{se esiste finito}
$$

Si ricorda che in $\mathbb{R}$:
- $f \in C^k$ se è derivabile $k$ volte con derivate continue.
- $f \in C^\infty$ se è derivabile infinite volte, con:
  $$
  C^\infty(I \subseteq \mathbb{R}) = \bigcap_{k \ge 1} C^k(I)
  $$
- Vale inoltre che lo spazio delle funzioni analitiche reali è strettamente contenuto nello spazio $C^\infty$:
  $$
  \mathcal{A}(\Omega) \subset C^\infty(\Omega)
  $$
  *(si vedano le definizioni di Analisi I).*

Questo **NON** è così in $\mathbb{C}$!

> [!definition] Funzione analitica nel campo complesso
> Sia $f: \Omega \subseteq \mathbb{C} \to \mathbb{C}$, con $\Omega$ aperto. Dico che $f$ è **analitica** in $\Omega$ se $\forall z_0 \in \Omega$, $\exists U \subseteq \Omega$ intorno di $z_0$ tale che per opportuni coefficienti $c_n \in \mathbb{C}$:
> $$
> f(z) = \sum_{k=0}^{+\infty} c_k (z - z_0)^k \quad \forall z \in U
> $$
>
Per le serie di potenze complesse vale un analogo del teorema di derivazione per serie noto nel campo reale:

> [!theorem] Derivazione per serie di potenze nel campo complesso
> Sia $\{c_n\}_{n \in \mathbb{N}} \subset \mathbb{C}$, $z, z_0 \in \mathbb{C}$.
> Si consideri la serie di potenze:
> $$
> f(z) := \sum_{n=0}^{+\infty} c_n (z - z_0)^n \quad \forall z \in B_R(z_0)
> $$
> (se $R = +\infty$, poniamo $B_\infty(z_0) = \mathbb{C}$), dove $R \in (0, +\infty]$ è il raggio di convergenza della serie.
> 
> Si consideri la **serie delle derivate**:
> $$
> \sum_{n=1}^{+\infty} n c_n (z - z_0)^{n-1} \overset{k := n-1}{=} \sum_{k=0}^{+\infty} (k+1) c_{k+1} (z - z_0)^k
> $$
> *(il termine con $n = 0$ rende la funzione una costante; per $n \ge 1$ si ottiene nuovamente una serie di potenze).*
> 
> Allora:
> 1. Tale serie delle derivate ha lo **stesso raggio di convergenza** $R$.
> 2. La funzione $f$ è **derivabile** sul proprio dominio e vale:
>    $$
>    f'(z) = \sum_{n=1}^{+\infty} n c_n (z - z_0)^{n-1} = \sum_{k=0}^{+\infty} (k+1) c_{k+1} (z - z_0)^k
>    $$
>    *(è lecito scambiare i simboli di serie e di derivata all'interno del disco di convergenza).*

> [!quote]- Dimostrazione
> 1. Verifichiamo l'uguaglianza dei raggi di convergenza tramite la formula di Cauchy-Hadamard (nota da Analisi II):
>    $$
>    \begin{aligned}
>    \limsup_{k \to +\infty} \left[ \frac{k!}{(k-1)!} |c_k| \right]^{\frac{1}{k}} &= \lim_{k \to +\infty} \left[ \frac{k!}{(k-1)!} \right]^{\frac{1}{k}} \cdot \limsup_{k \to +\infty} |c_k|^{\frac{1}{k}} \\
>    &= \lim_{k \to +\infty} e^{\frac{1}{k} \log \left(\frac{k!}{(k-1)!}\right)} \cdot \underbrace{\limsup_{k \to +\infty} |c_k|^{\frac{1}{k}}}_{1/R} \\
>    &= \lim_{k \to +\infty} e^{\frac{\log k}{k}} \cdot \frac{1}{R} \\
>    &= 1 \cdot \frac{1}{R} = \frac{1}{R} \implies R' = R
>    \end{aligned}
>    $$
>    $\blacksquare$
>
**Conseguenza immediata:** Valutando la derivata prima nel centro $z_0$:
$$
f'(z_0) = c_1
$$

> [!corollary] Derivabilità infinita e serie di Taylor
> È possibile iterare il teorema precedente indefinitamente. Con le medesime notazioni:
> 1. $f$ è **infinite volte derivabile** nel suo dominio $B_R(z_0)$.
> 2. La derivata $k$-esima ($k \in \mathbb{N}$) si ottiene derivando $k$ volte, termine a termine, la serie data:
>    $$
>    \left( \sum_{n=0}^{+\infty} c_n (z - z_0)^n \right)^{(k)} = \sum_{n=0}^{+\infty} \left[ c_n (z - z_0)^n \right]^{(k)} = \sum_{n=k}^{+\infty} n(n-1)\dots(n-k+1) c_n (z - z_0)^{n-k}
>    $$
> 3. Per ogni $k \in \mathbb{N} \cup \{0\}$, calcolando nel punto $z = z_0$:
>    $$
>    f^{(k)}(z_0) = k(k-1)\dots 1 \cdot c_k = k! \, c_k \implies c_k = \frac{f^{(k)}(z_0)}{k!}
>    $$
> 4. Pertanto, la serie coincide con la serie di Taylor:
>    $$
>    f(z) = \sum_{n=0}^{+\infty} \frac{f^{(n)}(z_0)}{n!} (z - z_0)^n \quad \forall z \in B_R(z_0)
>    $$
>    $\implies$ Se $f$ è analitica in $\Omega \subseteq \mathbb{C}$, allora $f \in C^\infty(\Omega)$ e per ogni $z_0 \in \Omega$ esiste $R > 0$ tale che:
>    $$
>    f(z) = \sum_{n=0}^{+\infty} \frac{f^{(n)}(z_0)}{n!} (z - z_0)^n \quad \forall z \in B_R(z_0)
>    $$
>
### Calcolo integrale dei coefficienti e formule di Cauchy

C'è un secondo modo, puramente integrale, per calcolare i coefficienti $c_n$.

Siano $f: \Omega \subseteq \mathbb{C} \to \mathbb{C}$, $\Omega$ aperto, $f$ analitica in $\Omega$ e $z_0 \in \Omega$. Supponiamo:
$$
f(z) = \sum_{k=0}^{+\infty} c_k (z - z_0)^k \quad \forall z \in B_R(z_0) : |z - z_0| < R
$$
con $R$ raggio di convergenza della serie.

Fissati $r \in (0, R)$ ed $n \in \mathbb{N}$, calcoliamo l'integrale curvilineo lungo la circonferenza orientata $C_r(z_0)$, parametrizzata da $\alpha(t) = z_0 + r e^{it}$ con $t \in [0, 2\pi]$:
$$
I_n = \int_{C_r(z_0)} \frac{f(z)}{(z - z_0)^{n+1}} \, dz = \int_{C_r(z_0)} \frac{\sum_{k=0}^{+\infty} c_k (z - z_0)^k}{(z - z_0)^{n+1}} \, dz = \int_{C_r(z_0)} \sum_{k=0}^{+\infty} c_k (z - z_0)^{k - n - 1} \, dz
$$
Essendoci convergenza uniforme su $C_r(z_0)$, è lecito scambiare la serie con l'integrale:
$$
I_n = \sum_{k=0}^{+\infty} c_k \int_{C_r(z_0)} (z - z_0)^{k - n - 1} \, dz
$$
Calcoliamo esplicitamente l'integrale monomio:
$$
\begin{aligned}
\int_{C_r(z_0)} (z - z_0)^{k - n - 1} \, dz &= \int_0^{2\pi} (z_0 + r e^{it} - z_0)^{k - n - 1} \cdot i r e^{it} \, dt \\
&= \int_0^{2\pi} r^{k - n - 1} e^{i(k - n - 1)t} \cdot i r e^{it} \, dt \\
&= i r^{k - n} \int_0^{2\pi} e^{i(k - n)t} \, dt \\
&= \begin{cases} 2\pi i & \text{se } k = n \\ 0 & \text{se } k \ne n \end{cases}
\end{aligned}
$$
Ne consegue che nella serie sopravvive unicamente il termine per cui $k = n$:
$$
I_n = 2\pi i \, c_n = 2\pi i \, \frac{f^{(n)}(z_0)}{n!}
$$
da cui deduciamo le espressioni integrali per i coefficienti e per le derivate:
$$
c_n = \frac{1}{2\pi i} \int_{C_r(z_0)} \frac{f(z)}{(z - z_0)^{n+1}} \, dz
f^{(n)}(z_0) = \frac{n!}{2\pi i} \int_{C_r(z_0)} \frac{f(z)}{(z - z_0)^{n+1}} \, dz
$$
che costituisce la celebre **formula di Cauchy per la derivata $n$-esima**.

> [!note] Indipendenza dal raggio
> $\forall n \in \mathbb{N}$, $\forall z_0 \in \Omega$, il valore dell'integrale è indipendente dal raggio $r \in (0, R)$. In altri termini:
> $$
> \int_{C_{r_1}(z_0)} \frac{f(z)}{(z - z_0)^{n+1}} \, dz = \int_{C_{r_2}(z_0)} \frac{f(z)}{(z - z_0)^{n+1}} \, dz \quad \forall r_1, r_2 \in (0, R)
> $$
> perché $C_{r_1}(z_0)$ e $C_{r_2}(z_0)$ sono cammini omotopi in $\Omega \setminus \{z_0\}$ e la funzione $\frac{f(z)}{(z - z_0)^{n+1}}$ è ivi olomorfa (in quanto $f$ è analitica).
> Lo stesso vale per ogni cammino chiuso $\gamma \subset \Omega$, con $z_0 \notin \gamma$, omotopo a $C_r(z_0)$.

> [!note] Formula integrale di Cauchy per il valore puntuale ($n = 0$)
> Per $n = 0$ la formula si riduce a:
> $$
> f(z_0) = \frac{1}{2\pi i} \int_{C_r(z_0)} \frac{f(z)}{z - z_0} \, dz
> $$

> [!note] Deduzione a priori e risultato fondamentale
> Abbiamo dedotto queste formule assumendo inizialmente che $f$ fosse analitica. In realtà il risultato generale è notevolmente più profondo: la formula vale assumendo unicamente la semplice olomorfia di $f$!

> [!theorem] Formule di Cauchy per le derivate complesse
> Sia $f: \Omega \subseteq \mathbb{C} \to \mathbb{C}$ olomorfa in $\Omega$ e sia $\overline{B_R}(z_0) \subseteq \Omega$. Allora $\forall z \in B_R(z_0)$ vale:
> $$
> f(z) = \frac{1}{2\pi i} \int_{C_R(z_0)} \frac{f(w)}{w - z} \, dw
> $$

> [!quote]- Dimostrazione
> Vale per il teorema integrale di Cauchy che per ogni curva chiusa $\gamma$ omotopa a $C_R(z_0)$ in $\Omega \setminus \{z\}$, essendo $\frac{f(w)}{w - z}$ olomorfa rispetto a $w$ in $\Omega \setminus \{z\}$ (con $z \notin \gamma$):
> $$
> \int_\gamma \frac{f(w)}{w - z} \, dw = \int_{C_R(z_0)} \frac{f(w)}{w - z} \, dw
> $$
> Pertanto consideriamo $\gamma = C_\varepsilon(z)$, circonferenza centrata in $z$ di raggio $\varepsilon > 0$. Per l'arbitrarietà di $\varepsilon$:
> $$
> \begin{aligned}
> \int_{C_R(z_0)} \frac{f(w)}{w - z} \, dw &= \lim_{\varepsilon \to 0^+} \int_{C_\varepsilon(z)} \frac{f(w)}{w - z} \, dw \\
> &= \lim_{\varepsilon \to 0^+} \int_0^{2\pi} \frac{f(z + \varepsilon e^{it})}{z + \varepsilon e^{it} - z} \cdot i \varepsilon e^{it} \, dt \\
> &= \lim_{\varepsilon \to 0^+} i \int_0^{2\pi} f(z + \varepsilon e^{it}) \, dt
> \end{aligned}
> $$
> Essendo la funzione integranda continua, poiché per ipotesi $z \in B_R(z_0)$, per il teorema della media integrale esiste $\theta \in [0, 2\pi]$ (corrispondente a un punto $z + \varepsilon e^{i\theta} \in C_\varepsilon(z)$) tale che:
> $$
> f(z + \varepsilon e^{i\theta}) = \frac{1}{2\pi} \int_0^{2\pi} f(z + \varepsilon e^{it}) \, dt
> $$
> Sostituendo:
> $$
> \begin{aligned}
> \int_{C_R(z_0)} \frac{f(w)}{w - z} \, dw &= \lim_{\varepsilon \to 0^+} f(z + \varepsilon e^{i\theta}) \cdot 2\pi i \\
> &= f(z) \cdot 2\pi i
> \end{aligned}
> $$
> Dividendo per $2\pi i$:
> $$
> f(z) = \frac{1}{2\pi i} \int_{C_R(z_0)} \frac{f(w)}{w - z} \, dw
> $$
> $\blacksquare$
>
Partendo dalla formula di Cauchy si dimostra il seguente teorema cardine dell'analisi complessa:

> [!theorem] Teorema di analiticità delle funzioni olomorfe
> Sia $f: \Omega \subseteq \mathbb{C} \to \mathbb{C}$ definita su un aperto $\Omega$. Allora:
> $$
> f \text{ è olomorfa in } \Omega \iff f \text{ è analitica in } \Omega
> $$

> [!quote]- Dimostrazione
> Sia $z_0 \in \Omega$ e $B_R(z_0) \subseteq \Omega$. Fisso ora $z \in B_R(z_0)$ e $h := z - z_0$. Sia poi $|h| < r < R$.
> 
> Vale per la formula di Cauchy che:
> $$
> f(z) = \frac{1}{2\pi i} \int_{C_r(z_0)} \frac{f(w)}{w - z} \, dw = \frac{1}{2\pi i} \int_{C_r(z_0)} \frac{f(w)}{w - z_0 - h} \, dw
> $$
> Essendo $|h| < |w - z_0| = r$, si ha:
> $$
> \left| \frac{h}{w - z_0} \right| < 1
> $$
>
> Sviluppando in serie geometrica (di potenze) la funzione integranda:
> $$
> \frac{1}{w - z_0 - h} = \frac{1}{w - z_0} \cdot \frac{1}{1 - \dfrac{h}{w - z_0}} = \frac{1}{w - z_0} \sum_{n=0}^{+\infty} \left( \frac{h}{w - z_0} \right)^n
> $$
> che converge uniformemente proprio in quanto $\left| \dfrac{h}{w - z_0} \right| < 1$.
> 
> Essendo $f$ olomorfa in $\Omega$, essa è continua e quindi limitata sul cerchio compatto $\overline{B_r(z_0)}$.
> Pertanto la serie:
> $$
> \sum_{n=0}^{+\infty} \frac{f(w) h^n}{(w - z_0)^{n+1}}
> $$
> converge ancora uniformemente rispetto a $w \in C_r(z_0)$. Possiamo dunque integrare termine a termine per convergenza uniforme:
> $$
> \begin{align}
> f(z) &= \frac{1}{2\pi i} \int_{C_r(z_0)} \sum_{n=0}^{+\infty} \frac{f(w)}{(w - z_0)^{n+1}} (z - z_0)^n \, dw \\
> &= \frac{1}{2\pi i} \sum_{n=0}^{+\infty} \left( \int_{C_r(z_0)} \frac{f(w)}{(w - z_0)^{n+1}} \, dw \right) (z - z_0)^n
> \end{align}
> $$
> Posto per ogni $n \in \mathbb{N} \cup \{0\}$:
> $$
> c_n := \frac{1}{2\pi i} \int_{C_r(z_0)} \frac{f(w)}{(w - z_0)^{n+1}} \, dw
> $$
> vale che:
> $$
> f(z) = \sum_{n=0}^{+\infty} c_n (z - z_0)^n
> $$
> e quindi $f$ è sviluppabile in serie di potenze in un intorno di $z_0$, ossia $f$ è analitica in $\Omega$. $\blacksquare$

> [!note] Equivalenza delle classi di regolarità
> Pertanto nel campo complesso si stabilisce la fondamentale uguaglianza tra classi funzionali:
> $$
> \mathrm{Olo}(\Omega) = C^1(\Omega) = C^\infty(\Omega) = \mathcal{A}(\Omega)
> $$
>
## 1.9. Singolarità isolate

> [!definition] Singolarità isolata
> Sia $\Omega \subseteq \mathbb{C}$, $z_0 \in \Omega$, e sia $f: \Omega \setminus \{z_0\} \to \mathbb{C}$.
> Dico che $z_0$ è una **singolarità isolata** per $f$ se esiste un intorno $U$ di $z_0$ tale che $f$ è olomorfa in $U \setminus \{z_0\}$:
> $$
> \exists\, U \text{ intorno di } z_0 : f \in \mathrm{Olo}(U \setminus \{z_0\})
> $$

> [!example] Esempi di singolarità isolate e non isolate
> - **Esempio 1:** Consideriamo la funzione:
>   $$
>   f(z) = \frac{1}{z}
>   $$
>   Essa è olomorfa in $\mathbb{C} \setminus \{0\}$. Di conseguenza, il punto $z_0 = 0$ è una singolarità isolata.
> 
> - **Esempio 2:** Consideriamo la funzione:
>   $$
>   f(z) = \frac{1}{\sin\left(\dfrac{1}{z}\right)}
>   $$
>   Essa è olomorfa in $\mathbb{C} \setminus \left(\{0\} \cup \left\{ \dfrac{1}{k\pi} : k \in \mathbb{Z} \setminus \{0\} \right\}\right)$.
>   I punti $z_k = \dfrac{1}{k\pi}$ con $k \in \mathbb{Z} \setminus \{0\}$ sono singolarità isolate.
>   Al contrario, il punto $z = 0$ **NON** è una singolarità isolata, poiché:
>   $$
>   \lim_{k \to \pm\infty} \frac{1}{k\pi} = 0
>   $$
>   ovvero $z = 0$ è punto di accumulazione di singolarità per $f$.
>
### Singolarità eliminabili

> [!definition] Singolarità eliminabile
> Sia $z_0 \in \Omega \subseteq \mathbb{C}$ una singolarità isolata per $f: \Omega \setminus \{z_0\} \to \mathbb{C}$.
> Il punto $z_0$ è detto **singolarità eliminabile** se esiste un intorno $U$ di $z_0$ ed esiste una funzione $\tilde{f}: U \to \mathbb{C}$ olomorfa tale che:
> $$
> \tilde{f}(z) = f(z) \quad \forall z \in U \setminus \{z_0\}
> $$

> [!note] Unicità dell'estensione olomorfa e caratterizzazione metrica
> Se $z_0$ è punto di singolarità eliminabile per $f$, l'estensione $\tilde{f}$ è unica e per continuità deve valere:
> $$
> \lim_{z \to z_0} \tilde{f}(z) = \lim_{z \to z_0} f(z) = \tilde{f}(z_0)
> $$
> La condizione di singolarità eliminabile è equivalente a richiedere che $f$ sia localmente limitata attorno a $z_0$, ossia:
> $$
> \exists\, U \text{ intorno di } z_0, \; \exists\, M > 0 : |f(z)| \le M \quad \forall z \in U \setminus \{z_0\}
> $$

> [!theorem] Teorema di rimozione delle singolarità di Riemann
> Siano $\Omega \subseteq \mathbb{C}$ aperto, $z_0 \in \Omega$, e $f: \Omega \setminus \{z_0\} \to \mathbb{C}$ olomorfa.
> Se esiste $R > 0$ tale che $f$ è limitata in $B_R(z_0) \setminus \{z_0\}$, allora la singolarità isolata $z_0$ è eliminabile.
>
### Poli e singolarità essenziali

> [!definition] Polo
> Si dice che la singolarità isolata $z_0 \in \Omega \subseteq \mathbb{C}$ per $f: \Omega \setminus \{z_0\} \to \mathbb{C}$ è un **polo** per $f$ se:
> $$
> \lim_{z \to z_0} f(z) = \infty \iff \lim_{z \to z_0} |f(z)| = +\infty
> $$

> [!example] Esempio di polo
> Per $n \in \mathbb{N}$, la funzione:
> $$
> f(z) = \frac{1}{z^n}
> $$
> ammette in $z_0 = 0$ un polo.

> [!definition] Singolarità essenziale
> Si dice che $z_0 \in \Omega \subseteq \mathbb{C}$, singolarità isolata per $f: \Omega \setminus \{z_0\} \to \mathbb{C}$, è una **singolarità essenziale** per $f$ se essa non è né un polo né una singolarità eliminabile.

> [!example] Esempio di singolarità essenziale
> Consideriamo la funzione:
> $$
> f(z) = e^{\frac{1}{z}}
> $$
> Il punto $z_0 = 0$ è una singolarità essenziale. Infatti $f$ è olomorfa in $\mathbb{C} \setminus \{0\}$, ma lungo l'asse reale:
> $$
> \lim_{x \to 0^+} e^{\frac{1}{x}} = +\infty \neq 0 = \lim_{x \to 0^-} e^{\frac{1}{x}} \implies \nexists \lim_{z \to 0} e^{\frac{1}{z}}
> $$
> non ammettendo limite né finito né infinito, $z_0 = 0$ non può essere né eliminabile né un polo.
>
### Il Grande Teorema di Picard

> [!theorem] Grande Teorema di Picard
> Sia $z_0 \in \Omega \subseteq \mathbb{C}$, $f: \Omega \setminus \{z_0\} \to \mathbb{C}$ olomorfa, e sia $z_0$ un punto di singolarità essenziale per $f$.
> Allora, per ogni intorno $U$ di $z_0$, l'immagine dell'intorno forato è l'intero piano complesso o al più il piano privato di un singolo punto:
> $$
> f(U \setminus \{z_0\}) = \begin{cases} \mathbb{C} \\ \text{oppure} \\ \mathbb{C} \setminus \{w\} \quad \text{per qualche } w \in \mathbb{C} \end{cases}
> $$

> [!note] Densità e sovra-completezza dell'immagine
> In ogni intorno arbitrariamente piccolo $U$ attorno a una singolarità essenziale, la funzione assume **tutti i valori complessi possibili**, con al massimo una sola eccezione eccezionale.

> [!example] Risoluzione esplicita per l'esponenziale essenziale
> Consideriamo nuovamente $f(z) = e^{\frac{1}{z}}$ in un intorno dell'origine $z_0 = 0$. Essa assume tutti i valori di $\mathbb{C} \setminus \{0\}$.
> Dimostriamo che per ogni $w \in \mathbb{C} \setminus \{0\}$ esistono infinite soluzioni di:
> $$
> e^{\frac{1}{z}} = w
> $$
> in ogni intorno arbitrario di $0$. Scriviamo $w$ in forma polare:
> $$
> w = \rho (\cos\theta + i\sin\theta) = \rho e^{i\theta}, \quad \rho = |w| > 0, \; \theta \in [0, 2\pi)
> $$
> Ponendo $\dfrac{1}{z} = x + iy$, l'equazione diventa:
> $$
> e^{\frac{1}{z}} = e^{x+iy} = e^x (\cos y + i \sin y) = \rho (\cos\theta + i\sin\theta)
> $$
> Uguagliando modulo e argomento:
> $$
> \begin{cases} e^x = \rho \implies x = \log\rho \\ y = \theta + 2k\pi, \quad k \in \mathbb{Z} \end{cases}
> $$
> Segue che:
> $$
> \frac{1}{z_k} = \log\rho + i(\theta + 2k\pi)
> $$
> Invertendo:
> $$
> \begin{align}
> z_k &= \frac{1}{\log\rho + i(\theta + 2k\pi)} \\
> &= \frac{\log\rho - i(\theta + 2k\pi)}{\log^2\rho + (\theta + 2k\pi)^2} \\
> &= \frac{\log\rho}{\log^2\rho + (\theta + 2k\pi)^2} - i \frac{\theta + 2k\pi}{\log^2\rho + (\theta + 2k\pi)^2}, \quad k \in \mathbb{Z}
> \end{align}
> $$
> Calcolando il limite per $k \to \pm\infty$:
> $$
> \lim_{k \to \pm\infty} z_k = 0
> $$
> Dunque, in qualsiasi intorno forato $B_\varepsilon(0) \setminus \{0\}$, cadono infiniti punti $z_k$ in cui $f(z_k) = w$.
>
## 1.10. Sviluppi in serie di Laurent

> [!theorem] Teorema di sviluppo in serie di Laurent
> Sia $\Omega \subseteq \mathbb{C}$ aperto, $z_0 \in \Omega$, e $f: \Omega \setminus \{z_0\} \to \mathbb{C}$ olomorfa.
> Allora esiste $R > 0$ tale che $B_R(z_0) \subset \Omega$, ed esiste un'unica successione bilatera di coefficienti complessi $\{c_k\}_{k \in \mathbb{Z}}$ tale che:
> 
> 1. La serie di potenze:
>    $$
>    \sum_{n=0}^{+\infty} c_n (z - z_0)^n
>    $$
>    ha raggio di convergenza $r' \ge R$.
> 
> 2. La serie di potenze negative:
>    $$
>    \sum_{n=1}^{+\infty} c_{-n} (z - z_0)^{-n}
>    $$
>    ha raggio di convergenza $r'' = +\infty$ rispetto alla variabile $w = \dfrac{1}{z - z_0}$ (converge per ogni $z \neq z_0$).
> 
> 3. Per ogni $z \in B_R(z_0) \setminus \{z_0\}$ vale la rappresentazione:
>    $$
>    f(z) = \sum_{k \in \mathbb{Z}} c_k (z - z_0)^k := \sum_{k=0}^{+\infty} c_k (z - z_0)^k + \sum_{k=1}^{+\infty} c_{-k} (z - z_0)^{-k}
>    $$
> 
> Inoltre, per ogni $k \in \mathbb{Z}$, i coefficienti sono univocamente determinati dalla formula integrale:
> $$
> c_k = \frac{1}{2\pi i} \int_{C_r(z_0)} \frac{f(z)}{(z - z_0)^{k+1}} \, dz
> $$
> dove $C_r(z_0)$ è una qualsiasi circonferenza di raggio $0 < r < R$ percorsa in senso antiorario.

> [!definition] Sviluppo in serie di Laurent, parte regolare e parte singolare
> Se $f$ soddisfa le ipotesi del teorema precedente, la serie bilatera:
> $$
> f(z) = \sum_{k=-\infty}^{+\infty} c_k (z - z_0)^k
> $$
> prende il nome di **sviluppo in serie di Laurent** di $f$ centrato in $z_0$.
> - La componente con indici non negativi:
>   $$
>   \sum_{k=0}^{+\infty} c_k (z - z_0)^k
>   $$
>   è detta **parte regolare** dello sviluppo di Laurent.
> - La componente con indici strettamente negativi:
>   $$
>   \sum_{k=1}^{+\infty} c_{-k} (z - z_0)^{-k}
>   $$
>   è detta **parte singolare** (o **parte principale**) dello sviluppo di Laurent.
>
### Il Residuo di una funzione olomorfa

> [!definition] Residuo
> Il coefficiente $c_{-1}$ dello sviluppo di Laurent, dato da:
> $$
> c_{-1} = \frac{1}{2\pi i} \int_{C_r(z_0)} f(z) \, dz
> $$
> è detto **residuo** di $f$ nel punto singolare isolato $z_0$, e si denota con:
> $$
> \operatorname{Res}(f, z_0) := c_{-1}
> $$

> [!example] Residuo dei monomi fratti
> Sia $f(z) = \dfrac{1}{z^r}$ con $z_0 = 0$ e $r \in \mathbb{N}$.
> La funzione è olomorfa in $\mathbb{C} \setminus \{0\}$. I coefficienti dello sviluppo di Laurent attorno all'origine sono:
> $$
> c_k = 0 \quad \forall k \ge 0, \qquad c_{-k} = \begin{cases} 1 & \text{se } k = r \\ 0 & \text{se } k \neq r \end{cases}
> $$
> Di conseguenza, il residuo vale:
> $$
> \operatorname{Res}(f, 0) = c_{-1} = \begin{cases} 1 & \text{se } r = 1 \\ 0 & \text{se } r \ge 2 \end{cases}
> $$
>
### Diagnosi delle singolarità isolate tramite la serie di Laurent

Come riconoscere la natura delle singolarità isolate analizzando la serie di Laurent?

1. **Singolarità eliminabile:**
   $z_0$ è una singolarità eliminabile se e solo se $f$ è limitata in un intorno forato $U \setminus \{z_0\}$.
   Ciò equivale ad affermare che la parte singolare è identicamente nulla:
   $$
   \sum_{k=1}^{+\infty} c_{-k} (z - z_0)^{-k} \equiv 0
   $$
   poiché se esistesse un termine non nullo, la funzione diverrebbe illimitata per $z \to z_0$. Dunque:
   $$
   c_{-k} = 0 \quad \forall k \in \mathbb{N} \iff f(z) = \sum_{k=0}^{+\infty} c_k (z - z_0)^k
   $$
   La serie coincide con la serie di Taylor della funzione estesa $\tilde{f}$, che fornisce il prolungamento olomorfo in $z_0$. In particolare:
   $$
   \lim_{z \to z_0} \tilde{f}(z) = \tilde{f}(z_0) = c_0 \iff \tilde{f}(z) = \begin{cases} f(z) & \text{in } U \setminus \{z_0\} \\ c_0 & \text{in } z_0 \end{cases}
   $$

2. **Polo:**
   $z_0$ è un polo per $f$ se e solo se:
   $$
   \lim_{z \to z_0} f(z) = \infty \iff \lim_{z \to z_0} |f(z)| = +\infty \iff \lim_{z \to z_0} \frac{1}{|f(z)|} = 0^+ \iff \lim_{z \to z_0} \frac{1}{f(z)} = 0
   $$
   Inoltre, per il teorema di permanenza del segno, esiste un intorno $U$ di $z_0$ tale che:
   $$
   |f(z)| > 0 \quad \forall z \in U \setminus \{z_0\} \iff f(z) \neq 0 \quad \forall z \in U \setminus \{z_0\}
   $$
   Definendo la funzione reciproca:
   $$
   g(z) := \begin{cases} \dfrac{1}{f(z)} & z \in U \setminus \{z_0\} \\ 0 & z = z_0 \end{cases}
   $$
   poiché $\lim_{z \to z_0} g(z) = 0 = g(z_0)$, la singolarità di $g$ in $z_0$ è eliminabile e $g$ è **olomorfa** in tutto $U$, con $g(z_0) = 0$.

## 1.11. Principio di identità per funzioni olomorfe

> [!theorem] Teorema del principio di identità per funzioni olomorfe
> Sia $f: \Omega \subseteq \mathbb{C} \to \mathbb{C}$ olomorfa su un aperto connesso $\Omega \subseteq \mathbb{C}$.
> Sia $\mathcal{Z}(f) := \{ z \in \Omega : f(z) = 0 \}$ l'insieme degli zeri di $f$.
> Allora sono tra loro equivalenti le seguenti quattro affermazioni:
> 
> 1. Esiste $z_0 \in \Omega$ tale che $z_0$ è un punto di accumulazione per $\mathcal{Z}(f)$.
> 2. Esiste $z_0 \in \Omega$ tale che tutte le derivate si annullano in $z_0$:
>    $$
>    f^{(n)}(z_0) = 0 \quad \forall n \in \mathbb{N} \cup \{0\}
>    $$
> 3. Esiste $z_0 \in \Omega$ e un intorno $U$ di $z_0$ contenuto nell'insieme degli zeri:
>    $$
>    U \subset \mathcal{Z}(f)
>    $$
> 4. $\mathcal{Z}(f) = \Omega$, ossia la funzione è identicamente nulla su tutto il dominio:
>    $$
>    f(z) = 0 \quad \forall z \in \Omega
>    $$

> [!quote]- Dimostrazione
> **Dimostrazione di $(1 \implies 2)$:**
> Essendo $f$ olomorfa in $\Omega$, essa è continua in ogni punto. In particolare:
> $$
> f(z_0) = \lim_{z \to z_0} f(z) = \lim_{n \to +\infty} f(z_n)
> $$
> Poiché per ipotesi $z_0$ è punto di accumulazione per $\mathcal{Z}(f)$, esiste una successione di punti distinti $\{z_n\}_{n \in \mathbb{N}} \subset \mathcal{Z}(f) \setminus \{z_0\}$ tale che $z_n \to z_0$ per $n \to +\infty$ (per il teorema di Bolzano-Weierstrass). Poiché $f(z_n) = 0$ per ogni $n \in \mathbb{N}$:
> $$
> f(z_0) = \lim_{n \to +\infty} 0 = 0
> $$
> Calcoliamo ora la derivata prima $f'(z_0)$ tramite il limite del rapporto incrementale:
> $$
> f'(z_0) = \lim_{z \to z_0} \frac{f(z) - f(z_0)}{z - z_0} = \lim_{z \to z_0} \frac{f(z)}{z - z_0} = \lim_{n \to +\infty} \frac{f(z_n)}{z_n - z_0} = \lim_{n \to +\infty} \frac{0}{z_n - z_0} = 0
> $$
> Posto $g(z) := f'(z)$, la funzione $g$ è olomorfa in $\Omega$ e ammette la medesima successione di zeri per il rapporto incrementale. Ripetendo analogamente il ragionamento:
> $$
> g'(z_0) = f''(z_0) = 0
> $$
> Iterando il procedimento per induzione su ogni ordine di derivazione, si conclude:
> $$
> f^{(n)}(z_0) = 0 \quad \forall n \in \mathbb{N} \cup \{0\}
> $$
> 
> **Dimostrazione di $(2 \implies 3)$:**
> Poiché $f$ è olomorfa in $\Omega$, per il Teorema di analiticità essa è sviluppabile in serie di Taylor in un intorno circolare $U = B_R(z_0) \subset \Omega$:
> $$
> f(z) = \sum_{n=0}^{+\infty} \frac{f^{(n)}(z_0)}{n!} (z - z_0)^n \quad \forall z \in U
> $$
> Avendo per ipotesi $f^{(n)}(z_0) = 0$ per ogni $n \in \mathbb{N} \cup \{0\}$, ogni coefficiente di Taylor si annulla:
> $$
> f(z) = \sum_{n=0}^{+\infty} 0 \cdot (z - z_0)^n = 0 \quad \forall z \in U
> $$
> Ne consegue direttamente che $U \subset \mathcal{Z}(f)$.
> 
> **Dimostrazione di $(3 \implies 1)$:**
> Se esiste un intorno $U \subset \mathcal{Z}(f)$ di $z_0$, ogni punto $z \in U \setminus \{z_0\}$ appartiene a $\mathcal{Z}(f)$. Di conseguenza, $z_0$ è banalmente punto di accumulazione per $\mathcal{Z}(f)$ per definizione topologica di intorno.
> 
> **Dimostrazione di $(3 \implies 4)$:**
> Procediamo per assurdo. Supponiamo che $\mathcal{Z}(f) \neq \Omega$. Allora esiste almeno un punto $\tilde{z} \in \Omega$ tale che $f(\tilde{z}) \neq 0$.
> Poiché $\Omega$ è un aperto connesso in $\mathbb{C}$, esso è connesso per archi. Esiste dunque una curva continua:
> $$
> \gamma: [a, b] \longrightarrow \Omega \qquad \text{con } \gamma(a) = z_0, \; \gamma(b) = \tilde{z}
> $$
> Vale pertanto:
> $$
> f(\gamma(a)) = f(z_0) = 0, \qquad f(\gamma(b)) = f(\tilde{z}) \neq 0
> $$
> Definiamo l'estremo inferiore dell'insieme dei tempi in cui la curva esce dal luogo degli zeri:
> $$
> \bar{t} := \inf \{ t \in [a, b] : f(\gamma(t)) \neq 0 \}
> $$
> Per la continuità della funzione composta $f \circ \gamma$, deve risultare $\bar{t} \in (a, b)$.
> Per definizione di estremo inferiore:
> $$
> f(\gamma(t)) = 0 \quad \forall t \in [a, \bar{t}]
> $$
> Di conseguenza, il punto $\bar{z} := \gamma(\bar{t})$ è un punto di accumulazione per $\mathcal{Z}(f)$.
> Ma abbiamo già dimostrato l'equivalenza $(1 \iff 3)$: quindi esiste un intorno $\bar{U}$ di $\bar{z}$ tale che $\bar{U} \subset \mathcal{Z}(f)$.
> Per la continuità della curva $\gamma$, esiste un raggio $r > 0$ tale che $\gamma(t) \in \bar{U}$ per ogni $t \in (\bar{t} - r, \bar{t} + r)$. Ne segue che:
> $$
> f(\gamma(t)) = 0 \quad \forall t \in (\bar{t} - r, \bar{t} + r)
> $$
> Il che contraddice apertamente la definizione di $\bar{t}$ come estremo inferiore dei tempi in cui $f(\gamma(t)) \neq 0$ ($\lightning$).
> L'assurdo scaturisce dall'aver ipotizzato l'esistenza di $\tilde{z}$ con $f(\tilde{z}) \neq 0$. Pertanto:
> $$
> f(z) = 0 \quad \forall z \in \Omega
> $$
> 
> **Dimostrazione di $(4 \implies 1)$:**
> Se $\mathcal{Z}(f) = \Omega$, essendo $\Omega$ un aperto non vuoto di $\mathbb{C}$, esso è un insieme infinito e denso in sé. Per il teorema di Bolzano-Weierstrass ogni suo punto è punto di accumulazione per $\mathcal{Z}(f)$, rendendo l'implicazione banale. $\blacksquare$

> [!note] Dicotomia topologica degli zeri
> Dal principio di identità discende una rigidità strutturale straordinaria delle funzioni olomorfe: per ogni funzione olomorfa $f$ definita su un dominio connesso $\Omega$, si presentano esclusivamente due scenari mutuamente esclusivi:
> $$
> \mathcal{Z}(f) = \begin{cases} \Omega & (\text{la funzione è identicamente nulla}) \\ \emptyset \text{ oppure costituito esclusivamente da punti isolati} & (\text{gli zeri non possono accumularsi}) \end{cases}
> $$
>
### Ordine di annullamento di uno zero

> [!definition] Ordine di uno zero
> Sia $f: \Omega \subseteq \mathbb{C} \to \mathbb{C}$ olomorfa su un aperto connesso $\Omega$, con $f \not\equiv 0$.
> Sia $z_0 \in \mathcal{Z}(f) := f^{-1}(0)$. Per il principio di identità $z_0$ è uno zero isolato per $f$, ed esiste un indice $n_0 \in \mathbb{N}$ tale che $f^{(n_0)}(z_0) \neq 0$.
> È pertanto ben definito l'intero positivo:
> $$
> r := \min \{ n \in \mathbb{N} : f^{(n)}(z_0) \neq 0 \} \in \mathbb{N}
> $$
> Il numero intero $r$ è detto **ordine dello zero** $z_0$ per la funzione $f$.

> [!example] Zero di ordine 2
> Una funzione olomorfa $f$ possiede uno zero di ordine 2 in $z_0 \in \mathbb{C}$ se e solo se:
> $$
> f(z_0) = 0, \quad f'(z_0) = 0, \quad f''(z_0) \neq 0
> $$

> [!proposition] Caratterizzazione analitica dell'ordine dello zero
> Sia $f: \Omega \subseteq \mathbb{C} \to \mathbb{C}$ olomorfa e $z_0 \in \Omega$.
> Allora la condizione che $z_0$ sia uno zero di ordine $r \in \mathbb{N}$ per $f$ è equivalente a ciascuna delle seguenti affermazioni:
> 
> 1. Si annullano tutte le derivate fino all'ordine $r-1$ mentre la derivata $r$-esima è non nulla:
>    $$
>    f(z_0) = f'(z_0) = \dots = f^{(r-1)}(z_0) = 0 \neq f^{(r)}(z_0)
>    $$
> 
> 2. Esiste un intorno $U \subset \Omega$ di $z_0$ in cui lo sviluppo di Taylor inizia dal grado $r$:
>    $$
>    f(z) = \sum_{n=r}^{+\infty} \frac{f^{(n)}(z_0)}{n!} (z - z_0)^n \quad \forall z \in U
>    $$
> 
> 3. Per $z \to z_0$ sussiste la stima asintotica locale:
>    $$
>    f(z) = \frac{f^{(r)}(z_0)}{r!} (z - z_0)^r + o((z - z_0)^r)
>    $$
> 
> 4. Il limite normalizzato sul fattore $(z - z_0)^r$ è finito e non nullo:
>    $$
>    \lim_{z \to z_0} \frac{f(z)}{(z - z_0)^r} = \frac{f^{(r)}(z_0)}{r!} \neq 0
>    $$
>
### Ordine di un polo

> [!definition] Ordine di un polo
> Sia $f: \Omega \setminus \{z_0\} \subseteq \mathbb{C} \to \mathbb{C}$ olomorfa, con $\Omega$ aperto connesso.
> Se $z_0 \in \Omega$ è un polo per $f$, allora $z_0$ è uno zero per la funzione reciproca:
> $$
> g(z) := \begin{cases} \dfrac{1}{f(z)} & z \neq z_0 \\ 0 & z = z_0 \end{cases}
> $$
> Si definisce **ordine del polo** $z_0$ per $f$ l'ordine di $z_0$ come zero della funzione olomorfa $g$.

> [!example] Calcolo dell'ordine di un polo
> Consideriamo la funzione:
> $$
> f(z) = \frac{1}{e^z - 1 - z}
> $$
> La sua funzione reciproca è:
> $$
> g(z) = \frac{1}{f(z)} = e^z - z - 1
> $$
> Sviluppando l'esponenziale in serie di Maclaurin per $z \to 0$:
> $$
> e^z - z - 1 = \left( 1 + z + \frac{z^2}{2} + o(z^2) \right) - z - 1 = \frac{z^2}{2} + o(z^2)
> $$
> Poiché il primo termine non nullo è quadratico, $g$ possiede uno zero di ordine $r = 2$ in $z_0 = 0$.
> Ne consegue che $z_0 = 0$ è un **polo di ordine 2** per $f$.

> [!proposition] Caratterizzazione analitica dell'ordine dei poli
> Sia $f: \Omega \setminus \{z_0\} \subseteq \mathbb{C} \to \mathbb{C}$ olomorfa su $\Omega$ aperto, e sia $z_0$ un polo per $f$ di ordine $r \in \mathbb{N}$.
> Allora sono tra loro equivalenti le seguenti affermazioni:
> 
> 1. Il punto $z_0$ è uno zero di ordine $r$ per la funzione $g(z) = \begin{cases} \dfrac{1}{f(z)} & z \neq z_0 \\ 0 & z = z_0 \end{cases}$.
> 
> 2. Il limite del reciproco normalizzato è finito e non nullo:
>    $$
>    \lim_{z \to z_0} \frac{1}{f(z)(z - z_0)^r} = l \in \mathbb{C} \setminus \{0\}
>    $$
> 
> 3. Il limite della funzione riscalata converge a un valore finito non nullo:
>    $$
>    \lim_{z \to z_0} f(z)(z - z_0)^r = \frac{1}{l} =: c_{-r} \neq 0
>    $$
> 
> 4. Per $z \to z_0$ vale l'espansione asintotica:
>    $$
>    f(z) = \frac{c_{-r}}{(z - z_0)^r} + o((z - z_0)^{-r})
>    $$
> 
> 5. Esiste un intorno $U \subseteq \Omega$ di $z_0$ in cui lo sviluppo di Laurent possiede una parte singolare troncata esattamente all'ordine $-r$:
>    $$
>    f(z) = \sum_{k=-r}^{+\infty} c_k (z - z_0)^k \quad \forall z \in U \setminus \{z_0\}
>    $$
>    con coefficiente dominante $c_{-r} \neq 0$.

> [!example] Struttura di un polo di ordine 3
> Se $f(z)$ possiede in $z_0 = 0$ un polo di ordine 3, la sua serie di Laurent assume la forma esplicita:
> $$
> f(z) = \frac{c_{-3}}{z^3} + \frac{c_{-2}}{z^2} + \frac{c_{-1}}{z} + c_0 + c_1 z + c_2 z^2 + \dots = \sum_{k=-3}^{+\infty} c_k z^k, \qquad c_{-3} \neq 0
> $$
>
### Classificazione complessiva delle singolarità isolate via Laurent

> [!note] Schema riassuntivo della parte singolare
> Sia $f: \Omega \setminus \{z_0\} \to \mathbb{C}$ olomorfa e $z_0$ una singolarità isolata. Allora lo sviluppo di Laurent identifica univocamente la singolarità:
> 
> 1. **Singolarità eliminabile:** La parte singolare è nulla:
>    $$
>    c_{-n} = 0 \quad \forall n \in \mathbb{N}
>    $$
> 
> 2. **Polo di ordine $r$:** La parte singolare è una somma finita di $r$ termini:
>    $$
>    c_{-r} \neq 0 \quad \text{e} \quad c_{-n} = 0 \quad \forall n > r
>    $$
> 
> 3. **Singolarità essenziale:** La parte singolare è una serie infinita:
>    $$
>    \forall n \in \mathbb{N}, \; \exists\, m \ge n : c_{-m} \neq 0
>    $$

> [!example] Esempi comparativi di residui e serie singolari
> - **Polo di ordine $r$:**
>   Per $f(z) = \dfrac{1}{z^r}$, si ha un polo di ordine $r$, e:
>   $$
>   \operatorname{Res}(f, 0) = \begin{cases} 1 & \text{se } r = 1 \\ 0 & \text{se } r \ge 2 \end{cases}
>   $$
> 
> - **Singolarità essenziale:**
>   Per $f(z) = e^{\frac{1}{z}}$, sviluppando in serie:
>   $$
>   f(z) = \sum_{n=0}^{+\infty} \frac{1}{z^n n!} = 1 + \overbrace{\sum_{n=1}^{+\infty} \frac{z^{-n}}{n!}}^{\text{parte singolare infinita}} = 1 + \frac{1}{z} + \frac{1}{2 z^2} + \frac{1}{6 z^3} + \dots
>   $$
>   Il residuo è il coefficiente di $z^{-1}$, ossia $\operatorname{Res}(e^{1/z}, 0) = c_{-1} = 1$.
>
### Comportamento degli ordini sotto derivazione

> [!note] Spostamento degli ordini per derivazione
> - Se $z_0$ è uno **zero di ordine $r \in \mathbb{N}$** per $f$, esso diventa uno **zero di ordine $r-1$** per la derivata $f'$. Infatti:
>   $$
>   f(z) = \sum_{n=r}^{+\infty} c_n (z - z_0)^n \implies f'(z) = \sum_{n=r}^{+\infty} n c_n (z - z_0)^{n-1} = \sum_{n=r-1}^{+\infty} (n+1) c_{n+1} (z - z_0)^n
>   $$
>   con termine di testa $(r) c_r \neq 0$.
> 
> - Similmente, se $z_0$ è un **polo di ordine $r \in \mathbb{N}$** per $f$, esso diventa un **polo di ordine $r+1$** per la derivata $f'$. Infatti:
>   $$
>   f(z) = \frac{c_{-r}}{(z - z_0)^r} + \dots \implies f'(z) = -\frac{r c_{-r}}{(z - z_0)^{r+1}} + \dots
>   $$
>
## 1.12. Teorema di De L'Hôpital nel campo complesso

> [!theorem] Teorema di De L'Hôpital in $\mathbb{C}$
> Siano $f, g: \Omega \setminus \{z_0\} \subset \mathbb{C} \to \mathbb{C}$ olomorfe, con $\Omega$ aperto e $z_0 \in \Omega$.
> Se $f$ e $g$ ammettono entrambe uno zero in $z_0$, oppure ammettono entrambe un polo in $z_0$, allora:
> $$
> \exists \lim_{z \to z_0} \frac{f(z)}{g(z)} = \lim_{z \to z_0} \frac{f'(z)}{g'(z)}
> $$

> [!note] Confronto fondamentale tra De L'Hôpital in $\mathbb{R}$ e in $\mathbb{C}$
> L'enunciato appare formalmente analogo al teorema di De L'Hôpital per funzioni reali di variabile reale, ma sussiste una profonda discrepanza concettuale:
> - In $\mathbb{R}$, l'esistenza del limite del rapporto delle derivate $\lim \dfrac{f'(x)}{g'(x)}$ è **un'ipotesi a priori necessaria** per dedurre l'esistenza del limite originario.
> - In $\mathbb{C}$, la rigidità analitica delle funzioni olomorfe garantisce a priori l'esistenza simultanea di entrambi i limiti.

> [!quote]- Dimostrazione
> Consideriamo il caso in cui $z_0$ sia uno zero per entrambe le funzioni (la dimostrazione per il caso di poli è perfettamente analoga).
> Poniamo $z_0$ zero di ordine $r \in \mathbb{N}$ per $f$, e zero di ordine $\alpha \in \mathbb{N}$ per $g$.
> Per le proprietà di caratterizzazione degli zeri, per $z \to z_0$ abbiamo:
> $$
> \begin{align}
> f(z) &= c_r (z - z_0)^r + o((z - z_0)^r) \implies f'(z) = r c_r (z - z_0)^{r-1} + o((z - z_0)^{r-1}) \\
> g(z) &= d_\alpha (z - z_0)^\alpha + o((z - z_0)^\alpha) \implies g'(z) = \alpha d_\alpha (z - z_0)^{\alpha-1} + o((z - z_0)^{\alpha-1})
> \end{align}
> $$
> con coefficienti dominanti $c_r \neq 0$ e $d_\alpha \neq 0$.
> Calcoliamo il limite del rapporto originario:
> $$
> \begin{align}
> \lim_{z \to z_0} \frac{f(z)}{g(z)} &= \lim_{z \to z_0} \frac{c_r (z - z_0)^r + o((z - z_0)^r)}{d_\alpha (z - z_0)^\alpha + o((z - z_0)^\alpha)} \\
> &\sim \frac{c_r}{d_\alpha} (z - z_0)^{r - \alpha} \xrightarrow{z \to z_0} \begin{cases} \dfrac{c_r}{d_\alpha} = \dfrac{c_r}{d_r} & \text{se } r = \alpha \\[1.5ex] 0 & \text{se } r > \alpha \\[1.5ex] \infty & \text{se } r < \alpha \end{cases}
> \end{align}
> $$
> Calcoliamo ora il limite del rapporto delle derivate:
> $$
> \begin{align}
> \lim_{z \to z_0} \frac{f'(z)}{g'(z)} &= \lim_{z \to z_0} \frac{r c_r (z - z_0)^{r-1} + o((z - z_0)^{r-1})}{\alpha d_\alpha (z - z_0)^{\alpha-1} + o((z - z_0)^{\alpha-1})} \\
> &\sim \frac{r c_r}{\alpha d_\alpha} (z - z_0)^{(r-1) - (\alpha-1)} = \frac{r c_r}{\alpha d_\alpha} (z - z_0)^{r - \alpha} \\
> &\xrightarrow{z \to z_0} \begin{cases} \dfrac{r c_r}{\alpha d_\alpha} = \dfrac{r c_r}{r d_r} = \dfrac{c_r}{d_r} & \text{se } r = \alpha \\[1.5ex] 0 & \text{se } r > \alpha \\[1.5ex] \infty & \text{se } r < \alpha \end{cases}
> \end{align}
> $$
> In tutti e tre i casi i limiti coincidono perfettamente.
> Per il caso in cui $z_0$ sia un polo per entrambe le funzioni vale una dimostrazione del tutto analoga sostituendo le potenze negative di Laurent. $\blacksquare$
>
### Criterio della derivata logaritmica per la determinazione dell'ordine

> [!note] Calcolo dell'ordine mediante la derivata logaritmica
> Sia $f: \Omega \setminus \{z_0\} \to \mathbb{C}$ olomorfa, e sia $z_0$ una singolarità eliminabile (o zero) oppure un polo. Allora esiste sempre finito il limite:
> $$
> \lim_{z \to z_0} (z - z_0) \frac{f'(z)}{f(z)} = r \in \mathbb{Z}
> $$
> e il valore di $r$ diagnostica univocamente la natura del punto:
> - $r = 0 \iff z_0$ è una singolarità eliminabile non zero (o punto regolare con $f(z_0) \neq 0$).
> - $r \in \mathbb{N} \iff z_0$ è uno **zero di ordine $r$** per $f$.
> - $-r \in \mathbb{N} \iff z_0$ è un **polo di ordine $|r|$** per $f$.
> 
> **Verifica analitica:**
> Per $z \to z_0$, la funzione ammette lo sviluppo asintotico dominante con $r \in \mathbb{Z}$ ($r > 0$ per zeri, $r < 0$ per poli, $r = 0$ per punti regolari non nulli):
> $$
> f(z) = c_r (z - z_0)^r + o((z - z_0)^r), \qquad c_r \neq 0
> $$
> Derivando rispetto a $z$:
> $$
> f'(z) = r c_r (z - z_0)^{r-1} + o((z - z_0)^{r-1})
> $$
> Moltiplicando per $(z - z_0)$:
> $$
> (z - z_0) f'(z) = r c_r (z - z_0)^r + o((z - z_0)^r)
> $$
> Ne segue immediatamente:
> - Se $r = 0$:
>   $$
>   \lim_{z \to z_0} \frac{(z - z_0) f'(z)}{f(z)} = \lim_{z \to z_0} \frac{0 \cdot c_0 + o(1)}{c_0 + o(1)} = 0
>   $$
> - Se $r \neq 0$:
>   $$
>   \lim_{z \to z_0} \frac{(z - z_0) f'(z)}{f(z)} = \lim_{z \to z_0} \frac{r c_r (z - z_0)^r}{c_r (z - z_0)^r} = r
>   $$
>
## 1.13. Unicità del prolungamento analitico

> [!theorem] Teorema di unicità del prolungamento analitico
> Sia $\Omega \subseteq \mathbb{C}$ un aperto connesso e sia $S \subseteq \Omega$ un sottoinsieme che ammette un punto di accumulazione $z_0 \in \Omega$.
> Data una funzione $f: S \to \mathbb{C}$, esiste **al più una sola** funzione olomorfa $\tilde{f}: \Omega \to \mathbb{C}$ tale che:
> $$
> \tilde{f}(z) = f(z) \quad \forall z \in S
> $$

> [!quote]- Dimostrazione
> Supponiamo per assurdo che esistano due distinte estensioni olomorfe $\tilde{f}_1$ e $\tilde{f}_2$, ossia due prolungamenti olomorfi di $f$:
> $$
> \tilde{f}_1, \tilde{f}_2: \Omega \longrightarrow \mathbb{C} \quad \text{con } \tilde{f}_1(z) = \tilde{f}_2(z) = f(z) \quad \forall z \in S
> $$
> Definiamo la funzione differenza:
> $$
> g: \Omega \longrightarrow \mathbb{C}, \qquad g(z) := \tilde{f}_1(z) - \tilde{f}_2(z) \quad \forall z \in \Omega
> $$
> Poiché $\tilde{f}_1$ e $\tilde{f}_2$ sono olomorfe in $\Omega$, anche $g$ è olomorfa in $\Omega$.
> Inoltre, per ogni $z \in S$ si ha:
> $$
> g(z) = \tilde{f}_1(z) - \tilde{f}_2(z) = f(z) - f(z) = 0
> $$
> Pertanto l'insieme degli zeri di $g$, denotato con $\mathcal{Z}_g := g^{-1}(0)$, contiene $S$:
> $$
> \mathcal{Z}_g = \{ z \in \Omega : g(z) = 0 \} \supseteq S
> $$
> Poiché per ipotesi fondamentale $z_0 \in \Omega$ è un punto di accumulazione per $S$, segue che $z_0$ è anche un punto di accumulazione per $\mathcal{Z}_g$.
> Essendo $\Omega$ aperto connesso e $g$ olomorfa in $\Omega$, possiamo applicare il Teorema del principio di identità per funzioni olomorfe:
> $$
> g(z) = 0 \quad \forall z \in \Omega \implies \tilde{f}_1(z) = \tilde{f}_2(z) \quad \forall z \in \Omega,
> $$
> dunque il prolungamento olomorfo di $f$ è unico. $\blacksquare$

> [!example] Estensioni olomorfe notevoli e principio di identità in $\mathbb{C}$
> - Esiste ed è unica l'estensione olomorfa a tutto $\mathbb{C}$ per le funzioni elementari reali $\sin x$, $\cos x$, $e^x$, ecc.
> - Le identità analitiche note nei reali (quali $\sin(2x) = 2\sin x \cos x$, $e^{x+y} = e^x e^y$, $\dots$) devono necessariamente valere anche in $\mathbb{C}$. Ad esempio, considerando:
>   $$
>   f(z) = \sin^2 z + \cos^2 z - 1 = 0 \quad \forall z \in \mathbb{R}
>   $$
>   poiché l'insieme di annullamento $\mathbb{R} \subset \mathbb{C}$ ammette punti di accumulazione in $\mathbb{C}$, per il teorema di identità delle funzioni olomorfe risulta identicamente:
>   $$
>   \sin^2 z + \cos^2 z = 1 \quad \forall z \in \mathbb{C}
>   $$
>
Si ricorda che se $f$ ammette una singolarità isolata in $z_0 \in \Omega$, integrando lungo una circonferenza $C_r(z_0)$ di raggio sufficientemente piccolo percorsa in senso antiorario:
$$
\oint_{C_r(z_0)} f(z)\,dz = 2\pi i \operatorname{Res}(f, z_0)
$$
Per il teorema di Cauchy, il valore dell'integrale non muta per qualunque circuito $\gamma$ omotopo a $C_r(z_0)$ in $\Omega \setminus \{z_0\}$. Ci si domanda ora: più in generale, come si opera in presenza di più singolarità isolate all'interno del dominio?

## 1.14. Calcolo dei residui e classificazione delle singolarità

Come si calcolano agevolmente i residui di una funzione olomorfa in una singolarità isolata?

> [!proposition] Regole generali per il calcolo dei residui
> Sia $z_0 \in \Omega$ un punto di singolarità isolata per $f$:
> 
> 1. **Singolarità eliminabile:** Tutti i coefficienti della parte principale dello sviluppo di Laurent si annullano ($c_{-n} = 0 \quad \forall n \in \mathbb{N}$). Di conseguenza:
>    $$
>    \operatorname{Res}(f, z_0) = c_{-1} = 0
>    $$
> 
> 2. **Singolarità essenziale:** La parte principale contiene infiniti termini non nulli. Non esistono formule sintetiche chiuse: è necessario calcolare direttamente lo sviluppo in serie di Laurent centrato in $z_0$ per estrarne il coefficiente $c_{-1}$.
> 
> 3. **Polo di ordine $r \in \mathbb{N}$:** La funzione ammette un polo di ordine $r$ se e solo se la serie di Laurent presenta potenze negative fino all'ordine $-r$. In tal caso vale la formula:
>    $$
>    \operatorname{Res}(f, z_0) = \lim_{z \to z_0} \frac{1}{(r-1)!} \frac{d^{r-1}}{dz^{r-1}} \left[ (z-z_0)^r f(z) \right]
>    $$

> [!quote]- Dimostrazione della formula per poli di ordine $r$
> Nelle ipotesi date, $f$ ammette uno sviluppo di Laurent in un intorno forato $U \setminus \{z_0\}$ con parte principale finita troncata all'ordine $r$:
> $$
> f(z) = \sum_{k=-r}^{+\infty} c_k (z-z_0)^k \quad \forall z \in U \setminus \{z_0\}
> $$
> Moltiplicando ambo i membri per il fattore $(z-z_0)^r$:
> $$
> (z-z_0)^r f(z) = \sum_{k=-r}^{+\infty} c_k (z-z_0)^{k+r}
> $$
> Effettuando il cambio di indice $n = k + r$:
> $$
> (z-z_0)^r f(z) = \sum_{n=0}^{+\infty} c_{n-r} (z-z_0)^n = c_{-r} + c_{1-r}(z-z_0) + \dots + c_{-1}(z-z_0)^{r-1} + c_0(z-z_0)^r + \dots
> $$
> Poiché tale serie di potenze converge in tutto l'intorno $U$, la funzione $(z-z_0)^r f(z)$ è ivi olomorfa. Derivando termine a termine $r-1$ volte rispetto a $z$:
> $$
> \frac{d^{r-1}}{dz^{r-1}} \left[ (z-z_0)^r f(z) \right] = c_{-1} (r-1)! + c_0 r! (z-z_0) + o(z-z_0) \quad \text{per } z \to z_0
> $$
> Passando al limite per $z \to z_0$, tutti i termini dipendenti da potenze positive di $(z-z_0)$ svaniscono:
> $$
> \lim_{z \to z_0} \frac{d^{r-1}}{dz^{r-1}} \left[ (z-z_0)^r f(z) \right] = c_{-1} (r-1)!
> $$
> Isolando il coefficiente $c_{-1}$, che coincide per definizione con il residuo $\operatorname{Res}(f, z_0)$:
> $$
> c_{-1} = \frac{1}{(r-1)!} \lim_{z \to z_0} \frac{d^{r-1}}{dz^{r-1}} \left[ (z-z_0)^r f(z) \right] = \operatorname{Res}(f, z_0) \quad \blacksquare
> $$

> [!example] Esempi notevoli di calcolo dei residui
> **Esempio 1 (Singolarità eliminabile):**
> Sia $f(z) = \frac{\sin z}{z}$ con singolarità in $z_0 = 0$.
> Poiché:
> $$
> \lim_{z \to 0} \frac{\sin z}{z} = 1
> $$
> il limite esiste finito e $z_0 = 0$ è una singolarità eliminabile. Pertanto:
> $$
> \operatorname{Res}(f, 0) = 0
> $$
> 
> **Esempio 2 (Singolarità essenziale):**
> Sia $f(z) = e^{\frac{1}{z}}$ in $z_0 = 0$.
> Sviluppando l'esponenziale nella sua serie di potenze:
> $$
> f(z) = \sum_{n=0}^{+\infty} \frac{1}{n!} \frac{1}{z^n} = \sum_{k=-\infty}^{0} \frac{z^k}{(-k)!} = 1 + \frac{1}{z} + \frac{1}{2! z^2} + \dots
> $$
> La singolarità è essenziale poiché compaiono infiniti termini con potenze negative. Il residuo è il coefficiente di $z^{-1}$ ($n = 1$):
> $$
> \operatorname{Res}(f, 0) = \frac{1}{1!} = 1
> $$
> 
> **Esempio 3 (Singolarità essenziale con sole potenze pari):**
> Sia $f(z) = e^{\frac{1}{z^2}}$ in $z_0 = 0$.
> Lo sviluppo di Laurent è dato da:
> $$
> f(z) = \sum_{n=0}^{+\infty} \frac{1}{n!} \frac{1}{z^{2n}} = 1 + \frac{1}{z^2} + \frac{1}{2! z^4} + \dots
> $$
> Poiché compaiono esclusivamente potenze pari di $z$, il coefficiente del termine dispari $z^{-1}$ è nullo:
> $$
> c_{-1} = 0 \implies \operatorname{Res}(f, 0) = 0
> $$
> 
> **Esempio 4 (Polo di ordine 2):**
> Sia $f(z) = \frac{\sin z}{z^3}$ in $z_0 = 0$.
> Riscrivendo la funzione:
> $$
> f(z) = \frac{1}{z^2} \frac{\sin z}{z} \underset{z \to 0}{\sim} \frac{1}{z^2}
> $$
> la funzione presenta un polo di ordine $r = 2$. Applicando la formula di derivazione con $r = 2$:
> 
> $$
> \begin{align}
> \operatorname{Res}(f, 0) &= \lim_{z \to 0} \frac{1}{(2-1)!} \frac{d}{dz} \left[ z^2 f(z) \right] \\
> &= \lim_{z \to 0} \frac{d}{dz} \left[ \frac{\sin z}{z} \right] \\
> &= \lim_{z \to 0} \left[ \frac{z \cos z - \sin z}{z^2} \right]
> \end{align}
> $$
> 
> Applicando la regola di de l'Hôpital:
> $$
> \lim_{z \to 0} \frac{\cos z - z \sin z - \cos z}{2z} = \lim_{z \to 0} \frac{-z \sin z}{2z} = \lim_{z \to 0} \left(-\frac{\sin z}{2}\right) = 0
> $$
> Dunque:
> $$
> \operatorname{Res}(f, 0) = 0
> $$
> 
> **Esempio 5 (Funzione cotangente modulata):**
> Sia $f(z) = z \frac{\cos z}{\sin z}$. Le singolarità si trovano negli zeri del denominatore:
> $$
> \sin z = 0 \iff z_k = k\pi, \quad k \in \mathbb{Z}
> $$
> Tutte le singolarità $z_k$ sono isolate. Si distinguono due casi:
> - Per $k = 0$ ($z_0 = 0$):
>   $$
>   \lim_{z \to 0} z \frac{\cos z}{\sin z} = \lim_{z \to 0} \left( \frac{z}{\sin z} \cos z \right) = 1 \cdot 1 = 1
>   $$
>   Dunque $z_0 = 0$ è una singolarità eliminabile, da cui:
>   $$
>   \operatorname{Res}(f, 0) = 0
>   $$
> - Per $k \neq 0$ ($z_k = k\pi$):
>   Poiché $z \cos z \to k\pi (-1)^k \neq 0$ e $\sin z \to 0$, $f(z) \to \infty$: $z_k$ è un polo di ordine $r = 1$. Verifichiamolo calcolando:
>   $$
>   \lim_{z \to k\pi} (z - k\pi) f(z) = \lim_{z \to k\pi} \left[ z \cos z \cdot \frac{z - k\pi}{\sin z} \right]
>   $$
>   Ponendo $w = z - k\pi \to 0$:
>   $$
>   \begin{align}
>   \lim_{z \to k\pi} (z - k\pi) f(z) &= k\pi (-1)^k \lim_{w \to 0} \frac{w}{\sin(w + k\pi)} \\
>   &= k\pi (-1)^k \lim_{w \to 0} \frac{w}{\sin w \cos(k\pi) + \cos w \sin(k\pi)} \\
>   &= k\pi (-1)^k \lim_{w \to 0} \frac{w}{(-1)^k \sin w} \\
>   &= k\pi \lim_{w \to 0} \frac{w}{\sin w} = k\pi
>   \end{align}
>   $$
>   Essendo un polo semplice ($r = 1$):
>   $$
>   \operatorname{Res}(f, k\pi) = \lim_{z \to k\pi} (z - k\pi) f(z) = k\pi \quad \forall k \in \mathbb{Z} \setminus \{0\}
>   $$

> [!lemma] Calcolo rapido del residuo per poli semplici di funzioni quoziente
> Siano $\Omega \subseteq \mathbb{C}$ un aperto e $z_0 \in \Omega$. Siano $g, h: \Omega \to \mathbb{C}$ due funzioni olomorfe in $\Omega$, e si consideri la funzione quoziente:
> $$
> f(z) = \frac{g(z)}{h(z)}, \quad f: \Omega \setminus \{z_0\} \to \mathbb{C}
> $$
> Se $h$ possiede uno zero di ordine $1$ in $z_0$ (ossia $h(z_0) = 0$ e $h'(z_0) \neq 0$), allora:
> $$
> \operatorname{Res}(f, z_0) = \frac{g(z_0)}{h'(z_0)}
> $$

> [!quote]- Dimostrazione
> Si considerano separatamente i due casi a seconda del valore assunto da $g(z_0)$:
> 
> **Caso 1: $g(z_0) \neq 0$.**
> Poiché $g$ e $h$ sono olomorfe in $\Omega$, sviluppando in serie di Taylor nell'intorno di $z_0$:
> $$
> \begin{align}
> g(z) &= \sum_{n=0}^{+\infty} \frac{g^{(n)}(z_0)}{n!} (z-z_0)^n = g(z_0) + o(1) \quad \text{per } z \to z_0 \\
> h(z) &= \sum_{n=0}^{+\infty} \frac{h^{(n)}(z_0)}{n!} (z-z_0)^n = h'(z_0)(z-z_0) + o(z-z_0) \quad \text{per } z \to z_0
> \end{align}
> $$
> Calcolando il limite del prodotto $(z-z_0)f(z)$:
> $$
> \lim_{z \to z_0} (z-z_0) f(z) = \lim_{z \to z_0} (z-z_0) \frac{g(z_0) + o(1)}{h'(z_0)(z-z_0) + o(z-z_0)} = \lim_{z \to z_0} \frac{g(z_0) + o(1)}{h'(z_0) + o(1)} = \frac{g(z_0)}{h'(z_0)}
> $$
> Poiché $g(z_0) \neq 0$ e $h'(z_0) \neq 0$, il limite è un numero complesso non nullo, provando che $z_0$ è un polo di ordine $r = 1$. Inoltre, tale limite coincide con il residuo:
> $$
> \operatorname{Res}(f, z_0) = \frac{g(z_0)}{h'(z_0)}
> $$
> 
> **Caso 2: $g(z_0) = 0$.**
> In questo caso, anche $g$ ammette uno zero in $z_0$, pertanto $g(z) = g'(z_0)(z-z_0) + o(z-z_0)$. Sostituendo:
> $$
> f(z) = \frac{g'(z_0)(z-z_0) + o(z-z_0)}{h'(z_0)(z-z_0) + o(z-z_0)} \xrightarrow{z \to z_0} \frac{g'(z_0)}{h'(z_0)} \in \mathbb{C}
> $$
> Il limite di $f(z)$ per $z \to z_0$ esiste finito, quindi $z_0$ è una singolarità eliminabile per $f$. Il residuo è nullo:
> $$
> \operatorname{Res}(f, z_0) = 0 = \frac{g(z_0)}{h'(z_0)} \quad (\text{essendo } g(z_0) = 0)
> $$
> In entrambi i casi la formula $\operatorname{Res}(f, z_0) = \frac{g(z_0)}{h'(z_0)}$ è pienamente dimostrata. $\blacksquare$

> [!example] Applicazione del lemma al caso $f(z) = z \frac{\cos z}{\sin z}$
> Si consideri nuovamente $f(z) = z \frac{\cos z}{\sin z}$ nei punti singolari $z_k = k\pi$ ($k \in \mathbb{Z}$).
> Ponendo:
> $$
> g(z) = z \cos z, \quad h(z) = \sin z
> $$
> Si ha che $g$ e $h$ sono intere, $g(k\pi) = k\pi \cos(k\pi) = (-1)^k k\pi$, e:
> $$
> h'(z) = \cos z \implies h'(k\pi) = \cos(k\pi) = (-1)^k \neq 0
> $$
> $h$ ha zeri semplici in ogni $z_k$. Applicando direttamente il lemma:
> $$
> \operatorname{Res}(f, z_k) = \frac{g(k\pi)}{h'(k\pi)} = \frac{(-1)^k k\pi}{(-1)^k} = k\pi
> $$
> Si ritrova istantaneamente il risultato senza dover espandere il limite goniometrico.
>
## 1.15. Indice di avvolgimento

Per calcolare integrali di linea di funzioni olomorfe lungo curve chiuse generiche che circondano più singolarità, occorre quantificare formalmente quante volte e in quale verso la curva ruota attorno a ciascun punto singolare.

> [!definition] Indice di avvolgimento
> Sia $r: [a, b] \to \mathbb{C}$ una curva chiusa continua ($r(a) = r(b)$), e sia $\gamma = r([a, b])$ il suo sostegno. Sia $z_0 \in \mathbb{C} \setminus \gamma$ un punto non appartenente alla curva.
> Rappresentando la curva in coordinate polari centrate in $z_0$:
> $$
> \rho(t) := |r(t) - z_0| > 0, \quad \theta: [a, b] \xrightarrow{C^0} \mathbb{R}
> $$
> tale che per ogni $t \in [a, b]$ valga:
> $$
> r(t) = z_0 + \rho(t) e^{i\theta(t)}
> $$
> Si definisce **indice di avvolgimento** (o *winding number*) di $\gamma$ rispetto a $z_0$:
> $$
> \operatorname{Ind}(\gamma, z_0) := \frac{\theta(b) - \theta(a)}{2\pi} \in \mathbb{Z}
> $$

> [!note] Significato geometrico e proprietà fondamentali
> - Tale quantità rappresenta il numero netto di giri completi compiuti dalla curva $\gamma$ attorno a $z_0$, con il segno determinato dall'orientamento:
>   - **Positivo ($> 0$):** rotazione netta in senso antiorario;
>   - **Negativo ($< 0$):** rotazione netta in senso orario.
> - **Interezza dell'indice:** Poiché la curva è chiusa, $r(a) = r(b)$, da cui:
>   $$
>   z_0 + \rho(a) e^{i\theta(a)} = z_0 + \rho(b) e^{i\theta(b)} \implies \rho(a) e^{i\theta(a)} = \rho(b) e^{i\theta(b)}
>   $$
>   Essendo $\rho(t) = |r(t) - z_0|$, si ha $\rho(a) = \rho(b) \neq 0$, implicando:
>   $$
>   e^{i\theta(a)} = e^{i\theta(b)} \iff \theta(b) - \theta(a) = 2k\pi, \quad k \in \mathbb{Z}
>   $$
>   Ne consegue rigorosamente che:
>   $$
>   \operatorname{Ind}(\gamma, z_0) = \frac{2k\pi}{2\pi} = k \in \mathbb{Z}
>   $$
> - **Invarianza:** Parametrizzazioni equivalenti di $\gamma$ che preservano l'orientazione forniscono il medesimo indice di avvolgimento.
> - **Curve con auto-intersezioni:** La curva non deve essere necessariamente semplice: può intrecciarsi o percorrere cappi multipli.

> [!example] Indice di avvolgimento per circonferenze
> Si consideri la circonferenza centrata nell'origine di raggio $r > 0$:
> 
> 1. **Orientazione antioraria:** $\gamma = C_r(0)$ con parametrizzazione $r(t) = r e^{it}$ per $t \in [0, 2\pi]$:
>    - Per ogni punto interno $z_1 \in \mathbb{C}$ con $|z_1| < r$: $\operatorname{Ind}(\gamma, z_1) = 1$;
>    - Per ogni punto esterno $z_2 \in \mathbb{C}$ con $|z_2| > r$: $\operatorname{Ind}(\gamma, z_2) = 0$.
> 
> 2. **Orientazione oraria:** $\gamma = -C_r(0)$ con parametrizzazione $r(t) = r e^{-it}$ per $t \in [0, 2\pi]$:
>    - Per ogni punto interno $|z_1| < r$: $\operatorname{Ind}(\gamma, z_1) = -1$;
>    - Per ogni punto esterno $|z_2| > r$: $\operatorname{Ind}(\gamma, z_2) = 0$.
> 
> 3. **Avvolgimenti multipli:** Se la stessa traiettoria oraria viene percorsa per $t \in [0, 14\pi]$, essa compie $7$ rivoluzioni complete in senso orario:
>    $$
>    \operatorname{Ind}(\gamma, z_1) = -7, \quad \operatorname{Ind}(\gamma, z_2) = 0
>    $$
>    Pertanto, a parità di sostegno geometrico $\gamma$, la specifica parametrizzazione e la molteplicità di percorrenza determinano il valore dell'indice.

> [!theorem] Formula analitica per il calcolo dell'indice di avvolgimento
> Sia $\gamma = r([a, b])$ una curva chiusa di classe $C^1$ a tratti, e sia $z_0 \in \mathbb{C} \setminus \gamma$. Allora l'indice di avvolgimento coincide con il seguente integrale di linea complesso:
> $$
> \operatorname{Ind}(\gamma, z_0) = \frac{1}{2\pi i} \int_\gamma \frac{dz}{z - z_0}
> $$

> [!quote]- Dimostrazione
> Parametrizziamo la curva $\gamma$ in forma polare attorno al punto $z_0$:
> $$
> r(t) = z_0 + \rho(t) e^{i\theta(t)}, \quad t \in [a, b]
> $$
> con $\rho(t) > 0$ e $\rho, \theta$ di classe $C^1$. Calcoliamo l'elemento differenziale $dz = \dot{r}(t)\,dt$:
> $$
> \dot{r}(t) = \dot{\rho}(t) e^{i\theta(t)} + i \rho(t) \dot{\theta}(t) e^{i\theta(t)}
> $$
> Sostituendo nell'integrale:
> $$
> \begin{align}
> \int_\gamma \frac{dz}{z - z_0} &= \int_a^b \frac{\dot{\rho}(t) e^{i\theta(t)} + i \rho(t) \dot{\theta}(t) e^{i\theta(t)}}{\rho(t) e^{i\theta(t)}}\,dt \\
> &= \int_a^b \left( \frac{\dot{\rho}(t)}{\rho(t)} + i \dot{\theta}(t) \right)\,dt \\
> &= \left[ \log(\rho(t)) \right]_a^b + i \left[ \theta(t) \right]_a^b \\
> &= \log\left( \frac{\rho(b)}{\rho(a)} \right) + i \left[ \theta(b) - \theta(a) \right]
> \end{align}
> $$
> Essendo la curva chiusa, $\rho(b) = \rho(a)$, da cui $\log(1) = 0$. Ne segue che:
> $$
> \int_\gamma \frac{dz}{z - z_0} = i \left[ \theta(b) - \theta(a) \right]
> $$
> Dividendo per $2\pi i$:
> $$
> \frac{1}{2\pi i} \int_\gamma \frac{dz}{z - z_0} = \frac{\theta(b) - \theta(a)}{2\pi} = \operatorname{Ind}(\gamma, z_0) \quad \blacksquare
> $$

> [!note] Invarianza per omotopia
> In virtù del teorema integrale di Cauchy, l'integrale $\frac{1}{2\pi i}\int_\gamma \frac{dz}{z-z_0}$ assume lo stesso valore per qualunque altro circuito $\gamma'$ omotopo a $\gamma$ nell'aperto $\mathbb{C} \setminus \{z_0\}$.
>
## 1.16. Il Teorema dei Residui

> [!theorem] Teorema dei Residui
> Sia $\Omega \subseteq \mathbb{C}$ un aperto e sia $\gamma \subset \Omega$ un circuito omotopo ad un punto in $\Omega$.
> Sia $S \subset \Omega$ l'insieme delle singolarità isolate di una funzione $f$, tale che $S$ non ammetta punti di accumulazione in $\Omega$ e sia disgiunto dal supporto della curva ($S \cap \gamma = \varnothing$).
> Sia $f: \Omega \setminus S \to \mathbb{C}$ una funzione olomorfa.
> 
> Allora:
> 1. L'indice di avvolgimento $\operatorname{Ind}(\gamma, z_0)$ è non nullo al più per un numero finito di punti $z_0 \in S$;
> 2. Vale la formula fondamentale dei residui:
>    $$
>    \int_\gamma f(z)\,dz = 2\pi i \sum_{z_0 \in S} \operatorname{Res}(f, z_0) \operatorname{Ind}(\gamma, z_0)
>    $$

> [!note] Vincolo essenziale sull'omotopia
> Si noti con estrema attenzione che il circuito $\gamma$ deve essere omotopo ad un punto **nell'aperto $\Omega$**, e **non** nell'aperto forato $\Omega \setminus S$ (dove i fori creati dalle singolarità impedirebbero la contraibilità).

> [!example] Esempi di integrazione con il teorema dei residui
> **Esempio 1 (Singolarità singola e circonferenza standard):**
> Sia $z_0$ l'unica singolarità isolata contenuta all'interno di $\gamma = C_r(z_0)$ orientata positivamente, con $r > 0$ tale che $C_r(z_0) \subset \Omega \setminus \{z_0\}$. Poiché $\operatorname{Ind}(\gamma, z_0) = 1$, si ritrova immediatamente la formula nota:
> $$
> \oint_{C_r(z_0)} f(z)\,dz = 2\pi i \operatorname{Res}(f, z_0)
> $$
> 
> **Esempio 2 (Integrazione di funzione razionale con poli multipli):**
> Si calcoli l'integrale:
> $$
> I = \int_{C_r(2i)} \frac{dz}{(z^2 + 1)(z^2 - 9)}
> $$
> dove $C_r(2i)$ è una circonferenza centrata in $2i$ di raggio opportuno tale da racchiudere solo il polo $z = i$.
> L'insieme delle singolarità della funzione integranda $f(z) = \frac{1}{(z^2+1)(z^2-9)}$ è dato dalle radici del denominatore:
> $$
> S = \{ \pm i, \pm 3 \}
> $$
> Per un raggio $r$ tale che $C_r(2i)$ separi le singolarità (ad esempio $r = 1.5$), si ha:
> $$
> \operatorname{Ind}(\gamma, i) = 1, \quad \operatorname{Ind}(\gamma, -i) = 0, \quad \operatorname{Ind}(\gamma, 3) = 0, \quad \operatorname{Ind}(\gamma, -3) = 0
> $$
> Il circuito $C_r(2i)$ è omotopo a una piccola circonferenza $C_{r'}(i)$ attorno al punto $i$. La singolarità $z = i$ è un polo semplice ($r = 1$), dunque:
> $$
> \begin{align}
> \operatorname{Res}(f, i) &= \lim_{z \to i} (z - i) f(z) \\
> &= \lim_{z \to i} \frac{z - i}{(z - i)(z + i)(z^2 - 9)} \\
> &= \lim_{z \to i} \frac{1}{(z + i)(z^2 - 9)} \\
> &= \frac{1}{(2i)(i^2 - 9)} = \frac{1}{(2i)(-10)} = -\frac{1}{20i} = \frac{i}{20}
> \end{align}
> $$
> Applicando il teorema dei residui:
> $$
> I = 2\pi i \operatorname{Res}(f, i) = 2\pi i \left( \frac{i}{20} \right) = \frac{2\pi i^2}{20} = -\frac{\pi}{10}
> $$
>
## 1.17. Applicazioni del Teorema dei Residui agli integrali in $\mathbb{R}$

### Tipo I: Integrali trigonometrici su $[0, 2\pi]$

Si considerino integrali definiti nella variabile reale $t$ della forma:
$$
I = \int_0^{2\pi} f(\cos t, \sin t)\,dt
$$
L'obiettivo è interpretare tale integrale come l'integrale di linea di una funzione complessa $g(z)$ lungo la circonferenza unitaria $C_1(0)$ percorsa in senso antiorario:
$$
\gamma = C_1(0) : r(t) = e^{it}, \quad t \in [0, 2\pi], \quad r'(t) = i e^{it}
$$
Ricordando le formule di Eulero:
$$
\cos t = \frac{e^{it} + e^{-it}}{2}, \quad \sin t = \frac{e^{it} - e^{-it}}{2i}
$$
Sulla circonferenza unitaria si ha $z = e^{it}$, da cui $e^{-it} = \frac{1}{z}$ e $dt = \frac{dz}{iz}$. Si riscrive quindi:
$$
f(\cos t, \sin t) = f\left( \frac{e^{it} + e^{-it}}{2}, \frac{e^{it} - e^{-it}}{2i} \right) \cdot \frac{i e^{it}}{i e^{it}}
$$
Ponendo opportunamente:
$$
g(z) = f\left( \frac{z + z^{-1}}{2}, \frac{z - z^{-1}}{2i} \right) \frac{1}{iz}
$$
l'integrale reale diviene un integrale di linea su $C_1(0)$:
$$
\int_0^{2\pi} f(\cos t, \sin t)\,dt = \oint_{C_1(0)} g(z)\,dz = 2\pi i \sum_{z_0 \in S(g), |z_0| < 1} \operatorname{Res}(g, z_0)
$$

> [!example] Calcolo esplicito di $\int_0^{2\pi} \frac{dt}{2 + \sin t}$
> Si calcoli l'integrale reale:
> $$
> I = \int_0^{2\pi} \frac{dt}{2 + \sin t}
> $$
> Esprimendo $\sin t$ in termini esponenziali ed evidenziando il differenziale $i e^{it}\,dt$:
> $$
> \frac{1}{2 + \sin t} = \frac{1}{2 + \frac{e^{it} - e^{-it}}{2i}} \cdot \frac{i e^{it}}{i e^{it}} = \frac{2 i e^{it}}{(4i + e^{it} - e^{-it}) e^{it}} = \frac{2}{(e^{2it} + 4i e^{it} - 1)} i e^{it}
> $$
> Integrando tra $0$ e $2\pi$:
> $$
> I = \int_0^{2\pi} \frac{2}{(e^{it})^2 + 4i(e^{it}) - 1} i e^{it}\,dt = \oint_{C_1(0)} \frac{2}{z^2 + 4iz - 1}\,dz
> $$
> La funzione integranda complessa è $g(z) = \frac{2}{z^2 + 4iz - 1}$. Determiniamo le singolarità risolvendo l'equazione polinomiale al denominatore:
> $$
> z^2 + 4iz - 1 = 0 \iff z = \frac{-4i \pm \sqrt{(4i)^2 - 4(1)(-1)}}{2} = \frac{-4i \pm \sqrt{-16 + 4}}{2} = \frac{-4i \pm i\sqrt{12}}{2} = -2i \pm \sqrt{3}i = i(\pm\sqrt{3} - 2)
> $$
> Le due radici sono:
> $$
> \begin{align}
> z_1 &= i(\sqrt{3} - 2) \\
> z_2 &= i(-\sqrt{3} - 2)
> \end{align}
> $$
> Valutiamone il modulo per verificare quali cadono all'interno del disco unitario $B_1(0)$:
> - Per $z_1$: $|z_1| = |\sqrt{3} - 2| = 2 - \sqrt{3} \approx 2 - 1.732 = 0.268 < 1 \implies z_1 \text{ è interno}$;
> - Per $z_2$: $|z_2| = |-\sqrt{3} - 2| = 2 + \sqrt{3} \approx 3.732 > 1 \implies z_2 \text{ è esterno}$.
> 
> Poiché le radici non giacciono sulla frontiera ($|z_{1,2}| \neq 1$), applichiamo il teorema dei residui considerando esclusivamente la singolarità interna $z_1$:
> $$
> I = 2\pi i \operatorname{Res}(g, z_1)
> $$
> Trattandosi di un polo semplice:
> $$
> \begin{align}
> \operatorname{Res}(g, z_1) &= \lim_{z \to z_1} (z - z_1) \frac{2}{(z - z_1)(z - z_2)} \\
> &= \lim_{z \to i(\sqrt{3}-2)} \frac{2}{z - i(-\sqrt{3}-2)} \\
> &= \frac{2}{i(\sqrt{3}-2) - i(-\sqrt{3}-2)} \\
> &= \frac{2}{i(\sqrt{3} - 2 + \sqrt{3} + 2)} = \frac{2}{2\sqrt{3} i} = \frac{1}{\sqrt{3} i}
> \end{align}
> $$
> Sostituendo nel teorema dei residui:
> $$
> I = 2\pi i \cdot \frac{1}{\sqrt{3} i} = \frac{2\pi}{\sqrt{3}}
> $$
>
### Il Valore Principale di Cauchy (P.V.)

Prima di affrontare la classe successiva di integrali impropri, è indispensabile definire rigorosamente il concetto di **Valore Principale di Cauchy**.

> [!definition] Valore Principale per singolarità interna
> Sia data una funzione $f: [a, c) \cup (c, b] \to \mathbb{R}$, integrabile secondo Riemann negli intervalli compatti $[a, c-\varepsilon]$ e $[c+\varepsilon, b]$ per ogni $\varepsilon > 0$.
> Si definisce **Valore Principale** (di Cauchy) dell'integrale:
> $$
> \text{P.V.} \int_a^b f(x)\,dx := \lim_{\varepsilon \to 0^+} \left[ \int_a^{c-\varepsilon} f(x)\,dx + \int_{c+\varepsilon}^b f(x)\,dx \right]
> $$
> purché tale limite esista finito.

> [!note] Confronto con l'integrale improprio classico
> Nella teoria standard dell'integrale improprio di Riemann, la convergenza richiede l'esistenza indipendente e finita di entrambi i limiti:
> $$
> \int_a^b f(x)\,dx = \lim_{\varepsilon_1 \to 0^+} \int_a^{c-\varepsilon_1} f(x)\,dx + \lim_{\varepsilon_2 \to 0^+} \int_{c+\varepsilon_2}^b f(x)\,dx
> $$
> Nel Valore Principale si vincolano simmetricamente gli intorni forati imponendo $\varepsilon_1 = \varepsilon_2 = \varepsilon$. In questo modo, eventuali divergenze di segno opposto possono elidersi mutualmente, consentendo l'esistenza del Valore Principale anche per funzioni non integrabili in senso improprio.

> [!definition] Valore Principale per più singolarità e intervalli illimitati
> 1. **Più singolarità isolate:** Data $f: [a, c_1) \cup (c_1, c_2) \cup \dots \cup (c_n, b] \to \mathbb{R}$, integrabile su ogni intervallo compatto disgiunto dagli intorni simmetrici di raggio $\varepsilon$, si definisce:
>    $$
>    \text{P.V.} \int_a^b f(x)\,dx := \lim_{\varepsilon \to 0^+} \left[ \int_a^{c_1-\varepsilon} f(x)\,dx + \sum_{i=1}^{n-1} \int_{c_i+\varepsilon}^{c_{i+1}-\varepsilon} f(x)\,dx + \int_{c_n+\varepsilon}^b f(x)\,dx \right]
>    $$
> 
> 2. **Estensione a tutto $\mathbb{R}$:** Se $f: \mathbb{R} \setminus \{c_1, \dots, c_n\} \to \mathbb{R}$ (con $c_1 < c_2 < \dots < c_n$) è integrabile su ogni compatto $[h, k]$ non contenente singolarità, si definisce:
>    $$
>    \text{P.V.} \int_{-\infty}^{+\infty} f(x)\,dx := \lim_{R \to +\infty} \text{P.V.} \int_{-R}^R f(x)\,dx
>    $$

> [!note] Relazione fondamentale di consistenza
> Se $f$ è integrabile secondo Riemann (in senso proprio o improprio) su $I \subseteq \overline{\mathbb{R}}$, allora il Valore Principale coincide con l'integrale ordinario:
> $$
> \text{P.V.} \int_I f(x)\,dx = \int_I f(x)\,dx
> $$
> Il viceversa non sussiste: il Valore Principale può esistere finito anche se l'integrale improprio diverge.

> [!example] Valore Principale di $f(x) = \frac{1}{x}$ su $\mathbb{R}$
> Si consideri la funzione $f(x) = \frac{1}{x}$.
> - L'integrale improprio non esiste, poiché diverge su ciascun semiasse:
>   $$
>   \int_0^1 \frac{1}{x}\,dx = +\infty, \quad \int_{-1}^0 \frac{1}{x}\,dx = -\infty, \quad \int_1^{+\infty} \frac{1}{x}\,dx = +\infty, \quad \int_{-\infty}^{-1} \frac{1}{x}\,dx = -\infty
>   $$
> - Tuttavia, il Valore Principale esiste ed è nullo per antisimmetria:
>   $$
>   \begin{align}
>   \text{P.V.} \int_{-\infty}^{+\infty} \frac{1}{x}\,dx &= \lim_{R \to +\infty} \lim_{\varepsilon \to 0^+} \left[ \int_{-R}^{-\varepsilon} \frac{1}{x}\,dx + \int_\varepsilon^R \frac{1}{x}\,dx \right] \\
>   &= \lim_{R \to +\infty} \lim_{\varepsilon \to 0^+} \left[ \Big[\log|x|\Big]_{-R}^{-\varepsilon} + \Big[\log|x|\Big]_\varepsilon^R \right] \\
>   &= \lim_{R \to +\infty} \lim_{\varepsilon \to 0^+} \left[ (\log\varepsilon - \log R) + (\log R - \log\varepsilon) \right] \\
>   &= \lim_{R \to +\infty} \lim_{\varepsilon \to 0^+} [0] = 0
>   \end{align}
>   $$
>
### Tipo II: Integrali impropri su $\mathbb{R}$ di funzioni razionali e temperate

Si consideri il calcolo di:
$$
I = \text{P.V.} \int_{-\infty}^{+\infty} f(x)\,dx
$$
sotto le seguenti ipotesi:
1. $f$ è estendibile analiticamente al semipiano superiore chiuso $\{ z \in \mathbb{C} : \operatorname{Im} z \ge 0 \}$ in maniera olomorfa, salvo al più un numero finito di singolarità isolate $S(f)$;
2. $f$ non ammette singolarità sull'asse reale ($S(f) \cap \mathbb{R} = \varnothing$);
3. $f$ è una funzione temperata per $|z| \to +\infty$, ossia esistono costanti $\alpha > 1$ e $C > 0$ tali che:
   $$
   |f(z)| \le \frac{C}{|z|^\alpha} \quad \text{definitivamente per } |z| \to +\infty
   $$

Sotto tali ipotesi, l'integrale improprio converge assolutamente e coincide con il suo Valore Principale, ed è calcolabile tramite i residui:
$$
I = \int_{-\infty}^{+\infty} f(x)\,dx = 2\pi i \sum_{z_0 \in S(f), \operatorname{Im} z_0 > 0} \operatorname{Res}(f, z_0)
$$

> [!quote]- Dimostrazione
> Si costruisce il circuito chiuso orientato positivamente $\gamma_R = [-R, R] \cup C_R^+(0)$, composto dal segmento reale da $-R$ a $R$ (parametrizzato da $r_1(t) = -R + 2Rt$ con $t \in [0, 1]$) e dalla semicirconferenza superiore $C_R^+(0) = \{ R e^{it} : t \in [0, \pi] \}$.
> 
> Poiché le singolarità di $f$ sono isolate e in numero finito, per $R$ sufficientemente grande la palla $B_R(0)$ contiene tutte le singolarità a parte immaginaria positiva:
> $$
> \{ z_0 \in S(f) : \operatorname{Im} z_0 > 0 \} \subset B_R(0)
> $$
> L'indice di avvolgimento della semicirconferenza chiusa rispetto a ciascuna di tali singolarità è unitario: $\operatorname{Ind}(\gamma_R, z_0) = 1$.
> Applicando il teorema dei residui al circuito chiuso $\gamma_R$:
> $$
> \oint_{\gamma_R} f(z)\,dz = \int_{-R}^R f(x)\,dx + \int_{C_R^+(0)} f(z)\,dz = 2\pi i \sum_{z_0 \in S(f), \operatorname{Im} z_0 > 0} \operatorname{Res}(f, z_0)
> $$
> Isolando l'integrale reale sul segmento:
> $$
> \int_{-R}^R f(x)\,dx = 2\pi i \sum_{z_0 \in S(f), \operatorname{Im} z_0 > 0} \operatorname{Res}(f, z_0) - \int_{C_R^+(0)} f(z)\,dz
> $$
> Passando al limite per $R \to +\infty$:
> $$
> I = \lim_{R \to +\infty} \int_{-R}^R f(x)\,dx = 2\pi i \sum_{z_0 \in S(f), \operatorname{Im} z_0 > 0} \operatorname{Res}(f, z_0) - \lim_{R \to +\infty} \int_{C_R^+(0)} f(z)\,dz
> $$
> La tesi segue immediatamente dimostrando che il contributo dell'arco semicircolare $C_R^+(0)$ tende a zero al divergere di $R$. $\blacksquare$

> [!lemma] Lemma di decadimento (Jordan per funzioni razionali/temperate)
> Se esistono $\alpha > 1$ e $C > 0$ tali che $|f(z)| \le \frac{C}{|z|^\alpha}$ definitivamente per $|z| \to +\infty$, allora:
> $$
> \lim_{R \to +\infty} \int_{C_R^+(0)} f(z)\,dz = 0
> $$

> [!quote]- Dimostrazione del lemma
> Utilizzando la disuguaglianza triangolare integrale (stima $ML$):
> $$
> \left| \int_{C_R^+(0)} f(z)\,dz \right| \le \int_{C_R^+(0)} |f(z)|\,|dz|
> $$
> Sulla semicirconferenza $C_R^+(0)$ si ha $|z| = R$. Per $R$ sufficientemente grande, applicando l'ipotesi di decadimento:
> $$
> |f(z)| \le \frac{C}{R^\alpha}
> $$
> La lunghezza della curva $C_R^+(0)$ è pari alla semicirconferenza $\pi R$. Dunque:
> $$
> \int_{C_R^+(0)} |f(z)|\,|dz| \le \int_{C_R^+(0)} \frac{C}{R^\alpha}\,|dz| = \frac{C}{R^\alpha} \cdot (\pi R) = \frac{\pi C}{R^{\alpha - 1}}
> $$
> Poiché $\alpha > 1$, si ha $\alpha - 1 > 0$, e dunque:
> $$
> \lim_{R \to +\infty} \frac{\pi C}{R^{\alpha - 1}} = 0
> $$
> Per il teorema del confronto, l'integrale lungo l'arco semicircolare tende a zero:
> $$
> \lim_{R \to +\infty} \int_{C_R^+(0)} f(z)\,dz = 0 \quad \blacksquare
> $$

> [!note] Chiusura alternativa nel semipiano inferiore
> Un risultato analogo si ottiene chiudendo il contorno nel semipiano inferiore $\{ z \in \mathbb{C} : \operatorname{Im} z \le 0 \}$. Tuttavia, per preservare l'orientazione coerente con il verso di percorrenza dell'asse reale da $-R$ a $+R$, la semicirconferenza inferiore $-C_R^-(0)$ deve essere percorsa in **senso orario**:
> $$
> -C_R^-(0) : r(t) = R e^{-it}, \quad t \in [0, \pi]
> $$
> In tal caso, per ogni singolarità interna al semipiano inferiore si ha $\operatorname{Ind}(\gamma, z_0) = -1$, conducendo alla formula con segno opposto:
> $$
> I = -2\pi i \sum_{z_0 \in S(f), \operatorname{Im} z_0 < 0} \operatorname{Res}(f, z_0)
> $$

> [!example] Esempi notevoli di integrali di Tipo II
> **Esempio 1 (Integrale di $\frac{1}{1+x^2}$):**
> Si calcoli per via reale e complessa l'integrale:
> $$
> I = \text{P.V.} \int_{-\infty}^{+\infty} \frac{1}{1 + x^2}\,dx
> $$
> - **Integrazione elementare reale:**
>   $$
>   I = \big[ \arctan x \big]_{-\infty}^{+\infty} = \frac{\pi}{2} - \left(-\frac{\pi}{2}\right) = \pi
>   $$
> - **Integrazione con l'analisi complessa:**
>   La funzione associata è $f(z) = \frac{1}{1+z^2}$, le cui singolarità sono $z = \pm i$.
>   Verifichiamo la condizione di decadimento temperato:
>   $$
>   |z^2| = |1 + z^2 - 1| \le |1 + z^2| + 1 \implies |1 + z^2| \ge |z|^2 - 1
>   $$
>   Pertanto, per $|z| > 1$:
>   $$
>   \left| \frac{1}{1 + z^2} \right| = \frac{1}{|1 + z^2|} \le \frac{1}{|z|^2 - 1} \le \frac{C}{|z|^2}
>   $$
>   La condizione è verificata con $\alpha = 2 > 1$.
>   L'unica singolarità contenuta nel semipiano superiore $\operatorname{Im} z > 0$ è il polo semplice $z_0 = i$. Calcoliamo il relativo residuo:
>   $$
>   \operatorname{Res}(f, i) = \lim_{z \to i} (z - i) \frac{1}{(z - i)(z + i)} = \frac{1}{2i}
>   $$
>   Applicando la formula dei residui nel semipiano superiore:
>   $$
>   I = 2\pi i \operatorname{Res}(f, i) = 2\pi i \left( \frac{1}{2i} \right) = \pi
>   $$
>   Il risultato coincide perfettamente con il calcolo dell'integrale elementare reale.
> 
> **Esempio 2 (Funzioni razionali generali):**
> Più in generale, per funzioni razionali della forma:
> $$
> I = \text{P.V.} \int_{-\infty}^{+\infty} \frac{P(x)}{Q(x)}\,dx
> $$
> dove $P(x)$ e $Q(x)$ sono polinomi reali a coefficienti reali con $\deg(P) = n$ e $\deg(Q) = m$, se $Q(x) \neq 0$ per ogni $x \in \mathbb{R}$ e la differenza tra i gradi soddisfa la condizione:
> $$
> n \le m - 2 \iff \deg(Q) \ge \deg(P) + 2
> $$
> allora per $|z| \to +\infty$ si ha $|P(z)/Q(z)| \le \frac{C}{|z|^{m-n}}$ con $\alpha = m - n \ge 2 > 1$. Il lemma di decadimento è pienamente applicabile e l'integrale coincide con la somma dei residui nel semipiano superiore moltiplicata per $2\pi i$.
>
### Tipo III: Integrali di Fourier su $\mathbb{R}$ (Introduzione)

Si consideri la classe di integrali con nucleo oscillante:
$$
I = \text{P.V.} \int_{-\infty}^{+\infty} f(x) e^{i\omega x}\,dx, \quad \omega \in (0, +\infty)
$$
sotto le seguenti ipotesi preliminari:
- $f$ è estesa al semipiano superiore $\{ z \in \mathbb{C} : \operatorname{Im} z \ge 0 \}$ in maniera olomorfa, tranne al più per un numero finito di singolarità isolate;
- $f$ non ammette singolarità sull'asse reale ($S(f) \cap \mathbb{R} = \varnothing$).

- $f$ soddisfa la condizione di annullamento asintotico sul semicerchio superiore:
  $$
  \lim_{R \to +\infty} \sup_{z \in C_R^+(0)} |f(z)| = 0
  $$
Sotto tali ipotesi, l'integrale a valor principale converge ed è dato dalla formula:
$$
I = \text{P.V.} \int_{-\infty}^{+\infty} f(x) e^{i\omega x}\,dx = 2\pi i \sum_{\substack{z_0 \in S(f) \\ \operatorname{Im} z_0 > 0}} \operatorname{Res}\left( f(z) e^{i\omega z}, z_0 \right), \quad \omega > 0
$$

> [!note] Osservazione (Singolarità del nucleo di Fourier)
> Essendo la funzione esponenziale complessa $e^{i\omega z}$ intera (olomorfa in tutto $\mathbb{C}$) e mai nulla, le singolarità isolate di $f(z) e^{i\omega z}$ coincidono esattamente con le singolarità di $f(z)$ e possiedono la medesima natura (stesso ordine del polo o singolarità essenziale).
>
### Lemma di Jordan

> [!lemma] Lemma di Jordan
> Sia $f: \{ z \in \mathbb{C} : \operatorname{Im} z > 0 \} \setminus \{z_1, \dots, z_n\} \to \mathbb{C}$ una funzione olomorfa con singolarità isolate $z_1, \dots, z_n$.
> Se $f$ si annulla uniformemente sul semicerchio superiore all'infinito:
> $$
> \lim_{R \to +\infty} \sup_{z \in C_R^+(0)} |f(z)| = 0
> $$
> allora per ogni parametro di frequenza $\omega > 0$:
> $$
> \lim_{R \to +\infty} \int_{C_R^+(0)} f(z) e^{i\omega z}\,dz = 0
> $$

> [!quote]- Dimostrazione
> Dimostriamo preliminarmente che per ogni $R > 0$:
> $$
> \left| \int_{C_R^+(0)} e^{i\omega z} f(z)\,dz \right| \le \frac{\pi}{\omega} \sup_{z \in C_R^+(0)} |f(z)|
> $$
> Parametrizziamo il semicerchio superiore $C_R^+(0)$ tramite la curva $r_R(t) = R e^{it}$ per $t \in [0, \pi]$, da cui $C_R^+(0) = r_R([0, \pi])$ con derivata $r_R'(t) = i R e^{it}$ e modulo $|r_R'(t)| = R$ per ogni $t \in [0, \pi]$.
> Poniamo $M_R = \sup_{z \in C_R^+(0)} |f(z)|$.
> Valutando il modulo dell'integrale curvilineo:
> $$
> \left| \int_{C_R^+(0)} e^{i\omega z} f(z)\,dz \right| \le \int_0^\pi |e^{i\omega r_R(t)}| |f(r_R(t))| |r_R'(t)|\,dt
> $$
> Esplicitando la parte reale e immaginaria dell'esponente lungo la curva con $z = R(\cos t + i \sin t)$:
> $$
> |e^{i\omega z}| = |e^{i\omega R \cos t - \omega R \sin t}| = e^{-\omega R \sin t}
> $$
> Dunque:
> $$
> \left| \int_{C_R^+(0)} e^{i\omega z} f(z)\,dz \right| \le \int_0^\pi e^{-\omega R \sin t} \cdot R\,dt \cdot M_R = M_R R \int_0^\pi e^{-\omega R \sin t}\,dt
> $$
> Sfruttando la simmetria della funzione $\sin t$ rispetto al punto medio $t = \frac{\pi}{2}$ nell'intervallo $[0, \pi]$:
> $$
> \int_0^\pi e^{-\omega R \sin t}\,dt = 2 \int_0^{\pi/2} e^{-\omega R \sin t}\,dt
> $$
> Ricordando la disuguaglianza di concavità di Jordan:
> $$
> \sin t \ge \frac{2t}{\pi} \quad \forall t \in \left[ 0, \frac{\pi}{2} \right]
> $$
> ed essendo $-\omega R < 0$ (poiché $\omega > 0$ e $R > 0$):
> $$
> -\omega R \sin t \le -\omega R \frac{2t}{\pi} \implies e^{-\omega R \sin t} \le e^{-\omega R \frac{2t}{\pi}}
> $$
> Ne consegue la maggiorazione:
> $$
> 2 M_R R \int_0^{\pi/2} e^{-\omega R \sin t}\,dt \le 2 M_R R \int_0^{\pi/2} e^{-\omega R \frac{2t}{\pi}}\,dt
> $$
> Integrando l'esponenziale elementare:
> $$
> 2 M_R R \int_0^{\pi/2} e^{-\frac{2\omega R}{\pi} t}\,dt = 2 M_R R \left[ \frac{e^{-\frac{2\omega R}{\pi} t}}{-\frac{2\omega R}{\pi}} \right]_0^{\pi/2} = 2 M_R R \cdot \frac{1 - e^{-\omega R}}{\frac{2\omega R}{\pi}} = \frac{\pi M_R}{\omega} (1 - e^{-\omega R})
> $$
> Poiché $1 - e^{-\omega R} \le 1$ per ogni $\omega R > 0$:
> $$
> \left| \int_{C_R^+(0)} f(z) e^{i\omega z}\,dz \right| \le \frac{\pi}{\omega} M_R
> $$
> Passando al limite per $R \to +\infty$, dato che per ipotesi di decadimento uniforme $M_R \xrightarrow{R \to +\infty} 0$, si conclude:
> $$
> \lim_{R \to +\infty} \int_{C_R^+(0)} f(z) e^{i\omega z}\,dz = 0
> $$
> $\blacksquare$
>
Vale allora che, similmente alla costruzione per gli integrali di tipo razionale:
$$
I = \text{P.V.} \int_{-\infty}^{+\infty} f(x) e^{i\omega x}\,dx = 2\pi i \sum_{\substack{z_0 \in S(f) \\ \operatorname{Im} z_0 > 0}} \operatorname{Res}\left( f(z) e^{i\omega z}, z_0 \right)
$$

> [!note] Osservazione (Integrazione nel semipiano inferiore per $\omega < 0$)
> È possibile ripetere la medesima costruzione nel semipiano inferiore $\{ z \in \mathbb{C} : \operatorname{Im} z \le 0 \}$ per frequenze negative $\omega < 0$.
> In tal caso, chiudendo il contorno con la semicirconferenza inferiore $C_R^-(0)$ orientata in senso orario (che introduce un segno negativo rispetto al senso convenzionale antiorario):
> $$
> I = -2\pi i \sum_{\substack{z_0 \in S(f) \\ \operatorname{Im} z_0 < 0}} \operatorname{Res}\left( f(z) e^{i\omega z}, z_0 \right)
> $$
> Infatti, ponendo $z = x + iy$:
> $$
> e^{i\omega z} = e^{i\omega(x + iy)} = e^{i\omega x} e^{-\omega y}
> $$
> Affinché il fattore esponenziale rimanga limitato e decada per $|z| \to +\infty$ ($e^{-\omega y} \le 1$), occorre che $\omega$ e $y$ abbiano segno concorde:
> - se $\omega > 0 \implies y = \operatorname{Im} z \ge 0$ (semipiano superiore);
> - se $\omega < 0 \implies y = \operatorname{Im} z \le 0$ (semipiano inferiore).

> [!example] Esempio (Integrale di Fourier con nucleo trigonometrico)
> Si calcoli l'integrale:
> $$
> I = \text{P.V.} \int_{-\infty}^{+\infty} \frac{\cos x}{1 + x^2}\,dx
> $$
> Si nota che sull'asse reale:
> $$
> \frac{\cos x}{1 + x^2} = \operatorname{Re}\left( \frac{e^{ix}}{1 + x^2} \right)
> $$
> Inoltre, la funzione integranda con il seno è dispari su $\mathbb{R}$:
> $$
> \int_{-\infty}^{+\infty} \frac{\sin x}{1 + x^2}\,dx = 0
> $$
> Pertanto:
> $$
> \int_{-\infty}^{+\infty} \frac{e^{ix}}{1 + x^2}\,dx = \int_{-\infty}^{+\infty} \frac{\cos x + i \sin x}{1 + x^2}\,dx = \int_{-\infty}^{+\infty} \frac{\cos x}{1 + x^2}\,dx + i \cdot 0 = \int_{-\infty}^{+\infty} \frac{\cos x}{1 + x^2}\,dx
> $$
> L'integrale ricade esattamente nella classe di Tipo III con $\omega = 1 > 0$ e funzione:
> $$
> f(z) = \frac{1}{1 + z^2}
> $$
> I punti di singolarità di $f(z)$ sono le radici di $1 + z^2 = 0$, ossia $z = \pm i$.
> Essendo $\omega = 1 > 0$, si sceglie di integrare nel semipiano superiore $y > 0$, contenente l'unica singolarità $z_0 = i$.
> Verifichiamo la condizione del Lemma di Jordan sul semicerchio $C_R^+(0)$:
> $$
> \sup_{z \in C_R^+(0)} |f(z)| \le \sup_{z \in C_R^+(0)} \frac{1}{|z|^2 - 1} = \frac{1}{R^2 - 1} \xrightarrow{R \to +\infty} 0
> $$
> Applicando la formula dei residui per il nucleo di Fourier:
> $$
> I = 2\pi i \operatorname{Res}\left( \frac{e^{iz}}{1 + z^2}, i \right)
> $$
> Poiché $z_0 = i$ è un polo semplice:
> $$
> \operatorname{Res}\left( \frac{e^{iz}}{1 + z^2}, i \right) = \lim_{z \to i} (z - i) \frac{e^{iz}}{(z - i)(z + i)} = \lim_{z \to i} \frac{e^{iz}}{z + i} = \frac{e^{i(i)}}{2i} = \frac{e^{-1}}{2i}
> $$
> Sostituendo nell'integrale:
> $$
> I = 2\pi i \left( \frac{e^{-1}}{2i} \right) = \frac{\pi}{e}
> $$
>

### Tipo IV: Integrali con singolarità sull'asse reale (Lemma del piccolo cerchio)

Si consideri il calcolo di integrali a valor principale della forma:
$$
I = \text{P.V.} \int_{-\infty}^{+\infty} f(x)\,dx
$$
sotto le seguenti ipotesi:
- $f$ è estendibile in maniera olomorfa al semipiano superiore $\{ z \in \mathbb{C} : \operatorname{Im} z > 0 \}$ tranne per un numero finito di singolarità isolate;
- $f$ ammette un numero finito di **poli semplici** ($r = 1$) appartenenti all'asse reale $\mathbb{R}$, indicati con $x_1, x_2, \dots, x_n \in \mathbb{R}$;
- L'integrale lungo la semicirconferenza all'infinito si annulla:
  $$
  \lim_{R \to +\infty} \int_{C_R^+(0)} f(z)\,dz = 0
  $$
  (verificato mediante il lemma di decadimento se $|f(z)| \le \frac{C}{|z|^\alpha}$ con $\alpha > 1$, oppure mediante il lemma di Jordan in presenza di un fattore oscillante $e^{i\omega z}$).

**Costruzione del cammino indentato $\gamma_{\varepsilon, R}$:**
Si sceglie un circuito chiuso $\gamma_{\varepsilon, R}$ orientato positivamente che percorre l'asse reale evitando ciascuna singolarità reale $x_i$ mediante piccole semicirconferenze superiori $-C_\varepsilon(x_i)$ di raggio $\varepsilon$ percorse in senso orario:
$$
\gamma_{\varepsilon, R} = C_R^+(0) \cup [-R, x_1 - \varepsilon] \cup (-C_\varepsilon^+(x_1)) \cup [x_1 + \varepsilon, x_2 - \varepsilon] \cup \dots \cup [x_n + \varepsilon, R]
$$
dove $[-C_\varepsilon^+(x_i)]$ indica la semicirconferenza superiore di raggio $\varepsilon$ centrata in $x_i$ percorsa da $x_i - \varepsilon$ a $x_i + \varepsilon$ in senso orario.
La definizione di valore principale di Cauchy per l'integrale improprio con singolarità interne è:
$$
I = \lim_{R \to +\infty} \lim_{\varepsilon \to 0^+} \left[ \int_{-R}^{x_1 - \varepsilon} f(x)\,dx + \sum_{i=1}^{n-1} \int_{x_i + \varepsilon}^{x_{i+1} - \varepsilon} f(x)\,dx + \int_{x_n + \varepsilon}^R f(x)\,dx \right]
$$
Per il teorema dei residui applicato al cammino chiuso $\gamma_{\varepsilon, R}$ (il quale racchiude unicamente le singolarità isolate a parte immaginaria strettamente positiva):
$$
\oint_{\gamma_{\varepsilon, R}} f(z)\,dz = 2\pi i \sum_{\substack{z_0 \in S(f) \\ \operatorname{Im} z_0 > 0}} \operatorname{Res}(f, z_0)
$$
D'altra parte, decomponendo l'integrale curvilineo lungo i tratti costituenti:
$$
\oint_{\gamma_{\varepsilon, R}} f(z)\,dz = \int_{\text{segmenti su }\mathbb{R}} f(x)\,dx + \int_{C_R^+(0)} f(z)\,dz - \sum_{i=1}^n \int_{C_\varepsilon^+(x_i)} f(z)\,dz
$$
dove $C_\varepsilon^+(x_i)$ denota la semicirconferenza percorsa in senso antiorario standard.
Isolando l'integrale sui segmenti reali e passando ai limiti per $\varepsilon \to 0^+$ e $R \to +\infty$:
$$
I = \lim_{R \to +\infty} \lim_{\varepsilon \to 0^+} \left[ \oint_{\gamma_{\varepsilon, R}} f(z)\,dz - \sum_{i=1}^n \int_{C_\varepsilon^+(x_i)} f(z)\,dz - \int_{C_R^+(0)} f(z)\,dz \right]
$$
Poiché $\lim_{R \to +\infty} \int_{C_R^+(0)} f(z)\,dz = 0$, e applicando il lemma del polo semplice ad ogni arco semicircolare $C_\varepsilon^+(x_i)$ (con apertura angolare da $0$ a $\pi$ percorsa in senso antiorario, che restituisce $i(\pi - 0) \operatorname{Res}(f, x_i) = \pi i \operatorname{Res}(f, x_i)$):
$$
I = 2\pi i \sum_{\substack{z_0 \in S(f) \\ \operatorname{Im} z_0 > 0}} \operatorname{Res}(f, z_0) + \pi i \sum_{x_0 \in S(f) \cap \mathbb{R}} \operatorname{Res}(f, x_0)
$$

### Lemma del polo semplice (Lemma del piccolo cerchio)

> [!lemma] Lemma del polo semplice
> Sia $\Omega \subseteq \mathbb{C}$ un intorno del punto $z_0$, e sia $f: \Omega \setminus \{z_0\} \to \mathbb{C}$ olomorfa.
> Sia $z_0$ un **polo semplice** ($r = 1$) per $f$.
> Sia $\gamma_\varepsilon$ un arco circolare di raggio $\varepsilon$ centrato in $z_0$, parametrizzato da:
> $$
> r_\varepsilon(t) = z_0 + \varepsilon e^{it}, \quad t \in [\theta_1, \theta_2], \quad \theta_1 < \theta_2
> $$
> con $\gamma_\varepsilon = r_\varepsilon([\theta_1, \theta_2]) \subset \Omega$.
> Allora:
> $$
> \lim_{\varepsilon \to 0^+} \int_{\gamma_\varepsilon} f(z)\,dz = i (\theta_2 - \theta_1) \operatorname{Res}(f, z_0)
> $$

> [!quote]- Dimostrazione
> Essendo $z_0$ un polo semplice per $f$, per il teorema di Laurent esiste un disco $B_{R_1}(z_0) \subset \Omega$ in cui la funzione si decompone come:
> $$
> f(z) = \frac{c_{-1}}{z - z_0} + g(z) \quad \forall z \in B_{R_1}(z_0) \setminus \{z_0\}
> $$
> con $c_{-1} = \operatorname{Res}(f, z_0)$ e $g(z)$ olomorfa in $B_{R_1}(z_0)$.
> Integrando termine a termine lungo l'arco $\gamma_\varepsilon$ (con $\varepsilon < R_1$):
> $$
> \int_{\gamma_\varepsilon} f(z)\,dz = \int_{\gamma_\varepsilon} \frac{c_{-1}}{z - z_0}\,dz + \int_{\gamma_\varepsilon} g(z)\,dz
> $$
> Analizziamo il secondo integrale. Essendo $z_0$ un polo semplice, la parte regolare $g(z)$ soddisfa:
> $$
> \lim_{z \to z_0} (z - z_0) g(z) = 0 \iff \forall \nu > 0, \ \exists R_2 > 0 : \forall z \in B_{R_2}(z_0), \ |g(z)| |z - z_0| < \nu
> $$
> Scegliendo $\varepsilon < \min\{R_1, R_2\}$, lungo $\gamma_\varepsilon$ si ha $|z - z_0| = \varepsilon$, da cui $|g(z)| \le \frac{\nu}{|z - z_0|} = \frac{\nu}{\varepsilon}$.
> Maggiorando l'integrale in modulo:
> $$
> \left| \int_{\gamma_\varepsilon} g(z)\,dz \right| \le \int_{\gamma_\varepsilon} |g(z)|\,|dz| \le \int_{\gamma_\varepsilon} \frac{\nu}{|z - z_0|}\,|dz| = \frac{1}{\varepsilon} \int_{\gamma_\varepsilon} \nu\,|dz|
> $$
> Poiché la lunghezza dell'arco $\gamma_\varepsilon$ è $\varepsilon (\theta_2 - \theta_1)$:
> $$
> \frac{1}{\varepsilon} \cdot \nu \cdot \varepsilon (\theta_2 - \theta_1) = \nu (\theta_2 - \theta_1)
> $$
> Essendo $\nu > 0$ arbitrariamente piccolo a piacere:
> $$
> \lim_{\varepsilon \to 0^+} \int_{\gamma_\varepsilon} g(z)\,dz = 0
> $$
> Calcoliamo ora esplicitamente il primo integrale tramite la parametrizzazione $z(t) = z_0 + \varepsilon e^{it}$, $dz = i\varepsilon e^{it} dt$:
> $$
> \int_{\gamma_\varepsilon} \frac{c_{-1}}{z - z_0}\,dz = c_{-1} \int_{\theta_1}^{\theta_2} \frac{1}{\varepsilon e^{it}} \cdot i\varepsilon e^{it}\,dt = i c_{-1} \int_{\theta_1}^{\theta_2} dt = i c_{-1} (\theta_2 - \theta_1)
> $$
> Poiché tale valore è indipendente da $\varepsilon$, passando al limite per $\varepsilon \to 0^+$:
> $$
> \lim_{\varepsilon \to 0^+} \int_{\gamma_\varepsilon} f(z)\,dz = i (\theta_2 - \theta_1) c_{-1} = i (\theta_2 - \theta_1) \operatorname{Res}(f, z_0)
> $$
> $\blacksquare$

> [!example] Esempio (Integrale con polo reale nell'origine)
> Si calcoli il valore principale dell'integrale:
> $$
> I = \text{P.V.} \int_{-\infty}^{+\infty} \frac{1 - \cos 2x}{x^2}\,dx
> $$
> Poiché la funzione $\frac{\sin 2x}{x^2}$ è dispari su $\mathbb{R}$, il suo integrale è identicamente nullo:
> $$
> \int_{-\infty}^{+\infty} \frac{\sin 2x}{x^2}\,dx = 0
> $$
> Possiamo quindi riscrivere l'integrale sostituendo la funzione complessa:
> $$
> I = \text{P.V.} \int_{-\infty}^{+\infty} \frac{1 - e^{i 2x}}{x^2}\,dx
> $$
> Consideriamo la funzione complessa associata:
> $$
> f(z) = \frac{1 - e^{2iz}}{z^2}
> $$
> che risulta olomorfa in $\mathbb{C} \setminus \{0\}$.
> Il punto $z_0 = 0$ è un polo semplice ($r = 1$). Infatti:
> $$
> \lim_{z \to 0} z f(z) = \lim_{z \to 0} \frac{1 - e^{2iz}}{z} = \lim_{z \to 0} \frac{1 - (1 + 2iz + o(z))}{z} = -2i
> $$
> Dunque:
> $$
> \operatorname{Res}(f, 0) = -2i
> $$
> La funzione non presenta altre singolarità nell'intero piano complesso.
> Inoltre, si verifica facilmente che lungo la semicirconferenza all'infinito:
> $$
> \lim_{R \to +\infty} \int_{C_R^+(0)} \frac{1 - e^{2iz}}{z^2}\,dz = 0
> $$
> Applicando la formula di integrazione per poli semplici sull'asse reale:
> $$
> \text{P.V.} \int_{-\infty}^{+\infty} \frac{1 - \cos 2x}{x^2}\,dx = \pi i \operatorname{Res}(f, 0) = \pi i (-2i) = 2\pi
> $$
>
[!note] Osservazione sulle tecniche di integrazione complessa
> È possibile trattare con tecniche analoghe molte altre classi di integrali (ad esempio integrali su cammini a fessura, integrali su rettangoli o cammini a settore). Il principio unificante risiede sempre nell'applicazione strategica del teorema dei residui a curve chiuse composte da segmenti reali e archi circolari opportunamente scelti.
>
## 1.18. Cenni e complementi

### Residuo all'infinito

> [!definition] Singolarità isolata all'infinito
> Si dice che il punto all'infinito $z = \infty$ è una **singolarità isolata** per la funzione $f(z)$ se esiste un raggio $R > 0$ tale che $f$ è olomorfa nella regione esterna:
> $$
> \mathbb{C} \setminus \overline{B_R(0)} = \{ z \in \mathbb{C} : |z| > R \}
> $$
> Equivalentemente, la funzione trasformata $f\left(\frac{1}{z}\right)$ è olomorfa nell'intorno forato dell'origine $B_{1/R}(0) \setminus \{0\}$ e possiede una singolarità isolata in $z = 0$.
> 
> Si definisce inoltre la natura della singolarità all'infinito:
> - $f(z)$ ha un **polo di ordine $r \in \mathbb{N}$** in $\infty$ se $f\left(\frac{1}{z}\right)$ ha un polo di ordine $r$ in $z = 0$;
> - $f(z)$ ha una **singolarità eliminabile** in $\infty$ se $f\left(\frac{1}{z}\right)$ ha una singolarità eliminabile in $z = 0$;
> - $f(z)$ ha una **singolarità essenziale** in $\infty$ se $f\left(\frac{1}{z}\right)$ ha una singolarità essenziale in $z = 0$.

> [!note] Mappa di inversione conforme
> La mappa $z \mapsto \frac{1}{z}$ è olomorfa e biunivoca (conforme) da $\mathbb{C} \setminus \{0\}$ in $\mathbb{C} \setminus \{0\}$.

> [!note] Sviluppo di Laurent all'infinito
> Se $f$ possiede in $\infty$ una singolarità isolata, allora la funzione ausiliaria $f\left(\frac{1}{z}\right)$ può essere sviluppata in serie di Laurent nel disco forato $B_{1/R}(0) \setminus \{0\}$:
> $$
> f\left(\frac{1}{z}\right) = \sum_{n=0}^{+\infty} c'_n z^n + \sum_{n=1}^{+\infty} c'_{-n} z^{-n}
> $$
> Ponendo per simmetria dei coefficienti $c'_n := c_{-n}$ per ogni $n \in \mathbb{Z}$, la funzione originaria $f(z)$ si sviluppa in serie di Laurent nella regione esterna $\{ z \in \mathbb{C} : |z| > R \}$:
> $$
> f(z) = \sum_{n=1}^{+\infty} c_n z^n + \sum_{n=0}^{+\infty} c_{-n} z^{-n} = \sum_{k=-\infty}^{+\infty} c_k z^k
> $$
> In particolare, si osserva che:
> $$
> c_{-1} = c'_1
> $$
> Consideriamo ora la funzione differenziale associata $\frac{1}{z^2} f\left(\frac{1}{z}\right)$:
> $$
> \frac{1}{z^2} f\left(\frac{1}{z}\right) = \frac{1}{z^2} \sum_{k=-\infty}^{+\infty} c_k z^{-k} = \sum_{k=-\infty}^{+\infty} c_k z^{-k-2}
> $$
> Il coefficiente del termine singolare $\frac{1}{z} = z^{-1}$ si ottiene imponendo l'esponente $-k - 2 = -1 \iff k = -1$, ed è pari a $c_{-1}$.
> Dunque:
> $$
> \operatorname{Res}\left( \frac{1}{z^2} f\left(\frac{1}{z}\right), 0 \right) = c_{-1} = -\operatorname{Res}(f, \infty)
> $$

> [!definition] Residuo all'infinito
> Se il punto $\infty$ è una singolarità isolata per $f$, si definisce il **residuo all'infinito** di $f$ come:
> $$
> \operatorname{Res}(f, \infty) := \operatorname{Res}\left( -\frac{1}{z^2} f\left(\frac{1}{z}\right), 0 \right) = -c_{-1}
> $$

> [!theorem] Teorema globale dei residui (Somma totale dei residui)
> Sia $f: \mathbb{C} \setminus \{z_1, \dots, z_n\} \to \mathbb{C}$ una funzione olomorfa con un numero finito di singolarità isolate $z_1, \dots, z_n \in \mathbb{C}$. Allora la somma di tutti i residui, inclusa la singolarità all'infinito, è identicamente nulla:
> $$
> \sum_{k=1}^n \operatorname{Res}(f, z_k) + \operatorname{Res}(f, \infty) = 0
> $$

> [!quote]- Dimostrazione
> Sia $R > 0$ sufficientemente grande tale che tutte le singolarità al finito $\{z_1, \dots, z_n\}$ siano interamente contenute all'interno del disco $B_R(0)$.
> Allora $f(z)$ è olomorfa nella regione esterna $\{ z \in \mathbb{C} : |z| \ge R \}$, e la funzione trasformata $f\left(\frac{1}{z}\right)$ è olomorfa in $B_{1/R}(0) \setminus \{0\}$.
> Per la formula integrale di Cauchy applicata al residuo nell'origine:
> $$
> \operatorname{Res}(f, \infty) = \operatorname{Res}\left( -\frac{1}{z^2} f\left(\frac{1}{z}\right), 0 \right) = -\frac{1}{2\pi i} \oint_{C_{1/R}(0)} \frac{1}{z^2} f\left(\frac{1}{z}\right)\,dz
> $$
> dove $C_{1/R}(0)$ è la circonferenza di raggio $\frac{1}{R}$ percorsa in senso antiorario standard $z(t) = \frac{1}{R} e^{it}$ per $t \in [0, 2\pi]$, con $dz = \frac{i e^{it}}{R}\,dt$.
> Eseguiamo il cambio di variabile conforme:
> $$
> w = \frac{1}{z} \implies z = \frac{1}{w}, \quad dz = -\frac{1}{w^2}\,dw
> $$
> Quando $z$ descrive la circonferenza $C_{1/R}(0)$ in senso antiorario:
> $$
> w(t) = \frac{1}{\frac{1}{R} e^{it}} = R e^{-it}, \quad t \in [0, 2\pi]
> $$
> la variabile $w$ percorre la circonferenza di raggio $R$ in senso orario, indicata con $-C_R(0)$.
> Sostituendo esplicitamente:
> $$
> -\frac{1}{2\pi i} \int_0^{2\pi} \frac{1}{\left(\frac{1}{R} e^{it}\right)^2} f(R e^{-it}) \cdot \frac{i e^{it}}{R}\,dt = -\frac{1}{2\pi i} \int_0^{2\pi} R^2 e^{-2it} f(R e^{-it}) \frac{i e^{it}}{R}\,dt
> = -\frac{1}{2\pi i} \int_0^{2\pi} f(R e^{-it}) \cdot i R e^{-it}\,dt = \frac{1}{2\pi i} \oint_{-C_R(0)} f(w)\,dw
> $$
> dove $-C_R(0)$ è la circonferenza di centro $0$ e raggio $R$ percorsa in senso orario.
> Si ottiene quindi la relazione fondamentale:
> $$
> \operatorname{Res}(f, \infty) = \frac{1}{2\pi i} \oint_{-C_R(0)} f(z)\,dz = -\frac{1}{2\pi i} \oint_{C_R(0)} f(z)\,dz
> $$
> da cui:
> $$
> \oint_{C_R(0)} f(z)\,dz = -2\pi i \operatorname{Res}(f, \infty)
> $$
> D'altra parte, per il classico teorema dei residui applicato alla curva chiusa $C_R(0)$ (che racchiude tutte e sole le singolarità finite $z_1, \dots, z_n$):
> $$
> \oint_{C_R(0)} f(z)\,dz = 2\pi i \sum_{k=1}^n \operatorname{Res}(f, z_k)
> $$
> Uguagliando le due identità:
> $$
> 2\pi i \sum_{k=1}^n \operatorname{Res}(f, z_k) = -2\pi i \operatorname{Res}(f, \infty) \iff \sum_{k=1}^n \operatorname{Res}(f, z_k) + \operatorname{Res}(f, \infty) = 0
> $$
> $\blacksquare$
>
### Funzioni armoniche in $\mathbb{R}^2$

> [!definition] Funzione armonica
> Sia $\Omega \subseteq \mathbb{R}^2$ un aperto. Una funzione $u: \Omega \to \mathbb{R}$ si dice **armonica** se $u \in C^2(\Omega)$ e soddisfa l'equazione di Laplace:
> $$
> \nabla^2 u = \Delta u = \frac{\partial^2 u}{\partial x^2} + \frac{\partial^2 u}{\partial y^2} = 0
> $$

> [!note] Connessione tra funzioni olomorfe e funzioni armoniche
> Tra le funzioni olomorfe e le funzioni armoniche sussiste una strettissima parentela.
> Sia $f: \Omega \to \mathbb{C}$ una funzione olomorfa con $f(z) = u(x, y) + i v(x, y)$.
> Essendo $f$ olomorfa, essa è analitica e infinitamente derivabile ($u, v \in C^\infty(\Omega)$), e valgono le condizioni di Cauchy-Riemann:
> $$
> \begin{cases}
> \frac{\partial u}{\partial x} = \frac{\partial v}{\partial y} \\
> \frac{\partial u}{\partial y} = -\frac{\partial v}{\partial x}
> \end{cases}
> $$
> Derivando la prima equazione rispetto a $x$ e la seconda rispetto a $y$:
> $$
> \begin{cases}
> \frac{\partial^2 u}{\partial x^2} = \frac{\partial^2 v}{\partial x \partial y} \\
> \frac{\partial^2 u}{\partial y^2} = -\frac{\partial^2 v}{\partial y \partial x}
> \end{cases}
> $$
> Per il teorema di Schwarz sull'uguaglianza delle derivate miste ($\frac{\partial^2 v}{\partial x \partial y} = \frac{\partial^2 v}{\partial y \partial x}$), sommando membro a membro:
> $$
> \frac{\partial^2 u}{\partial x^2} + \frac{\partial^2 u}{\partial y^2} = \frac{\partial^2 v}{\partial x \partial y} - \frac{\partial^2 v}{\partial y \partial x} = 0 \implies \nabla^2 u = 0
> $$
> Allo stesso modo, derivando la prima rispetto a $y$ e la seconda rispetto a $x$:
> $$
> \frac{\partial^2 v}{\partial x^2} + \frac{\partial^2 v}{\partial y^2} = 0 \implies \nabla^2 v = 0
> $$
> Pertanto sia la parte reale $u$ sia la parte immaginaria $v$ di una qualunque funzione olomorfa sono funzioni armoniche in $\Omega$.
>
Consideriamo ora il problema inverso: data una funzione armonica $u: \Omega \to \mathbb{R}$, esiste una funzione olomorfa $f: \Omega \to \mathbb{C}$ tale che $u = \operatorname{Re}(f)$?
La risposta è affermativa purché l'aperto $\Omega$ sia semplicemente connesso.

> [!proposition] Esistenza dell'armonica coniugata
> Sia $\Omega \subseteq \mathbb{R}^2$ un aperto semplicemente connesso.
> Se $u: \Omega \to \mathbb{R}$ è una funzione armonica, allora esiste una funzione $v: \Omega \to \mathbb{R}$ tale che:
> $$
> f: \Omega \to \mathbb{C}, \quad f = u + iv
> $$
> è olomorfa in $\Omega$. La funzione $v$ è detta **armonica coniugata** di $u$, ed è determinata a meno di una costante additiva reale.

> [!quote]- Dimostrazione
> Poiché $u$ è armonica in $\Omega$, consideriamo la forma differenziale lineare:
> $$
> \omega = -\frac{\partial u}{\partial y}\,dx + \frac{\partial u}{\partial x}\,dy
> $$
> Verifichiamo se $\omega$ è chiusa:
> $$
> \frac{\partial}{\partial y}\left( -\frac{\partial u}{\partial y} \right) = -\frac{\partial^2 u}{\partial y^2}, \quad \frac{\partial}{\partial x}\left( \frac{\partial u}{\partial x} \right) = \frac{\partial^2 u}{\partial x^2}
> $$
> Poiché $\nabla^2 u = \frac{\partial^2 u}{\partial x^2} + \frac{\partial^2 u}{\partial y^2} = 0$, si ha:
> $$
> -\frac{\partial^2 u}{\partial y^2} = \frac{\partial^2 u}{\partial x^2}
> $$
> dunque la forma differenziale $\omega$ è chiusa in $\Omega$.
> Essendo per ipotesi $\Omega$ un insieme semplicemente connesso, ogni forma chiusa è esatta (Lemma di Poincaré).
> Esiste pertanto un potenziale $v: \Omega \to \mathbb{R}$ di classe $C^2$ tale che $dv = \omega$, il che equivale a dire:
> $$
> \begin{cases}
> \frac{\partial v}{\partial x} = -\frac{\partial u}{\partial y} \\
> \frac{\partial v}{\partial y} = \frac{\partial u}{\partial x}
> \end{cases}
> $$
> Tali relazioni coincidono esattamente con le condizioni di Cauchy-Riemann per la funzione complessa $f = u + iv$.
> Essendo $u, v \in C^1(\Omega)$, ne segue che $f$ è olomorfa in $\Omega$. $\blacksquare$
>
