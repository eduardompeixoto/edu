graficodebarras<-function(banco){require(RcmdrMisc);y<-banco;y<-dplyr::rename(y,var1 =tcltk::tk_select.list(colnames(y),title="variável x"));y<-dplyr::rename(y,by2 =tcltk::tk_select.list(colnames(y),title="var2"));with(y, RcmdrMisc::Barplot(var1, by=by2, style="parallel", legend.pos="above",xlab=NULL,ylab="Percentual",legend.title = NULL,  scale="percent", label.bars=TRUE))}

