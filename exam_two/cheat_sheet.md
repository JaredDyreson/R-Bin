---
headers-include: |
	\usepackage{soul}
	\usepackage{color}
	\usepackage{amsmath}
fontfamily: lmodern,color,soul
geometry: "left=1cm,right=1cm,top=1cm,bottom=1cm"
monofont: 'Source Code Pro'
---

\pagenumbering{gobble}

\begin{center}
\textbf{MATH-338 Midterm 2 Cheat Sheet}
\end{center}
\textbf{THEORY}

\par\noindent\rule{\textwidth}{0.4pt}

\begin{scriptsize}

\textbf{Lecture 13-14:} \underline{PDF Curve:} total area of one. Computed area = probability. \underline{Z-Scores:} universal standard for density curves with different scales. \underline{68-95-99.7 rule:} the probabilities of 2, 4, \& 6 $\sigma$ away from $\mu$. \underline{Parameter ($\mu$):} average age in class is 21 years. \underline{Parameter ($\sigma$):} I scored 2 $\sigma$ from $\mu$, which means I did better than average. \underline{Skewed left:} long left tail (sloping $\rightarrow$). \underline{Skewed right:} long right tail (sloping $\leftarrow$). \underline{Symmetric:} perfectly about $\mu$. \underline{Unimodal:} one hump. \underline{Bimodal:} two humps. \underline{Linear transformation:} changing the base function by appending or removing a constant value. \underline{Linear Combination:} two separate $\sigma$ or $\mu$ are combined ($\mu\textsubscript{x+y} = \mu\textsubscript{x} + \mu\textsubscript{y}$). \underline{Whisker plots} are an effective method to determine if a data set contains outliers (data points not belonging to the sample set).

\textbf{Lecture 15:} \underline{Sampling error:} when the sample is a misrepresentation of the population. \underline{Biased:} when there is a difference between the expected and the observed value and bias can cause variability in the sampling distribution. \underline{CLT:} independent random variables will eventually converge to a normal distribution.

\textbf{Lecture 17-19:} \underline{Type I Error:} convict an innocent man ($\mu$ is not in the interval). \underline{Type II Error:} we let a guilty man go. \underline{P-Value:} the probability of obtaining test results at least as extreme as the results actually observed during the test, assuming that the null hypothesis is correct.

\textbf{Lecture 20:} \underline{Confidence Interval:} the range of values within which reasonably would believe $\mu$ to be. Confidence is our \underline{estimate} of $\mu$. We will never know the value of $\mu$. \underline{Between:} variation due to changes in $\mu$.\underline{Within:} variation due to individual differences. Symmetric data $\implies \sigma$ is small. \underline{Posthoc Procedure:} The decision to \underline{reject} the \underline{null hypothesis} at a significance level of $\alpha = 0.01$. There is \underline{sufficient} evidence to conclude that \underline{at least one of the population means} \underline{\underline{different from}} \underline{\underline{\underline{at least one other population mean}}}.

\end{scriptsize}

\par\noindent\rule{\textwidth}{0.4pt}

\textbf{FRAMEWORK FLOW CHART}
\par\noindent\rule{\textwidth}{0.4pt}

\begin{scriptsize}
\begin{tabular}{l | l}

\parbox{0.5\textwidth}{

\begin{normalsize}
\textbf{NPHT}
\end{normalsize}
\begin{itemize}

\item Parameter is $\mu$ [population mean]. $\mu\textsubscript{0} = \mu\textsubscript{1}$
\item $\bar{X}$ is sample mean. Under CLT, normal distribution at $\mu\textsubscript{0}$ for H\textsubscript{0} and $\mu\textsubscript{1}$ for H\textsubscript{1}.
\item We accept H\textsubscript{0} if \underline{\underline{not}} in CR.

\end{itemize}
\begin{normalsize}
\textbf{N-P Power Analysis}
\end{normalsize}
\begin{itemize}
\item Define parameter and its value under H\textsubscript{0} and H\textsubscript{1}
\item Define a test statistic and its sampling distribution under both hypotheses.
\item Use $\alpha$ to compute critical region
\item Compute power and compare to 80% threshold
\end{itemize}
\begin{normalsize}
\textbf{One-Sample T-Statistic [NP]}
\end{normalsize}
\begin{itemize}
\item If t\textsubscript{observed} in CR, then accept H\textsubscript{1}: $\mu = \mu\textsubscript{1}$. Else accept H\textsubscript{0}: $\mu = \mu\textsubscript{0}$
\end{itemize}
\begin{normalsize}
\textbf{Two-Tailed Test}
\end{normalsize}
\begin{itemize}
\item Take the upper and lower limit of the curve and the significance level ($\alpha$) is the cut off point of being \emph{statistically significant}. Treat as critical region. If in CR, then accept H\textsubscript{1}. Else accept H\textsubscript{0}.
\end{itemize}

\begin{flushleft}
\textbf{ANOVA}
\end{flushleft}
\begin{itemize}
\item Null Hypothesis: $H\textsubscript{0}: \mu\textsubscript{1} = \mu\textsubscript{2} = \mu\textsubscript{3} = \mu\textsubscript{i}$
\item If the variability BETWEEN the means ($\Delta x$) in the numerator is relatively large compared to the variance within the samples (internal spread) in the denominator, the ratio will be much larger than 1.
\item The samples then most likely do NOT come from a common population REJECT H\textsubscript{0}. (if at least one of the $\mu$ is not equal.)
\item ANOVA tests \underline{\textbf{CANNOT}} determine/make conclusions about all populations means ($\forall$), only at least one element in the set ($\mu \in \forall$)
\item \underline{Usage:} compare control group and observational studies of more than three populations.
\end{itemize}
}

&

\parbox{0.5\textwidth}{
\begin{normalsize}
\textbf{NHST}
\end{normalsize}
\begin{flushright}
\begin{itemize}

\item Define a parameter and it's value under H\textsubscript{0}.
\item Define an interval representing an inequality
\item Define a test statistic and its sampling distrubution under H\textsubscript{0}
\item Compute p-value. P-Value $\le$ sig level $\implies$ reject H\textsubscript{0} \& accept H\textsubscript{1}. P-Value > sig level $\implies$ fail to reject H\textsubscript{0}. Can only be >, < $\ne$.

\end{itemize}
\end{flushright}
\begin{normalsize}
\textbf{Two-Sided Test}
\end{normalsize}
\begin{flushright}
\begin{itemize}
\item \textbf{Neyman-Pearson}
\item Critical region is $\frac{1}{2}$ left tail and $\frac{1}{2}$ right tail of sampling distribution under H\textsubscript{0}. Power will $\downarrow$.
\item \textbf{NHST}
\item Find the "one-sided" p-value and double it.
\end{itemize}

\end{flushright}
\begin{normalsize}
\textbf{Matched Pairs t-Test}
\end{normalsize}
\begin{itemize}
\item Paired subjects receives their respective treatment or an individual gets two treatments. Also a subset of block design. 
\item H\textsubscript{0}: $\mu\textsubscript{d} = 0$ (no difference) and H\textsubscript{a}: $\mu\textsubscript{d} \ne 0$ (difference). 
\item If p-value $\le \alpha$, we reject H\textsubscript{0} \& accept H\textsubscript{a} conclude there is a difference. 
\item If p-value > significance level, we fail to reject H\textsubscript{0} cannot claim there is a difference. (We do not have any definitive truth to accept the null hypothesis)
\item \underline{Requirements:} large population, normal distribution, $\sigma$ is unknown. 
\end{itemize}
\begin{flushright}
\end{flushright}
}
\end{tabular}
\end{scriptsize}

\par\noindent\rule{\textwidth}{0.4pt}

\textbf{FORMULAS}

\par\noindent\rule{\textwidth}{0.4pt}

\begin{scriptsize}
\begin{tabular}{l | l}

\parbox{0.3\textwidth}{

\begin{itemize}
\setlength\itemsep{0.25em}
\item $\sqcap = width \, \times \frac{1}{width}$ (finite curve)
\item $Z = \frac{x - \mu}{\sigma}$ (z-score)
\item $X \sim N(\mu \, , \sigma)$
\item $\bar{X} \sim N(\mu, \frac{\sigma}{\sqrt{n}})$
\item $SEM = \frac{s}{\sqrt{n}}$ (compute standard error)
\item $t = \frac{\bar{X} - \mu\textsubscript{0}}{\frac{s}{\sqrt{n}}}$ [NP]

\item $t = \frac{\bar{x}}{\frac{s\textsubscript{d}}{\sqrt{n}}}$ [matched pair]

\item $t = \frac{(\bar{x}\textsubscript{1} - \bar{x}\textsubscript{2})}{\sqrt{\frac{(s\textsubscript{1})^2}{n\textsubscript{1}} +\frac{(s\textsubscript{2})^2}{n\textsubscript{2}}}} \sim t(K)$ [NHST]
\item $(\bar{x} \pm t^{\ast\ast} \times \frac{s}{\sqrt{n}})$ [confidence interval]
\item $\bar{x} - t^{\ast\ast} \times \frac{s}{\sqrt{n}} < \mu < \bar{x} + t^{\ast\ast} \times \frac{s}{\sqrt{n}}$ [confidence interval when sample mean given]
\end{itemize}

}

&

\parbox{0.5\textwidth}{
\begin{flushright}
\begin{itemize}
\setlength\itemsep{0.25em}
\item IQR = $Q\textsubscript{3} - Q\textsubscript{1}$
\item $K = 1.5$
\item Lower fence: $Q\textsubscript{1} - K \times IQR$
\item Upper fence: $Q\textsubscript{3} + K \times IQR$
\item $t = \frac{\Delta\bar{x} - \Delta\mu}{\frac{\Delta s}{\sqrt{n}}}$
\item $df = n-1$
\item $df(\text{treatment}) = k - 1$ (k) $\leftarrow$ number of categories
\item $df(\text{error}) = N - k$ (N) $\leftarrow$ total sample size.
\item $MSTr = SSTr/(k-1)$ SSTr $\leftarrow$ sum of treatment
\item $MSE = SSE/(N-k)$ SSE $\leftarrow$ sum of error
\item $F = \frac{\text{MSTr}}{\text{MSE}}$
\item $C = 1 - \alpha$ [confidence level]
\item $((\bar{x}\textsubscript{1} - \bar{x}\textsubscript{2}) - t^{\ast\ast} \times \sqrt{\frac{s\textsubscript{1}^2}{n\textsubscript{1}} + \frac{s\textsubscript{2}^2}{n\textsubscript{2}}}), ((\bar{x}\textsubscript{1} - \bar{x}\textsubscript{2}) + t^{\ast\ast} \times \sqrt{\frac{s\textsubscript{1}^2}{n\textsubscript{1}} + \frac{s\textsubscript{2}^2}{n\textsubscript{2}}})$ [qt($\frac{\alpha}{2}$, 347.41, lower.tail = F) $\implies t^{\ast\ast}$]


\end{itemize}
\end{flushright}
}

\end{tabular}
\end{scriptsize}
\par\noindent\rule{\textwidth}{0.4pt}

