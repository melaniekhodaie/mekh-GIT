// /////////////////
// Lundbeck course, November 2021
// Example with linear normal model
// Helle Sorensen
// /////////////////

data {
  int<lower=0> N;       // number of obs 
  int<lower=0> K;       // number of predictors
  vector[N] changeLOCF; // response
  matrix[N, K] X;       // predictor matrix
}
parameters {
  vector[K] beta;
  real logsigma;
}
transformed parameters {
  real<lower=0> sigma;
  sigma = exp(logsigma);
}
// If no prior specification: uniform on beta, logsigma
model {
  // beta ~ normal(0,1);
  // beta ~ normal(0,100);
  // beta ~ uniform(-1,1); 
  // beta[1] ~ normal(0,1);
  changeLOCF ~ normal(X * beta, sigma);
}











