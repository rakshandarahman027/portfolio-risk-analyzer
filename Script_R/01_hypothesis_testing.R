data <- read.csv("../data/r_testing_data.csv")
getwd()
setwd("~/Desktop/Portfolio_Project")
data <- read.csv("data/r_testing_data.csv")
print("Data loaded!")
print(colnames(data))
# One-sample t-test: Test if portfolio returns > 0
t_test <- t.test(data$Portfolio_Return, mu = 0, alternative = "greater")
print(t_test)
t_test <- t.test(data$Portfolio_Return, mu = 0, alternative = "greater")
print(t_test)
# Paired t-test: Portfolio vs SPY
t_test2 <- t.test(data$Portfolio_Return, data$SPY_Return, paired = TRUE, alternative = "greater")
print(t_test2)
t_test2 <- t.test(data$Portfolio_Return, data$SPY_Return, paired = TRUE, alternative = "greater")
print(t_test2)
# F-test: Is portfolio less volatile than SPY?
var_test <- var.test(data$Portfolio_Return, data$SPY_Return, alternative = "less")
print(var_test)
# Create summary table
results <- data.frame(
  Test = c("Beat Cash (0%)", "Beat Market (SPY)", "Less Risky than SPY"),
  p_value = c(0.0057, 0.4646, 0.9985),
  Significant = c("YES", "NO", "NO"),
  Conclusion = c("Statistically beats cash", "No evidence beats market", "Actually riskier than market")
)
print(results)
write.csv(results, "data/statistical_results.csv", row.names = FALSE)
