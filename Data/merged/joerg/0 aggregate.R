setwd('~/Documents/Lecturer/projects/(NE) norms and environments/analysis/data/')

data <- read.table('data_merged.csv', header=T, sep=';')

names <- colnames(data)
rf_names <- names[grepl('blue_choice', names)]
partner_names <- names[grepl('select', names)]
dieroll_names <- names[grepl('die_roll', names)]
dictator_names <- names[grepl('dictator_choice', names)]

result <- expand.grid(group = 1:4, subject = 1:4, round = 1:30, role = NA, rulefollowing = NA, selected = NA, type = NA, decision = NA)
result$role <- ifelse(result$subject == 4, 'selector', 'decider')
result$type <- ifelse(result$round <= 15, 'dictator', 'dieroll')



# 0 stage 1 - rule following

# rows
for(r in 1:dim(data)[1]) {

    s <- data[r,3]
    g <- data[r,2]
    
    # round
    for(j in 1:30) {
        
        rf <- data[r,names(data) %in% rf_names[grepl(paste('thesis.', j, '.player', sep=''), rf_names)]]
        rf <- rf[,grepl(paste('blue_choice', s, sep=''), names(rf))]
            
        blue <- rowSums(rf)
        result$rulefollowing[result$group == g & result$subject == s & result$round == j] <- blue
    }
}

# end


# 0 stage 2 - selection 

# rows
for(r in 1:dim(data)[1]) {

    s <- data[r,3]
    g <- data[r,2]

    # round
    if(s == 4) {
        for(j in 1:30) {
            partner <- data[r,names(data) %in% partner_names[grepl(paste('thesis.', j, '.group', sep=''), partner_names)]]
            
            for(p in 1:3) {
                result$selected[result$group == g & result$subject == p & result$round == j] <- unlist(partner[p])
            }
        }
    }
}

# end


# 0 stage 3 - dictator decisions

for(r in 1:dim(data)[1]) {

    s <- data[r,3]
    g <- data[r,2]
    
    # round
    for(j in 1:30) {
        
        dictator <- data[r,names(data) %in% dictator_names[grepl(paste('thesis.', j, '.group', sep=''), dictator_names)]]
        dictator <- dictator[,1:3]
        
        for(p in 1:3) {
            result$decision[result$group == g & result$subject == p & result$round == j & result$type == 'dictator'] <- unlist(dictator[p])
        }
    }
}

result$decision[result$type == 'dictator'] <- 11 + result$decision[result$type == 'dictator'] * -0.02

# end


# 0 stage 3 - dierolling decisions

for(r in 1:dim(data)[1]) {

    s <- data[r,3]
    g <- data[r,2]
    
    # round
    for(j in 1:30) {
        
        dieroll <- data[r,names(data) %in% dieroll_names[grepl(paste('thesis.', j, '.group', sep=''), dieroll_names)]]
        
        for(p in 1:3) {
            result$decision[result$group == g & result$subject == p & result$round == j & result$type == 'dieroll'] <- unlist(dieroll[p])
        }
    }
}

# end



cor(result$rulefollowing[result$type == 'dictator'], result$selected[result$type == 'dictator'], use='pairwise.complete')
cor(result$rulefollowing[result$type == 'dieroll'], result$selected[result$type == 'dieroll'], use='pairwise.complete')

mean(result$rulefollowing[result$type == 'dieroll'], na.rm=T)
mean(result$rulefollowing[result$type == 'dictator'], na.rm=T)

round(prop.table(table(result$rulefollowing)),2)
round(prop.table(table(result$selected)),2)




