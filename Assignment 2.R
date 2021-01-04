#Q1
avg_emit = 8  #particles per second
time = 4.5    #seconds

#1a
ppois(25,time*avg_emit)

#1b
ppois(30, time*avg_emit) - ppois(29, time*avg_emit)

#1c
(ppois(34, time*avg_emit) - ppois(31, time*avg_emit)) / (1-ppois(30,time*avg_emit))

#Q2

#2a
1 - pbinom(3, 100, 0.017)

#2b
1 - ppois(3, 1.7)

#Q3

#3a
pnorm(30.7, 28.6, 1.25) - pnorm(27.8, 28.6, 1.25)

#3b
pnorm(29.5, 28.6, 1.25, FALSE)

#3c
(pnorm(30.5, 28.6, 1.25) - pnorm(29, 28.6, 1.25)) / pnorm(29, 28.6, 1.25, FALSE)

#Q4

#4c
pgamma(30, shape = 5, scale = 10, lower.tail = FALSE)

#4d
pgamma(15, shape = 5, scale = 10, lower.tail = TRUE)

#Q5
x = seq(0, 15, by = 1)
y = dbinom(x, 15, 0.3)
plot(x, y, type = "h", 
     main = "Plot of the pmf of a \n Random variable  X~Bin(15,0.3)",
     ylab = "Probabilities")

#Q6
x = seq(0, 30, by = 0.01)
y = pgamma(x, 2, scale = 3)
plot(x, y, type = "l",
     main = "Plot of the pmf of a \n Random Variable X~Gamma(α=2, β=3)")
