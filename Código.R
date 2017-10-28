#control + l limpa a tela da console
x<-1

x<- "hello"

# Atribuição de objetos
x<-1 +23
x<-5:20

# Criação de Matrizes sem e com valores
m <- matrix(nrow = 2, ncol = 3)
m <- matrix(nrow = 4, ncol = 6)
m <- matrix(1:6, nrow = 2, ncol = 3)

x<-1:3
y<-10:12
cbind(x,y) # combinação de matriz por coluna
rbind(x,y) # combinação de matriz por linhas

# Criação de Lista

x<- list(c(1:6), c("a","b","c"), TRUE, 1+4i)

# Criação de Fatores
x<-factor(c("sim","sim","não","sim","sim"))

#Criação de Data Frame (Dataset) - Planilha Excel

x<- data.frame(foo = 1:4, bar = c(T,T,F,F))
nrow(x)
ncol(x)

x<-1:3
names(x) <- c("foo","bar","norf")
names(x)

#Atribuição de lista dos objetos
x<- lista(a=1,b=2,c=3)



