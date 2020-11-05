#Q1 Part 1
morningSectionMarks = scan()
35 47 29 34 26 34 38 45 44 50 37 37 37 37 40 26 29 30 23 38 
32 36 45 39 31 42 41 35 34 43 31 30 37 36 33

afternoonSectionMarks = scan()
39 35 39 39 40 37 42 39 42 40 37 35 38 36 40 35 38 36 39 35 
38 35 39 38 41 39 38 40 38 41 41 37 34 41 37 41 35 39 36 42


boxplot(morningSectionMarks, AfternoonSectionMarks, names = c("Morning", "Afternoon"), main =
          "Midterm Scores of Two Sections of a Stats Class",horizontal = TRUE)

mean(morningSectionMarks)
sd(morningSectionMarks)
median(morningSectionMarks)
mean(afternoonSectionMarks)
sd(AfternoonSectionMarks)
median(AfternoonSectionMarks)

#Q2 Part 1
set.seed(12345)
simvector <- rnorm(200, 10, 2)
summary(simvector)

hist(simvector)
boxplot(simvector, main = "Boxplot of simvector")

IQR(simvector)

#Q3 Part 1
x = c(77, 50, 71, 72, 81, 94, 96, 99, 67)
y = c(82, 66, 78, 34, 47, 85, 99, 99, 68)

plot(x, y, main = "Scatterplot of Midterm and Exam Grades")

cor.test(x, y)


