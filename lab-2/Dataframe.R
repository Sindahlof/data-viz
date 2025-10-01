
x1 <- c(sample(0:100, 100, TRUE))
x2 <- c(sample(0:100, 100, TRUE))
x3 <- c(sample(0:100, 100, TRUE))

T <- data.frame(a=x1,b=x1+x2,c=x1+x2+x3)

plot(T)

plot(T$a, type="l", ylim=range(T), lwd=3, col=rgb(1, 0, 0, 0.3)) 
lines(T$b, type="s", lwd=2, col=rgb(0.3, 0.4, 0.3, 0.9)) 
points(T$c, pch=20, cex=4, col=rgb(0, 0, 1, 0.3)

