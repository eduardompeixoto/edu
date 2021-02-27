importarcsv<-function(x){read.csv(tcltk::tk_choose.files(),header = T, sep=tcltk::tk_select.list(c(",",";"," "),title="delimitador"),dec=tcltk::tk_select.list(c(",","."), title="delimitador"))}
