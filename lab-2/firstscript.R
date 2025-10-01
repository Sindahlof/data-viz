library(dplyr)
library(ggplot2)

numbers <- data.frame("x"= runif(n=100,min=1,max=2000),"y" = runif(n=100,min=1,max=2000))

print(ggplot(numbers, aes(x = x, y = y)) +
  geom_point())
