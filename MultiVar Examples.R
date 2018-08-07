# generate the linear model
all <- lm(Fertility ~., data = swiss)
summary(all)

summary(lm(Fertility ~Agriculture, data = swiss))
cor(swiss$Examination,swiss$Education)
cor(swiss$Agriculture,swiss$Education)

makelms()
ec <- swiss$Examination + swiss$Catholic

efit <- lm(Fertility ~ . + ec, data =  swiss)
all$coefficients - efit$coefficients
