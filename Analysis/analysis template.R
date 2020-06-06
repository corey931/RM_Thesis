setwd('/Users/sese/Desktop/Data')
result <- read.table('result.csv', header = T, sep = ',')
result <- result[,2:dim(result)[2]]



# 0 modify data

for(r in 1:dim(result)[1]) {
  
  s <- result[r,3]
  g <- result[r,1]
  
  # round
  for(j in 1:30) {
    num <- (g*4)-4+s
    result$id[result$group == g & result$subject == s & result$round == j] <- num
    
  }
}

result$condition <- ifelse(result$condition == 'dictator_dieroll', 'first', 'second')
coln <- colnames(result)
result <- result[c('id', coln[1:20])]

library(openxlsx)
write.xlsx(result, 'analysis.xlsx')
write.csv(result, 'analysis.csv')

# end


# 0 DESCRIPTIVES

mean(result$age)
sd(result$age)


# 0 MULTILEVEL MODELS

library(lme4)

# random intercept model
model1 <- lm(rulefollowing~1+round+type*condition, result)
summary(model1)
confint(model1)

library(merTools)
ICC <- ICC(outcome='rulefollowing', group='group/subject', result=result)

# unconditional growth model 
model1 <- lmer(rulefollowing~1+(1|group/subject),REML = T, result)

# adding fixed effects
model2 <- lmer(rulefollowing~1+type+condition+svo_class+(1|group/subject), REML = T, result)
model2 <- lmer(rulefollowing~1+type+condition+round+(1|group/subject), REML = T, result)


# adding interactions of fixed effects
model3 <- lmer(rulefollowing~1+round+type*condition+(1|group/subject), REML = T, result)
model3_cov <- lmer(rulefollowing~1+round+type*condition+svo_angle+(1|group/subject), REML = T, result)

# alternative comparison
# model 2 with random effects
coef(model1)
coef(model2)
coef(model3)

# inspect model fit
plot(ranef(model2)) # should show symmetrical spread around 0
plot(model2) # check homoscedasticity (standardised residuals by fitted values)
plot(ranef(model3))
plot(model3)

# choose model
anova(model1,model2)
anova(model1,model3)
anova(model2,model3)

# end


# Model
library(lme4)
model <- lmer(rulefollowing ~ 1 + type*condition + selected + round + (1 | group/subject), 
              REML = T, 
              data = result)
summary(model)
confint(model)

# inspect model fit
plot(ranef(model)) # should show symmetrical spread around 0
plot(model) # check homoscedasticity (standardised residuals by fitted values)





# Bayesian regression

bay1 <- bas.lm(rulefollowing~1+round*type*round*condition+(1+round|group/subject),
               data = result,
               method = 'MCMC',
               prior = 'ZS-null',
               modelprior = uniform())

library(rstanarm)
bay1 <- stan_lmer(rulefollowing~1+round*type+round*condition+(1+round|group/subject),
                  data = result,
                  prior = normal(location = 0, scale = 100, autoscale = F),
                  prior_intercept = normal(location = 0, scale = 100, autoscale = F),
                  seed = 349)

bay1
prior_summary(bay1)

# end


