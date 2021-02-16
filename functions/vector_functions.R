CalculateDotProduct <- function(v, w) {
  # Computes the dot product between two vectors.
  #
  # Args:
  #   v: One of two vectors whose dot product is to be calculated.
  #   w: The other vector.
  #      v and w must have the same length.
  #
  # Returns:
  #   The dot product between v and w.
  #     v * w = v_1 * w_1 + ... + v_n * w_n
  
  # checks
  if (!is.vector(v))
    stop("v must be a vector")
  if (!is.vector(w))
    stop("w must be a vector")
  if (!(length(v) == length(w)))
    stop("vectors must have same length")
  
  dot.product <- 0
  
  for (i in 1:length(v)) {
    dot.product <- dot.product + (v[i] * w[i])
  }
  
  return(dot.product)
}


ArePerpendicular <- function(v, w) {
  # Checks if two vectors are perpendicular
  #
  # Args:
  #   v: One of two vectors.
  #   w: The other vector.
  #      v and w must have the same length.
  #
  # Returns:
  #   True if vectors are perpendicular.
  #     The vectors are perpendicular if their dot product is zero
  
  # checks
  if (!is.vector(v))
    stop("v must be a vector")
  if (!is.vector(w))
    stop("w must be a vector")
  if (!(length(v) == length(w)))
    stop("vectors must have same length")
  
  are.perpendicular <- FALSE
  
  if (CalculateDotProduct(v, w) == 0) {
    are.perpendicular <- TRUE
  }
  
  return(are.perpendicular)
}


CalculateVectorLength <- function(v) {
  # Computes the length of a vector.
  #
  # Args:
  #   v: The vector whose length is to be calculated.
  #
  # Returns:
  #   The length of the vector.
  #     length = ||v|| = sqrt(v*v)
  
  # checks
  if (!is.vector(v))
    stop("v must be a vector")
  
  vector.length <- sqrt(CalculateDotProduct(v, v))
  
  return(vector.length)
}


IsUnitVector <- function(u) {
  # Checks if a vector is a unit vector
  #
  # Args:
  #   u: The vector to check.
  #
  # Returns:
  #   True if vector is a unit vector.
  #     A vector is a unit vector if its length equals one
  
  # checks
  if (!is.vector(u))
    stop("v must be a vector")
  
  is.unit.vector <- FALSE
  
  if (CalculateVectorLength(u) == 1) {
    is.unit.vector <- TRUE
  }
  
  return(is.unit.vector)
}


CalculateUnitVector <- function(v) {
  # Computes the unit vector u from v
  #
  # Args:
  #   v: The vector whose unit vector is to be calculated.
  #
  # Returns:
  #   The unit vector gotten.
  #     u = v / ||v||
  
  # checks
  if (!is.vector(v))
    stop("v must be a vector")
  
  u <- v / CalculateVectorLength(v)
  
  return(u)
  
}


CalculateCosine <- function(v, w) {
  # Computes the cosine from two vectors.
  #
  # Args:
  #   v: One of two vectors whose cosine is to be obtained.
  #   w: The other vector.
  #      v and w must have the same length.
  #
  # Returns:
  #   The cosine from v and w.
  #     cos(theta) = v*w / ||v|| * ||w||
  
  # checks
  if (!is.vector(v))
    stop("v must be a vector")
  if (!is.vector(w))
    stop("w must be a vector")
  if (!(length(v) == length(w)))
    stop("vectors must have same length")
  
  cosine <-
    CalculateDotProduct(v, w) / (CalculateVectorLength(v) * CalculateVectorLength(w))
  
  return(cosine)
}
