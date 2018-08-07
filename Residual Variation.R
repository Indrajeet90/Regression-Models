# create regression line
fit <- lm(child ~ parent, data = galton)
# estimating the standard deviation(sigma) of the error
sqrt(sum(fit$residuals^2) / (n - 2))
summary(fit)$sigma
sqrt(deviance(fit)/(n-2))

## Total Variation = Residual Variation + Regression Variation

mu <- mean(galton$child) #mean of the children's heights
sTot <- sum((galton$child-mu)^2) # sum of the squares of the centered children's heights
sRes <- deviance(fit)
R2 <- 1- sRes/sTot
summary(fit)$r.squared
cor(galton$child, galton$parent)^2  # square of the correlation of the galton data

# R^2 is the percentage of variation explained by the regression model. As a percentage it is
# between 0 and 1. It also equals the sample correlation squared.