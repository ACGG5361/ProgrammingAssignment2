## Put comments here that give an overall description of what your
## functions do

## Makes a special matrix, from x.

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}
## cacheSolve, makes the inverse of the matrix x.
cacheSolve <- function(x, ...) {
  m<- dim(x)
## This is for prove that x isn't null.
  if(!is.null(m)) {
    I<- diag(1, dim(x))
## Make an identity matrix
    message("getting cached data")
    n<- solve(x,I)
##Doing the inverse of the matrix x, with the help of I
    n
##Printing the inverse of the matrix x.
  }
  }
