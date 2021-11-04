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
  real beta1;
  real beta2;
  real beta3;
  real beta4;
  real beta5;
  real logsigma;
}
transformed parameters {
  real<lower=0> sigma;
  sigma = exp(logsigma);
}
model {
  changeLOCF ~ normal(
    beta1*X[,1] + beta2*X[,2] + beta3*X[,3] + beta4*X[,4] + beta5*X[,5], sigma);
}





