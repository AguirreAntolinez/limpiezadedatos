#Contar el número de datos N/A
sum(is.na(df))
#Para detectar las observaciones que tienen N/A
df[!complete.cases(df), ]

#Reemplazar N/A por cero
df[is.na(df)] <- 0
sum(is.na(df)) #El output debe ser cero
#Reemplazarlos por cero en lugar de eliminar las observaciones
df<-na.omit(df)
sum(is.na(df))

#Para eliminar o reemplazar inf
#Contar el número de inf 
sum(sapply(df,is.infinite)) 
#Reemplazar los inf por N/A 
is.na(df)<-sapply(df,is.infinite)
sum(is.na(df))
#Una vez se han convertido los inf en N/A se pueden reemplazar por cero o eliminar usando el código anterior.
