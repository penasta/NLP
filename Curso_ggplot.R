pacman::p_load(tidyverse,Hmisc,scales,languageR)

# Workshop: visualização de dados com ggplot - 2023
# Guilherme D. Garcia (Université Laval), Ronaldo Lima Jr (UnB/CNPq)

# Script para exercício em aula
# Dia 1: Dados descritivos (reposta contínua)

# =================================================
#                     TAREFAS                     
# =================================================

data(danish)

# 1. HISTOGRAMA
# -> Criar um histograma da distribuição de LogRT
# -> utilize os elementos extras e detalhes estéticos que julgar necessários

getwd()

hist <- ggplot(danish, aes(x = LogRT)) +
  geom_histogram(binwidth = .05,
                 fill="#a11d21",
                 color = "black") +
  labs(title = "Histograma da variável LogRT",
       subtitle = "",
       x = "Valor da variável",
       y = "Contagem") +
  theme_classic()
hist

ggsave(hist, device = "pdf")
ggsave("colunas-bi-freq.pdf", width = 158, height = 93, units = "mm")


# 2. GRÁFICO DE CAIXAS (ou violino)
# -> Criar um gráfico de caixas com LogRT em função de Sex
# -> utilize os elementos extras e detalhes estéticos que julgar necessários


# 3. GRÁFICO DE DISPERSÃO
# -> Criar um gráfico de caixas com LogRT em função de LogWordFreq
# -> utilize os elementos extras e detalhes estéticos que julgar necessários


# =================================================
#                     CONSULTA                     
# =================================================

# HISTOGRAMA

# Histograma mínimo
ggplot(data = english, aes(x = RTlexdec)) + 
  geom_histogram() 

# Possíveis elementos extras
ggplot(data = english, aes(RTlexdec)) + 
  geom_histogram(binwidth = 0.005, fill = "lightgray", color = "orange") + 
  labs(title = "Histograma", x = "Tempo de reação (log)", y = "") +
  theme_bw() 

# =================================================

# GRÁFICO DE CAIXAS (boxplot)

# Gráfico de caixas mínimo
ggplot(data = english, aes(x = AgeSubject, y = RTlexdec)) +
  geom_boxplot()

# Possíveis elementos extras
ggplot(data = english, aes(x = AgeSubject, y = RTlexdec, color = WordCategory)) +
  geom_boxplot() +
  geom_violin(fill = "violet", alpha = 0.2, color = "white") +
  stat_summary(color = "blue", size = 1, shape = 4) +
  geom_jitter(alpha = 0.05, color = "darkgreen") +
  facet_grid(~WordCategory) +
  labs(title = "Gráfico de caixas",
       x = "Faixa etária",
       y = "Tempo de reação (log)") +
  scale_x_discrete(labels = c("old" = "velhos", "young" = "novos")) +
  theme_light()

# =================================================

# GRÁFICO DE DISPERSÃO (scatterplot)

# Gráfico de dispersão mínimo
ggplot(data = english, aes(x = WrittenFrequency, y = RTlexdec)) + 
  geom_point()

# Possíveis elementos extras
ggplot(data = english, aes(x = WrittenFrequency, y = RTlexdec, color = AgeSubject)) + 
  geom_point(alpha = 0.3) +
  geom_smooth(method = lm) +
  labs(title = "Gráfico de dispersão", 
       x = "Frequência escrita",
       y = "Tempo de reação (log)") +
  theme_classic()

# =================================================

# Após gerar seus gráficos, faça o upload no link abaixo:
# https://t.ly/y_HkN

# ==================== Dia 2  =============================

d = english |>
  as_tibble()

glimpse(d)

# Criar figura simples:
ggplot(data=d,aes(x=Familiarity,y=RTlexdec)) +
  geom_point(alpha=.25)

# Salvar/exportar figura (jpeg)
#dir.create("Figuras")

ggsave(last_plot(),
       filename="Figuras/grafico1.jpeg",
       width = 5,
       height = 2.5,
       dpi=800)













# Workshop: visualização de dados com ggplot - 2023
# Guilherme D. Garcia (Université Laval), Ronaldo Lima Jr (UnB/CNPq)

# Script para exercício em aula
# Dia 1: Dados descritivos (reposta contínua)

# =================================================
#                     TAREFAS                     
# =================================================

# Carregar os dados "danish" do pacote languageR
pacman::p_load(languageR)

data(danish)

# 1. HISTOGRAMA
# -> Criar um histograma da distribuição de LogRT
# -> utilize os elementos extras e detalhes estéticos que julgar necessários
ggplot('...', aes(x = ..., y = ...)) +
  geom_...

# 2. GRÁFICO DE CAIXAS (ou violino)
# -> Criar um gráfico de caixas com LogRT em função de Sex
# -> utilize os elementos extras e detalhes estéticos que julgar necessários

glimpse(danish)

ggplot(data = danish, aes(x = Sex, y = LogRT#, color = WordCategory
                          )) +
  geom_boxplot() +
  geom_violin(fill = cores_stf[1], alpha = 0.6, color = cores_stf[2]) +
  stat_summary(fun = "mean",color = cores_stf[3], size = 1, shape = 18) +
  labs(title = "Gráfico de caixas",
       x = "Sexo",
       y = "LogRT")
  theme_stf()
  
ggsave(last_plot(),
         filename="Figuras/boxplot_Sala3_alternativo.jpeg",
         width = 158,
         height = 93,
         units = "mm",
         dpi=800)

# 3. GRÁFICO DE DISPERSÃO
# -> Criar um gráfico de caixas com LogRT em função de LogWordFreq
# -> utilize os elementos extras e detalhes estéticos que julgar necessários


# =================================================
#                     CONSULTA                     
# =================================================

# HISTOGRAMA

# Histograma mínimo
ggplot(data = english, aes(x = RTlexdec)) + 
  geom_histogram() 

# Possíveis elementos extras
ggplot(data = english, aes(RTlexdec)) + 
  geom_histogram(binwidth = 0.005, fill = "lightgray", color = "orange") + 
  labs(title = "Histograma", x = "Tempo de reação (log)", y = "") +
  theme_bw() 

# =================================================

# GRÁFICO DE CAIXAS (boxplot)

# Gráfico de caixas mínimo
ggplot(data = english, aes(x = AgeSubject, y = RTlexdec)) +
  geom_boxplot()

# Possíveis elementos extras
ggplot(data = english, aes(x = AgeSubject, y = RTlexdec, color = WordCategory)) +
  geom_boxplot() +
  geom_violin(fill = "violet", alpha = 0.2, color = "white") +
  stat_summary(color = "blue", size = 1, shape = 4) +
  geom_jitter(alpha = 0.05, color = "darkgreen") +
  facet_grid(~WordCategory) +
  labs(title = "Gráfico de caixas",
       x = "Faixa etária",
       y = "Tempo de reação (log)") +
  scale_x_discrete(labels = c("old" = "velhos", "young" = "novos")) +
  theme_light()

# =================================================

# GRÁFICO DE DISPERSÃO (scatterplot)

# Gráfico de dispersão mínimo
ggplot(data = english, aes(x = WrittenFrequency, y = RTlexdec)) + 
  geom_point()

# Possíveis elementos extras
ggplot(data = english, aes(x = WrittenFrequency, y = RTlexdec, color = AgeSubject)) + 
  geom_point(alpha = 0.3) +
  geom_smooth(method = lm) +
  labs(title = "Gráfico de dispersão", 
       x = "Frequência escrita",
       y = "Tempo de reação (log)") +
  theme_classic()

# =================================================

# Após gerar seus gráficos, faça o upload no link abaixo:
# https://t.ly/y_HkN

original <- read_csv("exemplo.csv")

glimpse(original)

long = original |> 
  pivot_longer(names_to = "teste",
               values_to = "nota",
               cols = testA:testC)

ggplot(data=long,aes(x=teste,y=nota)) +
  stat_summary()

original |> 
  pivot_longer(names_to = "teste",
               values_to = "nota",
               cols = testA:testC) |> 
  ggplot(data=_,aes(x=teste,y=nota)) +
  stat_summary() +
  theme_stf()

wide = long |> 
  pivot_wider(names_from = "teste",
              values_from = "nota",
              ) |> 
  mutate(CmenosB = testC - testB) |> 
  pivot_longer(names_to = "teste",
               values_to = "nota",
               cols = testA:testC)
wide

d = english |> 
  as_tibble() |> 
  select(AgeSubject,RTlexdec)
d

# tempo de reação ~ idade (grupo etário)
ggplot(data=d,aes(x=AgeSubject,y=RTlexdec)) +
  geom_boxplot()

# Prob(AgeSubject = Old) ~ tempo de reação

ggplot(data=d,aes(x=AgeSubject,y=RTlexdec)) +
  geom_boxplot() + 
  coord_flip()

ggplot(data=d |> mutate(Old=if_else(AgeSubject == "old",1,0)),
       aes(x=RTlexdec |> exp(),y=Old))+
  geom_jitter(alpha=.2,height = .1) +
  labs(x="Tempo de reação em ms") +
  geom_smooth(method="lm",color="#a11d21") +
  geom_smooth(method = "glm",color=cores_stf[1],method.args=list(family="binomial")) +
  coord_cartesian(ylim=c(0,1)) +
  theme_stf()

danish |> 
  mutate(across(where(is_character),as_factor))

#

pratica <- read_csv("pratica.csv")
prop <- pratica |>
  select(L1,response) |>
  count(L1, response) |>
  mutate(proptot = prop.table(n),
         across(where(is_character),as_factor))

pacman::p_load(ggalluvial)

ggplot(as.data.frame(prop),
       aes(y = proptot, axis1 = factor(L1
       ), axis2 = factor(response
       ))) +
  geom_alluvium(aes(fill = factor(L1
  )), width = 1/12,alpha=.8,show.legend = FALSE) +
  geom_stratum(width = 1/12, fill = "#006eab", colour = "#000000",alpha=1) +
  geom_label(stat = "stratum") +
  aes(label = after_stat(stratum)) +
  scale_x_discrete(limits = c("Língua 1", "Respostas"),
                   expand = c(.05, .05),
                   labels = c("Língua 1", "Respostas")) +
  scale_fill_manual(values = cores_stf) +
  scale_y_continuous(labels = NULL,
                     name = NULL,
                     breaks = NULL) +
  theme_stf()

ggsave(last_plot(),
       filename="Figuras/diagrama_sankey.jpeg",
       width = 158,
       height = 93,
       units = "mm",
       dpi=800)
