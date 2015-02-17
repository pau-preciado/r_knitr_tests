library(ProjectTemplate)
library(knitr)
opts_knit$set(root.dir='..')
load.project()

#ex0828

p1 <- ggplot(income.iq, aes(y = Income2005, x = AFQT,
                      color = Gender)) +
     geom_point(size = 3, alpha = 0.7)

p2 <- ggplot(income.iq, aes(y = Income2005, x = Educ,
                             color = Gender)) +
      geom_point(size = 3, alpha = 0.7)

p3 <- ggplot(income.iq, aes(x = log(Income2005), y = ..density..,
                             fill = Gender)) +
      geom_histogram(alpha = 0.7, color = 0)


p4 <- ggplot(income.iq, aes(y = Educ, x = Gender,
                             fill = Gender)) +
      geom_boxplot()

grid.arrange(p1, p2, p3, p4)

t1 <- income.iq %>% 
     group_by(sex) %>%
     summarise(n = n(),
               v1 = min(income),
               v2 = quantile(income, .25),
               v3 =  quantile(income, .5),
               v4 = quantile(income, .25),
               v5 = max(income)
     ) %>%
     ungroup()

t1
