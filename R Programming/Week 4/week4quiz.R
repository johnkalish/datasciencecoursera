#Question 1
set.seed(1)
rpois(5,2)
# 1 1 2 4 1


#Question 8
library(datasets)
Rprof()
fit <- lm(y ~ x1 + x2)
Rprof(NULL)

summaryRprof()