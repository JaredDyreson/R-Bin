---
headers-include: |
	\usepackage{soul}
	\usepackage{color}
	\usepackage{amsmath}
fontfamily: lmodern,color,soul
geometry: "left=3cm,right=3cm,top=2cm,bottom=2cm"
toc: true
---

# Day 27

\newpage

# Multiple Linear Regression

\underline{Model}

$$\mu\textsubscript{y|x} = \beta\textsubscript{o} + \beta\textsubscript{1}x\textsubscript{1} + .... + \beta\textsubscript{p}x\textsubscript{p}$$

$$y = \mu\textsubscript{y|x} + \epsilon\textsubscript{1}, \epsilon \sim N(0, \sigma)$$

\underline{Least Squares Line:}

$$\hat{y} = b\textsubscript{o} + b\textsubscript{1}x\textsubscript{1} + ... + b\textsubscript{p}x\textsubscript{p}$$

$$y\textsubscript{i} = \hat{y}\textsubscript{i} + e\textsubscript{i}$$

\underline{Assumptions}

- Linear relationship
  - \textcolor{blue}{Between y and \underline{each} x\textsubscript{j} in the model}\textsuperscript{\textcolor{red}{$\ast$}}
- Normally distributed residuals
  - \textcolor{blue}{Normal q-q plot}
- Residuals have mean of 0 and standard deviation $\sigma = 0$
  - \textcolor{blue}{Independent of $\hat{y}$}
- Independent residuals
  - \textcolor{blue}{Residual plot: $e\textsubscript{i}$ vs $\hat{y}\textsubscript{i}$}
- \textcolor{blue}{All the variables in the model are independent (usually settle for \underline{uncorrelated})\textsuperscript{\textcolor{red}{$\ast$}}}

\hl{Assumptions 2-4 are for inference}

\textcolor{red}{$\ast$ check with \underline{scatter plot matrix}}

\underline{Simplified multiple linear regression model:}

- $\mu\textsubscript{y|x} = \beta\textsubscript{o} + \beta\textsubscript{1}x\textsubscript{1} + \beta\textsubscript{2}x\textsubscript{2}$
- $\hat{y} = b\textsubscript{o} + b\textsubscript{1}x\textsubscript{1} + b\textsubscript{2}x\textsubscript{2}$

\underline{Interpreting b\textsubscript{o} and $\beta$\textsubscript{o}:}

- Average value of $y$ when \underline{all} x-variables are 0

\underline{Interpreting b\textsubscript{1} and $\beta$\textsubscript{1}:}

- Average change in y for a 1 unit increase in x\textsubscript{1}
  - \hl{Both are the same, pick one}
  - \textcolor{blue}{Holding (the effect of) x\textsubscript{2} constant. Think of a partial derivative ($\partial$)}
  - \textcolor{blue}{After accounting for the other variables in the model}

\newpage

# ANOVA for Multiple Linear Regression

\underline{Hypothesis:}

- Population mean is the same and is unaffected by anything.
- \textcolor{blue}{\underline{ANOVA for Linear Regression:} population mean is estimated well by null model, $\mu\textsubscript{x\textsubscript{1}...x\textsubscript{p}}$}
- \textcolor{blue}{\underline{Equivalent:} $\beta\textsubscript{1} = 0$ ... $\beta\textsubscript{p} = 0$}

## ANOVA Table

*try to fill in* 

\underline{Interpretation:}

$F\textsubscript{observed} \sim F(P, n-P-1)$

- If p-value $\le$ significance level $\implies$ reject H\textsubscript{o}
  - $\therefore$ Our model is \underline{significantly better} than the null model at explaining changes in $y$

\textcolor{red}{\underline{IMPORTANT!!!!!}}

- \textcolor{red}{This means \underline{one or more} x-variables in the model are required for the better model. It \underline{DOES NOT} tell us which one(s), and it \underline{CERTAINLY DOES NOT} mean they are all important!}

- If p-value > significance level $\implies$ fail to reject H\textsubscript{o}
  - $\therefore$ our model is \underline{not significantly better} than the null model at explaining changes in $y$. We \underline{prefer} the null model.

\underline{\textcolor{red}{Important}:} some x-variables may still be important predictors. However, we may not see their effect if "more important predictors" are left out of the model.

\newpage

# t-Test for Slope in Multiple Linear Regression

\underline{Model:}

$$\mu\textsubscript{y|x\textsubscript{1}...x\textsubscript{p}} = \beta\textsubscript{o} + \beta\textsubscript{1}x\textsubscript{1} + ... + \beta\textsubscript{p}x\textsubscript{p}$$

- H\textsubscript{o}: \underline{In this model,} $\beta\textsubscript{j} = 0$
  - $\beta\textsubscript{j}$ is the slope multiplying $x\textsubscript{j}$, $1 \le j \le p$
- H\textsubscript{a}: \underline{In this model:} $\beta\textsubscript{o} \ne 0$

$$t = \frac{\text{stat - parameter}}{\text{SE}} = \frac{b\textsubscript{j} - \beta\textsubscript{j}}{SE\textsubscript{b\textsubscript{j}}}$$

$$t\textsubscript{observed} \sim t(n-p-1)$$

\underline{Interpretation:}

- If p-value $\le$ significance level $\implies$ reject H\textsubscript{o}
  - \textcolor{blue}{$\therefore$ x\textsubscript{j} is a significant predictor of $y$, even after accounting for the effect of the other variables in the model}
- If p-value > significance level $\implies$ fail to reject H\textsubscript{o}
  - \textcolor{blue}{$\therefore$ x\textsubscript{j} is not a significant predictor of $y$ in \underline{this model}. We \underline{CANNOT} distinguish between two competing explanations.}
  \begin{enumerate}
  \item x\textsubscript{j} does  not have a linear relationship with $y$
  \item \textcolor{blue}{The effect of x\textsubscript{j} on $y$ is already accounted for by other variables in the model. It is redundant.}
  \end{enumerate}

\newpage

# Model Selection

\underline{General question:} which model is the best?

- Step 1: \textcolor{blue}{Feature engineering}
  - \textcolor{blue}{Common sense \& explanatory analysis}
  - \underline{Goal:} identify important variables
- Step 2: \textcolor{blue}{Decide on a model selection \underline{algorithm} and a selection \underline{criterion}}
  - \underline{Our algorithm:} \hl{backward selection}
  - \underline{Our criterion:} Stop when \underline{all} explanatory variables are significant (at 5 \% level)
  - \textcolor{red}{\underline{DO NOT} use R\textsuperscript{2} as a selection criterion in multiple linear regression}
- Step 3: \textcolor{blue}{Implement the algorithm}

\underline{Collinearity:} $x\textsubscript{1} \, \& \,  x\textsubscript{2}$ are \underline{highly correlated}. \textcolor{red}{This is bad!}

- Remove \underline{least significant predictor.} This means removing the variable with the highest p-value. \underline{ONLY REMOVE ONE VARIABLE AT A TIME.}
