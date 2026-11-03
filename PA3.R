lenn= function(x){
  n_values <- length(x)
  max_value <- max(x)
  
  cat('largest value',n_values, max_value)
}

lenn(c(1, 2, 3, 5, 7))
lenn(c(1, 2, 5, 5))

leap_year = function(x){
  if((x %% 400 == 0)){
    TRUE
  }
  else if((x %% 100 == 0)){
    FALSE
  }
  else if((x %% 4 == 0)){
    TRUE
  }
  else{
    FALSE
  }
}

print(leap_year(2025))

oceans <- c('Arctic', 'Atlantic', 'Indian','Pacific', 'southern')
avg_depth <- c(1.2, 3.65, 3.72, 3.97, 3.27)

oceans_depth <- data.frame(oceans, avg_depth)

print(oceans_depth)


