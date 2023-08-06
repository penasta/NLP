if (!require("pacman")) install.packages("pacman")

# install.packages("devtools")
# devtools::install_github("SoaresAlisson/notasTaq")
# library(notasTaq) # Agradecimento ao Alisson Soares pelo pacote notasTaq

p_load(readr)

nt2606 <- read_csv("https://raw.githubusercontent.com/SoaresAlisson/notasTaq/main/csv/nt2606.csv")

p_load(tidyverse)
df <- nt2606 |>
  select(partido,fala) |>
  na.omit()

# partidos de oposição ao governo:
# Levarei em conta "oposição" e "governo" os que constam neste link :https://www.diap.org.br/index.php/noticias/artigos/91238-base-do-governo-lula-no-congresso#:~:text=Senado%20Federal%3A&text=oposição%20de%2030%20senadores%2C%20composta,dependendo%20do%20tema%20em%20pauta.
# o restante será classificado pelo algoritmo posteriormente.


oposicao <- c("NOVO","PL","PP","PSDB")
governo <- c("PT","PSOL","PDT","PSB","REDE","PCdoB","PV")

# função 'notin'; faz o oposto do operador %in%.
`%notin%` <- Negate(`%in%`)

# classificando
df <- df  |>
  mutate(situacao = case_when(partido %in% oposicao ~ "Oposição",
                              partido %in% governo ~ "Governo",
                              partido %notin% oposicao & partido %notin% governo ~ "Demais"))

# pegando apenas os casos de governo e oposição para treino
dados <- df |>
  filter(situacao != "Demais") |>
  select(fala,situacao) |>
  mutate(situacao = ifelse(situacao == "Oposição",0,1)) # Transformando em variável 0[oposicao]-1[governo].

# separando os dados em treino e teste
p_load(caTools)
set.seed(42)
sample <- sample.split(dados$situacao, SplitRatio = 0.7)
train  <- subset(dados, sample == TRUE)
test   <- subset(dados, sample == FALSE)

# exportando os dados em .csv
write_csv(train,"train.csv")
write_csv(test,"test.csv")
