# 28/10/2017
#Estudo Módulo 2 - Linguagem R
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


# Data de Hora
#coersão acontece com a função as.Date

x<- as.Date("1970-01-01")
x<- as.Date("1970-01-05")
x<- as.Date("2017-10-28")
unclass(x)

x<- Sys.time()

datestring <- c("january 10, 2012 10:40", "December 9, 2011 9:10")

x<- as.Date("2017-10-28")

y<- as.Date("2016-10-28")

x-y

# Vetores

x <- 1:4;
y <- 6:9;

x+y

x>=2

y==8

# Multiplicação entre matrizes

x <- matrix(1:4,2,2); y <- matrix(rep(10,4),2,2) 

x*y

x/y

x%*%y #calculo dos determinantes

#Subsetting


#subconfiguração do Dataset ou Vetor..Substr por exemplo.
# Conchete duplo extrair parte de uma lista

X <- c("a","b","c","c","d","a")

X <- matrix(1:6,2,3)

X <- list (foo = 1:4, bar = 0.6)

#Estruturas de Controle e Repetição

X <- 3
y <- 7

x <- if (x >3){
    y <- 10
} else {
  y <-0
}
print(x,y)


for (i in 1:10) {
  print(i)
}


## Condicao AND &&
## Condicao OR !!

# Funções

x <- function(a){}
x <- function(a){
    print(a*a)
}



# Crição de Matrizes de duas dimensões
M <- matrix(seq(1,16), 4, 4)

# Aplicar a função minimo as linhas
apply(M, 1, min)

# Aplicar a função maior as colunas 
apply(M, 2, max)

# Aplicar a soma
apply(M, 1, sum)

