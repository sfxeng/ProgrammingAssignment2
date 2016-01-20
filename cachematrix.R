#
#  R-Programing, wk 3, 1/19/2016
#  Stephen Fisher
#  ProgramingAssignment2
#
## ===================================================================
#
#
## This function creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
#
  i <- nrow(x)
  j <- ncol(x)
  orginal_matrix <<- x
  inverse.cashe <<- matrix(0,i,j)     # cache matrix object, filled with zeros
  print(x)        
#                            
}
#
#
#
#
#
## This function computes the inverse of the special "matrix" returned 
## by makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
#  
  m <<- inverse.cashe
  if(!det(m)==0 && orginal_matrix==x) {   #check if calculated and not changed?
    message("getting cached data")
    return(m)
  }
  inverse.cashe <<-solve(x)
  print(inverse.cashe)
}  
#
#
#
#
#
#
#
