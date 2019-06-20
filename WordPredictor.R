library(tm)
library(dplyr)

source("./Cleaner.R")

pred_table_uni <- readRDS(file="./pred_uni.RDS")
pred_table_bi <- readRDS(file="./pred_bi.RDS")
pred_table_tri <- readRDS(file="./pred_tri.RDS")
pred_table_four <- readRDS(file="./pred_four.RDS")

# Prediction Functions

pred_four <- function(tri, df_f) {
    ret <- head(df_f %>% filter(pred == tri))
    ret_val <- c()
    if (nrow(ret) > 0) {
        for (i in 1:nrow(ret)) {
            ret_val <- c(ret_val, ret[i,'w'])   
        }
    }
    ret_val
}

pred_three <- function(bi, df_t) {
    ret <- head(df_t %>% filter(pred == bi))
    ret_val <- c()
    if (nrow(ret) > 0) {
        for (i in 1:nrow(ret)) {
            ret_val <- c(ret_val, ret[i,'w'])   
        }
    }
    ret_val
}

pred_two <- function(uni, df_b) {
    ret <- head(df_b %>% filter(pred == uni))
    ret_val <- c()
    if (nrow(ret) > 0) {
        for (i in 1:nrow(ret)) {
            ret_val <- c(ret_val, ret[i,'w'])   
        }  
    }
    ret_val
}


word_predict <- function(words, pd_uni, pd_bi, pd_tri, pd_four) {
    words <- clean_input(words)
    n <- length(words)
    return_list <- c()
    

    if (n >= 3) {
        user_tri <- paste(words[length(words)-2], words[length(words)-1], words[length(words)], sep=" ")
        return_list <- pred_four(user_tri, pd_four)
    }
    
    if (n >= 2 & length(return_list) < 3) {
        user_bi <- paste(words[length(words)-1], words[length(words)], sep=" ")
        return_list <- unique(c(return_list, pred_three(user_bi, pd_tri)))
    }
    
    
    if (n >= 1 & length(return_list) < 3) {
        user_uni <- words[length(words)]
        return_list <- unique(c(return_list, pred_two(user_uni, pd_bi)))
    }
    
    
    if (n == 0 | length(return_list) < 3) {
        return_list <- c(return_list, pd_uni[1]$w, pd_uni[2]$w, pd_uni[3]$w)
    }
    
   unlist(return_list[1:3])
}

