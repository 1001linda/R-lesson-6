add = function(){
  x <- readline(prompt="Please enter a number: \n")
  y <- readline(prompt="Please enter another number: \n")
  x <- as.numeric(x) #change x from a string to a number
  y <- as.numeric(y)
  print( paste("The sum of", x, "and", y, "is", x+y, sep = " ") )
}

_Exercise E_

install.packages("MASS")
mu = c(0, 0)
lo = 0.25
sigma = matrix(c(1, lo, lo, 1), nrow = 2)
mvrnorm(1, mu, sigma)

-

install.packages("MASS")
generate_data = function(n, lo){
  mu = c(0, 0)
  sigma = matrix(c(1, lo, lo, 1), nrow = 2)
  data = mvrnorm(n, mu, sigma)
  return(data)
}

-

install.packages("MASS")
generate_data = function(n, lo){
  mu = c(0, 0)
  sigma = matrix(c(1, lo, lo, 1), nrow = 2)
  data = mvrnorm(n, mu, sigma)
  sample_cor = cor(data[,1], data[,2])

  sample_mean_x = mean(data[,1])
  sample_var_x = var(data[,1])

  sample_mean_y = mean(data[,2])
  sample_var_y = var(data[,2])
  
  return(list(data, sample_cor, sample_mean_x, sample_var_x, sample_mean_y, sample_var_y)))
}

_Exercise F_

x = seq(1, 20, by = 2)
y = seq(2, 20, by = 2)

a = prod(x + y)
b = sum(x/y)
c = sum(x^3*(y^2))

-

f.fun = function(n){
  x = seq(1, n, by = 2)
  y = seq(2, n, by = 2)
  a = prod(x + y)
  b = sum(x/y)
  c = sum(x^3*(y^2))

  ans = list(a, b, c)
  names(ans) = c("1", "2", "3")
  return(ans)
}








