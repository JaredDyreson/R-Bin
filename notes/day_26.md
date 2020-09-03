---
headers-include: |
	\usepackage{soul}
	\usepackage{color}
	\usepackage{amsmath}
fontfamily: lmodern,color,soul
geometry: "left=3cm,right=3cm,top=2cm,bottom=2cm"
toc: true
---

# Day 26

\newpage

# Final Exam Procedures

- If the grade for either lecture or lab is better than the worse score, that score will replace that worse score
- Lab portion is take home (will take a week to do it)
  - Four questions
    - probability (pbinom, qnorm, t distributions, probability stuff) <- question 1 exam 1 and 2
    - Midterm 1 inference problem (neyman pearson, NHST, fisher, chi squared)
    - Midterm 2 inference (t procedures, 1 sample, 2 sample, matched pairs, CI, Hypot test (NHST), power analysis (but not for two sample), one way ANOVA)
    - Inference for linear regression (ANOVA, rest of this current lecture can be on this problem)
- Lecture
  - longer version of the other midterms
  - Multiple cheat sheets allowed

\newpage

# t-Test for Slope 

Almost exclusively, we use \hl{NHST}:

- H\textsubscript{0}: $\beta\textsubscript{1} = 0$
- H\textsubscript{a}: $\beta \ne 0$

\underline{Recall:}

$$y = \beta\textsubscript{0} + \beta\textsubscript{1}x+\epsilon$$

$$\epsilon \sim N(0, \sigma)$$

- $\mu\textsubscript{y|x} = \beta\textsubscript{0}+\beta\textsubscript{1}x$
- $y=\mu\textsubscript{y|x} + \epsilon$

$$t = \frac{\text{statistic - parameter}}{\text{standard error}} = \frac{b\textsubscript{1} - \beta\textsubscript{1}}{SE\textsubscript{b\textsubscript{1}}}$$

\hl{Where $\beta\textsubscript{1} = 0$}

Under H\textsubscript{0}, $t \sim t(n-2)$

\textbf{We reject H\textsubscript{0}:}

- Slope is not 0, so a linear relationship between x and y exists.

\textbf{Fail to reject H\textsubscript{0}:}

- It is reasonable to believe that slope is 0 and there is no linear relationship exists between x \& y.

\newpage

# Confidence Interval for Slope

\underline{Recall:} Find the two-sided critical region. Want to find values of $\beta\textsubscript{1}$ for which the t-statistic is \underline{NOT} in the critical region.

$$-t^{\ast\ast} < \frac{b\textsubscript{1} -\beta\textsubscript{1}}{SE\textsubscript{b\textsubscript{1}}} < t^{\ast\ast}$$

$$b\textsubscript{1} - t^{\ast\ast} \times SE\textsubscript{b\textsubscript{1}} (\text{\textcolor{blue}{2.5\%}}) < \beta\textsubscript{1} < b\textsubscript{1} + t^{\ast\ast} \times SE\textsubscript{b\textsubscript{1}} (\text{\textcolor{blue}{97.5\%}})$$


$$t^{\ast\ast} \sim t(n-2)$$

## Interpretation

<!--We are 95\% confident in our estimate that the $\frac{\text{\textcolor{red}{population slope}}{\text{\textcolor{red}{parameter}}}$ is between \underline{\textcolor{red}{lower bound}} and \underline{\textcolor{red}{upper bound}}.-->

We are 95\% confident in our estimate that when \underline{\textcolor{red}{x-variable}} increases by 1 unit, the population mean of \underline{\textcolor{red}{y-variable}} increases (1 decreases) by between \underline{\textcolor{red}{lower bound}} and \underline{\textcolor{red}{upper bound}}

\newpage

# Mean Response

\textbf{Model:} 
- $\mu\textsubscript{y|x} = \beta\textsubscript{0} + \beta\textsubscript{1}x$ \textcolor{red}{$\leftarrow$ confidence interval for mean response}
<!--- $y = \mu\textsubscript{y|x} + \epsilon$ \textcolor{red}{$\leftarrrow$ prediction interval for actual response value}-->

\textbf{Confidence Interval for $\mu$\textsubscript{y|x}:} requires a specific $x^{\ast}$ value to plug in for $x$.

<!--\underline{Confidence interval:} $\hat{\mu}\textsubscript{y} \pm t^{\ast\ast} \times SE\textsubscript{\hat{\mu}\textsubscript{y}}$-->

$$\hat{\mu} = b\textsubscript{0} + b\textsubscript{1}x^{\ast}$$

$\hat{y}$ (\textcolor{red}{Estimate y at $x^{\ast}$}) and $\hat{\mu}\textsubscript{y}$ (\textcolor{red}{estimate $\mu\textsubscript{y}$ at $x^{\ast}$}) have the \underline{same} value.

- \textcolor{blue}{Bigger sample size (s) $\rightarrow$ wider confidence interval}
- \textcolor{blue}{Bigger sample size (s) means \underline{weaker} relationship (in general)}
- \textcolor{blue}{Weaker relationship $\rightarrow$ wider confidence interval}
- \textcolor{blue}{Confidence interval at $x^{\ast}$ close to $\bar{x} \rightarrow$ narrower}
- \textcolor{blue}{Confidence interval at $x^{\ast}$ far from $\bar{x} \rightarrow$ wider}

$$PI: \hat{y} \pm t^{\ast\ast} \times SE\textsubscript{$\hat{y}$}$$

\emph{include formula for SE hat y}

\textcolor{blue}{At the same $x^{\ast}$ value, prediction interval for $y$ is \underline{always} wider than the confidence interval for $\mu\textsubscript{y}$}

## Interpretation

Confidence interval for $\mu\textsubscript{y|x}$:

We are 95\% confidence in our estimate that when \underline{\textcolor{red}{x-variable}} is \underline{\textcolor{red}{value of $x^{\ast}$}}, the population mean of \underline{\textcolor{red}{y-variable}} for a new observation is between \underline{\textcolor{red}{lower bound}} and \underline{\textcolor{red}{upper bound}}
