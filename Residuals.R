#Generate the regression line
fit <- lm(child ~ parent, data = galton)
# displaying the regression data
summary(fit)
mean(fit$residuals) # should be 0

#correlation between the residuals and the predictors
cov(fit$residuals,galton$parent) # should be close to 0

# Extracting the intercept from regresson model
ols.ic <- fit$coef[1]
# Extracting the slope from regresson model
ols.slope <- fit$coef[2]

# variance in the children's heights 
varChild <- var(galton$child)
# variance in the residuals 
varRes <- var(fit$residuals)
# variance in the estimates
varEst <- var(est(ols.slope,ols.ic))

# checking if variance in children's height(y) is equal to the sum of var in residuals & estimates
all.equal(varChild, varRes + varEst)
# var(data)=var(estimate)+var(residuals) shows that the variance of the
# estimate is ALWAYS less than the variance of the data


# Accelerations are estimated based on two predictors, distance and magnitude for attenu data
efit <- lm(accel ~ mag+dist, attenu)  # regression line
mean(efit$residuals)
cov(efit$residuals, attenu$mag)
cov(efit$residuals, attenu$dist)