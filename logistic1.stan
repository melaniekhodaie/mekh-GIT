// /////////////////
// Lundbeck course, November 2021
// Exercise 4: Logistic regression
// Helle Sorensen
// /////////////////

data {
  int<lower=0> N;       
  int<lower=0> K;       
  int<lower=0,upper=1> responseLOCF[N]; // response *CHANGED*
  matrix[N, K] X;       
}
// *CHANGED* sigma and log_sigma are now irrelevant
parameters {
  vector[K] beta;      
}
model {
  beta ~ normal(0,3); // *CHANGED* (to be on the safe side regarding a valid posterior)
  responseLOCF ~ bernoulli_logit(X * beta); // *CHANGED*
}











