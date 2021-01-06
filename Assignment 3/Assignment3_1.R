#Question 1
tomato_Soup_Sodium = c(510, 520, 515, 516, 517, 519, 522, 513)

#1a
t.test(tomato_Soup_Sodium, conf.level = 0.96)

#1b
#Since 515 is between our confidence interval (513.0374, 519.9626)
#it is a reasonable estimate for the true mean sodium content (μ).

#Question 2
concrete_Slab_Compressive_Strength = c(35.1, 34.4, 35.8, 36.1, 37.7)

#2a
t.test(concrete_Slab_Compressive_Strength, mu = 35, alternative = "greater")

#2b
#The observed values of the test statistic is t = 1.479.

#2c
#The p-value of our test is p-value = 0.1066

#2d
#If we test at a significance level of α = 0.01 we can conclude that
#the mean concrete slab compressive strength is less than or equal to 35N/mm²

#Question 3
brand1 = c(580, 592, 588, 589, 581)
brand2 = c(579, 582, 577, 591, 583)

#3a
sd(brand1)
sd(brand2)
sd(brand2) / sd(brand1)
#We should use pooled procedures for this data because 
#[sd(brand2) / sd(brand1)] = 1.023363 < 1.4.

#3b
t.test(brand1, brand2, mu = 0, alternative = "two.sided", var.equal = TRUE)

#3c
#The p-values = 0.3146.

#3d
#Because the p-values is greater than 0.1 there is little to no sufficient evidence against H₀.

#Question 4
x1 = c(130,103,116,113,124,122,128,124,123,108,134,108,111,129,134) # for Pre
x2 = c(134,106,110,115,122,126,130,118,125,110,138,111,115,125,130) # for Post

t.test(x1, x2, mu = 0, alt = "two.sided", paired = TRUE, conf.level = 0.95)
#4a
#The 95% confidence interval for the true mean of the difference in blood pressures 
#is (-2.635481, 1.568815)

#4b
#Command: t.test(x1, x2, mu = 0, alt = "two.sided", paired = TRUE, conf.level = 0.95)
#The P-value is greater than alpha so we failed to reject the null hypothesis. 
#Hence, there is not any effect of the experimental drug on blood pressure.

#4c
#The observed value of the test statistic is -0.54415

#4d
#the distribution of the test statistic under H₀ isa t-distribution with 14 degrees of freedom.

#4c
#The P-values for our test is 0.5949




