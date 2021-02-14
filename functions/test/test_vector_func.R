source('functions/vector_func.R')


# test dot_product
a <- 2
b <- c(1, 2, 3)
c <- 'c'
v <- c(4, 2)
w <- c(-1, 2)
u <- c(2, 2)

dot_product(v,w)
dot_product(v)
dot_product(a,v)
dot_product(b,v)
dot_product(c,v)

# test are_perpendicular
are_perpendicular(v, w)
are_perpendicular(w, v)
are_perpendicular(v)
are_perpendicular(a,v)
are_perpendicular(b,v)
are_perpendicular(c,v)
are_perpendicular(u,v)
are_perpendicular(v,u)

# test vector_length
v <- c(1,2,3)
vector_length(v)

# test is_unit_vector
u <- c(0.5, 0.5, 0.5, 0.5)
is_unit_vector(u)

i <- c(1,0) 
is_unit_vector(i)

j <- c(0,1)
is_unit_vector(j)

(theta <- runif(1) * 2 * pi)
u <- c(cos(theta), sin(theta))
is_unit_vector(u)

# test unit_vector
v <- c(2, 2, 2, 2)
unit_vector(v)

# test cosine
v <- c(2,1)
w <- c(1,2)
cosine(v,w)
(theta <- acos(cosine(v,w)))



