---
title: "Curve e Superfici Parametriche"
domain: "math/differential-geometry"
source_course: "Analisi 2 (Cap. 1, 4)"
tags:
  - math/geometry/curves
  - math/geometry/frenet-frame
---

# 1. Curve e Geometria Differenziale

> [!note] Informazioni sul Corso
> - **Libro di testo (Teoria):** Bramanti, Pagani, Salsa
> - **Eserciziario:** Bramanti
> - **Prova in itinere (07/04):** Teoria ed esercizi
>
## 1.1. Funzioni vettoriali e nozione di curva

In Analisi Matematica II si studiano funzioni a più variabili e a valori vettoriali del seguente tipo:

> [!definition] Funzione Vettoriale e Multivariabile
> Sia data una funzione $f: A \subseteq \mathbb{R}^n \longrightarrow \mathbb{R}^m$.
> - $f$ è detta **funzione vettoriale** se $m > 1$.
> - $f$ è detta **funzione multivariabile** se $n > 1$.
>
Si considerano preliminarmente funzioni vettoriali ($m \ge 2$) di una sola variabile reale ($n = 1$). Tra queste si collocano le funzioni dette **curve**. Per questo tipo di funzioni si adotta convenzionalmente la notazione vettoriale $\mathbf{r}(t)$.

Le funzioni a valori reali in più variabili ($n > 1, m = 1$) sono invece indicate di regola con la notazione scalare $f(\mathbf{x})$.

### La nozione intuitiva di curva

Le curve possono essere pensate come la **traiettoria** percorsa da un punto materiale in uno spazio $m$-dimensionale (nel caso fisico ordinario: $m = 3$ o $m = 2$):

$$
t \in I \subseteq \mathbb{R} \longmapsto \mathbf{r}(t) \in \mathbb{R}^m
$$

L'idea fondamentale è che il punto materiale si sposti nell'immagine di questa funzione con **un solo grado di libertà** (il parametro scalare $t$, frequentemente interpretato come il tempo).

## 1.2. Limiti e continuità per funzioni vettoriali

Un elemento fondativo del calcolo infinitesimale vettoriale è la definizione di limite per funzioni vettoriali di una variabile reale.

> [!definition] Limite di una Funzione Vettoriale
> Sia data una funzione vettoriale $\mathbf{r}: I \subseteq \mathbb{R} \longrightarrow \mathbb{R}^m$, con $I$ intervallo di $\mathbb{R}$, e sia $t_0 \in I$. Dato un vettore $\mathbf{l} \in \mathbb{R}^m$, si dice che:
> $$
> \lim_{t \to t_0} \mathbf{r}(t) = \mathbf{l}
> $$
> se e solo se:
> $$
> \lim_{t \to t_0} \|\mathbf{r}(t) - \mathbf{l}\| = 0
> $$
> dove il limite a secondo membro è un ordinario limite scalare monodimensionale in $\mathbb{R}$.

> [!note] Ipotesi sull'Insieme di Definizione
> Se $I$ non fosse assunto come intervallo, per dare senso al limite si richiederebbe formalmente che $t_0$ sia un punto di accumulazione per il dominio $I$ della funzione $\mathbf{r}$.
>
Esplicitando la definizione metrica con la formulazione $\varepsilon$-$\delta$:

$$
\lim_{t \to t_0} \mathbf{r}(t) = \mathbf{l} \iff \forall \varepsilon > 0, \; \exists \delta > 0 : \forall t \in I, \; 0 < |t - t_0| < \delta \implies \|\mathbf{r}(t) - \mathbf{l}\| < \varepsilon
$$

### Calcolo del limite componente per componente

> [!proposition] Caratterizzazione per Componenti del Limite Vettoriale
> Sia $\mathbf{r}: I \subseteq \mathbb{R} \longrightarrow \mathbb{R}^m$ con $I$ intervallo, $t_0 \in I$, e sia $\mathbf{l} \in \mathbb{R}^m$. Rappresentando $\mathbf{r}(t)$ e $\mathbf{l}$ in coordinate cartesiane:
> $$
> \mathbf{r}(t) = \begin{bmatrix} r_1(t) \\ \vdots \\ r_m(t) \end{bmatrix} \quad \forall t \in I, \qquad \mathbf{l} = \begin{bmatrix} l_1 \\ \vdots \\ l_m \end{bmatrix}
> $$
> con $r_i: I \subseteq \mathbb{R} \longrightarrow \mathbb{R}$ e $l_i \in \mathbb{R}$ per ogni $i = 1, \dots, m$.
> Allora vale:
> $$
> \lim_{t \to t_0} \mathbf{r}(t) = \mathbf{l} \iff \lim_{t \to t_0} r_i(t) = l_i \quad \forall i = 1, \dots, m
> $$

> [!quote]- Dimostrazione
> **Necessità ($\implies$):**
> Utilizzando la norma euclidea standard in $\mathbb{R}^m$, per ciascuna componente fissata $i = 1, \dots, m$ vale la disuguaglianza:
> $$
> \|\mathbf{r}(t) - \mathbf{l}\| = \sqrt{\sum_{k=1}^m (r_k(t) - l_k)^2} \ge \sqrt{(r_i(t) - l_i)^2} = |r_i(t) - l_i|
> $$
> Dunque, se $\|\mathbf{r}(t) - \mathbf{l}\| \to 0$ per $t \to t_0$, per il teorema del confronto anche $|r_i(t) - l_i| \to 0$, ossia:
> $$
> \lim_{t \to t_0} r_i(t) = l_i \quad \forall i = 1, \dots, m
> $$
> 
> **Sufficienza ($\impliedby$):**
> Si supponga che $\lim_{t \to t_0} r_i(t) = l_i$ per ogni $i = 1, \dots, m$. Per la definizione di limite in $\mathbb{R}$:
> $$
> \forall \varepsilon > 0, \; \exists \delta_i > 0 : \forall t \in I \setminus \{t_0\}, \; |t - t_0| < \delta_i \implies |r_i(t) - l_i| < \frac{\varepsilon}{m}
> $$
> Ponendo $\delta = \min \{\delta_1, \dots, \delta_m\} > 0$, per ogni $t \in I$ con $0 < |t - t_0| < \delta$ si ottiene:
> $$
> \|\mathbf{r}(t) - \mathbf{l}\| = \sqrt{\sum_{k=1}^m (r_k(t) - l_k)^2} \le \sum_{k=1}^m |r_k(t) - l_k|
> $$
> *(disuguaglianza ricavabile direttamente per confronto con il quadrato o tramite la disuguaglianza di Cauchy-Schwarz)*.
> Maggiorando termine a termine:
> $$
> \|\mathbf{r}(t) - \mathbf{l}\| \le \sum_{k=1}^m \frac{\varepsilon}{m} = \varepsilon
> $$
> da cui discende $\|\mathbf{r}(t) - \mathbf{l}\| < \varepsilon$. $\blacksquare$
>
### Continuità per funzioni vettoriali

Dalla definizione di limite discende naturalmente la nozione di continuità:

> [!definition] Continuità di una Funzione Vettoriale
> Sia $\mathbf{r}: I \subseteq \mathbb{R} \longrightarrow \mathbb{R}^m$, con $I$ intervallo, e sia $t_0 \in I$. Si dice che $\mathbf{r}$ è **continua** in $t_0$ se e solo se:
> $$
> \lim_{t \to t_0} \mathbf{r}(t) = \mathbf{r}(t_0)
> $$
> ovvero, in termini di intorni metrici:
> $$
> \forall \varepsilon > 0, \; \exists \delta > 0 : \forall t \in I, \; |t - t_0| < \delta \implies \|\mathbf{r}(t) - \mathbf{r}(t_0)\| < \varepsilon
> $$
> Per la proposizione precedente, ciò equivale a richiedere la continuità di tutte le componenti scalari:
> $$
> r_i: I \subseteq \mathbb{R} \longrightarrow \mathbb{R} \quad \text{è continua in } t_0, \quad \forall i = 1, \dots, m
> $$

> [!definition] Curva e Sostegno
> Sia data una funzione vettoriale $\mathbf{r}: I \subseteq \mathbb{R} \longrightarrow \mathbb{R}^m$, con $I$ intervallo di $\mathbb{R}$.
> - Si dice che $\mathbf{r}$ è una **curva** se $\mathbf{r}$ è continua in ogni punto $t \in I$.
> - Si definisce **sostegno** della curva, indicato con $\gamma$, l'immagine geometrica della funzione $\mathbf{r}$:
>   $$
>   \gamma = \mathbf{r}(I) = \{\mathbf{x} \in \mathbb{R}^m : \exists t \in I \text{ tale che } \mathbf{r}(t) = \mathbf{x}\}
>   $$

> [!warning] Distinzione tra Curva e Sostegno
> La **curva** è l'applicazione (la legge oraria che assegna ad ogni istante $t$ una posizione nello spazio), mentre il **sostegno** è il sottoinsieme di punti di $\mathbb{R}^m$ geometricamente tracciato dalla curva. Due curve distinte possono condividere il medesimo sostegno.
>
## 1.3. Esempi notevoli di curve

> [!example] Esempio 1: Retta in $\mathbb{R}^3$
> Sia fissato un punto $\mathbf{x}_0 = \begin{bmatrix} x_0 \\ y_0 \\ z_0 \end{bmatrix} \in \mathbb{R}^3$ e un vettore di direzione $\mathbf{v} = \begin{bmatrix} v_1 \\ v_2 \\ v_3 \end{bmatrix} \in \mathbb{R}^3 \setminus \{\mathbf{0}\}$.
> L'equazione parametrica vettoriale della retta passante per $\mathbf{x}_0$ e parallela a $\mathbf{v}$ è:
> $$
> \mathbf{r}(t) = \mathbf{x}_0 + \mathbf{v}t = \begin{bmatrix} x_0 + v_1 t \\ y_0 + v_2 t \\ z_0 + v_3 t \end{bmatrix}, \quad t \in \mathbb{R}
> $$

> [!example] Esempio 2: Elica cilindrica
> Curva tridimensionale a valori in $\mathbb{R}^3$ definita da:
> $$
> \mathbf{r}(t) = \begin{bmatrix} R \cos t \\ R \sin t \\ t \end{bmatrix}, \quad R > 0, \; t \in \mathbb{R}
> $$
> Il sostegno geometrico è avvolto lungo la superficie laterale del cilindro retto circolare $x^2 + y^2 = R^2$, elevandosi linearmente lungo la coordinata $z$ al crescere del parametro $t$.

> [!example] Esempio 3: Curve piane e circonferenza
> Una curva è piana se il suo codominio è $\mathbb{R}^2$ (oppure se il suo sostegno è contenuto in un piano di $\mathbb{R}^m$).
> Ad esempio, la circonferenza centrata nell'origine di raggio $R$:
> $$
> \mathbf{r}(t) = \begin{bmatrix} R \cos t \\ R \sin t \end{bmatrix}, \quad t \in [0, 2\pi]
> $$

> [!example] Esempio 4: Curve in coordinate polari
> Data una funzione raggio $f: \mathbb{R} \longrightarrow \mathbb{R}$, l'equazione polare $\rho = f(\theta)$ definisce una curva polare in $\mathbb{R}^2$ parametrizzata dall'angolo $\theta$:
> $$
> \mathbf{r}(\theta) = \begin{bmatrix} f(\theta) \cos \theta \\ f(\theta) \sin \theta \end{bmatrix}
> $$

> [!example] Esempio 5: Curve cartesiane (Grafico di funzione reale)
> Ogni funzione reale scalare $f: \mathbb{R} \longrightarrow \mathbb{R}$ continua definisce naturalmente una curva cartesiana in $\mathbb{R}^2$:
> $$
> \mathbf{r}(t) = \begin{bmatrix} t \\ f(t) \end{bmatrix}, \quad t \in \mathrm{dom}(f)
> $$
> il cui sostegno coincide esattamente con il grafico cartesiano della funzione $f$.

> [!example] Esempio 6: Curve come luogo degli zeri (Forma implicita)
> Una curva piana può essere identificata dall'insieme dei punti che soddisfano un'equazione scalare implicita del tipo $g(x, y) = 0$:
> - $x^2 + y^2 = 1 \implies$ circonferenza unitaria;
> - $\frac{x^2}{a^2} + \frac{y^2}{b^2} = 1 \implies$ ellisse canonica di semiassi $a, b$;
> - In forma generale, il luogo $g(x, y) = 0$ definisce localmente delle curve parametriche (in virtù del Teorema delle Funzioni Implicite / Teorema del Dini).

> [!example] Esempio 7: Curva nodata (Folium di Cartesio)
> Si consideri la curva piana:
> $$
> \mathbf{r}(t) = \begin{bmatrix} t(t - 1) \\ t(t - 1)(2t - 1) \end{bmatrix}, \quad t \in \mathbb{R}
> $$
> La curva ripassa dall'origine per due valori distinti del parametro $t$:
> $$
> \mathbf{r}(0) = \begin{bmatrix} 0 \\ 0 \end{bmatrix}, \qquad \mathbf{r}(1) = \begin{bmatrix} 0 \\ 0 \end{bmatrix}
> $$
> generando un nodo (autointersezione) all'origine per $t \in [0, 1]$, mentre per $t \to \pm\infty$ i rami divergono.
>

## 1.4. Curve semplici, chiuse e curve di Jordan

> [!definition] Curva Semplice
> Sia $\mathbf{r}: I \subseteq \mathbb{R} \longrightarrow \mathbb{R}^m$ una curva. $\mathbf{r}$ si dice **semplice** se $\mathbf{r}$ è iniettiva su $I$:
> $$
> \mathbf{r}(t_1) = \mathbf{r}(t_2) \iff t_1 = t_2 \quad \forall t_1, t_2 \in I
> $$
> Geometricamente, una curva semplice non presenta autointersezioni (non ripassa mai per lo stesso punto).

> [!definition] Curva Chiusa e Curva di Jordan
> Sia $\mathbf{r}: [a, b] \subseteq \mathbb{R} \longrightarrow \mathbb{R}^m$ una curva definita su un intervallo chiuso e limitato.
> - $\mathbf{r}$ si dice **chiusa** se gli estremi coincidono:
>   $$
>   \mathbf{r}(a) = \mathbf{r}(b)
>   $$
> - Se inoltre $\mathbf{r}$ è iniettiva su $[a, b)$ (ossia non si autointerseca tranne che agli estremi), allora si dice **semplice e chiusa**.
> - Una curva semplice, chiusa e piana ($\mathbf{r}: [a, b] \longrightarrow \mathbb{R}^2$) viene detta **curva di Jordan**.

> [!example] Esempi
> - Il Folium di Cartesio considerato in precedenza è semplice e chiuso se ristretto all'intervallo $I = [0, 1]$.
> - La circonferenza $\mathbf{r}(t) = \begin{bmatrix} R \cos t \\ R \sin t \end{bmatrix}$ è chiusa sull'intervallo $[0, 2\pi]$ ed è semplice su $[0, 2\pi)$. Dunque è una curva di Jordan.
>

### Il Teorema della Curva di Jordan e l'Orientazione

> [!theorem] Teorema della Curva di Jordan *(Cenni — Non in programma)*
> Sia $\mathbf{r}$ una curva di Jordan e sia $\gamma = \mathbf{r}([a, b]) \subset \mathbb{R}^2$ il suo sostegno.
> Allora il complementare $\mathbb{R}^2 \setminus \gamma$ è formato da esattamente **due componenti connesse**:
> 1. Una componente connessa limitata, denominata **parte interna** della curva.
> 2. Una componente connessa illimitata, denominata **parte esterna** della curva.
> La curva $\gamma$ costituisce la frontiera geometrica comune di entrambi gli insiemi.
>
### Orientazione del sostegno

Nel percorrere una curva di Jordan al crescere del parametro $t \in [a, b]$ si distinguono due sensi di percorrenza:

> [!definition] Orientazione di una Curva di Jordan
> - **Orientazione positiva (antioraria):** se percorrendo la curva nel verso dei tempi $t$ crescenti, la regione interna rimane costantemente a sinistra.
> - **Orientazione negativa (oraria):** altrimenti (se la regione interna rimane sulla destra).

> [!example] Esempio
> - La curva $\mathbf{r}: [0, 2\pi] \longrightarrow \mathbb{R}^2$, $\mathbf{r}(t) = \begin{bmatrix} R \cos t \\ R \sin t \end{bmatrix}$ è orientata positivamente (senso antiorario).
> - La curva $\mathbf{s}: [0, 2\pi] \longrightarrow \mathbb{R}^2$, $\mathbf{s}(t) = \begin{bmatrix} R \cos t \\ -R \sin t \end{bmatrix}$ è orientata negativamente (senso orario).
>

## 1.5. Calcolo differenziale per curve: vettore tangente e regolarità

> [!definition] Derivabilità di una Curva
> Sia $\mathbf{r}: I \subseteq \mathbb{R} \longrightarrow \mathbb{R}^m$ una curva e sia $t_0 \in I$. Si dice che $\mathbf{r}$ è **derivabile** in $t_0$ se e solo se esiste finito il limite del rapporto incrementale per $h \to 0$ ($h \in \mathbb{R}$):
> $$
> \lim_{h \to 0} \frac{\mathbf{r}(t_0 + h) - \mathbf{r}(t_0)}{h} \in \mathbb{R}^m
> $$
> o equivalentemente:
> $$
> \lim_{t \to t_0} \frac{\mathbf{r}(t) - \mathbf{r}(t_0)}{t - t_0} \in \mathbb{R}^m
> $$
> Il limite viene calcolato componente per componente: in caso di esistenza, si indica con $\mathbf{r}'(t_0)$ o $\frac{d\mathbf{r}}{dt}(t_0)$.

> [!definition] Curva di Classe $C^1$
> Sia $\mathbf{r}: I \subseteq \mathbb{R} \longrightarrow \mathbb{R}^m$ una curva. Se $\mathbf{r}$ è derivabile in ogni punto $t \in I$ e la funzione vettoriale derivata $\mathbf{r}': I \longrightarrow \mathbb{R}^m$ è continua in $I$, allora si dice che $\mathbf{r}$ è di classe $C^1(I)$.
>
### Significato geometrico e cinematico

Dal punto di vista cinematico e geometrico:
- Il vettore incremento $\mathbf{r}(t_0 + h) - \mathbf{r}(t_0)$ rappresenta lo spostamento secante tra due posizioni sulla traiettoria.
- Dividendo per lo scalare $h$ e facendo tendere $h \to 0$, la direzione secante converge alla retta tangente al sostegno nel punto $\mathbf{r}(t_0)$.

> [!definition] Vettore Tangente, Velocità e Velocità Scalare
> Sia data una curva $\mathbf{r}: I \subseteq \mathbb{R} \longrightarrow \mathbb{R}^m$ derivabile in $t_0 \in I$.
> - Si definisce **vettore tangente** alla curva in $t_0$ (o **vettore velocità**) il vettore derivata:
>   $$
>   \mathbf{r}'(t_0) \in \mathbb{R}^m
>   $$
> - La norma del vettore velocità è denominata **velocità scalare** all'istante $t_0$:
>   $$
>   v(t_0) = \|\mathbf{r}'(t_0)\|
>   $$
>
### La nozione di curva regolare

> [!definition] Curva Regolare
> Sia $\mathbf{r}: I \subseteq \mathbb{R} \longrightarrow \mathbb{R}^m$ una curva di classe $C^1(I)$. Se vale la condizione di non annullamento del vettore velocità:
> $$
> \mathbf{r}'(t) \ne \mathbf{0} \quad \forall t \in I \iff \|\mathbf{r}'(t)\| \ne 0 \quad \forall t \in I
> $$
> allora la curva $\mathbf{r}$ si dice **regolare** in $I$.

> [!note] Significato della Regolarità
> La regolarità assicura l'assenza di punti di arresto cinematico (in cui la velocità si azzera), garantendo l'esistenza di una retta tangente ben definita e continua in ogni punto della curva, ed escludendo la presenza di cuspidi.

> [!example] Esempi di verifica della regolarità

> [!example] Esempio 1: Moto circolare uniforme
> Data la curva piana:
> $$
> \mathbf{r}: \mathbb{R} \longrightarrow \mathbb{R}^2, \quad \mathbf{r}(t) = \begin{bmatrix} R \cos(\omega t) \\ R \sin(\omega t) \end{bmatrix}, \quad R > 0, \; \omega > 0
> $$
> Calcolando la derivata componente per componente:
> $$
> \mathbf{r}'(t) = \begin{bmatrix} -R\omega \sin(\omega t) \\ R\omega \cos(\omega t) \end{bmatrix}
> $$
> Verifichiamo se esistono istanti in cui $\mathbf{r}'(t) = \mathbf{0}$:
> $$
> \mathbf{r}'(t) = \mathbf{0} \implies \begin{cases} -R\omega \sin(\omega t) = 0 \\ R\omega \cos(\omega t) = 0 \end{cases} \implies \begin{cases} \sin(\omega t) = 0 \\ \cos(\omega t) = 0 \end{cases}
> $$
> Poiché $\sin^2(\omega t) + \cos^2(\omega t) = 1$, il seno e il coseno non si annullano mai contemporaneamente nello stesso punto. Il sistema non ammette soluzioni in $\mathbb{R}$, pertanto $\mathbf{r}'(t) \ne \mathbf{0}$ per ogni $t \in \mathbb{R}$: la curva è **regolare**.
> Inoltre, la velocità scalare è costante lungo l'intero moto:
> $$
> \|\mathbf{r}'(t)\| = \sqrt{R^2\omega^2 \sin^2(\omega t) + R^2\omega^2 \cos^2(\omega t)} = R\omega
> $$

> [!example] Esempio 2: Presenza di cuspide
> Si consideri:
> $$
> \mathbf{r}(t) = \begin{bmatrix} t^2 \\ t^3 \end{bmatrix} \implies \mathbf{r}'(t) = \begin{bmatrix} 2t \\ 3t^2 \end{bmatrix}
> $$
> Verificando l'annullamento del vettore tangente:
> $$
> \mathbf{r}'(t) = \mathbf{0} \iff \begin{cases} 2t = 0 \\ 3t^2 = 0 \end{cases} \iff t = 0
> $$
> Dunque $\mathbf{r}$ è regolare su qualsiasi intervallo tale che $0 \notin \mathrm{dom}(\mathbf{r})$. Nel punto $t = 0$ la curva fallisce la regolarità (presenza geometrica di una cuspide).

> [!example] Esempio 3: Moto degenere con punto di arresto
> Sia data:
> $$
> \mathbf{r}: [-1, 1] \longrightarrow \mathbb{R}^3, \quad \mathbf{r}(t) = \begin{bmatrix} t^2 \\ 0 \\ 0 \end{bmatrix}
> $$
> La derivata è:
> $$
> \mathbf{r}'(t) = \begin{bmatrix} 2t \\ 0 \\ 0 \end{bmatrix} \implies \mathbf{r}'(0) = \begin{bmatrix} 0 \\ 0 \\ 0 \end{bmatrix} = \mathbf{0}
> $$
> Pertanto $\mathbf{r}$ **non è regolare** in $[-1, 1]$. Il moto si arresta all'origine in $t = 0$ per poi invertire la direzione di avanzamento sul medesimo segmento.
>

### Curve regolari a tratti

> [!definition] Curva Regolare a Tratti
> Sia $\mathbf{r}: I \subseteq \mathbb{R} \longrightarrow \mathbb{R}^m$ una curva, con $I$ intervallo. Si dice che $\mathbf{r}$ è **regolare a tratti** se l'intervallo $I$ può essere suddiviso nell'unione di un numero finito di sottointervalli $I_1, I_2, \dots, I_n$ ($n \in \mathbb{N}$), tali che la restrizione di $\mathbf{r}$ a ciascun sottointervallo $I_k$ sia una curva regolare.

> [!example] Esempio di raccordo tra curve regolari
> Siano $\mathbf{r}_1: [a, b] \longrightarrow \mathbb{R}^m$ e $\mathbf{r}_2: [b, c] \longrightarrow \mathbb{R}^m$ due curve regolari. La curva concatenata:
> $$
> \mathbf{r}: [a, c] \longrightarrow \mathbb{R}^m, \quad \mathbf{r}(t) = \begin{cases} \mathbf{r}_1(t), & t \in [a, b] \\ \mathbf{r}_2(t), & t \in [b, c] \end{cases}
> $$
> è una curva continua e regolare a tratti se e solo se coincide nel punto di giunzione:
> $$
> \lim_{t \to b^-} \mathbf{r}(t) = \lim_{t \to b^+} \mathbf{r}(t) = \mathbf{r}(b) \iff \mathbf{r}_1(b) = \mathbf{r}_2(b)
> $$
> Nel punto di raccordo $t = b$ il vettore tangente può presentare una discontinuità a salto (punto angoloso).
>

## 1.6. Retta tangente e curve equivalenti

> [!definition] Retta Tangente
> Sia $\mathbf{r}: I \subseteq \mathbb{R} \longrightarrow \mathbb{R}^m$ una curva regolare e sia $t_0 \in I$. Si definisce **retta tangente** al sostegno della curva nel punto $\mathbf{r}(t_0)$ la retta parametrizzata da:
> $$
> \mathbf{s}(t) = \mathbf{r}(t_0) + t\,\mathbf{r}'(t_0), \quad t \in \mathbb{R}
> $$
>
### Curve equivalenti e cambio di parametrizzazione

> [!definition] Curve Equivalenti
> Siano $\mathbf{r}: I \subseteq \mathbb{R} \longrightarrow \mathbb{R}^m$ e $\mathbf{\widetilde{r}}: \widetilde{I} \subseteq \mathbb{R} \longrightarrow \mathbb{R}^m$ due curve regolari a tratti.
> Si dice che $\mathbf{r}$ e $\mathbf{\widetilde{r}}$ sono **equivalenti** se e solo se esiste un'applicazione $\varphi: \widetilde{I} \longrightarrow I$ soddisfacente le seguenti condizioni:
> 1. $\varphi$ è **biunivoca** (biiettiva da $\widetilde{I}$ a $I$);
> 2. $\varphi \in C^1(\widetilde{I})$;
> 3. $\varphi'(\tau) > 0$ per ogni $\tau \in \widetilde{I}$;
> 4. $\mathbf{\widetilde{r}}(\tau) = \mathbf{r}(\varphi(\tau))$ per ogni $\tau \in \widetilde{I}$.
> 
> La funzione $\varphi$ viene denominata **cambio di parametrizzazione** (o riparametrizzazione ammissibile) con legge di trasformazione $t = \varphi(\tau)$.

> [!note] Ruolo della Condizione $\varphi'(\tau) > 0$
> La condizione $\varphi'(\tau) > 0$ su tutto l'intervallo implica che $\varphi$ è una funzione **strettamente crescente**:
> $$
> \forall \tau_1, \tau_2 \in \widetilde{I}, \quad \tau_1 < \tau_2 \implies \varphi(\tau_1) < \varphi(\tau_2)
> $$
> Tale proprietà è essenziale poiché assicura che il **senso di percorrenza** della curva sia preservato. Se si ammettesse $\varphi'(\tau) < 0$, la riparametrizzazione invertirebbe la direzione di marcia sul sostegno.

> [!example] Esempio di cambio di parametrizzazione
> Si consideri l'arco di circonferenza parametrizzato dall'angolo $\tau$:
> $$
> \mathbf{r}: \left[-\frac{\pi}{4}, \frac{\pi}{4}\right] \longrightarrow \mathbb{R}^2, \quad \mathbf{r}(\tau) = \begin{bmatrix} \cos \tau \\ \sin \tau \end{bmatrix}
> $$
> Si pone la sostituzione di variabile $t = \sin \tau$.
> La funzione $\varphi(\tau) = \sin \tau$ è di classe $C^1$ e strettamente crescente in $\left[-\frac{\pi}{4}, \frac{\pi}{4}\right]$, con $\varphi'(\tau) = \cos \tau > 0$.
> Gli estremi del nuovo intervallo di variazione per il parametro $t$ risultano:
> $$
> t \in \left[\sin\left(-\frac{\pi}{4}\right), \sin\left(\frac{\pi}{4}\right)\right] = \left[-\frac{\sqrt{2}}{2}, \frac{\sqrt{2}}{2}\right]
> $$
> Ricordando che in tale intervallo $\cos \tau = \sqrt{1 - \sin^2 \tau} = \sqrt{1 - t^2}$, si ricava la parametrizzazione equivalente:
> $$
> \mathbf{\widetilde{r}}(t) = \begin{bmatrix} \sqrt{1 - t^2} \\ t \end{bmatrix}, \quad t \in \left[-\frac{\sqrt{2}}{2}, \frac{\sqrt{2}}{2}\right]
> $$
> Se si fosse invece introdotto il cambio di variabile $t = -\sin \tau$, si sarebbe ottenuta una parametrizzazione opposta, dotata del medesimo sostegno geometrico ma percorsa in verso inverso.

> [!warning] Proprietà Geometriche vs. Proprietà Cinematiche
> Due curve equivalenti condividono le proprietà geometriche (stesso sostegno e medesimo verso di percorrenza), ma **non** le grandezze cinematiche: la velocità vettoriale, la velocità scalare e l'accelerazione dipendono esplicitamente dalla parametrizzazione adottata.
> Infatti, per la regola di derivazione delle funzioni composte (chain rule):
> $$
> \mathbf{\widetilde{r}}'(\tau) = \frac{d}{d\tau}[\mathbf{r}(\varphi(\tau))] = \mathbf{r}'(\varphi(\tau)) \cdot \varphi'(\tau)
> $$
> La velocità scalare della nuova curva risulta riscalata dal fattore di derivata temporale $\varphi'(\tau)$.
>
## 1.7. Lunghezza di una curva e rettificabilità

Per formalizzare matematicamente la lunghezza del tratto di una curva, si procede per approssimazione poligonale in modo analogo alla definizione dell'integrale di Riemann.

Sia data una curva continua $\mathbf{r}: [a, b] \longrightarrow \mathbb{R}^m$, con $a, b \in \mathbb{R}$, $a < b$.
Si introduce una partizione $P$ dell'intervallo $[a, b]$:
$$
P = \{t_0, t_1, \dots, t_n\} \quad \text{con } a = t_0 < t_1 < \dots < t_n = b
$$
La poligonale inscritta nella curva avente come vertici ordinati i punti $\mathbf{r}(t_0), \mathbf{r}(t_1), \dots, \mathbf{r}(t_n)$ possiede lunghezza euclidea complessiva pari a:
$$
L(P) = \sum_{i=1}^n \|\mathbf{r}(t_i) - \mathbf{r}(t_{i-1})\|
$$

Si definisce allora la lunghezza della curva come l'estremo superiore delle lunghezze delle poligonali inscritte:
$$
L := \sup_{P} L(P)
$$
L'impiego dell'estremo superiore è motivato dal fatto che ogni poligonale approssima la curva per difetto, in virtù della disuguaglianza triangolare applicata alle corde.

> [!definition] Curva Rettificabile
> Una curva $\mathbf{r}: [a, b] \longrightarrow \mathbb{R}^m$ si dice **rettificabile** se e solo se la sua lunghezza $L$ è finita:
> $$
> L = \sup_{P} L(P) < +\infty
> $$
>
### Calcolo integrale della lunghezza

> [!theorem] Lunghezza delle Curve Regolari
> Sia data una curva regolare $\mathbf{r}: [a, b] \longrightarrow \mathbb{R}^m$ (con $\mathbf{r} \in C^1([a, b])$ e $\mathbf{r}'(t) \ne \mathbf{0}$).
> Allora la curva $\mathbf{r}$ è **rettificabile** e la sua lunghezza $L$ è data dall'integrale del modulo della velocità:
> $$
> L = \int_a^b \|\mathbf{r}'(t)\|\,dt
> $$

> [!quote]- Dimostrazione *(Cenni — Non in programma)*
> Si consideri una generica partizione $P = \{t_0, t_1, \dots, t_n\}$ dell'intervallo $[a, b]$ con $a = t_0 < t_1 < \dots < t_n = b$.
> Per ogni sottointervallo $[t_{i-1}, t_i]$ con $i = 1, \dots, n$, poiché la funzione vettoriale $\mathbf{r}$ è di classe $C^1([a, b])$, per il teorema fondamentale del calcolo integrale applicato a ciascuna componente scalare si ha:
> $$
> \|\mathbf{r}(t_i) - \mathbf{r}(t_{i-1})\| = \left\| \int_{t_{i-1}}^{t_i} \mathbf{r}'(t)\,dt \right\|
> $$
>
## 1.8. Parametrizzazione in ascissa curvilinea (lunghezza d'arco)

> [!quote]- Dimostrazione (conclusione della rettificabilità di curve regolari)
> Riprendendo la stima sulla generica partizione $P = \{t_0, t_1, \dots, t_n\}$ dell'intervallo $[a, b]$ con $t_0 = a$ e $t_n = b$, per ogni sottointervallo $[t_{i-1}, t_i]$ si ha:
> $$
> \|\mathbf{r}(t_i) - \mathbf{r}(t_{i-1})\| = \left\| \int_{t_{i-1}}^{t_i} \mathbf{r}'(t) \, dt \right\| \le \int_{t_{i-1}}^{t_i} \|\mathbf{r}'(t)\| \, dt
> $$
> Sommando su tutti gli indici $i = 1, \dots, n$, la lunghezza della poligonale associata alla partizione $P$ risulta limitata superiormente:
> $$
> L(P) = \sum_{i=1}^n \|\mathbf{r}(t_i) - \mathbf{r}(t_{i-1})\| \le \sum_{i=1}^n \int_{t_{i-1}}^{t_i} \|\mathbf{r}'(t)\| \, dt = \int_{t_0}^{t_n} \|\mathbf{r}'(t)\| \, dt = \int_a^b \|\mathbf{r}'(t)\| \, dt
> $$
> Poiché le somme $L(P)$ sono superiormente limitate, l'estremo superiore è finito e dunque la curva $\mathbf{r}$ è rettificabile.
> Per mostrare la disuguaglianza opposta (e quindi l'uguaglianza con l'integrale) si ricorre alla continuità uniforme della derivata $\mathbf{r}'$ garantita dal teorema di Heine-Cantor su $[a, b]$, unitamente a reiterate applicazioni della disuguaglianza triangolare. $\blacksquare$

> [!note] Lunghezza della curva vs lunghezza del sostegno
> La lunghezza di una curva è un invariante cinematico che in generale **non coincide** con la misura geometrica unidimensionale del suo sostegno $\mathrm{Im}(\mathbf{r})$.
> **Esempio:** Se il sostegno (ad esempio una circonferenza di raggio $R$) viene percorso $n$ volte dal vettore posizione $\mathbf{r}(t)$, la lunghezza calcolata della curva risulterà pari a $n$ volte la lunghezza del sostegno:
> $$
> L = n \cdot (2\pi R)
> $$
>
### Invarianza della lunghezza per riparametrizzazione

> [!proposition] Invarianza della lunghezza rispetto a curve equivalenti
> La lunghezza di una curva è indipendente dal verso di percorrenza e dalla velocità con cui viene tracciata. Siano $\mathbf{r}: [a, b] \to \mathbb{R}^m$ e $\mathbf{\tilde{r}}: [\alpha, \beta] \to \mathbb{R}^m$ due curve equivalenti. Allora hanno la medesima lunghezza:
> $$
> L_{\mathbf{r}} = L_{\mathbf{\tilde{r}}}
> $$

> [!quote]- Dimostrazione
> Poiché $\mathbf{r}$ e $\mathbf{\tilde{r}}$ sono curve equivalenti, esiste un cambio di parametro $\varphi: [\alpha, \beta] \to [a, b]$ biiettivo di classe $C^1([\alpha, \beta])$ tale che:
> $$
> \mathbf{\tilde{r}}(\tau) = \mathbf{r}(\varphi(\tau)) \quad \forall \tau \in [\alpha, \beta]
> $$
> Si distinguono due casi a seconda del segno della derivata $\varphi'(\tau)$:
> 
> **Caso 1 ($\varphi$ crescente, $\varphi'(\tau) > 0$):** In tal caso $\varphi(\alpha) = a$ e $\varphi(\beta) = b$. Applicando il teorema di derivazione delle funzioni composte si ha $\mathbf{\tilde{r}}'(\tau) = \mathbf{r}'(\varphi(\tau))\varphi'(\tau)$. Effettuando il cambio di variabile $t = \varphi(\tau)$, per cui $dt = \varphi'(\tau) \, d\tau$:
> $$
> L_{\mathbf{r}} = \int_a^b \|\mathbf{r}'(t)\| \, dt = \int_\alpha^\beta \|\mathbf{r}'(\varphi(\tau))\| \varphi'(\tau) \, d\tau
> $$
> Poiché $\varphi'(\tau) > 0$, si ha $|\varphi'(\tau)| = \varphi'(\tau)$, per cui:
> $$
> \int_\alpha^\beta \|\mathbf{r}'(\varphi(\tau))\| \varphi'(\tau) \, d\tau = \int_\alpha^\beta \|\mathbf{r}'(\varphi(\tau))\varphi'(\tau)\| \, d\tau = \int_\alpha^\beta \|\mathbf{\tilde{r}}'(\tau)\| \, d\tau = L_{\mathbf{\tilde{r}}}
> $$
> 
> **Caso 2 ($\varphi$ decrescente, $\varphi'(\tau) < 0$):** In tal caso $\varphi(\alpha) = b$ e $\varphi(\beta) = a$, dunque gli estremi di integrazione si invertono:
> $$
> L_{\mathbf{r}} = \int_a^b \|\mathbf{r}'(t)\| \, dt = \int_\beta^\alpha \|\mathbf{r}'(\varphi(\tau))\| \varphi'(\tau) \, d\tau
> $$
> Invertendo gli estremi di integrazione e ricordando che $-\varphi'(\tau) = |\varphi'(\tau)|$:
> $$
> = \int_\alpha^\beta \|\mathbf{r}'(\varphi(\tau))\| \big( -\varphi'(\tau) \big) \, d\tau = \int_\alpha^\beta \|\mathbf{r}'(\varphi(\tau))\varphi'(\tau)\| \, d\tau = \int_\alpha^\beta \|\mathbf{\tilde{r}}'(\tau)\| \, d\tau = L_{\mathbf{\tilde{r}}} \quad \blacksquare
> $$

> [!corollary] Lunghezza di curve regolari a tratti
> Sia $\mathbf{r}: [a, b] \to \mathbb{R}^m$ una curva regolare a tratti, ovvero esiste una partizione $a = t_0 < t_1 < \dots < t_k = b$ tale che la restrizione $\mathbf{r}\big|_{[t_{i-1}, t_i]}$ è regolare per ogni $i = 1, \dots, k$.
> Allora $\mathbf{r}$ è rettificabile e la sua lunghezza totale coincide con la somma delle lunghezze dei singoli tratti regolari:
> $$
> L = \sum_{i=1}^k \int_{t_{i-1}}^{t_i} \|\mathbf{r}'(t)\| \, dt
> $$
>
### Esempi di calcolo della lunghezza

> [!example] Esempio 1: Spirale di Archimede
> Si consideri la curva piana descritta in coordinate polari dall'equazione $\rho(\theta) = A\theta$, con $A > 0$ e parametro angolare $\theta \in [0, 2\pi]$.
> La parametrizzazione cartesiana $\mathbf{r}: [0, 2\pi] \to \mathbb{R}^2$ è:
> $$
> \mathbf{r}(\theta) = \begin{pmatrix} A\theta \cos\theta \\ A\theta \sin\theta \end{pmatrix}
> $$
> Si verifica preliminarmente la regolarità della curva analizzando il vettore derivata:
> $$
> \mathbf{r}'(\theta) = \begin{pmatrix} A\cos\theta - A\theta\sin\theta \\ A\sin\theta + A\theta\cos\theta \end{pmatrix}
> $$
> Imponendo l'annullamento simultaneo delle componenti:
> $$
> \mathbf{r}'(\theta) = \begin{pmatrix} 0 \\ 0 \end{pmatrix} \iff \begin{cases} A(\cos\theta - \theta\sin\theta) = 0 \\ A(\sin\theta + \theta\cos\theta) = 0 \end{cases} \iff \begin{cases} \cos\theta = \theta\sin\theta \\ \sin\theta = -\theta\cos\theta \end{cases}
> $$
> Sostituendo la seconda equazione nella prima:
> $$
> \begin{cases} \cos\theta = \theta(-\theta\cos\theta) \\ \sin\theta = -\theta\cos\theta \end{cases} \iff \begin{cases} \cos\theta(1 + \theta^2) = 0 \\ \sin\theta = -\theta\cos\theta \end{cases}
> $$
> Poiché $1 + \theta^2 \ge 1 > 0$, deve essere $\cos\theta = 0$, da cui $\sin\theta = 0$. Ma seno e coseno non si annullano mai contemporaneamente in $\mathbb{R}$. Dunque $\mathbf{r}'(\theta) \neq \mathbf{0}$ per ogni $\theta \in [0, 2\pi]$ e la curva è regolare.
>
> In alternativa, il calcolo diretto della velocità scalare fornisce:
> $$
> \|\mathbf{r}'(\theta)\| = \sqrt{A^2(\cos\theta - \theta\sin\theta)^2 + A^2(\sin\theta + \theta\cos\theta)^2} = \sqrt{A^2(1 + \theta^2)} = A\sqrt{1 + \theta^2} \neq 0
> $$
> La lunghezza dell'arco di spirale per $\theta \in [0, 2\pi]$ è data da:
> $$
> L = \int_0^{2\pi} A\sqrt{1 + \theta^2} \, d\theta = A \int_0^{2\pi} \sqrt{1 + \theta^2} \, d\theta
> $$
> Risolvendo mediante la sostituzione con funzioni iperboliche $\theta = \sinh w$, $d\theta = \cosh w \, dw$:
> $$
> L = A \int_0^{\mathrm{arcsinh}(2\pi)} \sqrt{1 + \sinh^2 w} \cosh w \, dw = A \int_0^{\mathrm{arcsinh}(2\pi)} \cosh^2 w \, dw
> $$
> Utilizzando la formula di duplicazione $\cosh^2 w = \frac{1 + \cosh(2w)}{2}$:
> $$
> L = A \int_0^{\mathrm{arcsinh}(2\pi)} \left( \frac{1}{2}\cosh(2w) + \frac{1}{2} \right) dw = A \left[ \frac{1}{4}\sinh(2w) + \frac{1}{2}w \right]_0^{\mathrm{arcsinh}(2\pi)}
> = A \left[ \frac{1}{4}\sinh\big(2\mathrm{arcsinh}(2\pi)\big) + \frac{\mathrm{arcsinh}(2\pi)}{2} \right]
> $$

> [!example] Esempio 2: Elica cilindrica
> Si consideri l'elica circolare parametrizzata da $\mathbf{r}: [0, 2n\pi] \to \mathbb{R}^3$ con $R > 0$:
> $$
> \mathbf{r}(t) = \begin{pmatrix} R\cos t \\ R\sin t \\ t \end{pmatrix} \implies \mathbf{r}'(t) = \begin{pmatrix} -R\sin t \\ R\cos t \\ 1 \end{pmatrix}
> $$
> Il modulo del vettore tangente vale:
> $$
> \|\mathbf{r}'(t)\| = \sqrt{(-R\sin t)^2 + (R\cos t)^2 + 1^2} = \sqrt{R^2(\sin^2 t + \cos^2 t) + 1} = \sqrt{1 + R^2}
> $$
> La lunghezza di $n$ spire complete dell'elica è data da:
> $$
> L = \int_0^{2n\pi} \|\mathbf{r}'(t)\| \, dt = \int_0^{2n\pi} \sqrt{1 + R^2} \, dt = \left[ \sqrt{1 + R^2} \, t \right]_0^{2n\pi} = 2n\pi\sqrt{1 + R^2}
> $$

> [!note] Lunghezza del grafico di una funzione reale $f: [a, b] \to \mathbb{R}$
> Data una funzione derivabile $f: [a, b] \to \mathbb{R}$, il suo grafico può essere parametrizzato in forma canonica come la curva piana $\mathbf{r}: [a, b] \to \mathbb{R}^2$:
> $$
> \mathbf{r}(t) = \begin{pmatrix} t \\ f(t) \end{pmatrix} \implies \mathbf{r}'(t) = \begin{pmatrix} 1 \\ f'(t) \end{pmatrix}
> $$
> La norma del vettore tangente è $\|\mathbf{r}'(t)\| = \sqrt{1 + [f'(t)]^2}$. La formula della lunghezza restituisce l'espressione classica nota da Analisi Matematica 1:
> $$
> L = \int_a^b \sqrt{1 + [f'(t)]^2} \, dt
> $$
>
### Parametro di lunghezza d'arco (ascissa curvilinea)

> [!definition] Ascissa curvilinea
> Sia $\mathbf{r}: [a, b] \to \mathbb{R}^m$ una curva regolare. Si definisce **ascissa curvilinea** (o **parametro di lunghezza d'arco**) la funzione integrale $s: [a, b] \to \mathbb{R}$:
> $$
> s(t) := \int_a^t \|\mathbf{r}'(\tau)\| \, d\tau
> $$
> ove la quantità scalare $v(\tau) := \|\mathbf{r}'(\tau)\|$ rappresenta la **velocità scalare** del punto al parametro $\tau$.

> [!proposition] Proprietà analitiche dell'ascissa curvilinea
> 1. **Immagine:** $s(t) \in [0, L]$ per ogni $t \in [a, b]$, con $s(a) = 0$ e $s(b) = L$.
> 2. **Regolarità:** Poiché $\mathbf{r} \in C^1([a, b])$, la velocità scalare $\|\mathbf{r}'(t)\|$ è una funzione continua. Per il Secondo Teorema Fondamentale del Calcolo Integrale, $s \in C^1([a, b])$.
> 3. **Stretta monotonia:** La derivata prima coincide con la velocità scalare:
>    $$
>    s'(t) = \frac{d}{dt} \left( \int_a^t \|\mathbf{r}'(\tau)\| \, d\tau \right) = \|\mathbf{r}'(t)\|
>    $$
>    Essendo la curva regolare per ipotesi, si ha $\|\mathbf{r}'(t)\| > 0$ per ogni $t \in [a, b]$. Di conseguenza $s'(t) > 0$, il che implica che $s(t)$ è **strettamente crescente** e dunque **biiettiva** e **invertibile** da $[a, b]$ a $[0, L]$.

> [!note] Regola di derivazione di una funzione integrale generale
> Si rammenta che data una funzione integrale con estremo variabile:
> $$
> F(t) = \int_a^{\sigma(t)} f(\tau) \, d\tau \implies F'(t) = f(\sigma(t))\sigma'(t)
> $$

> [!definition] Parametrizzazione in lunghezza d'arco (parametrizzazione naturale)
> Essendo $s: [a, b] \to [0, L]$ invertibile, esiste la funzione inversa $t(s): [0, L] \to [a, b]$, anch'essa di classe $C^1$.
> Si definisce **parametrizzazione in lunghezza d'arco** (o **parametrizzazione naturale**) della curva $\mathbf{r}$ la funzione composta:
> $$
> \mathbf{\tilde{r}}(s) := \mathbf{r}(t(s)) : [0, L] \to \mathbb{R}^m
> $$
>
### Separazione tra geometria e cinematica

La parametrizzazione in ascissa curvilinea è la più naturale dal punto di vista geometrico e fondamentale in fisica matematica. La funzione vettoriale originale $\mathbf{r}(t)$ si fattorizza attraverso lo spazio intermedio del parametro d'arco:
$$
\begin{array}{ccccc}
[a, b] & \xrightarrow{s(t)} & [0, L] & \xrightarrow{\mathbf{\tilde{r}}(s)} & \mathbb{R}^m \\
& \searrow & & \nearrow & \\
& & \mathbf{r}(t) & &
\end{array}
$$
Questa scomposizione separa nettamente gli aspetti fisici del moto da quelli puramente geometrici:
- $\mathbf{\tilde{r}}(s)$ descrive la **geometria intrinseca** della traiettoria nello spazio $\mathbb{R}^m$, specificando la posizione del punto materiale in funzione della distanza percorsa lungo la curva;
- $s(t)$ rappresenta la **legge oraria**, descrivendo l'evoluzione cinematica dello spostamento curvilineo in funzione del tempo.

> [!proposition] Velocità scalare unitaria in ascissa curvilinea
> Nella parametrizzazione naturale, la velocità scalare è identicamente unitaria:
> $$
> \|\mathbf{\tilde{r}}'(s)\| = 1 \quad \forall s \in [0, L]
> $$

> [!quote]- Dimostrazione
> Applicando la regola di derivazione delle funzioni composte e il teorema di derivazione della funzione inversa:
> $$
> \mathbf{\tilde{r}}'(s) = \frac{d}{ds}\big(\mathbf{r}(t(s))\big) = \mathbf{r}'(t(s)) \cdot \frac{dt}{ds}
> $$
> Poiché $\frac{dt}{ds} = \frac{1}{s'(t(s))} = \frac{1}{\|\mathbf{r}'(t(s))\|}$, si ottiene:
> $$
> \mathbf{\tilde{r}}'(s) = \frac{\mathbf{r}'(t(s))}{\|\mathbf{r}'(t(s))\|}
> $$
> Calcolando la norma euclidea:
> $$
> \|\mathbf{\tilde{r}}'(s)\| = \left\| \frac{\mathbf{r}'(t(s))}{\|\mathbf{r}'(t(s))\|} \right\| = \frac{\|\mathbf{r}'(t(s))\|}{\|\mathbf{r}'(t(s))\|} = 1 \quad \forall s \in [0, L] \quad \blacksquare
> $$

> [!note] Calcolo della lunghezza in ascissa curvilinea
> Come conseguenza immediata della velocità unitaria, la lunghezza della curva si riduce banalmente alla misura dell'intervallo del parametro $s$:
> $$
> L = \int_0^L \|\mathbf{\tilde{r}}'(s)\| \, ds = \int_0^L 1 \, ds = L
> $$

> [!example] Esempio 3: Parametrizzazione in lunghezza d'arco della spirale logaritmica
> Si consideri la spirale logaritmica descritta dall'equazione polare $\rho(t) = e^{-t}$ con $t \in [0, +\infty)$.
> La curva parametrizzata in forma cartesiana è data da:
> $$
> \mathbf{r}(t) = \begin{pmatrix} e^{-t}\cos t \\ e^{-t}\sin t \end{pmatrix}
> $$
> Il vettore derivata rispetto al tempo $t$ vale:
> $$
> \mathbf{r}'(t) = \begin{pmatrix} -e^{-t}\cos t - e^{-t}\sin t \\ -e^{-t}\sin t + e^{-t}\cos t \end{pmatrix} = e^{-t}\begin{pmatrix} -\cos t - \sin t \\ -\sin t + \cos t \end{pmatrix}
> $$
> Il modulo del vettore tangente è:
> $$
> \|\mathbf{r}'(t)\| = \sqrt{e^{-2t}(-\cos t - \sin t)^2 + e^{-2t}(-\sin t + \cos t)^2}
> = \sqrt{e^{-2t}(\cos^2 t + 2\cos t\sin t + \sin^2 t + \sin^2 t - 2\cos t\sin t + \cos^2 t)} = \sqrt{2e^{-2t}} = \sqrt{2}e^{-t}
> $$
> La lunghezza totale dell'arco improprio per $t \in [0, +\infty)$ risulta finita:
> $$
> L = \int_0^{+\infty} \sqrt{2}e^{-t} \, dt = \sqrt{2}\left[ -e^{-t} \right]_0^{+\infty} = \sqrt{2}
> $$
> Si determina ora l'ascissa curvilinea $s(t)$ integrando a partire da $t = 0$:
> $$
> s(t) = \int_0^t \sqrt{2}e^{-\tau} \, d\tau = \sqrt{2}\left[ -e^{-\tau} \right]_0^t = \sqrt{2}\big(1 - e^{-t}\big) = \sqrt{2} - \sqrt{2}e^{-t}
> $$
> Si inverte la relazione per esprimere il tempo $t$ in funzione dell'ascissa $s \in [0, \sqrt{2})$:
> $$
> s - \sqrt{2} = -\sqrt{2}e^{-t} \implies \frac{\sqrt{2} - s}{\sqrt{2}} = e^{-t} \implies 1 - \frac{s}{\sqrt{2}} = e^{-t}
> \implies t(s) = -\log\left( 1 - \frac{s}{\sqrt{2}} \right)
> $$
> Sostituendo $t(s)$ nella parametrizzazione iniziale, si ottiene la parametrizzazione naturale $\mathbf{\tilde{r}}(s)$:
> $$
> \mathbf{\tilde{r}}(s) = \begin{pmatrix} \left( 1 - \frac{s}{\sqrt{2}} \right) \cos\left( -\log\left( 1 - \frac{s}{\sqrt{2}} \right) \right) \\ \left( 1 - \frac{s}{\sqrt{2}} \right) \sin\left( -\log\left( 1 - \frac{s}{\sqrt{2}} \right) \right) \end{pmatrix} \quad \text{per } s \in [0, \sqrt{2})
> $$
>

## 1.9. Geometria differenziale: curvatura, piano osculatore e terna intrinseca di Frenet

La parametrizzazione in lunghezza d'arco costituisce il punto di partenza naturale per lo studio differenziale delle proprietà intrinseche delle curve nello spazio euclideo.

### Versore tangente e ortogonalità cinematica

> [!definition] Versore tangente
> Sia $\mathbf{r}: [a, b] \to \mathbb{R}^m$ una curva regolare e sia $\mathbf{\tilde{r}}(s): [0, L] \to \mathbb{R}^m$ la sua parametrizzazione in lunghezza d'arco. Si definisce **versore tangente** alla curva la funzione vettoriale $\mathbf{T}: [a, b] \to \mathbb{R}^m$:
> $$
> \mathbf{T}(t) := \mathbf{\tilde{r}}'(s(t)) = \frac{\mathbf{r}'(t)}{\|\mathbf{r}'(t)\|} \quad \forall t \in [a, b]
> $$
> Per costruzione, $\|\mathbf{T}(t)\| = 1$ per ogni $t \in [a, b]$.

> [!proposition] Ortogonalità tra un vettore di norma costante e la sua derivata
> Sia $\mathbf{u}: I \subseteq \mathbb{R} \to \mathbb{R}^m$ una funzione vettoriale derivabile tale che la sua norma euclidea sia costante su tutto l'intervallo:
> $$
> \|\mathbf{u}(t)\| = c \in \mathbb{R} \quad \forall t \in I
> $$
> Allora la sua derivata prima $\mathbf{u}'(t)$ è ovunque ortogonale al vettore $\mathbf{u}(t)$:
> $$
> \mathbf{u}(t) \cdot \mathbf{u}'(t) = 0 \quad \forall t \in I
> $$

> [!quote]- Dimostrazione
> Si consideri il caso $m = 3$ (la dimostrazione si estende identicamente a $\mathbb{R}^m$). Il quadrato della norma coincide con il prodotto scalare del vettore con se stesso:
> $$
> \mathbf{u}(t) \cdot \mathbf{u}(t) = \|\mathbf{u}(t)\|^2 = u_x^2(t) + u_y^2(t) + u_z^2(t) = c^2
> $$
> Derivando entrambi i membri rispetto al parametro scalare $t$:
> $$
> \frac{d}{dt}\big(\mathbf{u}(t) \cdot \mathbf{u}(t)\big) = 2u_x(t)u_x'(t) + 2u_y(t)u_y'(t) + 2u_z(t)u_z'(t) = 0
> $$
> Raccogliendo il fattore $2$:
> $$
> 2\big( u_x u_x' + u_y u_y' + u_z u_z' \big) = 0 \implies \mathbf{u}(t) \cdot \mathbf{u}'(t) = 0 \quad \forall t \in I \quad \blacksquare
> $$

> [!note] Ortogonalità del vettore accelerazione in ascissa curvilinea
> Sia $\mathbf{r}: I \subseteq \mathbb{R} \to \mathbb{R}^m$ una curva di classe $C^2$. Se parametrizzata tramite l'ascissa curvilinea $s$, il versore tangente $\mathbf{T}(s) = \mathbf{\tilde{r}}'(s)$ ha norma unitaria identicamente uguale a $1$.
> Applicando la proposizione precedente a $\mathbf{T}(s)$ si ottiene:
> $$
> \mathbf{T}(s) \cdot \frac{d\mathbf{T}}{ds} = 0
> $$
> Dunque, nella parametrizzazione naturale, la derivata del versore tangente $\frac{d\mathbf{T}}{ds}$ (che rappresenta il vettore accelerazione geometrica) è rigorosamente **ortogonale** al versore tangente $\mathbf{T}(s)$.
>
### Versore normale principale, curvatura e raggio di curvatura

> [!definition] Versore normale principale e curvatura scalare
> Sia $\mathbf{r}: I \subseteq \mathbb{R} \to \mathbb{R}^m$ una curva regolare di classe $C^2$ con $\mathbf{T}'(s) \neq \mathbf{0}$, e sia $\mathbf{T}$ il suo versore tangente.
> 1. Si definisce **curvatura scalare** di $\mathbf{r}$ la funzione $\kappa(s): [0, L] \to \mathbb{R}$:
>    $$
>    \kappa(s) := \|\mathbf{T}'(s)\| = \left\| \frac{d\mathbf{T}}{ds} \right\|
>    $$
> 2. Si definisce **versore normale principale** alla curva la funzione vettoriale $\mathbf{N}: [0, L] \to \mathbb{R}^m$:
>    $$
>    \mathbf{N}(s) := \frac{\mathbf{T}'(s)}{\|\mathbf{T}'(s)\|} = \frac{1}{\kappa(s)} \frac{d\mathbf{T}}{ds}
>    $$
> 3. Si definisce **raggio di curvatura** la funzione a valori reali estesi:
>    $$
>    \rho(s) := \frac{1}{\kappa(s)} \quad \forall s \in [0, L]
>    $$

> [!note] Significato geometrico del versore normale e del piano osculatore
> In uno spazio tridimensionale $\mathbb{R}^3$, il complemento ortogonale del versore tangente $\mathbf{T}(s)$ è un sottospazio vettoriale bidimensionale (il **piano normale**).
> Tra tutte le infinite direzioni normali ortogonali a $\mathbf{T}(s)$, si seleziona come **normale principale** $\mathbf{N}(s)$ la direzione privilegiata lungo la quale avviene la variazione della velocità vettoriale $\frac{d\mathbf{T}}{ds}$.
> 
> Poiché $\mathbf{N}(s) \perp \mathbf{T}(s)$ per costruzione, i due vettori sono linearmente indipendenti.
> Lo spazio vettoriale generato:
> $$
> \Pi_{\text{osc}}(s) := \mathrm{Span}\big\{ \mathbf{T}(s), \mathbf{N}(s) \big\}
> $$
> individua il **piano osculatore** della curva nel punto $\mathbf{r}(s)$:
> - È il piano affine passante per $\mathbf{r}(s)$ che **approssima al secondo ordine** (al meglio) la traiettoria spaziale della curva;
> - Corrisponde al piano su cui giace il cerchio osculatore di raggio $\rho(s)$ tangente alla curva;
> - Proietta localmente una curva sghemba (non piana) su una curva piana contenuta nel piano $\Pi_{\text{osc}}$.
>
### Versore binormale e Terna di Frénet

> [!definition] Versore binormale e Terna di Frénet
> Sia $\mathbf{r}: I \subseteq \mathbb{R} \to \mathbb{R}^3$ una curva regolare di classe $C^2$ immersa nello spazio tridimensionale con $\kappa(s) > 0$. Siano $\mathbf{T}(s)$ il versore tangente e $\mathbf{N}(s)$ il versore normale principale.
> Si definisce **versore binormale** $\mathbf{B}: [0, L] \to \mathbb{R}^3$ il prodotto vettoriale:
> $$
> \mathbf{B}(s) := \mathbf{T}(s) \times \mathbf{N}(s)
> $$
> L'insieme ordinato di vettori $\{\mathbf{T}(s), \mathbf{N}(s), \mathbf{B}(s)\}$ costituisce una **base ortonormale positivamente orientata** (destrorsa) di $\mathbb{R}^3$ per ogni $s \in [0, L]$, denominata **terna intrinseca** o **terna di Frénet-Serret**.
>
### Formule per parametrizzazioni arbitrarie

In generale, le curve vengono assegnate tramite un parametro temporale o geometrico arbitrario $t$, in cui la velocità scalare $v(t) = \|\mathbf{r}'(t)\|$ non è necessariamente unitaria.

> [!proposition] Relazione tra derivata rispetto al tempo e all'ascissa curvilinea
> Applicando la regola di derivazione a catena (chain rule):
> $$
> \frac{d\mathbf{T}}{dt} = \frac{d\mathbf{T}}{ds} \frac{ds}{dt} = v(t) \frac{d\mathbf{T}}{ds}
> $$
> ove $v(t) = \frac{ds}{dt} = \|\mathbf{r}'(t)\|$ è la velocità scalare.
> Calcolando la norma di entrambi i membri:
> $$
> \|\mathbf{T}'(t)\| = v(t) \left\| \frac{d\mathbf{T}}{ds} \right\| = v(t) \kappa(t)
> $$
> Da cui si ricava l'espressione generale della curvatura e della derivata del versore tangente:
> $$
> \kappa(t) = \frac{\|\mathbf{T}'(t)\|}{v(t)} = \frac{\|\mathbf{T}'(t)\|}{\|\mathbf{r}'(t)\|}
> \mathbf{N}(t) = \frac{\mathbf{T}'(t)}{\|\mathbf{T}'(t)\|} \implies \mathbf{T}'(t) = v(t)\kappa(t)\mathbf{N}(t)
> $$

> [!theorem] Scomposizione intrinseca dell'accelerazione e calcolo vettoriale della curvatura
> Sia $\mathbf{r}: I \subseteq \mathbb{R} \to \mathbb{R}^3$ una curva regolare di classe $C^2$ con parametrizzazione $t \mapsto \mathbf{r}(t)$.
> 1. Il vettore accelerazione $\mathbf{r}''(t)$ si scompone univocamente nella base intrinseca come somma di una componente tangenziale e di una componente normale centripeta:
>    $$
>    \mathbf{r}''(t) = v'(t) \mathbf{T}(t) + v^2(t)\kappa(t) \mathbf{N}(t) = v'(t)\mathbf{T}(t) + \frac{v^2(t)}{\rho(t)}\mathbf{N}(t)
>    $$
>    ove $a_T(t) := v'(t)$ è l'**accelerazione tangenziale** e $a_N(t) := v^2(t)\kappa(t) = \frac{v^2(t)}{\rho(t)}$ è l'**accelerazione normale**.
> 2. La curvatura scalare $\kappa(t)$ si calcola operativamente tramite il prodotto vettoriale delle derivate prima e seconda:
>    $$
>    \kappa(t) = \frac{\|\mathbf{r}'(t) \times \mathbf{r}''(t)\|}{v^3(t)} = \frac{\|\mathbf{r}'(t) \times \mathbf{r}''(t)\|}{\|\mathbf{r}'(t)\|^3}
>    $$

> [!quote]- Dimostrazione
> **Passo 1 (Scomposizione dell'accelerazione):**
> Per definizione di velocità e versore tangente, il vettore velocità si scrive come:
> $$
> \mathbf{r}'(t) = v(t) \mathbf{T}(t)
> $$
> Derivando rispetto al parametro scalare $t$ mediante la regola di Leibniz:
> $$
> \mathbf{r}''(t) = \frac{d}{dt}\big( v(t)\mathbf{T}(t) \big) = v'(t)\mathbf{T}(t) + v(t)\mathbf{T}'(t)
> $$
> Sostituendo la relazione $\mathbf{T}'(t) = v(t)\kappa(t)\mathbf{N}(t)$ precedentemente ottenuta:
> $$
> \mathbf{r}''(t) = v'(t)\mathbf{T}(t) + v^2(t)\kappa(t)\mathbf{N}(t)
> $$
> 
> **Passo 2 (Formula esplicita della curvatura):**
> Si calcola il prodotto vettoriale tra il vettore velocità $\mathbf{r}'(t)$ e il vettore accelerazione $\mathbf{r}''(t)$:
> $$
> \mathbf{r}'(t) \times \mathbf{r}''(t) = \big( v(t)\mathbf{T}(t) \big) \times \left[ v'(t)\mathbf{T}(t) + v^2(t)\kappa(t)\mathbf{N}(t) \right]
> $$
> Sfruttando la proprietà distributiva e la bilinearità del prodotto vettoriale:
> $$
> = v(t)v'(t) \underbrace{\big( \mathbf{T}(t) \times \mathbf{T}(t) \big)}_{= \mathbf{0}} + v^3(t)\kappa(t) \big( \mathbf{T}(t) \times \mathbf{N}(t) \big)
> $$
> Poiché il prodotto vettoriale di un vettore con se stesso è nullo e ricordando la definizione di versore binormale $\mathbf{B}(t) = \mathbf{T}(t) \times \mathbf{N}(t)$:
> $$
> \mathbf{r}'(t) \times \mathbf{r}''(t) = v^3(t)\kappa(t)\mathbf{B}(t)
> $$
> Calcolando la norma euclidea di entrambi i membri, tenendo presente che $\|\mathbf{B}(t)\| = 1$, $v(t) > 0$ e $\kappa(t) \ge 0$:
> $$
> \|\mathbf{r}'(t) \times \mathbf{r}''(t)\| = \left\| v^3(t)\kappa(t)\mathbf{B}(t) \right\| = v^3(t)\kappa(t)\|\mathbf{B}(t)\| = v^3(t)\kappa(t)
> $$
> Dividendo per $v^3(t) = \|\mathbf{r}'(t)\|^3$:
> $$
> \kappa(t) = \frac{\|\mathbf{r}'(t) \times \mathbf{r}''(t)\|}{v^3(t)} = \frac{\|\mathbf{r}'(t) \times \mathbf{r}''(t)\|}{\|\mathbf{r}'(t)\|^3} \quad \blacksquare
> $$

> [!note] Ruolo cinematico vs geometrico nell'accelerazione
> Se la curva è parametrizzata in ascissa curvilinea $s$, la velocità scalare è costantemente unitaria ($v(s) \equiv 1$), per cui la derivata temporale della velocità scalare si annulla identicamente ($v'(s) \equiv 0$). La scomposizione dell'accelerazione si riduce a:
> $$
> \mathbf{r}''(s) = \kappa(s)\mathbf{N}(s)
> $$
> Ciò evidenzia con chiarezza geometrica fondamentale che:
> - La **componente normale** dell'accelerazione è un'invariante puramente geometrico che quantifica la deflessione locale della curva dalla direzione rettilinea tangenziale;
> - La **componente tangenziale** dell'accelerazione dipende invece esclusivamente dalla variazione nel tempo della velocità con cui la traiettoria viene percorsa.
>
### Applicazioni notevoli ed esempi di curvatura

> [!example] Esempio 1: Moto rettilineo nello spazio $\mathbb{R}^3$
> Si consideri una retta parametrizzata in ascissa curvilinea:
> $$
> \mathbf{r}(s) = \mathbf{P_0} + s\mathbf{u} \quad \text{con } \|\mathbf{u}\| = 1
> $$
> Il versore tangente coincide costantemente con la direzione $\mathbf{u}$:
> $$
> \mathbf{T}(s) = \mathbf{r}'(s) = \mathbf{u} \implies \mathbf{T}'(s) = \mathbf{0} \quad \forall s
> $$
> La curvatura di una retta è pertanto identicamente nulla:
> $$
> \kappa(s) = \|\mathbf{T}'(s)\| = 0 \quad \forall s \implies \mathbf{r}''(s) = \mathbf{0}
> $$

> [!example] Esempio 2: Curve piane nel piano $(x, y)$ immerse in $\mathbb{R}^3$
> Sia data una curva piana generale parametrizzata in coordinate cartesiane:
> $$
> \mathbf{r}(t) = \begin{pmatrix} x(t) \\ y(t) \\ 0 \end{pmatrix}
> $$
> I vettori derivata prima e seconda sono:
> $$
> \mathbf{r}'(t) = \begin{pmatrix} x'(t) \\ y'(t) \\ 0 \end{pmatrix}, \quad \mathbf{r}''(t) = \begin{pmatrix} x''(t) \\ y''(t) \\ 0 \end{pmatrix}
> $$
> Il loro prodotto vettoriale si calcola mediante lo sviluppo del determinante simbolico lungo la terza componente:
> $$
> \mathbf{r}'(t) \times \mathbf{r}''(t) = \det \begin{pmatrix} \hat{\imath} & \hat{\jmath} & \hat{k} \\ x'(t) & y'(t) & 0 \\ x''(t) & y''(t) & 0 \end{pmatrix} = \hat{k} \big( x'(t)y''(t) - x''(t)y'(t) \big) = \begin{pmatrix} 0 \\ 0 \\ x'(t)y''(t) - x''(t)y'(t) \end{pmatrix}
> $$
> La norma del prodotto vettoriale coincide con il valore assoluto della componente verticale:
> $$
> \|\mathbf{r}'(t) \times \mathbf{r}''(t)\| = |x'(t)y''(t) - x''(t)y'(t)|
> $$
> Poiché il modulo della velocità è $v(t) = \sqrt{x'(t)^2 + y'(t)^2}$, la formula generale della curvatura per curve piane diviene:
> $$
> \kappa(t) = \frac{|x'(t)y''(t) - x''(t)y'(t)|}{\left[ x'(t)^2 + y'(t)^2 \right]^{3/2}}
> $$

> [!example] Esempio 3: Grafico di una funzione $f: \mathbb{R} \to \mathbb{R}$
> Applicando la formula precedente alla parametrizzazione del grafico di una funzione di classe $C^2$:
> $$
> \begin{cases} x(t) = t \implies x'(t) = 1, \; x''(t) = 0 \\ y(t) = f(t) \implies y'(t) = f'(t), \; y''(t) = f''(t) \\ z(t) = 0 \end{cases}
> $$
> Si ritrova l'espressione classica della curvatura del grafico di una funzione cartesiana:
> $$
> \kappa(x) = \frac{|f''(x)|}{\left( 1 + [f'(x)]^2 \right)^{3/2}}
> $$

> [!example] Esempio 4: La Cicloide (introduzione geometrico-cinematica)
> La **cicloide** è la curva piana descritta dalla traiettoria di un punto fissato sul bordo di una circonferenza di raggio $R$ che rotola senza strisciare (moto di puro rotolamento / rototraslazione) lungo una retta orizzontale su un piano.
>
[!example] Esempio (La Cicloide)
> La cicloide è la traiettoria percorsa da un punto fissato su una circonferenza di raggio $R$ che rotola senza strisciare su una retta orizzontale.
> Al tempo $t = 0$, sia $\mathbf{r}(0) = \mathbf{0}$. Siano $v$ la velocità orizzontale di traslazione della ruota e $\omega$ la sua velocità angolare di rotazione:
> $$
> \begin{cases}
> x(t) = v t - R \sin(\omega t) \\
> y(t) = R - R \cos(\omega t)
> \end{cases}
> $$
>
> Per la condizione di puro rotolamento, l'arco di circonferenza percorso deve eguagliare la traslazione orizzontale del centro:
> $$
> v t = R \omega t \implies v = \omega R
> $$
> Ne segue la parametrizzazione canonica:
> $$
> \mathbf{r}(t) = \begin{pmatrix} R(\omega t - \sin(\omega t)) \\ R(1 - \cos(\omega t)) \end{pmatrix}
> $$
>
> Si consideri l'intervallo temporale di un singolo periodo $t \in \left[0, \frac{2\pi}{\omega}\right]$.
> Verifichiamo la regolarità della curva:
> $$
> x(t) \in C^\infty, \quad y(t) \in C^\infty \implies \mathbf{r}(t) \in C^\infty
> $$
> Calcoliamo il vettore velocità per individuare eventuali punti singolari ($\mathbf{r}'(t) = \mathbf{0}$):
> $$
> \mathbf{r}'(t) = R \begin{pmatrix} \omega - \omega\cos(\omega t) \\ \omega\sin(\omega t) \end{pmatrix} = R\omega \begin{pmatrix} 1 - \cos(\omega t) \\ \sin(\omega t) \end{pmatrix}
> $$
> Ponendo $\mathbf{r}'(t) = \mathbf{0}$:
> $$
> R\omega \begin{pmatrix} 1 - \cos(\omega t) \\ \sin(\omega t) \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix} \stackrel{R, \omega \neq 0}{\iff} \begin{cases} \cos(\omega t) = 1 \\ \sin(\omega t) = 0 \end{cases} \iff t = \frac{2k\pi}{\omega}, \quad k \in \mathbb{Z}
> $$
> I punti $t = \frac{2k\pi}{\omega}$ sono punti di non regolarità (cuspidi). La curva è dunque **regolare a tratti**.
>
> Calcoliamo la lunghezza d'arco $L$ su un periodo:
> $$
> L = \int_0^{\frac{2\pi}{\omega}} \|\mathbf{r}'(t)\| \, dt = \int_0^{\frac{2\pi}{\omega}} R|\omega| \sqrt{(1 - \cos(\omega t))^2 + \sin^2(\omega t)} \, dt
> $$
> Sviluppando il radicando:
> $$
> 1 - 2\cos(\omega t) + \cos^2(\omega t) + \sin^2(\omega t) = 2 - 2\cos(\omega t)
> $$
> Supponendo senza perdita di generalità $\omega > 0$:
> $$
> L = R\omega \int_0^{\frac{2\pi}{\omega}} \sqrt{2(1 - \cos(\omega t))} \, dt = 2R\omega \int_0^{\frac{2\pi}{\omega}} \sqrt{\frac{1 - \cos(\omega t)}{2}} \, dt
> $$
> Applicando l'identità trigonometrica di bisezione $\sin\left(\frac{\omega t}{2}\right) = \sqrt{\frac{1 - \cos(\omega t)}{2}}$ (valida poiché per $t \in \left[0, \frac{2\pi}{\omega}\right]$ l'argomento $\frac{\omega t}{2} \in [0, \pi]$, dove il seno è non negativo):
> $$
> L = 2R\omega \int_0^{\frac{2\pi}{\omega}} \sin\left(\frac{\omega t}{2}\right) \, dt = 4R \left[ -\cos\left(\frac{\omega t}{2}\right) \right]_0^{\frac{2\pi}{\omega}} = 4R (-\cos(\pi) + \cos(0)) = 4R(1 - (-1)) = 8R
> $$
> Nel caso ad esempio di $\omega = 1 \, \frac{\text{rad}}{\text{s}}$ su $t \in [0, 2\pi]$:
> $$
> L = 4R \left[ -\cos\left(\frac{\omega t}{2}\right) \right]_0^{2\pi} = 4R(1 - \cos(\omega\pi)) \xrightarrow{\omega = 1} 8R
> $$
>

### Formulario di Geometria Differenziale

| Grandezza | Parametrizzazione in $t$ | Parametrizzazione in $s$ (ascissa curvilinea) | Funzioni scalari cinematiche |
| :--- | :--- | :--- | :--- |
| **Posizione** | $\mathbf{r}(t)$ | $\tilde{\mathbf{r}}(s)$ | $s(t)$ |
| **Velocità** | $\mathbf{r}'(t) = v(t) \mathbf{T}(t)$<br>*(velocità vettoriale)* | $\mathbf{T}(s)$<br>*(versore tangente)* | $v(t) = s'(t)$<br>*(velocità scalare)* |
| **Accelerazione** | $\mathbf{r}''(t) = a_t(t)\mathbf{T}(t) + a_n(t)\mathbf{N}(t)$<br>*(accelerazione vettoriale)* | $\mathbf{N}(s)$<br>*(vettore normale)* | $a_t(t) = s''(t)$<br>*(accel. tangenziale scalare)*<br><br>$k(t) = \frac{\|\mathbf{r}'(t) \times \mathbf{r}''(t)\|}{v^3(t)}$<br>*(curvatura scalare)*<br><br>$\rho(t) = \frac{1}{k(t)}$<br>*(raggio di curvatura)*<br><br>$a_n(t) = v^2(t) k(t)$<br>*(accel. normale scalare)* |

> [!example] Esempio (Moto a velocità scalare costante)
> Sia un moto lungo una curva spaziale con velocità scalare costante:
> $$
> s'(t) = v \in \mathbb{R} \quad \forall t \implies s(t) = s_0 + v t
> $$
> Sia la traiettoria espressa rispetto all'ascissa curvilinea:
> $$
> \mathbf{r}(t) = \begin{pmatrix} f_x(s) \\ f_y(s) \\ f_z(s) \end{pmatrix}
> $$
> Derivando rispetto al tempo tramite la regola di derivazione a catena:
> $$
> \mathbf{r}'(t) = \begin{pmatrix} \frac{df_x}{ds} \frac{ds}{dt} \\ \frac{df_y}{ds} \frac{ds}{dt} \\ \frac{df_z}{ds} \frac{ds}{dt} \end{pmatrix} = v \begin{pmatrix} f_x'(s) \\ f_y'(s) \\ f_z'(s) \end{pmatrix}
> $$
> Il modulo della velocità vale $\|\mathbf{r}'(t)\| = v$, in quanto:
> $$
> \left\| \frac{d\mathbf{r}}{ds} \right\| = \left\| \frac{d\mathbf{r}}{dt} \frac{dt}{ds} \right\| = \frac{\|\mathbf{r}'(t)\|}{s'(t)} = \frac{v}{v} = 1
> $$
> Derivando ulteriormente per ottenere l'accelerazione vettoriale:
> $$
> \mathbf{r}''(t) = v \begin{pmatrix} \frac{df_x'(s)}{ds} \frac{ds}{dt} \\ \frac{df_y'(s)}{ds} \frac{ds}{dt} \\ \frac{df_z'(s)}{ds} \frac{ds}{dt} \end{pmatrix} = v^2 \frac{d^2\mathbf{r}}{ds^2}
> $$
>

# 4. Funzioni Vettoriali e Superfici Parametriche

## 4.1. Funzioni da $\mathbb{R}^n$ a $\mathbb{R}^m$ e matrice Jacobiana

> [!definition] Funzione a valori vettoriali
> Si dicono **funzioni a valori vettoriali** le applicazioni del tipo:
> $$
> \mathbf{f}: A \subseteq \mathbb{R}^n \to \mathbb{R}^m
> $$
> che associano ad ogni vettore $\mathbf{x} \in A$ un vettore $\mathbf{w} \in \mathbb{R}^m$.
> Esplicitando le singole componenti scalari, per ogni $\mathbf{x} = (x_1, \dots, x_n) \in A$ si scrive:
> $$
> \mathbf{f}(x_1, \dots, x_n) = \begin{pmatrix} f_1(x_1, \dots, x_n) \\ \vdots \\ f_m(x_1, \dots, x_n) \end{pmatrix}
> $$
> dove $f_i: A \to \mathbb{R}$ indica la $i$-esima funzione componente per $i = 1, \dots, m$.
>
**Limiti e continuità per funzioni a valori vettoriali:**
I limiti sono definiti in termini della norma euclidea di $\mathbb{R}^m$:
$$
\lim_{\mathbf{x} \to \mathbf{x}_0} \mathbf{f}(\mathbf{x}) = \mathbf{L} \iff \lim_{\mathbf{x} \to \mathbf{x}_0} \|\mathbf{f}(\mathbf{x}) - \mathbf{L}\| = 0 \iff \lim_{\mathbf{x} \to \mathbf{x}_0} f_i(\mathbf{x}) = L_i, \quad \forall i = 1, \dots, m
$$
La continuità segue componente per componente: $\mathbf{f}$ è continua in $\mathbf{x}_0 \in A$ se e solo se ciascuna funzione componente $f_i$ è continua in $\mathbf{x}_0$.

### Differenziabilità e matrice jacobiana

> [!definition] Differenziabilità e Matrice Jacobiana
> Sia $\mathbf{f}: A \subseteq \mathbb{R}^n \to \mathbb{R}^m$, con $A$ aperto, e sia $\mathbf{x}_0 \in A$.
> La funzione $\mathbf{f}$ si dice **differenziabile** in $\mathbf{x}_0$ se e solo se ogni funzione componente $f_i$ è differenziabile in $\mathbf{x}_0$ per ogni $i = 1, \dots, m$.
> 
> Equivalentemente, $\mathbf{f}$ è differenziabile in $\mathbf{x}_0$ se e solo se esiste una matrice $J \in \mathrm{Mat}_{\mathbb{R}}(m, n)$ tale che valga lo sviluppo lineare:
> $$
> \mathbf{f}(\mathbf{x}_0 + \mathbf{h}) = \mathbf{f}(\mathbf{x}_0) + J \mathbf{h} + o(\|\mathbf{h}\|) \quad \text{per } \mathbf{h} \to \mathbf{0}
> $$
> La moltiplicazione per la matrice $J$ definisce un'applicazione lineare da $\mathbb{R}^n$ a $\mathbb{R}^m$.
> Le righe di $J$ sono i gradienti trasposti (vettori riga) delle componenti scalari $f_i$:
> $$
> J = \begin{bmatrix} \nabla f_1(\mathbf{x}_0) \\ \vdots \\ \nabla f_m(\mathbf{x}_0) \end{bmatrix} = \begin{bmatrix}
> \frac{\partial f_1}{\partial x_1}(\mathbf{x}_0) & \frac{\partial f_1}{\partial x_2}(\mathbf{x}_0) & \cdots & \frac{\partial f_1}{\partial x_n}(\mathbf{x}_0) \\
> \frac{\partial f_2}{\partial x_1}(\mathbf{x}_0) & \frac{\partial f_2}{\partial x_2}(\mathbf{x}_0) & \cdots & \frac{\partial f_2}{\partial x_n}(\mathbf{x}_0) \\
> \vdots & \vdots & \ddots & \vdots \\
> \frac{\partial f_m}{\partial x_1}(\mathbf{x}_0) & \frac{\partial f_m}{\partial x_2}(\mathbf{x}_0) & \cdots & \frac{\partial f_m}{\partial x_n}(\mathbf{x}_0)
> \end{bmatrix}
> $$
> La matrice $J$ è detta **matrice jacobiana** (introdotta da Jacobi), denotata con $D\mathbf{f}(\mathbf{x}_0)$ oppure $J_{\mathbf{f}}(\mathbf{x}_0)$.
> 
> Si definisce **differenziale** di $\mathbf{f}$ in $\mathbf{x}_0$ l'applicazione lineare $d\mathbf{f}(\mathbf{x}_0): \mathbb{R}^n \to \mathbb{R}^m$:
> $$
> d\mathbf{f}(\mathbf{x}_0)(\mathbf{h}) := J_{\mathbf{f}}(\mathbf{x}_0) \, \mathbf{h}
> $$

> [!note] Utilità della matrice jacobiana
> La matrice jacobiana è lo strumento fondamentale per la linearizzazione locale di campi vettoriali e per eseguire trasformazioni di coordinate e cambi di variabile nel calcolo differenziale e integrale.

> [!example] Esempio 1: Coordinate polari nel piano $\mathbb{R}^2$
> Consideriamo la mappa di cambio di coordinate polari $\boldsymbol{\Phi}: \mathbb{R}^2 \to \mathbb{R}^2$:
> $$
> \begin{pmatrix} \rho \\ \theta \end{pmatrix} \xmapsto{\boldsymbol{\Phi}} \begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} \rho \cos\theta \\ \rho \sin\theta \end{pmatrix}
> $$
> La funzione $\boldsymbol{\Phi}(\rho, \theta) = \begin{pmatrix} \Phi_x(\rho, \theta) \\ \Phi_y(\rho, \theta) \end{pmatrix} = \begin{pmatrix} \rho \cos\theta \\ \rho \sin\theta \end{pmatrix}$ è differenziabile e la sua matrice jacobiana è:
> $$
> J_{\boldsymbol{\Phi}}(\rho, \theta) = \begin{bmatrix}
> \frac{\partial \Phi_x}{\partial \rho} & \frac{\partial \Phi_x}{\partial \theta} \\
> \frac{\partial \Phi_y}{\partial \rho} & \frac{\partial \Phi_y}{\partial \theta}
> \end{bmatrix} = \begin{bmatrix}
> \cos\theta & -\rho \sin\theta \\
> \sin\theta & \rho \cos\theta
> \end{bmatrix}
> $$
> Il determinante della matrice jacobiana (determinante jacobiano) è:
> $$
> \det J_{\boldsymbol{\Phi}}(\rho, \theta) = \cos\theta (\rho \cos\theta) - (-\rho \sin\theta)(\sin\theta) = \rho \cos^2\theta + \rho \sin^2\theta = \rho
> $$
>

### Teorema del differenziale totale e composizione in $\mathbb{R}^n$

> [!theorem] Teorema del differenziale totale e regola della catena (Chain Rule)
> Sia $\mathbf{f}: A \subseteq \mathbb{R}^n \to \mathbb{R}^m$, con $A$ aperto, e sia $\mathbf{x}_0 \in A$.
> 1. **Differenziale totale:** Se tutte le derivate parziali $\frac{\partial f_i}{\partial x_j}$ (gli elementi della matrice jacobiana $J_{\mathbf{f}}(\mathbf{x})$) sono definite in un intorno di $\mathbf{x}_0$ e continue in $\mathbf{x}_0$, allora $\mathbf{f}$ è differenziabile in $\mathbf{x}_0$.
> 2. **Derivata di funzioni composte (Chain Rule):** Sia $\mathbf{g}: B \subseteq \mathbb{R}^m \to \mathbb{R}^k$, con $B$ aperto tale che $\mathbf{f}(A) \subseteq B$.
>    Se $\mathbf{f}$ è differenziabile in $\mathbf{x}_0$ e $\mathbf{g}$ è differenziabile in $\mathbf{f}(\mathbf{x}_0) \in B$, allora la funzione composta $\mathbf{g} \circ \mathbf{f}: A \to \mathbb{R}^k$ è differenziabile in $\mathbf{x}_0$ e la sua matrice jacobiana coincide con il prodotto matriciale delle rispettive matrici jacobiane:
>    $$
>    D(\mathbf{g} \circ \mathbf{f})(\mathbf{x}_0) = D\mathbf{g}(\mathbf{f}(\mathbf{x}_0)) \cdot D\mathbf{f}(\mathbf{x}_0)
>    $$

> [!example] Esempio: Gradiente di una funzione scalare in coordinate polari
> Consideriamo la composizione:
> $$
> \mathbb{R}^2 \xrightarrow{\boldsymbol{\Phi}} \mathbb{R}^2 \xrightarrow{f} \mathbb{R}, \qquad g(\rho, \theta) = (f \circ \boldsymbol{\Phi})(\rho, \theta) = f(\rho \cos\theta, \rho \sin\theta)
> $$
> Applicando la chain rule, il gradiente (vettore riga) di $g$ rispetto alle variabili $(\rho, \theta)$ è:
> $$
> \nabla g(\rho, \theta) = \nabla f(\boldsymbol{\Phi}(\rho, \theta)) \cdot J_{\boldsymbol{\Phi}}(\rho, \theta) = \begin{bmatrix} \frac{\partial f}{\partial x} & \frac{\partial f}{\partial y} \end{bmatrix} \begin{bmatrix} \cos\theta & -\rho \sin\theta \\ \sin\theta & \rho \cos\theta \end{bmatrix}
> $$
> Osserviamo geometricamente le due colonne della matrice jacobiana $J_{\boldsymbol{\Phi}}$:
> - La prima colonna è il **versore radiale** $\mathbf{u}_r$:
>   $$
>   \mathbf{u}_r = \begin{pmatrix} \cos\theta \\ \sin\theta \end{pmatrix}, \qquad \|\mathbf{u}_r\| = 1
>   $$
> - La seconda colonna è il **vettore tangente** nella direzione dell'angolo crescente $\theta$, proporzionale al versore trasverso $\mathbf{u}_\theta$:
>   $$
>   \rho \, \mathbf{u}_\theta = \begin{pmatrix} -\rho \sin\theta \\ \rho \cos\theta \end{pmatrix}, \qquad \mathbf{u}_\theta = \begin{pmatrix} -\sin\theta \\ \cos\theta \end{pmatrix}
>   $$
> Eseguendo il prodotto scalare riga per colonna si ottengono le derivate parziali di $g$:
> $$
> \frac{\partial g}{\partial \rho} = \nabla f(x, y) \cdot \mathbf{u}_r = D_{\mathbf{u}_r} f(x, y)
> \frac{\partial g}{\partial \theta} = \nabla f(x, y) \cdot (\rho \mathbf{u}_\theta) = \rho \, D_{\mathbf{u}_\theta} f(x, y)
> $$
> In forma vettoriale:
> $$
> \nabla g(\rho, \theta) = \begin{bmatrix} D_{\mathbf{u}_r} f(x, y), & \rho D_{\mathbf{u}_\theta} f(x, y) \end{bmatrix}
> $$
>
[!note] Invertibilità locale vs invertibilità globale
> Dall'algebra lineare è noto che un'applicazione lineare $L: \mathbb{R}^n \to \mathbb{R}^n$ è biunivoca (invertibile globalmente) se e solo se $\det L \ne 0$.
> Per funzioni non lineari a valori vettoriali $\mathbf{f}: \mathbb{R}^n \to \mathbb{R}^n$, l'approssimazione lineare fornita dal differenziale è valida **esclusivamente a livello locale**. La non singolarità della jacobiana garantisce perciò l'invertibilità locale, ma non necessariamente quella globale.
>
### Teorema di inversione locale

> [!theorem] Teorema di inversione locale
> Sia $\mathbf{f}: A \subseteq \mathbb{R}^n \to \mathbb{R}^n$, con $A$ aperto, $\mathbf{f} \in C^1(A)$, e sia $\mathbf{x}_0 \in A$.
> Se il determinante della matrice jacobiana in $\mathbf{x}_0$ è non nullo:
> $$
> \det D\mathbf{f}(\mathbf{x}_0) \ne 0
> $$
> allora esistono un intorno aperto $U \subseteq A$ di $\mathbf{x}_0$ e un intorno aperto $V \subseteq \mathbb{R}^n$ di $\mathbf{f}(\mathbf{x}_0)$ tali che la restrizione:
> $$
> \mathbf{f}: U \to V
> $$
> sia invertibile (biunivoca).
> Inoltre, la funzione inversa $\mathbf{g} = \mathbf{f}^{-1}: V \to U$ è di classe $C^1(V)$ e la sua matrice jacobiana in ogni punto $\mathbf{y} \in V$ è l'inversa della matrice jacobiana di $\mathbf{f}$ valutata in $\mathbf{x} = \mathbf{g}(\mathbf{y}) \in U$:
> $$
> D\mathbf{g}(\mathbf{y}) = \left[ D\mathbf{f}(\mathbf{g}(\mathbf{y})) \right]^{-1}, \quad \forall \mathbf{y} \in V
> $$

> [!definition] Diffeomorfismo
> Una mappa $\mathbf{f}: U \to V$ tra due aperti di $\mathbb{R}^n$ che soddisfa le ipotesi del teorema di inversione locale (ossia è biunivoca, di classe $C^1(U)$, con inversa $\mathbf{f}^{-1} \in C^1(V)$ e $\det D\mathbf{f}(\mathbf{x}) \ne 0$ per ogni $\mathbf{x} \in U$) si dice **diffeomorfismo**.
>
## 4.2. Superfici parametriche in $\mathbb{R}^3$, vettori tangenti e vettore normale

> [!definition] Superficie parametrica
> Sia $D \subseteq \mathbb{R}^2$ un insieme con parte interna non vuota ($\mathring{D} \ne \emptyset$).
> Una **superficie parametrica** è una funzione continua:
> $$
> \mathbf{r}: D \to \mathbb{R}^3, \qquad \begin{pmatrix} u \\ v \end{pmatrix} \xmapsto{\mathbf{r}} \begin{pmatrix} x(u, v) \\ y(u, v) \\ z(u, v) \end{pmatrix}
> $$
> Se $\mathbf{r} \in C^k(\mathring{D})$ per $k \ge 1$, la superficie parametrica si dice di classe $C^k$.
>
La matrice jacobiana di $\mathbf{r}$ ha dimensione $3 \times 2$ ed ha come colonne i vettori delle derivate parziali rispetto ai parametri $u$ e $v$:
$$
J_{\mathbf{r}}(u, v) = \begin{bmatrix} \partial_u \mathbf{r}(u, v) & \partial_v \mathbf{r}(u, v) \end{bmatrix} = \begin{bmatrix}
\frac{\partial x}{\partial u} & \frac{\partial x}{\partial v} \\
\frac{\partial y}{\partial u} & \frac{\partial y}{\partial v} \\
\frac{\partial z}{\partial u} & \frac{\partial z}{\partial v}
\end{bmatrix}
$$
I due vettori derivata parziale:
$$
\partial_u \mathbf{r}(u, v) = \begin{pmatrix} \frac{\partial x}{\partial u} \\ \frac{\partial y}{\partial u} \\ \frac{\partial z}{\partial u} \end{pmatrix}, \qquad \partial_v \mathbf{r}(u, v) = \begin{pmatrix} \frac{\partial x}{\partial v} \\ \frac{\partial y}{\partial v} \\ \frac{\partial z}{\partial v} \end{pmatrix}
$$
sono tangenti alle curve coordinate sulla superficie. In ogni punto, lo spazio tangente alla superficie è generato da tali vettori:
$$
T_{\mathbf{r}(u, v)}\Sigma = \mathrm{Span}\{\partial_u \mathbf{r}(u, v), \, \partial_v \mathbf{r}(u, v)\}
$$

> [!note] Regolarità e rango massimo
> La parametrizzazione $\mathbf{r}$ è regolare se e solo se la matrice jacobiana $J_{\mathbf{r}}(u, v)$ ha rango massimo pari a 2:
> $$
> \mathrm{rk}\left( J_{\mathbf{r}}(u, v) \right) = 2
> $$
> ovvero le due colonne $\partial_u \mathbf{r}$ e $\partial_v \mathbf{r}$ sono linearmente indipendenti.

> [!definition] Superficie regolare, punti singolari e versore normale
> Una superficie parametrica $\mathbf{r}: D \to \mathbb{R}^3$ si dice **regolare** se il prodotto vettoriale tra le derivate parziali è non nullo per ogni punto dell'interno del dominio:
> $$
> \partial_u \mathbf{r}(u, v) \times \partial_v \mathbf{r}(u, v) \ne \mathbf{0}, \quad \forall (u, v) \in \mathring{D}
> $$
> I punti in cui tale condizione non è verificata sono detti **punti singolari** della parametrizzazione.
> In ogni punto regolare è definito univocamente il **versore normale** alla superficie:
> $$
> \boldsymbol{\nu}(u, v) = \frac{\partial_u \mathbf{r}(u, v) \times \partial_v \mathbf{r}(u, v)}{\|\partial_u \mathbf{r}(u, v) \times \partial_v \mathbf{r}(u, v)\|}
> $$

> [!example] Esempio 1: Superficie sferica e coordinate sferiche in $\mathbb{R}^3$
> Consideriamo la trasformazione in coordinate sferiche:
> $$
> \begin{cases}
> x = \rho \sin\varphi \cos\theta \\
> y = \rho \sin\varphi \sin\theta \\
> z = \rho \cos\varphi
> \end{cases}
> $$
> - Se $\rho \in [0, +\infty)$ è variabile, si tratta di un cambio di coordinate in $\mathbb{R}^3$.
> - Se si fissa $\rho = R > 0$ costante, $\mathbf{r}(\varphi, \theta)$ descrive una superficie sferica bidimensionale di raggio $R$.
>
> Verifichiamo dove la mappa $\boldsymbol{\Phi}(\rho, \theta, \varphi)$ è un diffeomorfismo considerando $(\rho, \varphi, \theta) \in [0, +\infty) \times [0, \pi] \times [0, 2\pi)$.
> La matrice jacobiana associata è:
> $$
> J_{\boldsymbol{\Phi}} = \begin{bmatrix}
> \sin\varphi \cos\theta & -\rho \sin\varphi \sin\theta & \rho \cos\varphi \cos\theta \\
> \sin\varphi \sin\theta & \rho \sin\varphi \cos\theta & \rho \cos\varphi \sin\theta \\
> \cos\varphi & 0 & -\rho \sin\varphi
> \end{bmatrix}
> $$
> Calcoliamo il determinante di $J_{\boldsymbol{\Phi}}$ sviluppando lungo la seconda colonna:
> $$
> \det J_{\boldsymbol{\Phi}} = -(-\rho \sin\varphi \sin\theta) \begin{vmatrix}
> \sin\varphi \sin\theta & \rho \cos\varphi \sin\theta \\
> \cos\varphi & -\rho \sin\varphi
> \end{vmatrix} + (\rho \sin\varphi \cos\theta) \begin{vmatrix}
> \sin\varphi \cos\theta & \rho \cos\varphi \cos\theta \\
> \cos\varphi & -\rho \sin\varphi
> \end{vmatrix}
> $$
> Raccogliendo a fattor comune $\rho \sin\varphi$:
> $$
> \det J_{\boldsymbol{\Phi}} = \rho \sin\varphi \left[ \sin\theta \begin{vmatrix}
> \sin\varphi \sin\theta & \rho \cos\varphi \sin\theta \\
> \cos\varphi & -\rho \sin\varphi
> \end{vmatrix} + \cos\theta \begin{vmatrix}
> \sin\varphi \cos\theta & \rho \cos\varphi \cos\theta \\
> \cos\varphi & -\rho \sin\varphi
> \end{vmatrix} \right]
> $$
> Sviluppando i singoli minori $2 \times 2$:
> $$
> \begin{vmatrix}
> \sin\varphi \sin\theta & \rho \cos\varphi \sin\theta \\
> \cos\varphi & -\rho \sin\varphi
> \end{vmatrix} = -\rho \sin^2\varphi \sin\theta - \rho \cos^2\varphi \sin\theta = -\rho \sin\theta (\sin^2\varphi + \cos^2\varphi) = -\rho \sin\theta
> \begin{vmatrix}
> \sin\varphi \cos\theta & \rho \cos\varphi \cos\theta \\
> \cos\varphi & -\rho \sin\varphi
> \end{vmatrix} = -\rho \sin^2\varphi \cos\theta - \rho \cos^2\varphi \cos\theta = -\rho \cos\theta (\sin^2\varphi + \cos^2\varphi) = -\rho \cos\theta
> $$
> Sostituendo nell'espressione del determinante:
> $$
> \det J_{\boldsymbol{\Phi}} = \rho \sin\varphi \left[ \sin\theta (-\rho \sin\theta) + \cos\theta (-\rho \cos\theta) \right] = \rho \sin\varphi \left[ -\rho (\sin^2\theta + \cos^2\theta) \right] = -\rho^2 \sin\varphi
> $$
> Pertanto:
> $$
> \det J_{\boldsymbol{\Phi}} \ne 0 \iff \rho \in (0, +\infty) \quad \text{e} \quad \varphi \in (0, \pi)
> $$
> La trasformazione in coordinate sferiche è dunque un diffeomorfismo locale all'interno di $(0, +\infty) \times (0, \pi) \times (0, 2\pi)$.
>
[!example] Esempio 2: Superficie cilindrica e coordinate cilindriche in $\mathbb{R}^3$
> Consideriamo la trasformazione in coordinate cilindriche:
> $$
> \begin{cases}
> x = \rho \cos\theta \\
> y = \rho \sin\theta \\
> z = h
> \end{cases}
> $$
> Se $\rho$ è una coordinata variabile, rappresenta il cambio di coordinate cilindriche nello spazio $\mathbb{R}^3$.
> Se consideriamo la restrizione al dominio aperto $(0, +\infty) \times [0, 2\pi) \times \mathbb{R} \to \mathbb{R}^3$, la matrice jacobiana è:
> $$
> J_{\boldsymbol{\Phi}} = \begin{bmatrix}
> \cos\theta & -\rho \sin\theta & 0 \\
> \sin\theta & \rho \cos\theta & 0 \\
> 0 & 0 & 1
> \end{bmatrix}
> $$
> Sviluppando il determinante lungo la terza riga (o terza colonna):
> $$
> \det J_{\boldsymbol{\Phi}} = 1 \cdot \begin{vmatrix} \cos\theta & -\rho \sin\theta \\ \sin\theta & \rho \cos\theta \end{vmatrix} = \rho \cos^2\theta + \rho \sin^2\theta = \rho
> $$
> Dunque:
> $$
> \det J_{\boldsymbol{\Phi}} = \rho \ne 0 \iff \rho \in (0, +\infty)
> $$
> La mappa definisce pertanto un diffeomorfismo locale su tutto $(0, +\infty) \times (0, 2\pi) \times \mathbb{R}$.
>
