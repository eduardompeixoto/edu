modelo_uni<-function(x){y<-criarsubbanco(x);y<-dplyr::rename(y,desfecho =tcltk::tk_select.list(colnames(y),title="desfecho"));
formulas <- paste('desfecho ~', colnames(y));
fitted.models <- lapply(formulas, glm, data=y,family = tcltk::tk_select.list(c("binomial","gaussian","poisson","quasipoisson","quasibinomial")));require(sjPlot);a<-lapply(fitted.models,tab_model, show.intercept=F, show.r2=F);
a<-list2DF(a);
a<-as.matrix(a);
a<-t(a);
a<-as.data.frame(a);
b<-a$V2;
b<-as.data.frame(b);
b<-as.matrix(b);
b<-t(b);
b<-as.data.frame(b);
b<-b$V1;
b<-as.data.frame(b);
htmlTable::htmlTable(b)}


