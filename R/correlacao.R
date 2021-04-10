#tem que ser um subset só com as numéricas
correlacao<-function(x){x<-dplyr::select_if(x, is.numeric);x<-as.data.frame(x);a<-stats::cor(x[,colnames(x)], method="spearman", use="complete");a<-as.data.frame(a);is.num<-sapply(a, is.numeric); a[is.num]<-lapply(a[is.num],round,2);htmlTable::htmlTable(a)}

