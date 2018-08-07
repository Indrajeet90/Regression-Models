# creating regressor object
ones  <- rep(1, nrow(galton)) 
# substituting our regressor 1
lm(child ~ ones + parent -1, galton)
lm(child ~ parent, galton)
# The regression in one variable given by lm(child ~ parent, galton) really involves two
# regressors, the variable, parent, and a regressor of all ones.if wesubtract the mean from 
# each variable, the regression line goes through the origin, x=0, y=0,hence its intercept is 0.

# The mean of a variable is the coefficient of its regression against the constant, 1
lm(child ~ 1, galton)

# predict the Volume of timber which a tree might produce from measurements of its Height and Girth
head(trees)  # data from datasets package
fit <-lm(Volume ~ Girth + Height + Constant -1, trees)
trees2 <- eliminate("Girth", trees)
head(trees2)
fit2 <- lm(Volume ~ Height + Constant -1, trees2)
# compare coeffcients of two models
lapply(list(fit, fit2), coef)
