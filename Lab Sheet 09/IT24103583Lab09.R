setwd("C:\\Users\\Raviru\\Desktop\\IT24103583Lab09\\")

#i
set.seed(123)
sample_data <- rnorm(25, mean = 45, sd = 2)
sample_data

#ii
t.test(sample_data, mu = 46, alternative = "less")
