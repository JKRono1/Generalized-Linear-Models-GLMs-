rm(list=ls())
install.packages("tidyverse",dependencies = T)
library(readr)
Book1 <- read_csv("C:/Users/USER/Desktop/Book1.csv")
View(Book1)
data<-Book1

## FITTING THE LOGISTIC REGRESSION MODEL

model1<-glm(data$CHD~data$AGE+factor(data$AGEGRP),data = data,family = binomial);model1
summary(model1) ## for more complete model results
Odds_ratio<-exp(coef(model1));Odds_ratio### exponentiated coefficients gives the odds ratio


