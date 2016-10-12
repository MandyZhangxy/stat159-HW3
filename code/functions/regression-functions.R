## Residual Sum of Squares
residual_sum_squares = function(x){
  sum((x$residuals)^2)
}


## Total Sum of Squares
total_sum_squares = function(w){
  
  y = w$model[[1]]
  sum((y-mean(y))^2)
}

## R-squared
r_squared = function(w){
  1-residual_sum_squares(w)/total_sum_squares(w)
}


## F-statistic
f_statistic = function(w){
  p = w$rank - 1
  y = w$model[[1]]
  n = length(y)
  (total_sum_squares(w) - residual_sum_squares(w))/p/(residual_sum_squares(w)/(n-p-1))
}

## Residual Standard Error
residual_std_error = function(w){
  p = w$rank - 1
  y = w$model[[1]]
  n = length(y)
  sqrt(residual_sum_squares(w)/(n-p-1))
}







