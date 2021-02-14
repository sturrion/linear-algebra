# dot product of two vectors
# v * w = v_1*W_1 + ... + v_n * W_n
dot_product <- function(v, w) {
  
  # checks 
  if (!is.vector(v)) stop("v must be a vector")
  if (!is.vector(w)) stop("w must be a vector")
  if (!(length(v) == length(w))) stop("vectors must have same length") 
    
  result <- 0
  
  for(num in 1:length(v)) {
    result <- result +(v[num] * w[num]) 
  }
  
  return(result)
}

# perpendicular vectors: dot product is zero
are_perpendicular <- function(v, w) {
  
  # checks 
  if (!is.vector(v)) stop("v must be a vector")
  if (!is.vector(w)) stop("w must be a vector")
  if (!(length(v) == length(w))) stop("vectors must have same length") 
  
  result <- FALSE
  
  if (dot_product(v, w) == 0) {
    result <- TRUE
  }
  
  return(result)
}

# the length of a vector
# length = ||v|| = sqrt(v*v)
vector_length <- function(v) {
  
  # checks 
  if (!is.vector(v)) stop("v must be a vector")
  
  result <- sqrt(dot_product(v, v))
  
  return(result)
}

# a unit vector u is a vector whose length equals one
is_unit_vector <- function(u) {
  
  # checks 
  if (!is.vector(u)) stop("v must be a vector")

  result <- FALSE
  
  if (vector_length(u) == 1) {
    result <- TRUE
  }
  
  return(result)
}

# gets the unit vector u from v
# u is a unit vector in the same direction as v
unit_vector <- function(v) {
  
  # checks 
  if (!is.vector(v)) stop("v must be a vector")
  
  u <- v / vector_length(v)
  
  return(u)
  
}

# cosine formula from vectors
# cos(theta) = v*w / ||v|| * ||w||
cosine <- function(v, w) {
  
  # checks 
  if (!is.vector(v)) stop("v must be a vector")
  if (!is.vector(w)) stop("w must be a vector")
  if (!(length(v) == length(w))) stop("vectors must have same length") 
  
  result <- dot_product(v,w) / (vector_length(v) * vector_length(w))
  
  return(result)
}
