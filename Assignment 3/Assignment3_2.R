# Source: lab notes by Dr. Mary Lesperance


# We demonstrate the Central Limit Theorem using simulations of sums of Uniform random variables.

# Define a function to simulate <repeats> replications 
# simulating <size> number of random variables in the mean.
# Return a vector of length <repeats>


# Run these code by selecting the code from the next line to the line before # end of code for question 5.

Usim <- function(repeats, size){
  v <- rexp(size*repeats)               #generate size*repeats from Uniform(0,1)
  w <- matrix(v,nrow=size,ncol=repeats)  #Put v in a matrix with size rows and repeats cols
  return(colMeans(w))  #Sum the columns
}


set.seed(12345)  # Make simulation random but reproducible

U1 <- Usim(10000,1)   #size 1
head(U1)

U2 <- Usim(10000,10)   #size 10
head(U2)

U3 <- Usim(10000,30)   #size 30
head(U3)

U4 <- Usim(10000,50)  #size 50
head(U4)     # sums of 20 U(0,1) random observations
length(U4)   #check the length, should be 10000

# Draw histograms of the 4 vectors.
#  look up the help file for the function layout

layout(matrix(c(1,2,3,4),nrow=2,ncol=2,byrow=TRUE))  

hist(U1,prob=TRUE,ann=FALSE)   #ann=FALSE turns off annotation
title("n = 1")

hist(U2,prob=TRUE,ann=FALSE) 
title("n = 10")

hist(U3,prob=TRUE,ann=FALSE) 
title("n = 30")

hist(U4,prob=TRUE,ann=FALSE) 
title("n = 50")

layout(1)

# end of code for question 5


# End of first block of R code.


# Confidence Interval demonstration

# 1. Take a random sample of n = 100 observation from N(0,1)
# 2. Compute a 95% confidence interval
# 3. Repeat 1 and 2 1000 times
# 4. Count how many confidence intervals contain mu = 0.


# Run these code by selecting the code from the next line to the line before # end of code for question 5.

set.seed(12345)  # Make simulation random but reproducible

CI <- c(0,0)
count1 <- 0

for (i in 1:1000){
  x <- rnorm(100)
  CI[1] <- mean(x) - qnorm(0.955555)/10      # compute lower confidence limit
  CI[2] <- mean(x) + qnorm(0.955555)/10      # compute upper confidence limit
  if(CI[1] <= 0 & CI[2] >= 0) {           # check if true mean is inside the confidence interval
    count1 <- count1 + 1
  }
}

count1

cat("Percentage of confidence intervals containing mu = ", count1/10, "\n")

# end of code for question 6

#Percentage of confidence intervals containing mu: 90
#0.955555 (qnorm(0.955555)) was used to replace the two lines with command "qnorm(0.975)"



