#!/usr/bin/env RScript


mu_naught <- 100
mu_alternate <- 105
sigma <- 15

pnorm(mu_alternate, mu = mu_naught, sd = sigma, lower.tail = F)

