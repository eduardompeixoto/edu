#test_desfecho_quali(banco,desfecho), as varitáveis tem que estar corretamente indicadas (numérica ou categótica),
#apenas as variaveis de analise entram para este subset,
#tem que nomear a variavel desfecho como desfecho, as demais serão covariáveis
testesdesfechoqualitativo<-function(x){y<-x;y<-dplyr::rename(y,desfecho =tcltk::tk_select.list(colnames(y),title="desfecho"));a<-epiDisplay::tableStack(c(colnames(y)),by=desfecho, dataFrame = y, percent="row", simulate.p.value = T, assumption.p.value = 0.05, test = T, var.labels = F) ;htmlTable::htmlTable(a)}
