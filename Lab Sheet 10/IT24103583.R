setwd("C:\\Users\\Raviru\\OneDrive\\Desktop\\IT24103583")

# Chi-square goodness-of-fit test

# Observed counts
observed <- c(120, 95, 85, 100)

# Expected probabilities (equal)
expected_prob <- rep(1/4, 4)

# Perform chi-square test
test_result <- chisq.test(observed, p = expected_prob)

# Display results
print(test_result)
