#Factores

x<-factor(c("si","no","si","si","no","si","no"))
x
table(x)
unclass(x)
x<-factor(c("si","no","si","si","no","si","no"),levels = c("si","no"))
x
unclass(x)
y<-factor(c("azul","rojo","verde","amarillo","rojo","azul","azul","amarillo","azul"))
y
table(y)

#ValorFaltante

x<-c(1,2,NA,10,3)
is.na(x)
is.nan(x)

x<-c(1,2,NaN,10,3)
is.na(x)
is.nan(x)

#Data Frames
x<-data.frame(erick=1:4,Lori=c(T,T,F,F))
x

row.names(x)<-c("Primero","Segundo","Tercero","Cuarto")
x
nrow(x)
ncol(x)
attributes(x)

names(x)<-c("Yarely","Karen")
x

#Los nombres no son exclusivos de los data frames
x<-1:3
names(x) #NULL
names(x)<-c("Hugo","Paco","Luis")
x

x<-list(a=1:10,b=100:91,c=51:60)
x

names(x)<-c("Sec1","sec2","Seq3")
x

m<-matrix(1:4,2,2)
m
attributes(m)
dimnames(m)

dimnames(m)<-list(c("fil1","fil2"),c("col1","col2"))
m

m1<-matrix(NA,5,6)
m1

#Lectura de Datos
getwd()
setwd("~/Desktop/Programacion_Actuarial_III")
data<-read.csv("Datos_S&P.csv")
data<-read.table("Datos_S&P.csv",T,",")
data
