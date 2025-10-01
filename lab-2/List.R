library(dplyr)

familiy <- list("Mom" = "Susi","Dad" = "Brian", "Child name(S)"=c("Frederik","Oliver"), "Child age(s)" = c(25,27))

names(familiy)
length(familiy)

familiy["Mom"] <- "Helle" 
familiy["Pets"] <- c("Luna")
familiy["Pet age"] <-c(12)

