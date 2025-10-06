library(tidyverse)

data("mtcars")

mtcars <- mtcars %>%
  mutate(kmpl= round((mpg*1.60934)/3.78541)) %>%
  mutate(kmpl_cat=if_else(kmpl<8.5,"low","high"))

ggplot(mtcars) + geom_line(mapping = aes(x =hp,y=kmpl),color="red") + xlab("horsepower") + ylab("kilometers per liter")

ggplot(mtcars) + geom_line(mapping = aes(x =hp,y=kmpl),color="#AA1111") + xlab("horsepower") + ylab("kilometers per liter")

ggplot(mtcars) + geom_line(mapping = aes(x =hp,y=kmpl),color=rgb(0,0,0,1)) + xlab("horsepower") + ylab("kilometers per liter")

ggplot(mtcars) + geom_point(mapping = aes(x =hp,y=kmpl,color=kmpl_cat)) + xlab("horsepower") + ylab("kilometers per liter") + scale_color_manual(values=c("low"="red","high"="green"))

ggplot(mtcars) + geom_point(mapping = aes(x =hp,y=kmpl,color=kmpl_cat)) + scale_color_manual(values=c("low"="red","high"="green")) + scale_y_continuous(limits =  c(0,12),breaks=seq(0,12,1)) + scale_x_continuous(limits =c(-10,335),breaks=seq(0,335,50)) + xlab("horsepower") + ylab("kilometers per liter")

var <- ggplot(mtcars) + geom_line(mapping = aes(x =hp,y=kmpl),color="red") + xlab("horsepower") + ylab("kilometers per liter")

