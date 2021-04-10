#tem que ser um subset só com as numéricas
resumosnumericos<-function(x){x<-dplyr::select_if(x, is.numeric);x<-as.data.frame(x);a<-RcmdrMisc::numSummary(x[,c(colnames(x)),  drop=FALSE], statistics=c("mean", "sd", "IQR", "quantiles"), quantiles=c(0, .25,.5,.75,1));is.num<-sapply(a, is.numeric); a[is.num]<-lapply(a[is.num],round,2); a<-a[["table"]] ;htmlTable::htmlTable(a)}
