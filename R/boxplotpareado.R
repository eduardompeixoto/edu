boxplotpareado<-function(x){require(tcltk);library(dplyr);library(tidyr);library(ggplot2);x$a<-tk_select.list(colnames(x),title="id");  x %>% dplyr::select(a, everything()) %>% tidyr::gather("id", "value",2:5) %>% ggplot(., aes(x = id, y = value))+geom_boxplot()}

