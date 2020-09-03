---
headers-include: |
	\usepackage{soul}
	\usepackage{color}
	\usepackage{amsmath}
fontfamily: lmodern,color,soul
geometry: "left=3cm,right=3cm,top=2cm,bottom=2cm"
toc: true
---

\newpage

# Day 24

# Scatterplot

<!--![Example Scatter Plot](assets/scatter_plot)-->

- Different colors to indicate different groups
- Each dot is a case [(x, y) point]
- Temperature $\rightarrow$ explanatory variable
- Scale $\rightarrow$ response variable


## Interpreting a Scatterplot

\begin{enumerate}
\item \underline{Direction} of the association
\item \underline{Form} of the associations
\item \underline{Strength}
\item \underline{Outliers}
\end{enumerate}

## Direction

### Linear

- \underline{One} ellipse major axis describes relationship well.

### Positive

![Positive Association](assets/positive_association){width=50%}

- X $\uparrow$, Y $\uparrow$
- Linear

\newpage

### Negative

![Negative Association](assets/negative_association){width=50%}

- X $\uparrow$, Y $\downarrow$
- Linear

### No Association

![No Association](assets/no_association)

- Best we can do is a horizontal line 

### More Complex Association

- X $\uparrow$, Y $\cong$
- Polynomial
- Sinusoidal ($\sin(), \cos()$)

![Complex](assets/more_complex){width=30%}

### Nonlinear

- Exponential
- Logarithmic Power
- Need \underline{multiple} ellipses to describe relationship

## Strength

Only makes sense to discuss one direction \& form are identified!

How closely the points follow the form you identified.

\underline{Correlation:}

![Correlation Formula](assets/correlation_formula){width=50%}

### Contribution to r is t

- $x\textsubscript{i} > \bar{x} \rightarrow y\textsubscript{i} > \bar{y}$
- *fill in later from picture*

\newpage

## Notes about Correlation

- $-1 \le r \le 1$
    - $r=1$: all points on line with positive slope
    - $r=-1$: all points on line with negative slope
- `r` is only interpretable for \underline{linear} association!
    - Can have very strong non linear association but correlation close to 0. See more complex association figure.
- Correlation is \underline{unitless} and \underline{invariant} to linear transformation.
- Correlation is \underline{highly} susceptible to outliers.

![Outlier messing things up](assets/one_outlier_correlation)

- Correlation $\cong 0.85$
- Major influence on correlation

## Outliers

<!--![Hunting for Outliers](assets/determining_outlier_scatter)-->

\newpage

# Linear Regression

In population, x and y are related:

$$y = \beta\textsubscript{0} + \beta\textsubscript{1} + \epsilon$$

- $\beta\textsubscript{0} =$ y-intercept (b portion in $y = mx + b$)
- $\beta\textsubscript{1} =$ slope (m portion in $y = mx + b$)
    - both above are parameters
- $\epsilon \sim N(0, \sigma)$
    - Random variable

X is assumed fixed and is not random.

$\beta\textsubscript{0} + \beta\textsubscript{1}$ is \underline{not} random.
- You give me x, I give you $\beta\textsubscript{0} + \beta\textsubscript{1}x$

Y \underline{is} a random variable because $\epsilon$ is a random variable.

Before I observe the case:

- I know x-value
- I do not know y-value

\underline{Problem:} $\beta\textsubscript{0}$ and $\beta\textsubscript{1}$ are \underline{parameters} \underline{BUT} we have \underline{sample} data.

How to estimate $\beta\textsubscript{0}$ and $\beta\textsubscript{1}$?

\textbf{Criterion:}

![Sum of Squared Residual Formula](assets/sum_of_squared_residual)

- $\hat{y} =$ "predicted y" = value of `y` obtained by plugging `x` into the equation of the line.

Minimize the criterion over all possible lines $\hat{y} = mx + b$

In stats: $\hat{y} = b\textsubscript{0} + b\textsubscript{1}x$. This is called the least squares regression line.

- $b\textsubscript{1} = r \times \frac{s\textsubscript{y}}{s\textsubscript{x}}$
- $b\textsubscript{0} = \bar{y} - b\textsubscript{1}\bar{x}$

## Interpretation

- $y\textsubscript{i} - \hat{y}\textsubscript{i}$: \underline{prediction error} or \underline{residual}. How much above/below the least squared line the actual y-value is.
- $b\textsubscript{1}$: slope is the \underline{predicted} change in y for one-unit increase in x.
    - \underline{Always} meaningful
- $b\textsubscript{0}$: y-intercept: \underline{predicted} value of y when x = 0
    - \underline{Only} meaningful if $x=0$ is a \underline{plausible} data value near/in the range of observed x-values.

\newpage

## Influential Points


