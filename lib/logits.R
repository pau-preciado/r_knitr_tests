logit_fn <- function(y, y_min, y_max, epsilon){
     log((y-(y_min-epsilon))/(y_max+epsilon-y))
}

antilogit_fn <- function(antiy, y_min, y_max, epsilon)
     (exp(antiy)*(y_max+epsilon)+y_min-epsilon)/
     (1+exp(antiy))

