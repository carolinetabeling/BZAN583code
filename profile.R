Rprof()
start <- Sys.time()
set.seed(123)

ntrials <- 1000000
strikeout <- c()
for (trial in 1:ntrials) {
  pitch_prob <- c(.4,.6) #ball then strike
  pitch <- c(0,1) #ball - 0, strike - 1
  pitcher <- sample(pitch, size = 6, replace = TRUE, prob = pitch_prob)
  strikeout[trial] <- sum(pitcher[1:6]) >= 3
}
mean(strikeout) 

Rprof(NULL)
summaryRprof()

Sys.time() - start