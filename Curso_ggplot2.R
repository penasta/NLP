data("english")

str(english)

ggplot(english,aes(x=RTlexdec)) + 
  geom_histogram()

ggplot(english,aes(x=RTlexdec)) + 
  geom_histogram(binwidth = .005)

ggplot(english,aes(x=RTlexdec)) + 
  geom_histogram(binwidth = .01,fill="lightgray")

ggplot(english,aes(x=RTlexdec)) + 
  geom_histogram(bins = 50,fill="lightgray",
                 color = "orange")

ggplot(english,aes(x=RTlexdec)) + 
  geom_histogram(binwidth = .01,
                 fill="lightgray",
                 color = "orange") +
  labs(title = "",
       subtitle = "",
       x = "",
       y = "")

ggplot(english,aes(x=RTlexdec)) + 
  geom_histogram(binwidth = .01,
                 fill="lightgray",
                 color = "orange") +
  labs(title = "",
       subtitle = "",
       x = "",
       y = "") +
  theme_classic()

ggplot(english,aes(x=RTlexdec)) + 
  geom_histogram(binwidth = .01,
                 fill="lightgray",
                 color = "orange") +
  labs(title = "",
       subtitle = "",
       x = "",
       y = "") +
  theme_minimal()

ggplot(english,aes(x=RTlexdec)) + 
  geom_histogram(binwidth = .01,
                 fill="lightgray",
                 color = "orange") +
  labs(title = "",
       subtitle = "",
       x = "",
       y = "") +
  theme_light()

ggplot(english,aes(x=RTlexdec)) + 
  geom_histogram(binwidth = .01,
                 fill="lightgray",
                 color = "orange") +
  labs(title = "",
       subtitle = "",
       x = "",
       y = "")+
  theme_dark()

# boxplot

ggplot(english,aes(x=AgeSubject,y=RTlexdec)) +
  geom_boxplot()

ggplot(english,aes(x=AgeSubject,y=RTlexdec)) +
  geom_boxplot() +
  stat_summary(color="blue",size=.1,shape=1)

ggplot(english,aes(x=AgeSubject,y=RTlexdec,
                   color = CV)) +
  geom_boxplot() +
#  stat_summary(color="blue",size=.1,shape=5) +
  labs(title="",
       subtitle = "",
       x = "",
       y = "") +
#  geom_jitter(alpha = .05,color = "orange") +
  scale_x_discrete(labels = c("old" = "velhos",
                              "young" = "novos")) +
  facet_grid(CV~WordCategory)


# Violino

ggplot(english,aes(y=RTlexdec,x=AgeSubject)) +
  geom_boxplot() +
  geom_violin(fill="violet",color="white") +
  theme_classic()

# Gráfico de dispersão

ggplot(english,aes(y=RTlexdec,x=WrittenFrequency)) +
  geom_point()

ggplot(english,aes(y=RTlexdec,x=WrittenFrequency)) +
  geom_point(alpha=.15,colour="pink") +
  geom_smooth(method=lm)
