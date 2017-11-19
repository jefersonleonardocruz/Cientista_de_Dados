#Jeferson Leonardo de Souza Cruz 28/10/2017
#Projeto Final Módulo 2 - Linguagem R

# 1. Criar um dataset com pelo menos cinco colunas numéricas e três categóricas.
# 2. Use as funções de criação de distribuição aleatória, use pelo menos duas
# 3. Grave seu dataset no disco
#
# Você deverá extrair do dataset:
#  
# 1. Somas e medias das colunas numéricas do dataset usando ??pply
# 2. Usar split
# 3. Mostra um gráfico
# 4. Histograma
#
#############################################################################


#Resolução ítem 1:
#Escalacao do time do Flamengo x Vasco no jogo realizado no dia 28/10/2017.
# Colunas Numéricas e categóricas:

N_Jogadores_Titular_Flamengo <- 1:11
Idade_Fla_Titular <- abs(round(rnorm(11,40,10)))
print (Idade_Fla_Titular)

#Aplicar o apply na idade dos jogadores
#Idade_Jogadores_Flamengo <- list(20,25,20,18,19,24,16,30,35,38,40)


  print(N_Jogadores_Titular_Flamengo)

N_Jogadores_Reservas_Flamengo <- 12:16

  print(N_Jogadores_Reservas_Flamengo)

Nome_Titular_Flamengo <- factor(c( "Diego Alves","Pará","Rhodolfo","Juan",
                                   "William Arão","Trauco","Everton_Ribeiro",
                                   "Márcio Araújo","Guerreiro","Diego","Lucas Paquetá"))

Nome_Reservas_Flamengo <- factor(c("Muralha","Rodinei","Rodolfo","Márcio Araújo",
                          "Vinicius Junior"))
#########################################################################################

N_Jogadores_Titular_Vasco <- 1:11
Idade_Vasco_Titular <- abs(round(rnorm(11,20,30)))

print(N_Jogadores_Titular_Vasco)

Idade_Vasco_Titular <- abs(round(rnorm(11,30,11)))
print (Idade_Vasco_Titular)

N_Jogadores_Reservas_Vasco <- 12:16

print(N_Jogadores_Reservas_Vasco)

Nome_Titular_Vasco <- factor(c( "Martín Silva","Madson","Paulão","Anderson Martins",
                                   "Ramon","Jean","Wellington",
                                   "Yago Pikachu","Nenê","Mateus Vital","André Rios"))

Nome_Reservas_Vasco <- factor(c("Gilberto","Manga Escobar","Caio Monteiro","Leandro",
                                   "Jean"))



#########################################################################################
#Resolução ítem 2:

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

#Resolução ítem 3:
#Dataset saldo e executado com as criações dos objetos e variáveis.

write.table(Distrib_Camisas_Titular_Flamengo, file="Flamengo_Time_Titular.txt", sep=",")
write.table(Distrib_Camisas_Reservas_Flamengo, file="Flamengo_Time_Reservas.txt", sep=",")
write.table(Distrib_Camisas_Titular_Vasco, file="Vasco_Time_Titular.txt", sep=",")
write.table(Distrib_Camisas_Reservas_Vasco, file="Vasco_Time_Reservas.txt", sep=",")

#####################################################################

#Resolução Extração do Dataset ítem 1:


#Novo Frame Renda do Jogo

Valor_Partida <- data.frame(Portaria = 1:5, Tipo_Ingresso = c("ISENTO","MEIA","INTEIRA","CORTESIA","FALSO"),
                     Forma_Pagamento = c("CUPOM","DINHEIRO","DINHEIRO","CUPOM","N/A"), SN_ATIVO = c("S","S","S","S","S"),
                     valor_Ingresso = runif(5, min=10, max=100), quantidade = rnorm(5,12,5),
                     valor_Total = 70, qt_Vend_Ult_Mes = rnorm(5,20,8),
                     lucro_Ult_Mes = 200, salario = 1000
)
Renda_Total_Jogo <- 100000
Despesa_Jogo <- 10000
                     
#Resolução Exercicio Exploração dos Dados - Criação de 2 Datasets Dependentes

# adicionando 2 novas colunas dependentes
Valor_Partida["BonussalarioJogador"] <- Valor_Partida$lucro_Ult_Mes * 1.5
Valor_Partida["encargos"] <- Valor_Partida$lucro_Ult_Mes - Valor_Partida$salario
                      
                      Receita_Liquida_Jogo <- Renda_Total_Jogo-Despesa_Jogo
                      Receita_Liquida_Cada_Clube <- Receita_Liquida_Jogo/2
                      
#Criação de gráficos utilizando GGPLOT2
                      
library(ggplot2)
                      qplot(Receita_Liquida_Jogo)
                      
                      ggplot(Valor_Partida, aes(x=Forma_Pagamento, y = valor_Ingresso)) +
                      ggplot(data=Valor_Partida, aes(x=Forma_Pagamento, y = valor_Ingresso))
                      eom_boxplot(fill = "gold1", colour = "goldenrod2") +
                      scale_y_continuous(name = "Forma de Pagamento",
                                           breaks = seq(0, 10, 1),
                                           limits=c(0, 10)) +
                        scale_x_discrete(name = "Valor de Ingressos") +
                        ggtitle("Boxplot de Forma de Pagamento por Tipo de Ingresso")
                      
                      #  2. Clusterização #2 - Hierárquico
                      plot(x=Valor_Partida$lucro_Ult_Mes, y=Valor_Partida$salario, color=df_eleitores$sexo)
                      
                      #cria um dataframe para calcular as distancias
                      lucro <- data.frame(x=Valor_Partida$lucro_Ult_Mes, y=Valor_Partida$salario)
                      distancia <- dist(lucro)
                      result_cluster <- hclust(distancia)
                      plot(result_cluster)
                      
                      
                      #  3. Clusterização #3 - Kmeans
                      obj_kmeans <- kmeans(lucro, centers=12)
                      
                      #consultando os nomes do objeto criado
                      names(obj_kmeans)
                      
                      #consultando valores do objeto_kmeans
                      obj_kmeans$cluster
                      obj_kmeans$centers
                      
                      
                     
                      
# Imprime Resultado na Tela
print (Valor_Partida)

# Aplicação do Apply
apply(Valor_Partida[,5:6],1,mean)

# Aplicação do sapply
sapply(Valor_Partida[,5:6],sum)


# Aplicação do split

split(Valor_Partida$Forma_Pagamento, Valor_Partida$Tipo_Ingresso)

# Gráfico do Valor do Ingresso

plot(Valor_Partida$Tipo_Ingresso, Valor_Partida$valor_Ingresso)

# Histograma da quantidade de vendas do último mês
hist(Valor_Partida$qt_Vend_Ult_Mes)







