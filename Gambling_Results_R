#Days you spent gambling in las vegas 

days <- 5

# Poker winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday:
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
# Give names to both 'poker_vector' and 'roulette_vector'
names(poker_vector) <-(c(1:length(poker_vector)))
names(poker_vector) <- paste("Day_",names(poker_vector))
poker_vector

names(roulette_vector) <-(c(1:length(roulette_vector)))
names(roulette_vector) <- paste("Day_",names(roulette_vector))
roulette_vector

# Up to you now:
total_daily <- poker_vector + roulette_vector

sapply(total_daily,sum)

trailing_days <- c(1:days)

for(i in 1:length(total_daily)) {

total_trailing <- sum(total_daily[1:i])

if(total_trailing>0) {

print(paste("From day 1 to day", i,"You won", total_trailing))
}
else {
print(paste("From day 1 to day", i,"You loss", total_trailing))
}
trailing_days[i] <- total_trailing
}
trailing_days <- as.integer(trailing_days)

trailing_days


print(paste("You should have stopped after day",which(grepl(max(trailing_days),trailing_days)),"where you max earnings would have been",max(trailing_days), "dollars, but since you stayed, you made less in 5 days, equal to", trailing_days[days], "dollars"))


