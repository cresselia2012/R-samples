# read
data <- read.csv("~/Projects/blog/R-samples/data.csv")
data

# generate y and X
y <- data[,1]
X <- matrix(NA, 5, 3)
for (i in 1:length(data)-1) {
	X[,i] <- data[,i+1]
}

# linear regression
# y = a1 x1 + a2 x2 + a3 x3 + b
result <- lm(y~X)

# summary of result
summary(result)

# coefficients
coefficients(result)

# AIC
AIC(result)

# stepwise method
step(result)
