modelo_multi<-function(x){y<-criarsubbanco(x);y<-dplyr::rename(y,desfecho =tcltk::tk_select.list(colnames(y),title="desfecho"));formulas <- paste('desfecho ~ .');

fitted.models <- lapply(formulas, glm, data=y,family = tcltk::tk_select.list(c("binomial","gaussian","poisson","quasipoisson","quasibinomial")));require(sjPlot); tab_model(fitted.models)}


