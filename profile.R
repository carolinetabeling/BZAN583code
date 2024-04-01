Rprof()
start <- Sys.time()

set.seed(123)
ntrials <- 1000000
pitch_prob <- c(.4,.6) #ball then strike
pitch <- c(0,1) #ball - 0, strike - 1
pitcher <- sample(pitch, size = 6*ntrials, replace = TRUE, prob = pitch_prob)

strikeouts <- numeric(length(pitcher)/6)  
for (i in seq(1, length(pitcher), by = 6)) {
  strikeouts[i/6] <- sum(pitcher[i:(i+5)]) >= 3
}
mean(strikeouts)
Rprof(NULL)
summaryRprof()

Sys.time() - start