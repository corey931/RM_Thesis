rm(list = ls())
library(dplyr)
library(xlsx)
setwd("/Users/sese/Desktop/Data/merged/original")
getwd()


d1 = read.csv("data_merged.csv", header = T, sep = ';')
d2 = read.xlsx("data_original_cleaned.xlsx", sheet = 1, startRow = 1, colNames = TRUE)

missing = setdiff(colnames(d2), colnames(d1))
d1[missing] = NA
missing = setdiff(colnames(d1), colnames(d2))
d2[missing] = NA


merged = rbind(d2, d1)

# remove and add vars
merged <- merged[which(merged$participant._index_in_pages==1657),]

# for (i.round in 1:30){
#   create.variable = c(paste("round", i.round, sep = ""))
#   merged[create.variable] = i.round
# }

merged = cbind(group.number = NA, merged)
counter = 0
for (i.row in 1:nrow(merged)){
  if (merged[i.row,]$participant.id_in_session == 1){
    counter = counter + 1 
  }
  merged[i.row,]$group.number = counter
}

merged = cbind(participant.number = NA, merged)
for (i.row in 1:nrow(merged)){
  merged[i.row,]$participant.number = i.row
}

write.csv(merged, file = 'data_merged.csv')
write.xlsx(merged, file = 'data_merged.xlsx')

# ###############################################
# ###          3. SELECT VARIABLES            ###
# ###############################################
# # save static columns
# columns.constants = c("participant.number", "group.number", "participant.id_in_session", "participant.time_started", "participant.payoff")
# 
# # save columns that vary
# columns.vary = ""
# 
# for (i.round in 1:30){
#   for (i.player in 1:3){
#     
#     # thesis.round.player.yellow_choice/blue_choice
#     for (i.ball in 1:9) {
#       columns.vary = c(columns.vary, paste("thesis.", i.round, ".player.yellow_choice", i.player, "0", i.ball, sep = ""))
#     }
#     for (i.ball in 10:15){
#       columns.vary = c(columns.vary, paste("thesis.", i.round, ".player.yellow_choice", i.player, i.ball, sep = ""))
#     }
# 
#     # thesis.round.group.select[pp.nr], die_roll, dictator_choice
#     columns.vary = c(columns.vary, paste("thesis.", i.round, ".group.select", i.player, sep = ""))
#     columns.vary = c(columns.vary, paste("thesis.", i.round, ".group.die_roll", i.player, sep = ""))
#     columns.vary = c(columns.vary, paste("thesis.", i.round, ".group.dictator_choice", i.player, "1", sep = ""))
#     columns.vary = c(columns.vary, paste("thesis.", i.round, ".group.dictator_choice", i.player, "2", sep = ""))
#     columns.vary = c(columns.vary, paste("thesis.", i.round, ".group.payoff_rf", i.player, sep = ""))
#     
#   }
# }
# 
# # SVO
# for (i.slider in 1:6){
#   columns.vary = c(columns.vary, paste("svotree.1.player.slider", i.slider, sep = ""))
#   
# }
# columns.vary = c(columns.vary, "svotree.1.player.slider_angle", "svotree.1.player.slider_classification")
# 
# # remove first empty entry
# columns.vary = columns.vary[2:length(columns.vary)]
# 
# 
# ###############################################
# ###     4. MERGE AND SAVE CLEAN DATA        ###
# ###############################################
# # install.packages("magrittr")
# merged.selected = select(merged, columns.constants, columns.vary)
# 
# # save selected variables
# write.xlsx2(merged.selected, file = 'data_selected.xlsx')
# 
# 
# ###############################################
# ###          5. RESHAPE VARIABLES           ###
# ###############################################
# merged.cleaned = merged.selected
# 
# # reshape columns for yellow and blue bucket
# for (i.round in 1:30){
#   old_var = 
#   old_var = paste("thesis.", i.round, sep = "")
#   
#   for (i.player in 1:3){
#     old_var = paste(old_var, ".player.yellow_choice", sep = "")
#     
#     for (i.ball in 1:15){
#     old_var = paste(old_var, i.player, i.ball)
#     old_var_round = as.integer(substr(old_var, 8, 8))
#     old_var_player = as.integer(substr(old_var, 30, 30))
#     old_var_ball = as.integer(substr(old_var, 31, 32))
#     
#     if (!is.na(merged.cleaned[old_var_player, old_var])){
#       new_var = paste("yellow_choice", old_var_round, old_var_ball, sep = "")
#       merged.cleaned[new_var] = NA
#       merged.cleaned[old_var_player, new_var] = merged.cleaned[old_var_player, old_var]
#       
#     }
#     }
#   }  
# }
# 
# # columns.new = ""
# # for (i.round in 1:30){
# #   for (i.ball in 1:15){
# #     # create buckets
# #     bucket_yellow = c(paste("yellow_choice", i.ball, i.round, sep = ""))
# #     merged.reshaped[bucket_yellow] = NA
# #   }
# #   # move values
# #   for (i.player in 1:3){
# #     if (i.round < 10){
# #       old_var = c(paste("thesis.", i.round ,".player.yellow_choice", i.player ,"0", i.ball, sep = ""))
# #       new_var = c(paste("yellow_choice", i.player , i.round))
# #       merged.reshaped[i.player,] = merged.reshaped[]
# #     }
# #     
# #   }
#   
#     # for (i.player in 1:3){
#     #   old_var = c(paste("thesis.", i.round, ".player.yellow_choice", i.player, "0", i.ball, sep = ""))
#     #   new_var = c(paste(i.round, ".yellow_choice.", i.ball, sep = ""))
#     #   old_var_substr = substr(old_var, 31, 31)
#     # 
#     #   if (i.player == old_var_substr){
#     #     # if row of player == player number (from var), overwrite row of player
#     #     merged.reshaped[old_var_substr,]$new_var = old_var
#     #   }
#     # }
# # }
# # save reshaped variables
# write.xlsx2(merged.cleaned, file = 'data_reshaped.xlsx')
# 
# 
# ###############################################
# ###   6. CONVERT FROM WIDE TO LONG FORMAT   ###
# ###############################################
# # participant.id_in_group as factor
# 
# # dat <- reshape(dat, varying=c("measure.1", "measure.2", "measure.3"), 
# #                idvar="subject.id", direction="long")
# # convert
# # melt(merged, measure.vars = c("year2011", "year2012", "year2013"))
# 
# # install.packages("tidyr")
# # library(tidyr)
# # library(reshape2)
# # data_long <- melt(merged.selected, id.vars = c("participant.id_in_session"))
# 
# 
# 
# 
