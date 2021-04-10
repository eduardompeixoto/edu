boxplotbolado_id_outlier<-function(x){y<-x;y<-dplyr::rename(y,grupo =tcltk::tk_select.list(colnames(y),title="categorica"));
y<-dplyr::rename(y,numerica =tcltk::tk_select.list(colnames(y),title="numerica"));require(ggstatsplot);
y<-dplyr::rename(y,rotulo =tcltk::tk_select.list(colnames(y),title="rótulo"));
require(tidyverse);ggbetweenstats(data = y, x = grupo,y = numerica,type=tcltk::tk_select.list(c("parametric","nonparametric"),title="tipo de teste"),pairwise.display = NULL,pairwise.comparisons = F,plot.type = "box", outlier.tagging = TRUE, outlier.label =rotulo )}
