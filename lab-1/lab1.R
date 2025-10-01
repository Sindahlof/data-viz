x <- 5
y <- 8

z <- x+y

numb <- c(1,2,3,4,5)

mean <- mean(numb)



age <- c(45,28,69,26,23)
name <- c("mads","frederik","joakim","oliver","jacob")
overunder30 <-c(1,0,1,0,0)
data <- data.frame(age,name,overunder30)


random_number <- c(rnorm(15))

random_number_withsdandmean <- c(rnorm(8,mean=5,sd=2))

plot(random_number)

plot(random_number_withsdandmean)
