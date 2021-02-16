source('functions/vector_functions.R')


# test CalculateDotProduct
a <- 2
b <- c(1, 2, 3)
c <- 'c'
v <- c(4, 2)
w <- c(-1, 2)
u <- c(2, 2)

CalculateDotProduct(v,w)
CalculateDotProduct(v)
CalculateDotProduct(a,v)
CalculateDotProduct(b,v)
CalculateDotProduct(c,v)

# test ArePerpendicular
ArePerpendicular(v, w)
ArePerpendicular(w, v)
ArePerpendicular(v)
ArePerpendicular(a,v)
ArePerpendicular(b,v)
ArePerpendicular(c,v)
ArePerpendicular(u,v)
ArePerpendicular(v,u)

# test CalculateVectorLength
v <- c(1,2,3)
CalculateVectorLength(v)

# test IsUnitVector
u <- c(0.5, 0.5, 0.5, 0.5)
IsUnitVector(u)

i <- c(1,0) 
IsUnitVector(i)

j <- c(0,1)
IsUnitVector(j)

(theta <- runif(1) * 2 * pi)
u <- c(cos(theta), sin(theta))
IsUnitVector(u)

# test CalculateUnitVector
v <- c(2, 2, 2, 2)
CalculateUnitVector(v)

# test CalculateCosine
v <- c(2,1)
w <- c(1,2)
CalculateCosine(v,w)
(theta <- acos(CalculateCosine(v,w)))



