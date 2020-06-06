setwd('/Users/sese/Desktop/Data')
result <- read.table('result.csv', header = T, sep = ',')
result <- result[,2:dim(result)[2]]

# # prepare data
# data <- result
# df1 <- result[result$condition == 'dictator_dieroll' & result$type == 'dictator',]
# df2 <- result[result$condition == 'dieroll_dictator' & result$type == 'dieroll',]
# data <- rbind(df1, df2)


# factor the categorical variables
result$var1 = factor(data$var1, 
                   levels = c(1, 2),
                   labels = c('male', 'female'))
data$var2 = factor(data$var2,
                   levels = c(1, 2, 3), 
                   labels = c('Arts', 'Sciences', 'Math'))

# data screening
# accuracy
summary(data)

# missing data (if data is missing showed below the table)
summary(data)

# outliers
mahal = mahalanobis(data[, -c(1,2)], # drop categorical columns
                    colMeans(data[, -c(1,2)], na.rm = T),
                    cov(data[, -c(1,2)], use = 'pairwise.complete.obs'))
summary(mahal)
cutoff = qchisq(1-.001, ncol(data[, -c(1,2)])) # specify alpha
summary(mahal < cutoff)
data[mahal < cutoff, ] # drop outliers

# multicollinearity
correlation = cor(data[, -c(1,2)])
symnum(correlation)

# assumption
random = rchisq(nrow(data), 7) # 7 degrees of freedom
fake = lm(random ~., data = data)
fitted = scale(fake$fitted.values)
standardised = rstudent(fake)

# linearity
qqnorm(standardised)
abline(0,1)

# normality
hist(standardised)

# homog / homos: check whether values between -2 and 2 on y-axis
plot(fitted, standardised)
abline(0,0)
abline(v = 0)

# run the analysis
# set up the analysis
library(reshape)
library(nlme)
data$participant.number = c(1:nrow(data))
data$var1 = scale(data$var1, scale = F) # centering 
data$var2 = scale(data$var2, scale = F) # centering 
datalong = melt(data, 
                id = c('partno', 'gender', 'college'),
                measured = c('dictator', 'dieroll'))

# intercept only model
# gls = generalised least squares
# ML = maximum likelihood
model1 = gls(value ~ 1, 
             data = longdata, 
             method = 'ML', 
             na.action = 'na.omit')
summary(model1)

# random intercept only model
# note we switched to LME function
model2 = lme(value ~1, 
             data = datalong, 
             method = 'ML', 
             na.action = 'na.omit', 
             random = ~1|partno) # 'group' for us? 
summary(model2) # model that controls for participants / groups

anova(model1, model2)

# let's pretend we need to do the MLM (nest the variables)
# let's add predictors
model3 = lme(value ~ gender + college + comp_anx, 
             data = datalong, 
             method = 'ML', 
             na.action = 'na.omit', 
             random = ~1|partno) # 'grou'p' for us? 
summary(model3) # model that controls for participants / groups

tapply(datalong$value, datalong$gender, mean)

 
# random slopes model
model4 = lme(value ~ gender + college + comp_anx, 
             data = datalong, 
             method = 'ML', 
             na.action = 'na.omit', 
             random = ~ comp_anx|partno, 
             control = lmeControl(msMaxIter = 200)) # 'grou'p' for us? 
summary(model4) # model that controls for participants / groups
