#Jeferson Leonardo de Souza Cruz 28/10/2017
#Projeto Final M�dulo 2 - Linguagem R

# 1. Criar um dataset com pelo menos cinco colunas num�ricas e tr�s categ�ricas.
# 2. Use as fun��es de cria��o de distribui��o aleat�ria, use pelo menos duas
# 3. Grave seu dataset no disco
#
# Voc� dever� extrair do dataset:
#  
# 1. Somas e medias das colunas num�ricas do dataset usando ??pply
# 2. Usar split
# 3. Mostra um gr�fico
# 4. Histograma
#
#############################################################################


#Resolu��o �tem 1:
#Escalacao do time do Flamengo x Vasco no jogo realizado no dia 28/10/2017.
# Colunas Num�ricas e categ�ricas:

N_Jogadores_Titular_Flamengo <- 1:11
Idade_Fla_Titular <- abs(round(rnorm(11,40,10)))
print (Idade_Fla_Titular)

#Aplicar o apply na idade dos jogadores
#Idade_Jogadores_Flamengo <- list(20,25,20,18,19,24,16,30,35,38,40)


  print(N_Jogadores_Titular_Flamengo)

N_Jogadores_Reservas_Flamengo <- 12:16

  print(N_Jogadores_Reservas_Flamengo)

Nome_Titular_Flamengo <- factor(c( "Diego Alves","Par�","Rhodolfo","Juan",
                                   "William Ar�o","Trauco","Everton_Ribeiro",
                                   "M�rcio Ara�jo","Guerreiro","Diego","Lucas Paquet�"))

Nome_Reservas_Flamengo <- factor(c("Muralha","Rodinei","Rodolfo","M�rcio Ara�jo",
                          "Vinicius Junior"))
#########################################################################################

N_Jogadores_Titular_Vasco <- 1:11
Idade_Vasco_Titular <- abs(round(rnorm(11,20,30)))

print(N_Jogadores_Titular_Vasco)

Idade_Vasco_Titular <- abs(round(rnorm(11,30,11)))
print (Idade_Vasco_Titular)

N_Jogadores_Reservas_Vasco <- 12:16

print(N_Jogadores_Reservas_Vasco)

Nome_Titular_Vasco <- factor(c( "Mart�n Silva","Madson","Paul�o","Anderson Martins",
                                   "Ramon","Jean","Wellington",
                                   "Yago Pikachu","Nen�","Mateus Vital","Andr� Rios"))

Nome_Reservas_Vasco <- factor(c("Gilberto","Manga Escobar","Caio Monteiro","Leandro",
                                   "Jean"))



#########################################################################################
#Resolu��o �tem 2:

# Criacao do DataFrame time titular e reserva do Flamengo. 

Distrib_Camisas_Titular_Flamengo <- data.frame(NumCamisaTitularFlamengo=N_Jogadores_Titular_Flamengo, NomeCamisaTitularFlamengo=Nome_Titular_Flamengo, idade=Idade_Fla_Titular)

print(Distrib_Camisas_Titular_Flamengo)

Distrib_Camisas_Reservas_Flamengo <- data.frame(NumCamisaReservas_Flamengo=N_Jogadores_Reservas_Flamengo, NomeCamisaReservasFlamengo=Nome_Reservas_Flamengo)

print(Distrib_Camisas_Titular_Flamengo)
print(Distrib_Camisas_Reservas_Flamengo)


###############################################################################################################################################################

# Criacao do DataFrame time titular e reserva do Vasco. 

Distrib_Camisas_Titular_Vasco <- data.frame(NumCamisaTitularVasco=N_Jogadores_Titular_Vasco, NomeCamisaTitularVasco=Nome_Titular_Vasco, idadeVasco=Idade_Vasco_Titular)

print(Distrib_Camisas_Titular_Vasco)

Distrib_Camisas_Reservas_Vasco <- data.frame(NumCamisaReservas_Vasco=N_Jogadores_Reservas_Vasco, NomeCamisaReservasVasco=Nome_Reservas_Vasco)

print(Distrib_Camisas_Titular_Vasco)
print(Distrib_Camisas_Reservas_Vasco)

#Resolu��o �tem 3:
#Dataset saldo e executado com as cria��es dos objetos e vari�veis.

write.table(Distrib_Camisas_Titular_Flamengo, file="Flamengo_Time_Titular.txt", sep=",")
write.table(Distrib_Camisas_Reservas_Flamengo, file="Flamengo_Time_Reservas.txt", sep=",")
write.table(Distrib_Camisas_Titular_Vasco, file="Vasco_Time_Titular.txt", sep=",")
write.table(Distrib_Camisas_Reservas_Vasco, file="Vasco_Time_Reservas.txt", sep=",")

#####################################################################

#Resolu��o Extra��o do Dataset �tem 1:


#Novo Frame Renda do Jogo

Valor_Partida <- data.frame(Portaria = 1:5, Tipo_Ingresso = c("ISENTO","MEIA","INTEIRA","CORTESIA","FALSO"),
                     Forma_Pagamento = c("CUPOM","DINHEIRO","DINHEIRO","CUPOM","N/A"), SN_ATIVO = c("S","S","S","S","S"),
                     valor_Ingresso = runif(5, min=10, max=100), quantidade = rnorm(5,12,5),
                     valor_Total = 70, qt_Vend_Ult_Mes = rnorm(5,20,8),
                     lucro_Ult_Mes = 200
)

# Imprime Resultado na Tela
print (Valor_Partida)

# Aplica��o do Apply
apply(Valor_Partida[,5:6],1,mean)

# Aplica��o do sapply
sapply(Valor_Partida[,5:6],sum)


# Aplica��o do split

split(Valor_Partida$Forma_Pagamento, Valor_Partida$Tipo_Ingresso)

# Gr�fico do Valor do Ingresso

plot(Valor_Partida$Tipo_Ingresso, Valor_Partida$valor_Ingresso)

# Histograma da quantidade de vendas do �ltimo m�s
hist(Valor_Partida$qt_Vend_Ult_Mes)







