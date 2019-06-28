---
  title: "My first Markdown"
author: "Mira"
date : "28.06.2019"
output: pdf_document
bibliography: markdown_course.bib
fontsize: 11pt
classoption: a4paper

header-includes:
  - \usepackage{tabularx} 

---
  
  J
# R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. 
For more details on using R Markdown see [bookdown.org/yihui/rmarkdown](https://bookdown.org/yihui/rmarkdown).

## Using R and Markdown

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document.
You can embed an R code chunk like this:
  
  ```{r cars, echo=FALSE}
m.cars <- mean(cars$speed)
```

And you can use in-line code to show your results in the text: `r m.cars`.

```{r cars2, echo=FALSE}
sd.cars <- sd(cars$speed)
```

The SD of the speed of cars is: `r round(sd.cars)`.

[@bosnjak_establishing_2018]
You could also run R calculations in the code like this `r m.cars * 2`, but ensure that your text is still readable. 

| A | B | C |
  |---|---|---|
  | 1 | 2 | 3 |
  
  Table: This is an awesome table

```{r taks03, child = 'task02.Rmd'}
```

\newpage


\begin{table}
\begin{tabularx}{\textwidth}{|X|c|c|c|c|c|X|}
\hline
The software ... & - - & - & -/+ & + & + + &\\
\hline
is complicated to use & $\square$ & $\square$ & $\square$ & $\square$ & $\square$ & is not complicated to use\\
\hline
is useful  & $\square$ & $\square$ & $\square$ & $\square$ & $\square$ & is not useful
\end{tabularx}
\end {table}

\newpage
Hier ist ein bisschen Text, den ich mit einer Quelle belege [@berning_publication_2016]. Außerdem kommt jetzt noch eine Quelle, die mitten im Text steht @bosnjak_establishing_2018 und danach noch mehr Text kommt.

Nun kommt eine Grafik. 

```{r figure1, echo=FALSE, warning=FALSE, fig.cap = "Bildunterschrift \\label{fig:figuretest}"}
library(readr)
example_data <- read_csv("example_data.csv")
papaja::apa_barplot(
  data = example_data ,
  id = "X1", 
  dv = "Self",
  factors = "Gender"
)
```

Hier sieht man nun \@ref(fig:figuretest).

\newpage


# References