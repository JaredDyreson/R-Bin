---
headers-include: |
	\usepackage{soul}
	\usepackage{color}
	\usepackage{amsmath}
fontfamily: lmodern,color,soul
geometry: "left=3cm,right=3cm,top=2cm,bottom=2cm"
toc: true
---

# Day 25

\newpage

## Review

\underline{Population model:} $y=\beta\textsubscript{0} + \beta\textsubscript{1}x + \epsilon$

- $\epsilon \sim N(0 \sigma)$
- $\mu\textsubscript{y|x} = \beta\textsubscript{0} + \beta\textsubscript{1}x$
- $y=\mu\textsubscript{y|x} + \epsilon$

\underline{Least Square Equation:} $\hat{y} = b\textsubscript{0} + b\textsubscript{1}x$

\underline{Residuals:} $e\textsubscript{i} = y\textsubscript{i} - \hat{y}\textsubscript{i}$

## Assumptions for Inference for Regression

[\underline{Video Lecture}](https://www.youtube.com/watch?v=Pf0R9m3_5v8)

\begin{enumerate}
\item Linear model is appropriate
\item Residuals are normally distributed
\item Residuals will have $\mu = 0$ \& unknown $\sigma$ [\hl{independent of x}]
\item Residuals are independent
\end{enumerate}

## Scatterplot

### Things to Note

\begin{enumerate}
\item Linear form
\item Hard to check
\item Strength of relationship is roughly constant across entire range of x-values
\end{enumerate}

## Residual Plot ($e\textsubscript{i}$ vs $\hat{y}\textsubscript{i}$, $e\textsubscript{i}$ vs $y\textsubscript{i}$)

\begin{enumerate}
\item Residuals scattered around 0 with no obvious trend
\item Hard to check
\item No fanning
\end{enumerate}

<!--![Example of Fanning](assets/fanning){width=50%}-->

## Normal Quantile Plot (qq Plot)

\textcolor{blue}{Z-Score of residual vs Z-Score corresponding to cumulative proportion (assuming $N(0, 1)$)}

- Can't check
- Points more-or-less along a straight line
  - Points fall off line near 0: \underline{really bad}
    - Distribution of residuals is \underline{not} symmetric
  - points follow line from -1 to 1, roughly symmetric
  - How quickly they fall away
  - How big the difference is

## ANOVA for Linear Regression

\underline{One way ANOVA:}

- Hypothesis: $\mu\textsubscript{1} = \mu\textsubscript{2} = ... = \mu\textsubscript{i}$
- Population mean does not depend on group
- Population mean of $y$ does not depend on $x$
  - Hypothesis: $\mu\textsubscript{y|x} = \mu\textsubscript{y}$
  - Or equivalently, $\beta\textsubscript{1} = 0$

### ANOVA Table

*import later*

### Alternate Formulation 1

- Coefficient of determination

$$r\textsuperscript{2} = \frac{SSM}{SST}$$

- Represents the proportion of variation $y$ that is explained by/accounted for by the model.
- ANOVA tests whether this proportion is "significant"

### Alternate Formulation 2

- Compare two models:
  - Null Model: $\mu\textsubscript{y|x} = \beta\textsubscript{0}$
  - $\mu\textsubscript{y|x} = \beta\textsubscript{0} + \beta\textsubscript{1}x$

\textcolor{blue}{Reject H\textsubscript{0}: Our model is "significantly better" than null model at explaining changes in y $\implies$ we should use linear model}

\textcolor{blue}{Fail to reject H\textsubscript{0}: Our model is \underline{not} significantly better than null model $\implies$ we should use smaller model (null model)}
