resumonumericooucategorico<-function(x){require(gtsummary);options(gtsummary.tbl_summary.percent_fun = function(x) style_number(x * 100, digits = 2));gtsummary::tbl_summary(data = x)}
