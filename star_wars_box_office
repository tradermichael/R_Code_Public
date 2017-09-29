# Matrix that contains the first trilogy box office
star_wars_matrix  

# Matrix that contains the second trilogy box office
star_wars_matrix2 

# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)   

#Adding in Box-office sums (non-us, us) for movies - long step-by-step route

rsumsswm1 <- (rowSums(star_wars_matrix))
rsumsswm2 <- (rowSums(star_wars_matrix2))


sumstarwars1 <- cbind(star_wars_matrix, rsumsswm1)
sumstarwars2 <- cbind(star_wars_matrix2, rsumsswm2)

all_wars_matrix_totals <- rbind(sumstarwars1, sumstarwars2 )

all_wars_matrix_totals

# or we can build a vector for the sum, and then attach to all_wars_matrix for a total box office figure

rsums_new <- c(rsumsswm1, rsumsswm2)

cbind(all_wars_matrix, rsums_new)
