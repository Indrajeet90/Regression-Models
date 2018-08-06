# slope of the regression line is the correlation between the two sets of heights (x and y)
# multiplied by the ratio of the standard deviations (outcomes to predictors)

# correlation between normalized galton parent and child data
cor(gpa_nor,gch_nor)
#  generating regression line using normlized data
l_nor <- lm(gch_nor~gpa_nor)
