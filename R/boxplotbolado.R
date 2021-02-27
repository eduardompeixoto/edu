boxplotbolado<-function(x){y<-x;y<-dplyr::rename(y,grupo =tcltk::tk_select.list(colnames(y),title="categorica"));
y<-dplyr::rename(y,numerica =tcltk::tk_select.list(colnames(y),title="numerica"));require(ggstatsplot);
require(tidyverse);ggbetweenstats(data = y, x = grupo,y = numerica,type=tcltk::tk_select.list(c("parametric","nonparametric"),title="tipo de teste"),pairwise.display = NULL,pairwise.comparisons = F,plot.type = "box")}
