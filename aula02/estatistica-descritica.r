install.packages("ggplot2")
library(ggplot2)

#install.packages("dplyr")
#library(dplyr)

# dataframe exemplo com diamantes com 53 mil linhas e 10 colunas
d <- diamonds

# Média (aritimética)
mean(d$price)

#Mediana 
median(d$price)

# Desvio Padrao
sd(d$price)

# Histograma
hist(d$price)

# Geração de Amostras
a1 <- d[1:3000,]

# Amostra não e parecida com a população 
mean(a1$price)
median(a1$price)
sd(a1$price)
hist(a1$price)

a2 <- d[3001:6000,]
mean(a2$price)
median(a2$price)
sd(a2$price)
hist(a2$price)

# numero de registro do dataset
nrow(d)

# Geração de Amostra aleatória 
sample(3)

# Reproduzir uma amostra aleatoria a partir de uma "semente"
set.seed(33)
sample(3)

# geração de amostra aleatória de 3k, obtida a partir da populacao
set.seed(33)
va <-sample(nrow(d))

a3 <- d[va[1:3000],]
mean(a3$price)
median(a3$price)
sd(a3$price)
hist(a3$price)
        
# estatisticas descritivas de um dataframe
summary(d)
summary(a3)

# Boxplot
boxplot(d$price)
hist(d$price)
boxplot(d$price, horizontal = TRUE)
boxplot(d$price~d$cut)
boxplot(d$price~d$cut)

# hacks de grafico de dispersao
m <- mtcars

# mostrar a base em tabela
View(m)
# primeiras 6 linhas 
head(m)
# ultimas 6 linhas 
tail(m)

# visualizar em tabela as ultimas 6 linhas
View(tail(m))

# grafico de dispersão # demostra peso X gasto de combustivel
plot(m$mpg~m$wt)

# Coeficiante de correlação linear
# Valores possiveis -1 e 1
cor(m$mpg,m$wt)

# Matriz de Correlação
cor(m)














