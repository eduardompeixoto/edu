
estudo2 <- read_excel("estudo2.xlsx")

#Resumos

gtsummary::tbl_summary(estudo2)
gtsummary::tbl_summary(estudo2, by="visita")

local({
  .Table <- xtabs(~PCR+sorologico, data=estudo2)
  cat("\nFrequency table:\n")
  print(.Table)
  cat("\nRow percentages:\n")
  print(rowPercents(.Table))
  .Test <- chisq.test(.Table, correct=FALSE)
  print(.Test) 
  print(fisher.test(.Table))
})

par(mfrow=c(8,3))
mapa("Gini")
mapa("Agua")
mapa("Banheiro")
mapa("Lixo")
mapa("Energia")
mapa("Densidade")
mapa("Esperancadevida")
mapa("Mortalidade_infantil")
mapa("Prob_sobrevivencia")
mapa("IDH")
mapa("Probab_sobrev60")
mapa("Taxa_envelhecimento")
mapa("Probab_sobrev60")
mapa("Taxa_analfabetismo")
mapa("Expectativa_anos_de_estudo")
mapa("Renda_per_capita")
mapa("Renda_per_capita_nula")
mapa("Expectativa_anos_de_estudo")
mapa("Perc_extremamente_pobres")
mapa("Populacao")
mapa("last_available_death_rate")
mapa("last_available_confirmed_per_100k_inhabitants")

#A partir do primeiro DETECTAVEL

table(estudo2$PCR[estudo2$PCR=="DETECTAVEL"], estudo2$sorologico[estudo2$PCR=="DETECTAVEL"])
table(estudo2$PCR[estudo2$PCR=="NAO_DETECTAVEL"], estudo2$sorologico[estudo2$PCR=="NAO_DETECTAVEL"])

a<-estudo2$PCR[estudo2$PCR=="DETECTAVEL"]
b<-estudo2$sorologico[estudo2$PCR=="DETECTAVEL"]
c<-estudo2$visita[estudo2$PCR=="DETECTAVEL"]

local({
  .Table <- xtabs(~a+b, data=estudo2)
  cat("\nFrequency table:\n")
  print(.Table)
  cat("\nRow percentages:\n")
  print(rowPercents(.Table))
  
})



local({
  .Table <- xtabs(~a+b, data=estudo2)
  cat("\nFrequency table:\n")
  print(.Table)
  cat("\nRow percentages:\n")
  print(rowPercents(.Table))

})

local({
  .Table <- xtabs(~a+b+c, data=estudo2)
  cat("\nFrequency table:\n")
  print(.Table)
  cat("\nRow percentages:\n")
  print(rowPercents(.Table))
  
}) 
  
Dataset$<-stringr::str_to_lower(Dataset$muni)
Dataset<- Dataset %>% filter(str_detect(muni, " (rj)"))
Dataset$muni<-str_replace_all(Dataset$muni, "á", "a")
Dataset$muni<-str_replace_all(Dataset$muni, "é", "e")
Dataset$muni<-str_replace_all(Dataset$muni, "ã", "a")
Dataset$muni<-str_replace_all(Dataset$muni, "ó", "o")
Dataset$muni<-str_replace_all(Dataset$muni, "ô", "o")
Dataset$muni<-str_replace_all(Dataset$muni, "ç", "c")
Dataset$muni<-str_replace_all(Dataset$muni, "ú", "u")
Dataset$muni<-str_replace_all(Dataset$muni, "ê", "e")
Dataset$muni<-str_replace_all(Dataset$muni, "í", "i")
Dataset$muni<- str_replace(Dataset$muni," - rj", "")
junto <- fuzzyjoin::regex_join(estado,Dataset,by="muni" )


b <- dados2 %>% group_by(city) %>% summarize(last_available_confirmed_per_100k_inhabitants=mean(last_available_confirmed_per_100k_inhabitants), last_available_death_rate=mean(last_available_death_rate,state=state))