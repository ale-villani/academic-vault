---
title: "Calcolo Differenziale Multivariabile"
domain: "math/differential-calculus"
source_course: "Analisi 2 (Cap. 2)"
tags:
  - math/calculus/multivariable
  - math/calculus/gradients
  - math/calculus/hessians
---

# 2. Calcolo Differenziale per Funzioni di Più Variabili

## 2.1. Topologia di $\mathbb{R}^n$ e limiti multivariabili

Si considerano funzioni multivariabili a valori reali:
$$
f : A \subseteq \mathbb{R}^n \to \mathbb{R}
$$
Per tali funzioni sono definiti analogamente al caso monodimensionale i concetti di:
- Funzione positiva / negativa / nulla
- Funzione limitata
- Estremo superiore, inferiore, massimo e minimo ($\sup, \inf, \max, \min$)

### Richiami di topologia in $\mathbb{R}^n$

Si definisce **intorno sferico** di centro $\mathbf{x}_0$ e raggio $R$ la palla aperta:
$$
B_R(\mathbf{x}_0) := \{\mathbf{x} \in \mathbb{R}^n : \|\mathbf{x} - \mathbf{x}_0\| < R\}
$$
Gli intorni sferici costituiscono una base per la topologia euclidea di $\mathbb{R}^n$.
Dato un sottoinsieme $E \subseteq \mathbb{R}^n$:
- Parte interna: $\mathring{E} = \{\mathbf{x} \in E : \exists R > 0 \text{ t.c. } B_R(\mathbf{x}) \subseteq E\}$ (punti interni).
- Frontiera: $\partial E = \{\mathbf{x} \in \mathbb{R}^n : \forall R > 0, B_R(\mathbf{x}) \cap E \neq \varnothing \land B_R(\mathbf{x}) \cap (\mathbb{R}^n \setminus E) \neq \varnothing\}$.

> [!definition] Chiusura di un insieme
> Sia $E \subseteq \mathbb{R}^n$. Si definisce **chiusura** di $E$ l'insieme:
> $$
> \overline{E} := E \cup \partial E
> $$

> [!definition] Insiemi separati
> Siano $A, B \subseteq \mathbb{R}^n$. $A$ e $B$ si dicono **separati** se:
> $$
> \overline{A} \cap B = \varnothing \quad \land \quad A \cap \overline{B} = \varnothing
> $$
> Geometricamente, due insiemi sono separati se non contengono punti l'uno della chiusura dell'altro (nessun punto comune né punti di accumulazione condivisi).

> [!definition] Insieme connesso
> Sia $A \subseteq \mathbb{R}^n$. $A$ si dice **connesso** se non può essere espresso come unione di due insiemi non vuoti e separati.

> [!theorem] Caratterizzazione della connessione in $\mathbb{R}$
> Sia $I \subseteq \mathbb{R}$. Allora:
> $$
> I \text{ è connesso} \iff I \text{ è un intervallo}
> $$

> [!definition] Insieme connesso per archi
> Sia $E \subseteq \mathbb{R}^n$. $E$ si dice **connesso per archi** se per ogni coppia di punti $\mathbf{x}, \mathbf{y} \in E$ esiste un arco continuo $\mathbf{r} : [a, b] \to E$ tale che:
> $$
> \mathbf{r}(a) = \mathbf{x}, \quad \mathbf{r}(b) = \mathbf{y}
> $$

> [!theorem] Relazione tra connessione per archi e connessione
> Sia $A \subseteq \mathbb{R}^n$.
> $$
> A \text{ connesso per archi} \implies A \text{ connesso}
> $$

> [!note] Equivalenza per insiemi aperti
> L'implicazione opposta non sussiste in generale su insiemi arbitrari, ma diviene un'equivalenza se l'insieme è **aperto**:
> $$
> A \subseteq \mathbb{R}^n \text{ aperto} \implies (A \text{ connesso} \iff A \text{ connesso per archi})
> $$
>
### Studio del Dominio e Proprietà Topologiche

Il primo passo nell'analisi di una funzione multivariabile consiste nell'individuare il dominio naturale di definizione e determinarne le proprietà topologiche.

> [!example] Esempio 1
> Sia $f(x, y) = \sqrt{1 - x^2 - y^2}$.
> Condizione di esistenza:
> $$
> 1 - x^2 - y^2 \ge 0 \implies x^2 + y^2 \le 1
> $$
> Il dominio è il disco chiuso unitario:
> $$
> E = \{(x, y) \in \mathbb{R}^2 : x^2 + y^2 \le 1\}
> $$
> L'insieme $E$ è **chiuso**, **limitato** (dunque compatto per Heine-Borel) e **connesso** (nonché connesso per archi).

> [!example] Esempio 2
> Sia $f(x, y) = \frac{1}{\log(x + y)}$.
> Condizioni di esistenza:
> $$
> \begin{cases}
> x + y > 0 \implies y > -x \\
> x + y \neq 1 \implies y \neq 1 - x
> \end{cases}
> $$
> Il dominio è costituito dal semipiano $y > -x$ privato della retta $y = 1 - x$.
> L'insieme risultante è **aperto**, **illimitato** e **non connesso** (è diviso dalla retta $x + y = 1$ in due componenti connesse aperte disgiunte).
>

### Limiti di Funzioni Multivariabili

La definizione topologica di limite ricalca quella generale degli spazi metrici.
Sia $f : A \subseteq \mathbb{R}^n \to \mathbb{R}$, $\mathbf{x}_0 \in \mathbb{R}^n$ un punto di accumulazione per $A$, ed $l \in \mathbb{R}$. Si definisce:
$$
\lim_{\mathbf{x} \to \mathbf{x}_0} f(\mathbf{x}) = l \iff \forall \varepsilon > 0, \, \exists \delta > 0 : \forall \mathbf{x} \in A, \, 0 < \|\mathbf{x} - \mathbf{x}_0\| < \delta \implies |f(\mathbf{x}) - l| < \varepsilon
$$

> [!note] Proprietà e Complessità Geometrica
> 1. Sussistono tutti i teoremi algebrici sui limiti (unicità del limite, permanenza del segno, linearità, limite del prodotto e del quoziente).
> 2. Per $n \ge 2$, l'avvicinamento al punto $\mathbf{x}_0$ può avvenire lungo infinite traiettorie o curve non rettilinee.

> [!definition] Restrizione di una funzione lungo una curva
> Siano $f : A \subseteq \mathbb{R}^n \to \mathbb{R}$ e $\mathbf{r} : I \subseteq \mathbb{R} \to A$ una curva continua. Si definisce **restrizione** di $f$ lungo il cammino $\mathbf{r}$ la funzione composta:
> $$
> (f \circ \mathbf{r})(t) = f(\mathbf{r}(t)), \quad \forall t \in I
> $$
>
**Strategia operativa per il calcolo dei limiti:**
1. **Verifica candidati lungo restrizioni:** Si sceglie un cammino $\mathbf{r}(t)$ tale che $\lim_{t \to t_0} \mathbf{r}(t) = \mathbf{x}_0$. Se la restrizione ammette limite $l = \lim_{t \to t_0} f(\mathbf{r}(t))$, allora $l$ è l'unico possibile candidato limite per la funzione.
2. **Dimostrazione di non esistenza:** Se si individuano due cammini distinti che producono limiti differenti $l_1 \neq l_2$, per il teorema di unicità il limite globale **non esiste**.
3. **Dimostrazione di esistenza:** Se tutte le restrizioni testate concordano su $l$, l'esistenza va dimostrata globalmente maggiorando la distanza $|f(\mathbf{x}) - l|$ tramite il **teorema del confronto**:
   $$
   0 \le |f(\mathbf{x}) - l| \le g(\mathbf{x}) \quad \text{con } \lim_{\mathbf{x} \to \mathbf{x}_0} g(\mathbf{x}) = 0
   $$

> [!example] Esempio (Non esistenza lungo fasci di rette)
> Si calcoli:
> $$
> \lim_{(x, y) \to (0, 0)} \frac{xy}{x^2 + y^2}, \qquad f : \mathbb{R}^2 \setminus \{(0, 0)\} \to \mathbb{R}
> $$
> Considerando le restrizioni lungo gli assi coordinati:
> - Asse $x$: $\mathbf{r}_1(t) = \begin{pmatrix} t \\ 0 \end{pmatrix} \implies f(\mathbf{r}_1(t)) = \frac{t \cdot 0}{t^2 + 0} = 0 \xrightarrow{t \to 0} 0$
> - Asse $y$: $\mathbf{r}_2(t) = \begin{pmatrix} 0 \\ t \end{pmatrix} \implies f(\mathbf{r}_2(t)) = \frac{0 \cdot t}{0 + t^2} = 0 \xrightarrow{t \to 0} 0$
>
> Tuttavia, testando il fascio di rette passanti per l'origine $y = mx$ con $m \neq 0$, ovvero $\mathbf{r}_m(t) = \begin{pmatrix} t \\ mt \end{pmatrix}$:
> $$
> f(\mathbf{r}_m(t)) = \frac{t \cdot (mt)}{t^2 + m^2 t^2} = \frac{m t^2}{t^2(1 + m^2)} = \frac{m}{1 + m^2} \xrightarrow{t \to 0} \frac{m}{1 + m^2}
> $$
> Poiché il limite dipende dal coefficiente angolare $m$ della direzione di avvicinamento, il limite globale **non esiste**.
>
[!example] Esempio (Insufficienza delle rette: restrizioni paraboliche)
> Si consideri:
> $$
> \lim_{(x, y) \to (0, 0)} \frac{x^2 y}{x^4 + y^2}, \qquad f : \mathbb{R}^2 \setminus \{(0, 0)\} \to \mathbb{R}
> $$
> Lungo gli assi:
> $$
> f(t, 0) = 0 \implies \text{il candidato limite è } 0
> $$
> Lungo qualsiasi retta passante per l'origine $y = mx$:
> $$
> f(x, mx) = \frac{x^2 (mx)}{x^4 + m^2 x^2} = \frac{m x^3}{x^2(x^2 + m^2)} = \frac{mx}{x^2 + m^2} \xrightarrow{x \to 0} 0
> $$
> Tuttavia, il bilanciamento dei gradi a denominatore suggerisce la restrizione parabolica $y = x^2$:
> $$
> f(x, x^2) = \frac{x^2 \cdot x^2}{x^4 + (x^2)^2} = \frac{x^4}{2x^4} = \frac{1}{2} \xrightarrow{x \to 0} \frac{1}{2} \neq 0
> $$
> Dato che lungo $y = x^2$ il limite è $\frac{1}{2} \neq 0$, il limite **non esiste**.
>
[!example] Esempio (Esistenza tramite teorema del confronto)
> Si consideri:
> $$
> \lim_{(x, y) \to (0, 0)} \frac{2x^2 y}{x^2 + y^2}, \qquad f : \mathbb{R}^2 \setminus \{(0, 0)\} \to \mathbb{R}
> $$
> Il candidato limite calcolato sugli assi è $l = 0$.
> Valutiamo la differenza $|f(x, y) - 0|$:
> $$
> 0 \le \left| \frac{2x^2 y}{x^2 + y^2} \right| = \frac{|x| \cdot |2xy|}{x^2 + y^2}
> $$
> Ricordando la disuguaglianza notevole $(x - y)^2 \ge 0 \implies 2|xy| \le x^2 + y^2$:
> $$
> \frac{|x| \cdot |2xy|}{x^2 + y^2} \le \frac{|x|(x^2 + y^2)}{x^2 + y^2} = |x| = \sqrt{x^2} \le \sqrt{x^2 + y^2} = d((x, y), (0, 0))
> $$
> Poiché $d((x, y), (0, 0)) \to 0$ quando $(x, y) \to (0, 0)$, per il teorema del confronto:
> $$
> \lim_{(x, y) \to (0, 0)} \frac{2x^2 y}{x^2 + y^2} = 0
> $$
>

### Metodo delle Coordinate Polari

In $\mathbb{R}^2$, il passaggio a coordinate polari centrate nel punto limite $\mathbf{x}_0 = (x_0, y_0)$ semplifica frequentemente la stima:
$$
\begin{cases}
x = x_0 + \rho\cos\theta \\
y = y_0 + \rho\sin\theta
\end{cases}
\implies d(\mathbf{x}, \mathbf{x}_0) = \rho
$$

> [!proposition] Criterio di convergenza in coordinate polari
> Sia $f(\mathbf{x}) = f(x_0 + \rho\cos\theta, y_0 + \rho\sin\theta)$.
> La condizione necessaria e sufficiente affinché $\lim_{\mathbf{x} \to \mathbf{x}_0} f(\mathbf{x}) = l$ è che la convergenza sia **uniforme rispetto a $\theta$**, ossia che esista una funzione radiale $g(\rho)$ indipendente da $\theta$ tale che:
> $$
> |f(x_0 + \rho\cos\theta, y_0 + \rho\sin\theta) - l| \le g(\rho) \quad \forall \theta \in [0, 2\pi) \quad \text{con } \lim_{\rho \to 0^+} g(\rho) = 0
> $$

> [!warning] Errore comune: convergenza puntuale in $\theta$
> La sola convergenza puntuale per ogni $\theta$ fissato:
> $$
> \lim_{\rho \to 0^+} f(x_0 + \rho\cos\theta, y_0 + \rho\sin\theta) = l \quad \forall \theta \in [0, 2\pi)
> $$
> **NON** è sufficiente a garantire l'esistenza del limite, equivalendo unicamente alla verifica lungo tutte le semirette uscenti da $\mathbf{x}_0$. Se la velocità di convergenza dipende da $\theta$, muovendosi lungo curve a spirale o cuspidi $\theta = \theta(\rho)$ il limite può fallire.

> [!example] Esempio di verifica corretta in polari
> Ricalcoliamo:
> $$
> \lim_{(x, y) \to (0, 0)} \frac{2x^2 y}{x^2 + y^2}
> $$
> Sostituendo $x = \rho\cos\theta$, $y = \rho\sin\theta$:
> $$
> |f(\rho\cos\theta, \rho\sin\theta) - 0| = \left| \frac{2\rho^3 \cos^2\theta\sin\theta}{\rho^2} \right| = 2\rho |\cos^2\theta\sin\theta| \le 2\rho
> $$
> Poiché $g(\rho) = 2\rho \to 0$ indipendentemente da $\theta$, il limite è verificato ed è pari a $0$.

> [!example] Esempio di fallimento dell'uniformità
> $$
> f(\rho\cos\theta, \rho\sin\theta) = \frac{\rho^3 \cos^2\theta\sin\theta}{\rho^4\cos^4\theta + \rho^2\sin^2\theta} = \frac{\rho \cos^2\theta\sin\theta}{\rho^2\cos^4\theta + \sin^2\theta}
> $$
> Per ogni $\theta \neq 0, \pi$ fissato, per $\rho \to 0$ il denominatore tende a $\sin^2\theta \neq 0$, dunque il limite vale $0$. Tuttavia, se l'angolo varia con $\rho$ come $\sin\theta = \rho\cos^2\theta$, si ottiene:
> $$
> \frac{\rho^2 \cos^4\theta}{2\rho^2\cos^4\theta} = \frac{1}{2}
> $$
> La mancanza di convergenza uniforme segnala la non esistenza del limite.
>
[!example] Esempio (Polari traslate e stime asintotiche)
> Si calcoli:
> $$
> \lim_{(x, y) \to (1, 2)} \frac{\log(3 - 2x + xy - y)}{\sqrt{x^2 + y^2 - 2x - 4y + 5}}
> $$
> Riconoscendo a denominatore il completamento dei quadrati:
> $$
> x^2 - 2x + 1 + y^2 - 4y + 4 = (x - 1)^2 + (y - 2)^2
> $$
> La funzione si riscrive:
> $$
> f(x, y) = \frac{\log(3 - 2x + xy - y)}{\sqrt{(x - 1)^2 + (y - 2)^2}}
> $$
> Passando a coordinate polari centrate in $(1, 2)$:
> $$
> \begin{cases}
> x = 1 + \rho\cos\theta \\
> y = 2 + \rho\sin\theta
> \end{cases}
> \implies \sqrt{(x - 1)^2 + (y - 2)^2} = \rho
> $$
> Sviluppiamo l'argomento del logaritmo:
> $$
> 3 - 2(1 + \rho\cos\theta) + (1 + \rho\cos\theta)(2 + \rho\sin\theta) - (2 + \rho\sin\theta)
> = 3 - 2 - 2\rho\cos\theta + 2 + \rho\sin\theta + 2\rho\cos\theta + \rho^2\sin\theta\cos\theta - 2 - \rho\sin\theta = 1 + \rho^2\sin\theta\cos\theta
> $$
> I termini lineari in $\rho$ e le costanti si elidono esattamente, lasciando $1 + \rho^2\sin\theta\cos\theta = 1 + \frac{\rho^2}{2}\sin(2\theta)$.
> La funzione diventa:
> $$
> f(\mathbf{x}) = \frac{\log\left(1 + \frac{\rho^2}{2}\sin(2\theta)\right)}{\rho}
> $$
> Valutiamo lungo la retta $x = 1$ ($t \to 2$):
> $$
> f(1, t) = \frac{\log(3 - 2 + t - t)}{\sqrt{(t - 2)^2}} = \frac{\log(1)}{|t - 2|} = 0 \implies \text{il candidato limite è } 0
> $$
> Effettuando la maggiorazione con lo sviluppo notevole $\log(1 + u) \le u$ per $u \ge 0$:
> $$
> \left| \frac{\log\left(1 + \frac{\rho^2}{2}\sin(2\theta)\right)}{\rho} \right| \le \frac{\log\left(1 + \frac{\rho^2}{2}\right)}{\rho} = \frac{\frac{\rho^2}{2} + o(\rho^2)}{\rho} = \frac{\rho}{2} + o(\rho) \xrightarrow{\rho \to 0} 0
> $$
> Poiché la maggiorazione è indipendente da $\theta$:
> $$
> \lim_{(x, y) \to (1, 2)} f(x, y) = 0
> $$
>

## 2.2. Continuità e teoremi topologici globali (Zeri e Valori Intermedi in $\mathbb{R}^n$)

> [!definition] Continuità in $\mathbb{R}^n$
> Sia $f : A \subseteq \mathbb{R}^n \to \mathbb{R}$, e sia $\mathbf{x}_0 \in A$ punto di accumulazione per $A$. Si dice che $f$ è **continua** in $\mathbf{x}_0$ se:
> $$
> \lim_{\mathbf{x} \to \mathbf{x}_0} f(\mathbf{x}) = f(\mathbf{x}_0)
> $$
> Si dice continua in $A$ se è continua in ogni punto di $A$.
>
Per le funzioni continue in $\mathbb{R}^n$ valgono le proprietà classiche dell'analisi: stabilità per combinazioni lineari, prodotti, quozienti (ove definiti) e composizioni; permangono inoltre il teorema di Weierstrass sui compatti e il teorema di Heine-Cantor (continuità uniforme su insiemi compatti).

### Insiemi di livello e topologia

> [!theorem] Controimmagine di aperti e insiemi di livello
> Sia $f : A \subseteq \mathbb{R}^n \to \mathbb{R}$ continua su $A$. Allora per ogni costante $c \in \mathbb{R}$, gli insiemi di sopralivello, sottolivello e disuguaglianza:
> $$
> \{\mathbf{x} \in A : f(\mathbf{x}) > c\}, \quad \{\mathbf{x} \in A : f(\mathbf{x}) < c\}, \quad \{\mathbf{x} \in A : f(\mathbf{x}) \neq c\}
> $$
> sono sottoinsiemi **aperti** relativi ad $A$.

> [!quote]- Dimostrazione
> Si consideri l'insieme $B = \{\mathbf{x} \in A : f(\mathbf{x}) > c\}$.
> Sia $\tilde{\mathbf{x}} \in B$ un punto arbitrario; per definizione di $B$, si ha $f(\tilde{\mathbf{x}}) > c$.
> Poniamo $\varepsilon := f(\tilde{\mathbf{x}}) - c > 0$.
> Poiché $f$ è continua in $\tilde{\mathbf{x}}$, applicando la definizione di continuità con tale $\varepsilon$, esiste un raggio $\delta > 0$ tale che:
> $$
> \forall \mathbf{x} \in A : \|\mathbf{x} - \tilde{\mathbf{x}}\| < \delta \implies |f(\mathbf{x}) - f(\tilde{\mathbf{x}})| < \varepsilon
> $$
> Dalla disuguaglianza triangolare segue:
> $$
> f(\mathbf{x}) > f(\tilde{\mathbf{x}}) - \varepsilon = f(\tilde{\mathbf{x}}) - (f(\tilde{\mathbf{x}}) - c) = c
> $$
> Pertanto ogni punto della palla $B_\delta(\tilde{\mathbf{x}}) \cap A$ appartiene a $B$.
> Dunque ogni punto di $B$ è interno, ovvero $\tilde{\mathbf{x}} \in \mathring{B}$, da cui si deduce che $B$ è aperto. $\blacksquare$
>
### Teorema degli Zeri e Insiemi Nodali

> [!theorem] Teorema degli zeri in $\mathbb{R}^n$
> Sia $A \subseteq \mathbb{R}^n$ un insieme **connesso per archi** e sia $f : A \to \mathbb{R}$ continua. Siano $\mathbf{x}, \mathbf{y} \in A$ tali che:
> $$
> f(\mathbf{x}) f(\mathbf{y}) < 0
> $$
> Allora esiste almeno un punto $\mathbf{z} \in A$ tale che:
> $$
> f(\mathbf{z}) = 0
> $$

> [!quote]- Dimostrazione
> Poiché $A$ è connesso per archi, esiste una curva continua $\mathbf{r} : [a, b] \to A$ che connette i due punti:
> $$
> \mathbf{r}(a) = \mathbf{x}, \quad \mathbf{r}(b) = \mathbf{y}
> $$
> Si definisca la funzione ausiliaria monodimensionale:
> $$
> g(t) := (f \circ \mathbf{r})(t) = f(\mathbf{r}(t)), \quad t \in [a, b]
> $$
> Essendo composizione di funzioni continue, $g : [a, b] \to \mathbb{R}$ è continua su $[a, b]$. Agli estremi assume valori discordi:
> $$
> g(a) = f(\mathbf{r}(a)) = f(\mathbf{x}), \quad g(b) = f(\mathbf{r}(b)) = f(\mathbf{y}) \implies g(a) g(b) < 0
> $$
> Per il teorema degli zeri monodimensionale su intervalli di $\mathbb{R}$, esiste un punto $c \in (a, b)$ tale che $g(c) = 0$.
> Ponendo $\mathbf{z} := \mathbf{r}(c) \in A$, si conclude:
> $$
> f(\mathbf{z}) = f(\mathbf{r}(c)) = g(c) = 0
> $$
> $\blacksquare$

> [!note] Osservazione: Connessione in $\mathbb{R}$
> In $\mathbb{R}$ il teorema degli zeri richiede unicamente la continuità su un intervallo, giacché gli intervalli esauriscono la totalità degli insiemi connessi sulla retta reale.

> [!definition] Insieme nodale
> Data una funzione $f : A \subseteq \mathbb{R}^n \to \mathbb{R}$, si definisce **insieme nodale** l'insieme di zeri:
> $$
> \mathcal{N}_f := \{\mathbf{x} \in A : f(\mathbf{x}) = 0\}
> $$

> [!proposition] Partizione in componenti connesse indotta dall'insieme nodale
> Sia $f : A \subseteq \mathbb{R}^n \to \mathbb{R}$ una funzione continua. L'insieme nodale $\mathcal{N}_f$ separa il dominio $\mathbb{R}^n \setminus \mathcal{N}_f$ in componenti connesse disgiunte (gli insiemi aperti $\{f > 0\}$ e $\{f < 0\}$).
>
## 2.3. Derivate parziali e vettore gradiente

> [!definition] Funzione derivabile e derivate parziali
> Sia $f : A \subseteq \mathbb{R}^n \to \mathbb{R}$ con $A$ aperto, e sia $\mathbf{x}_0 \in A$.
> La funzione $f$ si dice **derivabile** in $\mathbf{x}_0$ se esistono finiti tutti i limiti dei rapporti incrementali lungo le direzioni della base canonica $\{\mathbf{e}_1, \dots, \mathbf{e}_n\}$:
> $$
> \frac{\partial f}{\partial x_i}(\mathbf{x}_0) := \lim_{h \to 0} \frac{f(\mathbf{x}_0 + h\mathbf{e}_i) - f(\mathbf{x}_0)}{h}, \quad \forall i = 1, \dots, n
> $$
> Tali valori si indicano equivalentemente con $\partial_i f(\mathbf{x}_0)$ o $f_{x_i}(\mathbf{x}_0)$ e prendono il nome di **derivate parziali** di $f$ in $\mathbf{x}_0$.

> [!note] Denominatore scalare
> Nel rapporto incrementale il denominatore è lo scalare $h$, in quanto lo spostamento vettoriale è $h\mathbf{e}_i$ e $\|\mathbf{e}_i\| = 1$.

> [!definition] Vettore gradiente
> Sia $f : A \subseteq \mathbb{R}^n \to \mathbb{R}$ derivabile in $\mathbf{x}_0 \in A$. Si definisce **vettore gradiente** di $f$ in $\mathbf{x}_0$ il vettore colonna (o riga) formato dalle $n$ derivate parziali prime:
> $$
> \nabla f(\mathbf{x}_0) := \begin{pmatrix} \frac{\partial f}{\partial x_1}(\mathbf{x}_0) \\ \vdots \\ \frac{\partial f}{\partial x_n}(\mathbf{x}_0) \end{pmatrix} \in \mathbb{R}^n
> $$

> [!theorem] Algebra del gradiente
> Siano $f, g : A \subseteq \mathbb{R}^n \to \mathbb{R}$ derivabili in $\mathbf{x}_0 \in A$. Allora:
> 1. $\nabla(f + g)(\mathbf{x}_0) = \nabla f(\mathbf{x}_0) + \nabla g(\mathbf{x}_0)$
> 2. $\nabla(fg)(\mathbf{x}_0) = g(\mathbf{x}_0)\nabla f(\mathbf{x}_0) + f(\mathbf{x}_0)\nabla g(\mathbf{x}_0)$
> 3. $\nabla\left(\frac{f}{g}\right)(\mathbf{x}_0) = \frac{g(\mathbf{x}_0)\nabla f(\mathbf{x}_0) - f(\mathbf{x}_0)\nabla g(\mathbf{x}_0)}{[g(\mathbf{x}_0)]^2}, \quad \text{se } g(\mathbf{x}_0) \neq 0$
>
### Calcolo Pratico delle Derivate Parziali ed Esempi Notabili

Operativamente, la derivata parziale rispetto alla variabile $x_i$ si calcola applicando le regole usuali di derivazione monodimensionale considerando tutte le altre variabili $x_j$ ($j \neq i$) come costanti.

> [!example] Esempio 1 (Calcolo standard)
> Sia $f(x, y) = x^2 y^3$.
> Calcoliamo la derivata parziale rispetto ad $x$ applicando la definizione:
> $$
> \frac{\partial f}{\partial x}(x_0, y_0) = \lim_{h \to 0} \frac{(x_0 + h)^2 y_0^3 - x_0^2 y_0^3}{h} = \lim_{h \to 0} \frac{(x_0^2 + 2hx_0 + h^2)y_0^3 - x_0^2 y_0^3}{h} = \lim_{h \to 0} (2x_0 y_0^3 + h y_0^3) = 2x_0 y_0^3
> $$
> Il risultato coincide esattamente con la derivazione rispetto a $x$ mantenendo $y$ costante.

> [!example] Esempio 2 (Punti critici e ricorso alla definizione)
> Sia $f(x, y) = y \sqrt[3]{x}$. Si determini $\nabla f(0, 0)$.
> Se si applicassero formalmente le regole algebriche generiche per $(x, y) \neq (0, 0)$:
> $$
> \frac{\partial f}{\partial y}(x, y) = \sqrt[3]{x} \implies \frac{\partial f}{\partial y}(0, 0) = \sqrt[3]{0} = 0
> \frac{\partial f}{\partial x}(x, y) = \frac{y}{3\sqrt[3]{x^2}} \implies \text{in } (0, 0) \text{ si otterrebbe la forma indeterminata } \frac{0}{0}
> $$
> Prima di asserire che la derivata parziale non esiste, è **necessario ricorrere al limite del rapporto incrementale**:
> $$
> \frac{\partial f}{\partial x}(0, 0) = \lim_{h \to 0} \frac{f(h, 0) - f(0, 0)}{h} = \lim_{h \to 0} \frac{0 \cdot \sqrt[3]{h} - 0}{h} = \lim_{h \to 0} \frac{0}{h} = 0
> $$
> Dunque entrambe le derivate parziali esistono e sono nulle nell'origine:
> $$
> \nabla f(0, 0) = \begin{pmatrix} 0 \\ 0 \end{pmatrix}
> $$
>
## 2.4. Derivate direzionali e differenziabilità in $\mathbb{R}^n$

*E se derivassimo in altre direzioni?*

### Derivata direzionale

> [!definition] Derivata direzionale
> Sia $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$, con $A$ aperto, e sia $\mathbf{x}_0 \in A$.
> Sia $\mathbf{v} \in \mathbb{R}^n$ un versore, cioè con norma unitaria:
> $$
> \|\mathbf{v}\| = 1
> $$
> Se esiste finito il limite:
> $$
> \lim_{h \to 0} \frac{f(\mathbf{x}_0 + h \mathbf{v}) - f(\mathbf{x}_0)}{h}
> $$
> allora tale limite è detto **derivata direzionale** di $f$ nella direzione del versore $\mathbf{v}$ nel punto $\mathbf{x}_0$, e si denota con $D_{\mathbf{v}} f(\mathbf{x}_0)$ oppure $\frac{\partial f}{\partial \mathbf{v}}(\mathbf{x}_0)$.

> [!note] Osservazioni sulle derivate direzionali
> - Le derivate parziali canoniche sono casi particolari di derivate direzionali valutate lungo le direzioni dei vettori della base canonica $\mathbf{e}_1, \dots, \mathbf{e}_n$:
>   $$
>   \frac{\partial f}{\partial x_i}(\mathbf{x}_0) = D_{\mathbf{e}_i} f(\mathbf{x}_0)
>   $$
> - In modo ovvio si possono considerare anche derivate direzionali destre e sinistre (rapporti incrementali unilaterali), ad esempio:
>   $$
>   \frac{\partial f^+}{\partial x_1}(\mathbf{x}) = \lim_{h \to 0^+} \frac{f(\mathbf{x} + h \mathbf{e}_1) - f(\mathbf{x})}{h}
>   $$

> [!warning] Derivabilità non implica continuità in più variabili
> In $\mathbb{R}^n$ ($n \ge 2$), a differenza del caso unidimensionale, l'esistenza di tutte le derivate parziali (o direzionali) in un punto **non implica** la continuità della funzione in quel punto:
> $$
> f \text{ derivabile in } \mathbf{x}_0 \centernot\implies f \text{ continua in } \mathbf{x}_0
> $$
> È dunque necessario introdurre un concetto di regolarità più forte: la **differenziabilità**.

> [!example] Esempio (Funzione derivabile ma non continua)
> Consideriamo la funzione $f: \mathbb{R}^2 \to \mathbb{R}$ definita da:
> $$
> f(x, y) = \begin{cases} \dfrac{xy}{x^2 + y^2} & \text{se } (x, y) \ne (0, 0) \\ 0 & \text{se } (x, y) = (0, 0) \end{cases}
> $$
> È noto che $f$ non è continua nell'origine $\mathbf{0} = (0, 0)$ (il limite per $\mathbf{x} \to \mathbf{0}$ non esiste, dipendendo dalla retta di approccio $y = mx$).
> Tuttavia, verifichiamo la derivabilità parziale nell'origine calcolando i rapporti incrementali:
> $$
> \frac{\partial f}{\partial x}(\mathbf{0}) = \lim_{h \to 0} \frac{f(\mathbf{0} + h \mathbf{e}_1) - f(\mathbf{0})}{h} = \lim_{h \to 0} \frac{f(h, 0) - 0}{h} = \lim_{h \to 0} \frac{0}{h} = 0 \quad (\text{essendo } y = 0)
> \frac{\partial f}{\partial y}(\mathbf{0}) = \lim_{h \to 0} \frac{f(\mathbf{0} + h \mathbf{e}_2) - f(\mathbf{0})}{h} = \lim_{h \to 0} \frac{f(0, h) - 0}{h} = \lim_{h \to 0} \frac{0}{h} = 0 \quad (\text{essendo } x = 0)
> $$
> Esistono entrambe le derivate parziali ed il gradiente nell'origine è nullo:
> $$
> \nabla f(\mathbf{0}) = \mathbf{0} = (0, 0)
> $$
> Dunque $f$ è **derivabile** in $\mathbf{0}$, ma **non è continua** in $\mathbf{0}$.
>

### Differenziabilità e differenziale

Nelle funzioni reali di una variabile reale, il concetto che garantisce la continuità è la differenziabilità, ovvero la possibilità di approssimare localmente la funzione al primo ordine mediante un'applicazione lineare (la retta tangente al grafico).

Dall'algebra lineare si ricorda che ogni applicazione lineare $L: \mathbb{R}^n \to \mathbb{R}$ è univocamente rappresentata rispetto alla base canonica da un vettore riga (matrice $1 \times n$), identificabile tramite prodotto scalare con un opportuno vettore $\mathbf{a} \in \mathbb{R}^n$:
$$
L(\mathbf{v}) = \mathbf{a} \cdot \mathbf{v}, \quad \forall \mathbf{v} \in \mathbb{R}^n
$$
dove le componenti di $\mathbf{a}$ rappresentano i valori assunti da $L$ sui vettori della base canonica: $a_i = L(\mathbf{e}_i)$.

> [!definition] Differenziabilità e differenziale
> Sia $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$, con $A$ aperto, e sia $\mathbf{x}_0 \in A$.
> Sia $\mathbf{h} \in \mathbb{R}^n$ un incremento tale che $\mathbf{x}_0 + \mathbf{h} \in A$.
> Diciamo che $f$ è **differenziabile** in $\mathbf{x}_0$ se esiste un vettore $\mathbf{a} \in \mathbb{R}^n$ tale che:
> $$
> f(\mathbf{x}_0 + \mathbf{h}) = f(\mathbf{x}_0) + \mathbf{a} \cdot \mathbf{h} + o(\|\mathbf{h}\|) \quad \text{per } \mathbf{h} \to \mathbf{0}
> $$
> dove $\mathbf{h}$ è il vettore degli incrementi.
> L'applicazione lineare $df(\mathbf{x}_0): \mathbb{R}^n \to \mathbb{R}$ definita da:
> $$
> df(\mathbf{x}_0)(\mathbf{h}) = \mathbf{a} \cdot \mathbf{h}
> $$
> è detta **differenziale** di $f$ nel punto $\mathbf{x}_0$.
>
### Teorema fondamentale delle funzioni differenziabili

> [!theorem] Proprietà delle funzioni differenziabili
> Sia $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$, con $A$ aperto, $\mathbf{x}_0 \in A$, ed $f$ differenziabile in $\mathbf{x}_0$. Allora:
> 1. $f$ è **continua** in $\mathbf{x}_0$.
> 2. $f$ è **derivabile** in $\mathbf{x}_0$ (esiste il vettore gradiente $\nabla f(\mathbf{x}_0)$) e il vettore dei coefficienti del differenziale coincide con il gradiente:
>    $$
>    \mathbf{a} = \nabla f(\mathbf{x}_0)
>    $$
> 3. Per ogni versore $\mathbf{v} \in \mathbb{R}^n$ ($\|\mathbf{v}\| = 1$), esiste la derivata direzionale lungo la direzione $\mathbf{v}$ di $f$ in $\mathbf{x}_0$ e vale la **formula del gradiente**:
>    $$
>    D_{\mathbf{v}} f(\mathbf{x}_0) = \nabla f(\mathbf{x}_0) \cdot \mathbf{v}
>    $$

> [!quote]- Dimostrazione
> **Punto 1 (Continuità):**
> Ponendo $\mathbf{x} = \mathbf{x}_0 + \mathbf{h}$, la formula di differenziabilità si riscrive per $\mathbf{x} \to \mathbf{x}_0$ come:
> $$
> f(\mathbf{x}) = f(\mathbf{x}_0) + \mathbf{a} \cdot (\mathbf{x} - \mathbf{x}_0) + o(\|\mathbf{x} - \mathbf{x}_0\|)
> $$
> Valutando la differenza in modulo:
> $$
> |f(\mathbf{x}) - f(\mathbf{x}_0)| = |\mathbf{a} \cdot (\mathbf{x} - \mathbf{x}_0) + o(\|\mathbf{x} - \mathbf{x}_0\|)|
> $$
> Applicando la disuguaglianza triangolare:
> $$
> |f(\mathbf{x}) - f(\mathbf{x}_0)| \le |\mathbf{a} \cdot (\mathbf{x} - \mathbf{x}_0)| + |o(\|\mathbf{x} - \mathbf{x}_0\|)|
> $$
> Per la disuguaglianza di Cauchy-Schwarz applicata al primo termine:
> $$
> |f(\mathbf{x}) - f(\mathbf{x}_0)| \le \|\mathbf{a}\| \|\mathbf{x} - \mathbf{x}_0\| + |o(\|\mathbf{x} - \mathbf{x}_0\|)|
> $$
> Poiché per $\mathbf{x} \to \mathbf{x}_0$ si ha $\|\mathbf{x} - \mathbf{x}_0\| \to 0$ e $o(\|\mathbf{x} - \mathbf{x}_0\|) \to 0$, entrambi i termini a secondo membro tendono a zero. Per il teorema del confronto:
> $$
> \lim_{\mathbf{x} \to \mathbf{x}_0} |f(\mathbf{x}) - f(\mathbf{x}_0)| = 0 \implies \lim_{\mathbf{x} \to \mathbf{x}_0} f(\mathbf{x}) = f(\mathbf{x}_0)
> $$
> Dunque $f$ è continua in $\mathbf{x}_0$.
> 
> **Punto 2 (Derivabilità e identificazione di $\mathbf{a}$):**
> Scegliamo come incremento un vettore parallelo alla direzione canonica $i$-esima:
> $$
> \mathbf{h} = h \mathbf{e}_i, \quad h \in \mathbb{R} \setminus \{0\}, \; i \in \{1, \dots, n\}
> $$
> Si ha $\|\mathbf{h}\| = |h|$ e $\mathbf{a} \cdot \mathbf{h} = a_i h$, dove $a_i$ è la componente $i$-esima di $\mathbf{a}$. Sostituendo nella definizione di differenziabilità:
> $$
> f(\mathbf{x}_0 + h \mathbf{e}_i) - f(\mathbf{x}_0) = a_i h + o(h) \quad \text{per } h \to 0
> $$
> Dividendo ambo i membri per lo scalare $h$:
> $$
> \frac{f(\mathbf{x}_0 + h \mathbf{e}_i) - f(\mathbf{x}_0)}{h} = a_i + \frac{o(h)}{h}
> $$
> Passando al limite per $h \to 0$:
> $$
> \lim_{h \to 0} \frac{f(\mathbf{x}_0 + h \mathbf{e}_i) - f(\mathbf{x}_0)}{h} = a_i
> $$
> Poiché per definizione il membro sinistro è la derivata parziale rispetto a $x_i$:
> $$
> a_i = \frac{\partial f}{\partial x_i}(\mathbf{x}_0), \quad \forall i = 1, \dots, n
> $$
> Di conseguenza, il vettore $\mathbf{a}$ coincide con il gradiente di $f$ in $\mathbf{x}_0$:
> $$
> \mathbf{a} = \nabla f(\mathbf{x}_0)
> $$
> 
> **Punto 3 (Derivate direzionali):**
> Sia $\mathbf{v} \in \mathbb{R}^n$ un versore arbitrario ($\|\mathbf{v}\| = 1$). Consideriamo l'incremento $\mathbf{h} = h \mathbf{v}$ per uno scalare $h \to 0$, per cui $\|\mathbf{h}\| = |h| \|\mathbf{v}\| = |h|$.
> Per la differenziabilità con $\mathbf{a} = \nabla f(\mathbf{x}_0)$, abbiamo:
> $$
> f(\mathbf{x}_0 + h \mathbf{v}) - f(\mathbf{x}_0) = \nabla f(\mathbf{x}_0) \cdot (h \mathbf{v}) + o(h) = h \, \nabla f(\mathbf{x}_0) \cdot \mathbf{v} + o(h)
> $$
> Calcolando la derivata direzionale:
> $$
> D_{\mathbf{v}} f(\mathbf{x}_0) = \lim_{h \to 0} \frac{f(\mathbf{x}_0 + h \mathbf{v}) - f(\mathbf{x}_0)}{h} = \lim_{h \to 0} \frac{h \, \nabla f(\mathbf{x}_0) \cdot \mathbf{v} + o(h)}{h} = \nabla f(\mathbf{x}_0) \cdot \mathbf{v}
> $$
> $\blacksquare$
>
### Notazione differenziale e coordinate

> [!note] Forma differenziale e coordinate
> Analogamente al caso monodimensionale, se $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$, con $A$ aperto, è differenziabile in $A$, l'azione del differenziale su un incremento $\mathbf{h}$ è:
> $$
> df(\mathbf{x})(\mathbf{h}) = \nabla f(\mathbf{x}) \cdot \mathbf{h}
> $$
> Se consideriamo le funzioni coordinate $g_i(\mathbf{x}) = x_i$ per ogni $i = 1, \dots, n$, il loro gradiente è il vettore canonico:
> $$
> \nabla g_i(\mathbf{x}) = \mathbf{e}_i \implies dg_i(\mathbf{x})(\mathbf{h}) = \mathbf{e}_i \cdot \mathbf{h} = h_i
> $$
> dove $h_i$ è la componente $i$-esima di $\mathbf{h}$.
> Denotando $dg_i \equiv dx_i$, l'operatore $dx_i$ estrae l'incremento $h_i$:
> $$
> dx_i: \mathbf{h} \mapsto h_i
> $$
> Ne consegue che:
> $$
> df(\mathbf{x})(\mathbf{h}) = \nabla f(\mathbf{x}) \cdot \mathbf{h} = \sum_{i=1}^n \frac{\partial f}{\partial x_i}(\mathbf{x}) h_i = \sum_{i=1}^n \frac{\partial f}{\partial x_i}(\mathbf{x}) \, dx_i(\mathbf{h}) = \nabla f(\mathbf{x}) \cdot d\mathbf{x}(\mathbf{h})
> $$
> con il vettore formale dei differenziali:
> $$
> d\mathbf{x} = \begin{pmatrix} dx_1 \\ \vdots \\ dx_n \end{pmatrix}
> $$
> Omettendo l'argomento $\mathbf{h}$, con un leggero e consueto abuso di notazione si ottiene l'espressione classica:
> $$
> df(\mathbf{x}) = \sum_{i=1}^n \frac{\partial f}{\partial x_i}(\mathbf{x}) \, dx_i = \nabla f(\mathbf{x}) \cdot d\mathbf{x}
> $$

> [!example] Esempio (Esistenza di tutte le derivate direzionali senza differenziabilità)
> Sia $f: \mathbb{R}^2 \to \mathbb{R}$ definita da:
> $$
> f(x, y) = \begin{cases} \dfrac{x^2 y}{x^4 + y^2} & \text{se } (x, y) \ne (0, 0) \\ 0 & \text{se } (x, y) = (0, 0) \end{cases}
> $$
> Lungo la parabola $y = x^2$, per $x \to 0$ si ha:
> $$
> f(x, x^2) = \frac{x^4}{x^4 + x^4} = \frac{1}{2} \ne f(0, 0) = 0
> $$
> Dunque $f$ non è continua in $\mathbf{0}$, e per il teorema fondamentale $f$ non può essere differenziabile in $\mathbf{0}$.
> Tuttavia, calcoliamo la derivata direzionale lungo un generico versore $\mathbf{v} = (v_1, v_2) \in \mathbb{R}^2$ con $\|\mathbf{v}\| = 1$:
> $$
> D_{\mathbf{v}} f(\mathbf{0}) = \lim_{h \to 0} \frac{f(h \mathbf{v}) - f(\mathbf{0})}{h} = \lim_{h \to 0} \frac{1}{h} \frac{(h v_1)^2 (h v_2)}{(h v_1)^4 + (h v_2)^2}
> = \lim_{h \to 0} \frac{h^3 v_1^2 v_2}{h \left( h^4 v_1^4 + h^2 v_2^2 \right)} = \lim_{h \to 0} \frac{h^3 v_1^2 v_2}{h^3 \left( h^2 v_1^4 + v_2^2 \right)} = \lim_{h \to 0} \frac{v_1^2 v_2}{h^2 v_1^4 + v_2^2}
> $$
> Distinguendo i casi su $v_2$:
> $$
> D_{\mathbf{v}} f(\mathbf{0}) = \begin{cases} \dfrac{v_1^2 v_2}{v_2^2} = \dfrac{v_1^2}{v_2} & \text{se } v_2 \ne 0 \\ 0 & \text{se } v_2 = 0 \end{cases}
> $$
> La derivata direzionale esiste finita in ogni direzione $\mathbf{v}$. Ciononostante, la mappa $\mathbf{v} \mapsto D_{\mathbf{v}} f(\mathbf{0})$ non è lineare rispetto a $\mathbf{v}$ (non è esprimibile come prodotto scalare $\mathbf{a} \cdot \mathbf{v}$), a riprova della mancata differenziabilità.
>

### Direzioni di massima e minima pendenza

> [!theorem] Direzioni di massima e minima pendenza
> Sia $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$, con $A$ aperto, ed $f$ differenziabile in $\mathbf{x}_0 \in A$.
> Supponiamo che $\nabla f(\mathbf{x}_0) \ne \mathbf{0}$. Posto:
> $$
> D_{\mathbf{v}_{\max}} f(\mathbf{x}_0) := \max \left\{ D_{\mathbf{v}} f(\mathbf{x}_0) : \mathbf{v} \in \mathbb{R}^n, \; \|\mathbf{v}\| = 1 \right\}
> $$
> vale che la direzione di massima crescita è individuata dal vettore gradiente normalizzato:
> $$
> \mathbf{v}_{\max} = \frac{\nabla f(\mathbf{x}_0)}{\|\nabla f(\mathbf{x}_0)\|} \quad \text{e} \quad D_{\mathbf{v}_{\max}} f(\mathbf{x}_0) = \|\nabla f(\mathbf{x}_0)\|
> $$
> Analogamente, posto:
> $$
> D_{\mathbf{v}_{\min}} f(\mathbf{x}_0) := \min \left\{ D_{\mathbf{v}} f(\mathbf{x}_0) : \mathbf{v} \in \mathbb{R}^n, \; \|\mathbf{v}\| = 1 \right\}
> $$
> vale che la direzione di minima pendenza (massima decrescita) è individuata dall'antigradiente normalizzato:
> $$
> \mathbf{v}_{\min} = -\frac{\nabla f(\mathbf{x}_0)}{\|\nabla f(\mathbf{x}_0)\|} \quad \text{e} \quad D_{\mathbf{v}_{\min}} f(\mathbf{x}_0) = -\|\nabla f(\mathbf{x}_0)\|
> $$

> [!quote]- Dimostrazione
> Poiché $f$ è differenziabile in $\mathbf{x}_0$, per ogni versore $\mathbf{v}$ ($\|\mathbf{v}\| = 1$):
> $$
> D_{\mathbf{v}} f(\mathbf{x}_0) = \nabla f(\mathbf{x}_0) \cdot \mathbf{v}
> $$
> Prendendo il valore assoluto ed applicando la disuguaglianza di Cauchy-Schwarz:
> $$
> |D_{\mathbf{v}} f(\mathbf{x}_0)| = |\nabla f(\mathbf{x}_0) \cdot \mathbf{v}| \le \|\nabla f(\mathbf{x}_0)\| \cdot \underbrace{\|\mathbf{v}\|}_{= 1} = \|\nabla f(\mathbf{x}_0)\|
> $$
> Di conseguenza:
> $$
> -\|\nabla f(\mathbf{x}_0)\| \le D_{\mathbf{v}} f(\mathbf{x}_0) \le \|\nabla f(\mathbf{x}_0)\|
> $$
> Dunque $D_{\mathbf{v}} f(\mathbf{x}_0)$ è una grandezza limitata.
> Il limite superiore $\|\nabla f(\mathbf{x}_0)\|$ viene effettivamente raggiunto scegliendo il versore parallelo e concorde al gradiente:
> $$
> \mathbf{v}_{\max} := \frac{\nabla f(\mathbf{x}_0)}{\|\nabla f(\mathbf{x}_0)\|}
> $$
> Infatti:
> $$
> D_{\mathbf{v}_{\max}} f(\mathbf{x}_0) = \nabla f(\mathbf{x}_0) \cdot \frac{\nabla f(\mathbf{x}_0)}{\|\nabla f(\mathbf{x}_0)\|} = \frac{\|\nabla f(\mathbf{x}_0)\|^2}{\|\nabla f(\mathbf{x}_0)\|} = \|\nabla f(\mathbf{x}_0)\|
> $$
> Analogamente, il limite inferiore $-\|\nabla f(\mathbf{x}_0)\|$ viene realizzato scegliendo il versore opposto:
> $$
> \mathbf{v}_{\min} = -\frac{\nabla f(\mathbf{x}_0)}{\|\nabla f(\mathbf{x}_0)\|}
> $$
> $\blacksquare$
>
### Iperpiano tangente e significato geometrico

> [!definition] Grafico di una funzione
> Sia $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$. Si definisce **grafico** di $f$ il sottoinsieme dello spazio $\mathbb{R}^{n+1}$:
> $$
> \mathrm{Graf}(f) = \left\{ (\mathbf{x}, z) \in \mathbb{R}^{n+1} : \mathbf{x} \in A, \; z = f(\mathbf{x}) \right\}
> $$

> [!definition] Iperpiano tangente al grafico
> Sia $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$, con $A$ aperto, differenziabile in $\mathbf{x}_0 \in A$.
> Si definisce **iperpiano tangente** al grafico della funzione nel punto $(\mathbf{x}_0, f(\mathbf{x}_0)) \in \mathbb{R}^{n+1}$ l'iperpiano di equazione:
> $$
> z = f(\mathbf{x}_0) + \nabla f(\mathbf{x}_0) \cdot (\mathbf{x} - \mathbf{x}_0)
> $$

> [!note] Significato geometrico della differenziabilità
> Riscrivendo la formula di differenziabilità come:
> $$
> f(\mathbf{x}) = \underbrace{f(\mathbf{x}_0) + \nabla f(\mathbf{x}_0) \cdot (\mathbf{x} - \mathbf{x}_0)}_{\text{Iperpiano Tangente}} + o(\|\mathbf{x} - \mathbf{x}_0\|) \quad \text{per } \mathbf{x} \to \mathbf{x}_0
> $$
> si osserva che $f$ è differenziabile in $\mathbf{x}_0$ se e solo se il grafico di $f$ ammette un iperpiano tangente e la funzione è approssimata localmente dal piano tangente con un errore infinitesimo di ordine superiore rispetto alla distanza $\|\mathbf{x} - \mathbf{x}_0\|$.
>
### Teorema del differenziale totale

Ci chiediamo: *quali sono le condizioni sufficienti affinché una funzione sia differenziabile?*

> [!definition] Funzioni di classe $C^1$
> Sia $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$, con $A$ aperto, e sia $\mathbf{x}_0 \in A$.
> Se esistono le $n$ derivate parziali di $f$ in un intorno di $\mathbf{x}_0$ e sono tutte continue in $\mathbf{x}_0$, diciamo che $f \in C^1(\mathbf{x}_0)$. Se ciò vale per ogni punto di $A$, scriviamo $f \in C^1(A)$.

> [!theorem] Teorema del differenziale totale
> Sia $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$, con $A$ aperto, e sia $\mathbf{x}_0 \in A$.
> Se $f \in C^1(\mathbf{x}_0)$, allora $f$ è differenziabile in $\mathbf{x}_0$:
> $$
> f \in C^1(\mathbf{x}_0) \implies f \text{ differenziabile in } \mathbf{x}_0
> $$

> [!note] Estensione alle condizioni minime
> Il teorema vale anche indebolendo le ipotesi: è sufficiente richiedere la continuità di tutte le derivate parziali meno una (per la quale è sufficiente la sola esistenza nel punto).
> Nel caso bidimensionale ($n = 2$), ad esempio, se $\frac{\partial f}{\partial x}$ è continua in un intorno di $\mathbf{x}_0$ e $\frac{\partial f}{\partial y}$ esiste in $\mathbf{x}_0$ (anche se non continua), allora $f$ è comunque differenziabile in $\mathbf{x}_0$.

> [!example] Esempio (Calcolo del piano tangente)
> Sia data la funzione:
> $$
> f(x, y) = e^{2x - y}
> $$
> Determinare l'equazione del piano tangente al grafico di $f$ nel punto $\mathbf{x}_0 = \begin{pmatrix} 1 \\ 2 \end{pmatrix}$.
> Calcoliamo le derivate parziali:
> $$
> \frac{\partial f}{\partial x}(x, y) = 2 e^{2x - y}, \qquad \frac{\partial f}{\partial y}(x, y) = -e^{2x - y}
> $$
> Le derivate parziali sono composizioni di funzioni elementari continue su tutto $\mathbb{R}^2$, quindi $f \in C^1(\mathbb{R}^2)$, il che garantisce la differenziabilità in ogni punto per il teorema del differenziale totale.
> Valutando nel punto $\mathbf{x}_0 = (1, 2)$:
> $$
> f(\mathbf{x}_0) = e^{2(1) - 2} = e^0 = 1
> \nabla f(\mathbf{x}_0) = \begin{pmatrix} 2 e^0 \\ -e^0 \end{pmatrix} = \begin{pmatrix} 2 \\ -1 \end{pmatrix}
> $$
> L'equazione del piano tangente è quindi:
> $$
> \begin{aligned}
> z &= f(\mathbf{x}_0) + \nabla f(\mathbf{x}_0) \cdot \begin{pmatrix} x - x_0 \\ y - y_0 \end{pmatrix} \\
> &= e^{2-2} + \begin{pmatrix} 2 e^{2-2} \\ -e^{2-2} \end{pmatrix} \cdot \begin{pmatrix} x - 1 \\ y - 2 \end{pmatrix} \\
> &= 1 + \begin{pmatrix} 2 \\ -1 \end{pmatrix} \cdot \begin{pmatrix} x - 1 \\ y - 2 \end{pmatrix} \\
> &= 1 + 2(x - 1) - (y - 2) \\
> &= 2x - y + 1
> \end{aligned}
> $$
>

### Equivalenza asintotica in più variabili

> [!definition] Asintotica equivalenza in $\mathbb{R}^n$
> Siano $f, g: A \subseteq \mathbb{R}^n \to \mathbb{R}$ e sia $\mathbf{x}_0 \in A$.
> Diciamo che $f$ è asintoticamente equivalente a $g$ per $\mathbf{x} \to \mathbf{x}_0$ ($f \stackrel{\mathbf{x} \to \mathbf{x}_0}{\sim} g$) se e solo se esiste una funzione $h: A \subseteq \mathbb{R}^n \to \mathbb{R}$ tale che:
> $$
> f(\mathbf{x}) = g(\mathbf{x}) \cdot h(\mathbf{x}) \quad \text{e} \quad \lim_{\mathbf{x} \to \mathbf{x}_0} h(\mathbf{x}) = 1
> $$

> [!note] Differenza fondamentale rispetto al caso $n = 1$
> Questa definizione è diversa da quella usata in una variabile reale (ove si pone $\lim \frac{f(x)}{g(x)} = 1$) perché in $\mathbb{R}^n$ ($n \ge 2$), in qualunque intorno di $\mathbf{x}_0$, può esistere un'intera curva o ipersuperficie su cui $g(\mathbf{x}) = 0$. In tal caso il rapporto $\frac{f(\mathbf{x})}{g(\mathbf{x})}$ non è ben definito, mentre la forma moltiplicativa $f = g \cdot h$ rimane rigorosa.
>
## 2.5. Regola della catena e interpretazione geometrica del gradiente

### Teorema di derivazione delle funzioni composte

> [!theorem] Regola della catena (Chain Rule)
> **1. Composizione di una funzione reale con un campo scalare ($g \circ f$):**
> Sia $f: A \subseteq \mathbb{R}^n \to I \subseteq \mathbb{R}$ con $A$ aperto, e sia $g: I \to \mathbb{R}$ con $I$ intervallo, tali che la composizione $g \circ f$ sia ben definita.
> Se $f$ è differenziabile in $\mathbf{x}_0 \in A$ e $g$ è derivabile in $f(\mathbf{x}_0) \in I$, allora la funzione composta $g \circ f$ è differenziabile in $\mathbf{x}_0$ e vale:
> $$
> \nabla(g(f(\mathbf{x}_0))) = g'(f(\mathbf{x}_0)) \, \nabla f(\mathbf{x}_0)
> $$
> 
> **2. Composizione di un campo scalare lungo una curva parametrica ($f \circ \mathbf{r}$):**
> Sia $\mathbf{r}: I \subseteq \mathbb{R} \to A \subseteq \mathbb{R}^n$ con $I$ intervallo, e sia $f: A \to \mathbb{R}$ con $A$ aperto, tali che la composizione $f \circ \mathbf{r}$ sia ben definita.
> Se $\mathbf{r}$ è differenziabile (derivabile componente per componente) in $t \in I$ ed $f$ è differenziabile in $\mathbf{r}(t) \in A$, allora la funzione scalare composta $f \circ \mathbf{r}$ è differenziabile in $t$ e vale:
> $$
> [f \circ \mathbf{r}]'(t) = \nabla f(\mathbf{r}(t)) \cdot \mathbf{r}'(t) = \sum_{i=1}^n \frac{\partial f}{\partial x_i}(\mathbf{r}(t)) \, r_i'(t)
> $$
>
### Ortogonalità del gradiente agli insiemi di livello

> [!theorem] Ortogonalità del gradiente alle curve di livello
> Sia $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$, con $A$ aperto, ed $f$ differenziabile in $A$. Sia inoltre:
> $$
> C = \{ \mathbf{x} \in A : f(\mathbf{x}) = c \in \mathbb{R} \}
> $$
> un suo insieme di livello associato al valore $c$.
> Se l'insieme di livello $C$ può essere localmente parametrizzato da una curva regolare $\mathbf{r}: I \subseteq \mathbb{R} \to C$, allora il gradiente di $f$ è ortogonale al vettore velocità tangente alla curva in ogni punto:
> $$
> \nabla f(\mathbf{r}(t)) \cdot \mathbf{r}'(t) = 0, \quad \forall t \in I
> $$

> [!quote]- Dimostrazione
> Poiché per ogni $t \in I$ il punto $\mathbf{r}(t)$ appartiene all'insieme di livello $C$, per definizione si ha:
> $$
> f(\mathbf{r}(t)) = c, \quad \forall t \in I
> $$
> Derivando entrambi i membri rispetto a $t$ mediante il teorema di derivazione delle funzioni composte:
> $$
> \frac{d}{dt} \left[ f(\mathbf{r}(t)) \right] = \nabla f(\mathbf{r}(t)) \cdot \mathbf{r}'(t) = \frac{d}{dt}(c) = 0
> $$
> Dunque $\nabla f(\mathbf{r}(t)) \cdot \mathbf{r}'(t) = 0$. $\blacksquare$

> [!note] Interpretazione geometrica del gradiente
> Il gradiente può essere visualizzato come il vettore la cui direzione rappresenta la direzione di variazione massima della funzione.
> Per questo motivo, esso è sempre perpendicolare alle curve (o superfici) di livello, lungo le quali la funzione è, per definizione, costante.

> [!example] Esempio (Derivata direzionale di un integrale parametrico)
> Data la funzione $f: \mathbb{R}^3 \to \mathbb{R}$:
> $$
> f(x, y, z) = z \int_0^{x-y} e^{t^2} dt
> $$
> calcolare la derivata direzionale $D_{\mathbf{v}} f(2, 2, 1)$ lungo il versore:
> $$
> \mathbf{v} = \left( \frac{1}{\sqrt{3}}, -\frac{1}{\sqrt{3}}, \frac{1}{\sqrt{3}} \right)
> $$
> *Svolgimento:*
> La funzione integrale $g(w) = \int_0^w e^{t^2} dt$ è di classe $C^\infty(\mathbb{R})$ per il secondo teorema fondamentale del calcolo integrale.
> La funzione argomento $h(x, y, z) = x - y$ è lineare, quindi di classe $C^\infty(\mathbb{R}^3)$.
> Per composizione e prodotto di funzioni infinitamente derivabili, si ha $f \in C^\infty(\mathbb{R}^3)$, dunque in particolare $f$ è differenziabile su tutto $\mathbb{R}^3$.
> Vale quindi la formula del gradiente:
> $$
> D_{\mathbf{v}} f(2, 2, 1) = \nabla f(2, 2, 1) \cdot \mathbf{v}
> $$
> Calcoliamo le derivate parziali di $f(x, y, z)$:
> $$
> \frac{\partial f}{\partial x} = z \cdot e^{(x-y)^2} \cdot \frac{\partial(x-y)}{\partial x} = z e^{(x-y)^2} \cdot 1
> \frac{\partial f}{\partial y} = z \cdot e^{(x-y)^2} \cdot \frac{\partial(x-y)}{\partial y} = z e^{(x-y)^2} \cdot (-1) = -z e^{(x-y)^2}
> \frac{\partial f}{\partial z} = \int_0^{x-y} e^{t^2} dt
> $$
> Il gradiente generale è:
> $$
> \nabla f(x, y, z) = \begin{pmatrix} z e^{(x-y)^2} \\ -z e^{(x-y)^2} \\ \displaystyle \int_0^{x-y} e^{t^2} dt \end{pmatrix}
> $$
> Valutiamo il gradiente nel punto $(x, y, z) = (2, 2, 1)$:
> $$
> \nabla f(2, 2, 1) = \begin{pmatrix} 1 \cdot e^{(2-2)^2} \\ -1 \cdot e^{(2-2)^2} \\ \displaystyle \int_0^0 e^{t^2} dt \end{pmatrix} = \begin{pmatrix} 1 \cdot e^0 \\ -1 \cdot e^0 \\ 0 \end{pmatrix} = \begin{pmatrix} 1 \\ -1 \\ 0 \end{pmatrix}
> $$
> Calcoliamo la derivata direzionale:
> $$
> \begin{aligned}
> D_{\mathbf{v}} f(2, 2, 1) &= \nabla f(2, 2, 1) \cdot \mathbf{v} \\
> &= \begin{pmatrix} 1 \\ -1 \\ 0 \end{pmatrix} \cdot \begin{pmatrix} 1/\sqrt{3} \\ -1/\sqrt{3} \\ 1/\sqrt{3} \end{pmatrix} \\
> &= 1 \cdot \frac{1}{\sqrt{3}} + (-1) \cdot \left(-\frac{1}{\sqrt{3}}\right) + 0 \cdot \frac{1}{\sqrt{3}} \\
> &= \frac{1}{\sqrt{3}} + \frac{1}{\sqrt{3}} = \frac{2}{\sqrt{3}}
> \end{aligned}
> $$
>

## 2.6. Derivate successive, Teorema di Schwarz e matrice Hessiana

Iniziamo considerando funzioni scalari di due variabili $f: A \subseteq \mathbb{R}^2 \to \mathbb{R}$ sufficientemente regolari ($f \in C^\infty(A)$).
Le derivate parziali prime sono anch'esse funzioni di due variabili:
$$
\frac{\partial f}{\partial x}: A \subseteq \mathbb{R}^2 \to \mathbb{R}, \qquad \frac{\partial f}{\partial y}: A \subseteq \mathbb{R}^2 \to \mathbb{R}
$$
Se esse sono a loro volta derivabili in $A$, possiamo calcolare le derivate parziali seconde:
- Derivando $\frac{\partial f}{\partial x}$:
  $$
  \frac{\partial}{\partial x} \left( \frac{\partial f}{\partial x} \right) = \frac{\partial^2 f}{\partial x^2} = f_{xx}, \qquad \frac{\partial}{\partial y} \left( \frac{\partial f}{\partial x} \right) = \frac{\partial^2 f}{\partial y \partial x} = f_{xy}
  $$
- Derivando $\frac{\partial f}{\partial y}$:
  $$
  \frac{\partial}{\partial x} \left( \frac{\partial f}{\partial y} \right) = \frac{\partial^2 f}{\partial x \partial y} = f_{yx}, \qquad \frac{\partial}{\partial y} \left( \frac{\partial f}{\partial y} \right) = \frac{\partial^2 f}{\partial y^2} = f_{yy}
  $$
Ci sono pertanto $4 = 2^2$ derivate parziali seconde.

In generale, per $n \in \mathbb{N}$ e per una funzione $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$, $f$ ammette $n^2$ derivate parziali seconde. Per organizzarle in maniera algebrica si definisce una matrice quadrata.

### Matrice Hessiana

> [!definition] Matrice Hessiana
> Sia $A \subseteq \mathbb{R}^n$ aperto ed $f \in C^2(A)$.
> Si definisce **matrice Hessiana** di $f$ nel punto $\mathbf{x}$ la matrice quadrata $H_{f(\mathbf{x})} \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ (denotata anche con $D^2 f(\mathbf{x})$) data da:
> $$
> D^2 f(\mathbf{x}) = H_{f(\mathbf{x})} = \begin{pmatrix} f_{x_1 x_1} & f_{x_1 x_2} & \cdots & f_{x_1 x_n} \\ f_{x_2 x_1} & f_{x_2 x_2} & \cdots & f_{x_2 x_n} \\ \vdots & \vdots & \ddots & \vdots \\ f_{x_n x_1} & f_{x_n x_2} & \cdots & f_{x_n x_n} \end{pmatrix}
> $$
> la cui entrata di riga $i$ e colonna $j$ è la derivata parziale seconda:
> $$
> [H_{f(\mathbf{x})}]_{ij} = \frac{\partial^2 f}{\partial x_i \partial x_j}(\mathbf{x})
> $$

> [!example] Esempio (Calcolo dell'Hessiana)
> Sia $f(x, y) = x^2 \cos y$.
> Calcoliamo le derivate parziali prime:
> $$
> f_x = 2x \cos y, \qquad f_y = -x^2 \sin y
> $$
> Calcoliamo le derivate parziali seconde:
> $$
> \begin{aligned}
> f_x = 2x \cos y &\implies \begin{cases} f_{xx} = \dfrac{\partial}{\partial x}(2x \cos y) = 2 \cos y \\ f_{xy} = \dfrac{\partial}{\partial y}(2x \cos y) = -2x \sin y \end{cases} \\
> f_y = -x^2 \sin y &\implies \begin{cases} f_{yx} = \dfrac{\partial}{\partial x}(-x^2 \sin y) = -2x \sin y \\ f_{yy} = \dfrac{\partial}{\partial y}(-x^2 \sin y) = -x^2 \cos y \end{cases}
> \end{aligned}
> $$
> La matrice Hessiana è pertanto:
> $$
> H_{f(\mathbf{x})} = \begin{pmatrix} 2 \cos y & -2x \sin y \\ -2x \sin y & -x^2 \cos y \end{pmatrix}
> $$
> Si nota che le derivate miste sono identiche: $f_{xy} = f_{yx} = -2x \sin y$.
>

### Teorema di Schwarz

> [!theorem] Teorema di Schwarz (Inversione delle derivate miste)
> Sia $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$, con $A$ aperto, e supponiamo che $f$ sia derivabile due volte in $\mathbf{x}_0 \in A$.
> Se per due indici distinti $i \ne j$ le derivate parziali seconde miste $f_{x_i x_j}$ e $f_{x_j x_i}$ esistono in un intorno di $\mathbf{x}_0$ e sono continue in $\mathbf{x}_0$, allora esse coincidono nel punto:
> $$
> f_{x_i x_j}(\mathbf{x}_0) = f_{x_j x_i}(\mathbf{x}_0)
> $$

> [!note] Estensione alle derivate direzionali successive
> Il teorema di Schwarz si estende direttamente alle derivate direzionali consecutive: se $\mathbf{v}, \mathbf{w} \in \mathbb{R}^n$ sono versori e le derivate direzionali $D_{\mathbf{v}} f$ e $D_{\mathbf{w}} f$ sono continue in un intorno di $\mathbf{x}_0$, allora:
> $$
> D_{\mathbf{v} \mathbf{w}}^2 f(\mathbf{x}_0) = D_{\mathbf{w} \mathbf{v}}^2 f(\mathbf{x}_0)
> $$
>
### Funzioni di classe $C^k$ e differenziale secondo

> [!definition] Funzioni di classe $C^k$
> Sia $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$, con $A$ aperto, e sia $k \in \mathbb{N}$.
> Diciamo che $f \in C^k(A)$ se tutte le derivate parziali di ordine $k$, indicate con $f_{x_{a_1} x_{a_2} \dots x_{a_k}}$, esistono e sono continue su $A$.
> In tal caso, per l'applicazione iterata del teorema di Schwarz, vale l'invarianza rispetto all'ordine di derivazione:
> $$
> f_{x_{a_1} x_{a_2} \dots x_{a_k}} = f_{x_{b_1} x_{b_2} \dots x_{b_k}}
> $$
> per ogni permutazione $\{b_1, \dots, b_k\}$ della sequenza di indici $\{a_1, \dots, a_k\}$.

> [!corollary] Simmetria della matrice Hessiana
> Se le ipotesi del teorema di Schwarz valgono per ogni coppia di indici $i \ne j$, e in particolare se $f \in C^2(\mathbf{x}_0)$, allora la matrice Hessiana è simmetrica:
> $$
> H_{f(\mathbf{x}_0)} = H_{f(\mathbf{x}_0)}^T
> $$

> [!definition] Differenziale secondo
> Sia $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$, con $A$ aperto, ed $f \in C^2(A)$.
> Si definisce il **differenziale secondo** di $f$ nel punto $\mathbf{x}$ la forma quadratica associata alla matrice Hessiana applicata al vettore differenziale degli incrementi $d\mathbf{x}$:
> $$
> d^2 f(\mathbf{x}) := \overbrace{H_{f(\mathbf{x})} d\mathbf{x}}^{\text{prodotto matriciale}} \cdot d\mathbf{x} = \sum_{i=1}^n \sum_{j=1}^n \frac{\partial^2 f}{\partial x_i \partial x_j}(\mathbf{x}) \, dx_i \, dx_j
> $$
>
## 2.7. Differenziali di ordine superiore

Completando l'espressione in coordinate del differenziale secondo per una funzione $f \in C^2(A)$ con $A \subseteq \mathbb{R}^n$ aperto:
$$
d^2 f(\mathbf{x}) = H_{f(\mathbf{x})} d\mathbf{x} \cdot d\mathbf{x} = \sum_{i=1}^n \sum_{j=1}^n f_{x_i x_j}(\mathbf{x}) \, dx_i \, dx_j
$$
Tale scrittura algebrica permette di generalizzare la nozione di differenziale agli ordini superiori.

### Differenziale di ordine $k$

> [!definition] Differenziale di ordine $k$
> Sia $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$, con $A$ aperto, $f \in C^k(A)$ e $k \in \mathbb{N}$.
> Si definisce il **differenziale di ordine $k$** di $f$ nel punto $\mathbf{x} \in A$ l'applicazione multilineare simmetrica valutata sull'incremento vettoriale $d\mathbf{x} = (dx_1, \dots, dx_n)$:
> $$
> d^k f(\mathbf{x}) := \sum_{i_1=1}^n \sum_{i_2=1}^n \dots \sum_{i_k=1}^n f_{x_{i_1} x_{i_2} \dots x_{i_k}}(\mathbf{x}) \, dx_{i_1} \, dx_{i_2} \dots dx_{i_k}
> $$

> [!note] Struttura algebrica e notazione operatoriale
> 1. Si osserva che il differenziale di ordine $k$, fissato il punto $\mathbf{x}$, è un **polinomio omogeneo di grado $k$** nelle variabili incrementali $dx_1, \dots, dx_n$.
> 2. La formula generale può essere memorizzata e manipolata considerando la derivata parziale come un **operatore differenziale**.
>
> Gli operatori agiscono tra spazi di funzioni trasformando una funzione in un'altra. Ad esempio, l'operatore di derivata totale associa a ogni funzione derivabile monovariabile la sua derivata: $f \mapsto \frac{df}{dx}$. Analogamente, per le derivate parziali l'operatore agisce come:
> $$
> f \overset{\frac{\partial}{\partial x_i}}{\longmapsto} \frac{\partial f}{\partial x_i}
> $$
> Trattando $\frac{\partial}{\partial x_i}$ come un operatore formale, le derivate successive coincidono con la composizione degli operatori:
> $$
> f \overset{\frac{\partial}{\partial x_1}}{\longmapsto} \frac{\partial f}{\partial x_1} \overset{\frac{\partial}{\partial x_2}}{\longmapsto} \frac{\partial^2 f}{\partial x_2 \partial x_1} = f_{x_1 x_2}
> $$
> In particolare, la derivata parziale seconda pura si esprime come iterazione operatoriale:
> $$
> \frac{\partial^2 f}{\partial x_1^2} = \left( \frac{\partial}{\partial x_1} \circ \frac{\partial}{\partial x_1} \right) f = \left( \frac{\partial}{\partial x_1} \right)^2 f
> $$
> Grazie a tale notazione simbolica, per il teorema di Schwarz il differenziale secondo si può esprimere formalmente come potenza del binomio/polinomio di operatori differenziali lineari:
> $$
> d^2 f(\mathbf{x}) = \left( \frac{\partial}{\partial x_1} dx_1 + \dots + \frac{\partial}{\partial x_n} dx_n \right)^2 f
> $$
> e in generale, per ogni ordine $k \in \mathbb{N}$:
> $$
> d^k f(\mathbf{x}) = \left( \sum_{i=1}^n \frac{\partial}{\partial x_i} dx_i \right)^k f = \left( \frac{\partial}{\partial x_1} dx_1 + \dots + \frac{\partial}{\partial x_n} dx_n \right)^k f
> $$
> sviluppabile mediante il teorema multinomiale.
> Si noti che gli operatori $\frac{d}{dx}$ e $\frac{\partial}{\partial x_i}$ sono lineari. Anche il gradiente può essere interpretato come l'azione formale del vettore differenziale di operatori **nabla** $\nabla$ applicato al campo scalare $f$:
> $$
> \nabla = \begin{pmatrix} \frac{\partial}{\partial x_1} \\ \vdots \\ \frac{\partial}{\partial x_n} \end{pmatrix}, \qquad \nabla f = \begin{pmatrix} \frac{\partial f}{\partial x_1} \\ \vdots \\ \frac{\partial f}{\partial x_n} \end{pmatrix}
> $$
>
## 2.8. Formula di Taylor in più variabili

Consideriamo una funzione $f: A \subseteq \mathbb{R}^2 \to \mathbb{R}$ con $A$ aperto. Come possiamo approssimare $f$ localmente attorno a un punto $\mathbf{x}_0$?
- Con un polinomio di primo grado: otteniamo l'approssimazione affine mediante il **piano tangente**:
  $$
  P_1(\mathbf{x}) = f(\mathbf{x}_0) + \nabla f(\mathbf{x}_0) \cdot (\mathbf{x} - \mathbf{x}_0)
  $$
- Con un polinomio di secondo grado: cerchiamo un'approssimazione parabolica locale per $f \in C^2(A)$ aggiungendo la forma quadratica associata alla matrice Hessiana.

Posto $\mathbf{h} = (h, k)^T$, la forma quadratica generata dall'Hessiana in $\mathbb{R}^2$ è data da:
$$
\begin{aligned}
q(h, k) &= (h, k) \, H_{f(\mathbf{x})} \begin{pmatrix} h \\ k \end{pmatrix} \\
&= (h, k) \begin{pmatrix} f_{xx} & f_{xy} \\ f_{yx} & f_{yy} \end{pmatrix} \begin{pmatrix} h \\ k \end{pmatrix} \\
&= (h, k) \begin{pmatrix} f_{xx} h + f_{xy} k \\ f_{yx} h + f_{yy} k \end{pmatrix} \\
&= f_{xx} h^2 + (f_{xy} + f_{yx}) hk + f_{yy} k^2 \\
&= f_{xx} h^2 + 2 f_{xy} hk + f_{yy} k^2 = d^2 f(\mathbf{x}; h, k)
\end{aligned}
$$
In dimensione generica $n \in \mathbb{N}$, per un incremento vettoriale $\mathbf{h} = (h_1, \dots, h_n)^T \in \mathbb{R}^n$, la forma quadratica si esprime in forma compatta come:
$$
q(\mathbf{h}) = \mathbf{h}^T H_{f(\mathbf{x})} \, \mathbf{h} = \sum_{i=1}^n \sum_{j=1}^n \frac{\partial^2 f}{\partial x_i \partial x_j}(\mathbf{x}) \, h_i \, h_j = d^2 f(\mathbf{x}; \mathbf{h})
$$
che definisce un polinomio omogeneo di secondo grado nelle $n$ variabili incrementali $(h_1, \dots, h_n)$.

### Formula di Taylor al secondo ordine

> [!theorem] Teorema — Formula di Taylor al secondo ordine
> Sia $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$, con $A$ aperto, $f \in C^2(A)$, e sia $\mathbf{x}_0 \in A$.
> Sia $\mathbf{h} \in \mathbb{R}^n$ tale che il segmento congiungente $\mathbf{x}_0$ e $\mathbf{x}_0 + \mathbf{h}$ sia interamente contenuto in $A$:
> $$
> S(\mathbf{x}_0, \mathbf{x}_0 + \mathbf{h}) := \{ \mathbf{x}_0 + t\mathbf{h} : t \in [0, 1] \} \subset A
> $$
> Allora valgono le seguenti formulazioni:
>
> **1. Formula di Taylor con resto di Lagrange:**
> Esiste un parametro $\delta \in (0, 1)$ tale che:
> $$
> f(\mathbf{x}_0 + \mathbf{h}) = f(\mathbf{x}_0) + \nabla f(\mathbf{x}_0) \cdot \mathbf{h} + \frac{1}{2} \mathbf{h}^T H_{f(\mathbf{x}_0 + \delta \mathbf{h})} \, \mathbf{h}
> $$
> dove il termine lineare è il differenziale primo $df(\mathbf{x}_0; \mathbf{h}) = \nabla f(\mathbf{x}_0) \cdot \mathbf{h}$ e il termine quadratico è la metà del differenziale secondo valutato nel punto intermedio $\mathbf{x}_0 + \delta \mathbf{h}$.
>
> **2. Formula di Taylor con resto di Peano:**
> Per $\mathbf{h} \to \mathbf{0}$, si ha:
> $$
> f(\mathbf{x}_0 + \mathbf{h}) = f(\mathbf{x}_0) + \nabla f(\mathbf{x}_0) \cdot \mathbf{h} + \frac{1}{2} \mathbf{h}^T H_{f(\mathbf{x}_0)} \, \mathbf{h} + o(\|\mathbf{h}\|^2)
> $$

> [!quote]- Dimostrazione
> **Dimostrazione con resto di Lagrange:**
> Fissato l'incremento $\mathbf{h} \in \mathbb{R}^n$, definiamo una funzione ausiliaria reale di una variabile reale $g: I \to \mathbb{R}$ su un intervallo aperto $I \subset \mathbb{R}$ contenente $[0, 1]$ ponendo:
> $$
> g(t) := f(\mathbf{x}_0 + t\mathbf{h}), \qquad \forall t \in I
> $$
> Poiché $f \in C^2(A)$ e la curva $t \mapsto \mathbf{x}_0 + t\mathbf{h}$ è di classe $C^\infty$, per il teorema di derivazione delle funzioni composte la funzione $g$ appartiene a $C^2(I)$.
> Possiamo quindi applicare a $g$ la classica formula di Taylor con resto di Lagrange per funzioni scalari di una variabile reale (Analisi 1) centrata in $t_0 = 0$:
> $$
> g(t) = g(0) + g'(0) t + \frac{1}{2} g''(\delta) t^2
> $$
> per un opportuno $\delta$ compreso strettamente tra $0$ e $t$.
> Valutando la formula per $t = 1$ (essendo $[0, 1] \subset I$ per ipotesi):
> $$
> g(1) = g(0) + g'(0) + \frac{1}{2} g''(\delta), \qquad \text{con } \delta \in (0, 1)
> $$
> Esplicitiamo ciascun termine mediante la funzione $f$:
> $$
> g(0) = f(\mathbf{x}_0), \qquad g(1) = f(\mathbf{x}_0 + \mathbf{h})
> $$
> Calcoliamo la derivata prima $g'(t)$ applicando la chain rule multivariabile:
> $$
> g'(t) = \frac{d}{dt} f(\mathbf{x}_0 + t\mathbf{h}) = \nabla f(\mathbf{x}_0 + t\mathbf{h}) \cdot \frac{d}{dt}(\mathbf{x}_0 + t\mathbf{h}) = \nabla f(\mathbf{x}_0 + t\mathbf{h}) \cdot \mathbf{h}
> $$
> Valutando in $t = 0$:
> $$
> g'(0) = \nabla f(\mathbf{x}_0) \cdot \mathbf{h}
> $$
> Calcoliamo la derivata seconda $g''(t)$ derivando rispetto a $t$ l'espressione ottenuta:
> $$
> g''(t) = \frac{d}{dt} \left[ \nabla f(\mathbf{x}_0 + t\mathbf{h}) \cdot \mathbf{h} \right]
> $$
> Esplicitando il prodotto scalare in componenti:
> $$
> g''(t) = \frac{d}{dt} \left[ \sum_{i=1}^n \frac{\partial f}{\partial x_i}(\mathbf{x}_0 + t\mathbf{h}) \, h_i \right] = \sum_{i=1}^n h_i \, \frac{d}{dt} \left[ \frac{\partial f}{\partial x_i}(\mathbf{x}_0 + t\mathbf{h}) \right]
> $$
> Applicando nuovamente la chain rule a ciascuna funzione componente $\frac{\partial f}{\partial x_i}$:
> $$
> \frac{d}{dt} \left[ \frac{\partial f}{\partial x_i}(\mathbf{x}_0 + t\mathbf{h}) \right] = \nabla \left( \frac{\partial f}{\partial x_i} \right)(\mathbf{x}_0 + t\mathbf{h}) \cdot \mathbf{h} = \sum_{j=1}^n \frac{\partial^2 f}{\partial x_j \partial x_i}(\mathbf{x}_0 + t\mathbf{h}) \, h_j
> $$
> Sostituendo nella sommatoria:
> $$
> g''(t) = \sum_{i=1}^n \sum_{j=1}^n \frac{\partial^2 f}{\partial x_j \partial x_i}(\mathbf{x}_0 + t\mathbf{h}) \, h_i \, h_j = \mathbf{h}^T H_{f(\mathbf{x}_0 + t\mathbf{h})} \, \mathbf{h}
> $$
> Valutando nel punto intermedio $t = \delta \in (0, 1)$:
> $$
> g''(\delta) = \mathbf{h}^T H_{f(\mathbf{x}_0 + \delta \mathbf{h})} \, \mathbf{h}
> $$
> Sostituendo le espressioni trovate nella relazione $g(1) = g(0) + g'(0) + \frac{1}{2} g''(\delta)$, otteniamo:
> $$
> f(\mathbf{x}_0 + \mathbf{h}) = f(\mathbf{x}_0) + \nabla f(\mathbf{x}_0) \cdot \mathbf{h} + \frac{1}{2} \mathbf{h}^T H_{f(\mathbf{x}_0 + \delta \mathbf{h})} \, \mathbf{h}
> $$
> il che conclude la dimostrazione della formula con resto di Lagrange.
>
**Dimostrazione con resto di Peano:**
> Per mostrare che il resto è un $o(\|\mathbf{h}\|^2)$ per $\mathbf{h} \to \mathbf{0}$, verifichiamo la definizione di limite:
> $$
> \lim_{\mathbf{h} \to \mathbf{0}} \frac{f(\mathbf{x}_0 + \mathbf{h}) - f(\mathbf{x}_0) - \nabla f(\mathbf{x}_0) \cdot \mathbf{h} - \frac{1}{2} \mathbf{h}^T H_{f(\mathbf{x}_0)} \, \mathbf{h}}{\|\mathbf{h}\|^2} \stackrel{?}{=} 0
> $$
> Sostituiamo al numeratore la differenza $f(\mathbf{x}_0 + \mathbf{h}) - f(\mathbf{x}_0) - \nabla f(\mathbf{x}_0) \cdot \mathbf{h}$ ricavata dalla formula con resto di Lagrange appena dimostrata:
> $$
> \begin{aligned}
> &\frac{1}{\|\mathbf{h}\|^2} \left[ \frac{1}{2} \mathbf{h}^T H_{f(\mathbf{x}_0 + \delta \mathbf{h})} \, \mathbf{h} - \frac{1}{2} \mathbf{h}^T H_{f(\mathbf{x}_0)} \, \mathbf{h} \right] \\
> &= \frac{1}{2 \|\mathbf{h}\|^2} \, \mathbf{h}^T \left[ H_{f(\mathbf{x}_0 + \delta \mathbf{h})} - H_{f(\mathbf{x}_0)} \right] \mathbf{h}
> \end{aligned}
> $$
> Essendo $f \in C^2(A)$, per definizione tutte le derivate seconde parziali $\frac{\partial^2 f}{\partial x_i \partial x_j}$ sono continue su $A$.
> Poiché $\delta \in (0, 1)$, quando $\mathbf{h} \to \mathbf{0}$ si ha anche $\delta \mathbf{h} \to \mathbf{0}$, e per continuità dell'applicazione Hessiana:
> $$
> H_{f(\mathbf{x}_0 + \delta \mathbf{h})} - H_{f(\mathbf{x}_0)} \xrightarrow{\mathbf{h} \to \mathbf{0}} \mathbb{O} \quad (\text{matrice nulla } n \times n)
> $$
> Utilizzando la disuguaglianza di Cauchy-Schwarz o la norma operatoriale matriciale:
> $$
> \left| \frac{\mathbf{h}^T \left[ H_{f(\mathbf{x}_0 + \delta \mathbf{h})} - H_{f(\mathbf{x}_0)} \right] \mathbf{h}}{\|\mathbf{h}\|^2} \right| \le \left\| H_{f(\mathbf{x}_0 + \delta \mathbf{h})} - H_{f(\mathbf{x}_0)} \right\| \xrightarrow{\mathbf{h} \to \mathbf{0}} 0
> $$
> Pertanto l'intera espressione converge a zero, dimostrando che il resto è $o(\|\mathbf{h}\|^2)$. $\blacksquare$

> [!example] Esempio di calcolo dello sviluppo di Taylor al secondo ordine
> Sia $f(x, y) = x^2 \cos y$. Vogliamo determinare lo sviluppo di Taylor di secondo ordine centrato nel punto $(x_0, y_0) = (2, 0)$.
> 1. Valore della funzione:
>    $$
>    f(2, 0) = 2^2 \cos 0 = 4
>    $$
> 2. Calcolo del gradiente:
>    $$
>    \nabla f(x, y) = \begin{pmatrix} 2x \cos y \\ -x^2 \sin y \end{pmatrix} \implies \nabla f(2, 0) = \begin{pmatrix} 4 \\ 0 \end{pmatrix}
>    $$
> 3. Calcolo della matrice Hessiana:
>    $$
>    H_f(x, y) = \begin{pmatrix} 2 \cos y & -2x \sin y \\ -2x \sin y & -x^2 \cos y \end{pmatrix} \implies H_f(2, 0) = \begin{pmatrix} 2 & 0 \\ 0 & -4 \end{pmatrix}
>    $$
> 4. Sviluppo di Taylor per incrementi $\mathbf{h} = \begin{pmatrix} x - 2 \\ y \end{pmatrix}$:
>    $$
>    \begin{aligned}
>    f(x, y) &= f(2, 0) + \nabla f(2, 0) \cdot \begin{pmatrix} x - 2 \\ y \end{pmatrix} + \frac{1}{2} \begin{pmatrix} x - 2 & y \end{pmatrix} \begin{pmatrix} 2 & 0 \\ 0 & -4 \end{pmatrix} \begin{pmatrix} x - 2 \\ y \end{pmatrix} + o\left( (x-2)^2 + y^2 \right) \\
>    &= 4 + 4(x - 2) + \frac{1}{2} \left[ 2(x - 2)^2 - 4 y^2 \right] + o\left( (x-2)^2 + y^2 \right) \\
>    &= 4 + 4(x - 2) + (x - 2)^2 - 2 y^2 + o\left( (x-2)^2 + y^2 \right)
>    \end{aligned}
>    $$
>

### Formula di Taylor di ordine $k$ (caso generale)

> [!theorem] Teorema di Taylor in $\mathbb{R}^n$ generalizzato ad ordine $k$ *(Cenni non d'esame)*
> Sia $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$, con $A$ aperto, $f \in C^k(A)$, e $\mathbf{x}_0 \in A$.
> Sia inoltre $d\mathbf{x} = \mathbf{x} - \mathbf{x}_0$ tale che il segmento congiungente $\mathbf{x}_0$ e $\mathbf{x}_0 + d\mathbf{x}$ sia contenuto in $A$.
>
> **1. Formula con resto di Peano:**
> $$
> f(\mathbf{x}_0 + d\mathbf{x}) = f(\mathbf{x}_0) + df(\mathbf{x}_0) + \frac{1}{2!} d^2 f(\mathbf{x}_0) + \dots + \frac{1}{k!} d^k f(\mathbf{x}_0) + o(\|d\mathbf{x}\|^k) \quad \text{per } \|d\mathbf{x}\| \to 0
> $$
>
> **2. Formula con resto di Lagrange:**
> Se $f \in C^{k+1}(A)$, esiste un parametro $\delta \in (0, 1)$ tale che:
> $$
> f(\mathbf{x}_0 + d\mathbf{x}) = f(\mathbf{x}_0) + df(\mathbf{x}_0) + \frac{1}{2!} d^2 f(\mathbf{x}_0) + \dots + \frac{1}{k!} d^k f(\mathbf{x}_0) + \frac{1}{(k+1)!} d^{k+1} f(\mathbf{x}_0 + \delta d\mathbf{x})
> $$
> dove $d^{k+1} f(\mathbf{x}_0 + \delta d\mathbf{x})$ è il differenziale di ordine $k+1$ calcolato con incrementi $d\mathbf{x} = \mathbf{x} - \mathbf{x}_0$.
>
