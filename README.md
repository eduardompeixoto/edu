---
title: "Pacote edu"
author: "Eduardo Peixoto"
date: "27/02/2021"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(
	echo = TRUE,
	message = TRUE,
	warning = FALSE
)
```

## Pacote do Edu

Essa é uma iniciativa independente sem fins lucrativos de código aberto para facilitar o uso e aprendizado do R. As funções foram criadas para facilitar operações simples e comuns do uso. Ainda está em fase de desenvolvimento e contribuições e sugestões são muito bem-vindas.

>Você já pensou em digitar em português o que quer e aparecer uma tabela/gráfico que você precisa? Esse é o objetivo.

Nos exemplos usei o banco de dados iris, que ja vem no R, precisa importar o seu banco antes e o nome que ele ficar é o que se deve substituir por "iris". Pode usar as funções importarcsv ou importarexcel descritas abaixo.



## instalação


- devtools::install_git("https://github.com/eduardompeixoto/edu")


**Dependências:**

- gtsummary
- dplyr
- epiDisplay
- sjPlot
- stats
- RcmdrMisc
- base
- tcltk
- snippet
- ggplot2
- ggstatsplot
- tidyverse
- rstantools
- htmlTable


## comandos

### importarcsv

selecione o delimitador de texto e em seguida o decimal
```{r}
#banco <-edu::importarcsv()
```



### importarexcel

```{r}
#banco<-edu::importarexcel()
```

### tabelarumbancoporumavarquali
```{r}

iris$a<-0
iris$a[iris$Sepal.Length>5]<-1
iris$a<-as.factor(iris$a)
edu::tabelarumbancoporumavarquali(iris)
```


### testesdesfechoqualitativo 

Esse comando é um dos meus favoritos, ele faz os testes de hipótese considerando normalidade seleciona o teste automaticamente para o analista, tudo que tem a fazer é selecionar o desfecho em uma janela que vai abrir e pronto. Usa 5% de significância.

**O Desfecho precisa ser qualitativo e estar sendo lido como factor no r, precisa ter pelo menos três observações em cada extrado do factor versus cada variável*

#### uso

```{r echo=TRUE}
edu::testesdesfechoqualitativo(iris)
###ou
##require(edu)
##testesdesfechoqualitativo(iris)
```




### correlacao

Faz uma tabela bonitinha de matrix de correlação de spearman (não paramétrica), só considera as variáveis quantitativas. Bom para avaliar a associação entre várias variáveis quantitativas de uma vez só.

#### uso

```{r}
edu::correlacao(iris)
```


### resumosnumericos

Faz uma tabela bonitinha com média, sd (desvio padrão), IQR (intervalo interquartílico , a diferença entre 75% e 25%), o valor mínimo (0%), em ordem crescente até 25% das obsevações (primeiro quartil),em ordem crescente até 50% das obsevações (segundo quartil ou mediana), em ordem crescente até 75% das obsevações (terceiro quartil) e o valor máximo (100%).Só considera as variáveis quanti.

#### uso

```{r}
edu::resumosnumericos(iris)
```


### criarsubbanco

```{r}
temp<-edu::criarsubbanco(iris)
```


### modelo_logistico

```{r}
temp<-edu::criarsubbanco(iris)
edu::modelo_logistico(temp)
```

### modelo_gaussiano
```{r}
temp<-edu::criarsubbanco(iris)
edu::modelo_gaussiano(temp)
```


### resumonumericooucategorico

```{r}
edu::resumonumericooucategorico(iris)
```




### boxplotpareado

```{r}
edu::boxplotpareado(iris)
```

### boxplotbolado

```{r}
edu::boxplotbolado(iris)
```

### boxplotbolado_id_outlier

```{r}
edu::boxplotbolado_id_outlier(iris)
```

### graficodebarras

```{r}
edu::graficodebarras(iris)
```


### juntarbancos

tem que ter variável chave
```{r}
###criei varialvel para dar exemplo id, pode ser o prontuário, cpf, pid
mtcars<-mtcars
mtcars$a<-seq(1,32)
cars<-cars
cars$id<-seq(1,50)
#juntando o banco
bancojunto<-edu::juntarbancos(cars, mtcars)
bancojunto
```



## Contatos

teachereduardo@outlook.com

