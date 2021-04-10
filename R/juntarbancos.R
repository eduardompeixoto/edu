juntarbancos<-function(x,y){merge(x,y, by.x=tcltk::tk_select.list(colnames(x),title="variávelchave1"),by.y=tcltk::tk_select.list(colnames(y),title="variávelchave2"))}
