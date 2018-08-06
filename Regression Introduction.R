# Galton data is from packae UsingR
plot(child ~ parent, galton)
# Adding jitter
plot(jitter(child,4) ~ parent,galton)
# Generating regression line
regrline <- lm(child ~ parent, galton)
abline(regrline, lwd=3, col='red') #add the regression line to the plot
summary(regrline)

# A coefficient will be within 2 standard errors of its estimate about 95% of the time. This 
# means the slope of our regression is significantly different than either 0 or 1 since (.64629)
# +/- (2*.04114) is near neither 0 nor 1.

