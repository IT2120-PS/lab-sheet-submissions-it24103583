setwd("C:\\Users\\raviru\\OneDrive\\Desktop\\IT24103583")


laptop_bag_weights <- c(2.1, 2.3, 1.9, 2.5, 2.2, 2.7, 2.4, 2.0, 2.6, 2.8)

pop_mean <- mean(laptop_bag_weights)
pop_sd <- sd(laptop_bag_weights) * sqrt((length(laptop_bag_weights) - 1) / length(laptop_bag_weights)) 

cat("Population Mean:", pop_mean, "\n")
cat("Population Standard Deviation:", pop_sd, "\n")

# 2.
set.seed(123) 
n_samples <- 25
sample_size <- 6

sample_means <- numeric(n_samples)
sample_sds <- numeric(n_samples)

for (i in 1:n_samples) {
  sample_i <- sample(laptop_bag_weights, sample_size, replace = TRUE)
  sample_means[i] <- mean(sample_i)
  sample_sds[i] <- sd(sample_i)
  
  cat("Sample", i, ": Mean =", sample_means[i], ", SD =", sample_sds[i], "\n")
}


# 3

mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

cat("\nMean of 25 Sample Means:", mean_of_sample_means, "\n")
cat("SD of 25 Sample Means:", sd_of_sample_means, "\n")


cat("\n--- Relationship ---\n")
cat("Mean of sample means ≈ Population mean\n")
cat("SD of sample means ≈ Population SD / sqrt(sample size)\n")
cat("Population SD / sqrt(n) =", pop_sd / sqrt(sample_size), "\n")
