tabelarumbancoporumavarquali<-function(x){ require(gtsummary);options(gtsummary.tbl_summary.percent_fun = function(x) style_number(x * 100, digits = 2));tbl_summary(x, tcltk::tk_select.list(colnames(x), title = "variável categórica"))}

