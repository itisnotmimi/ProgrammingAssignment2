## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(inverse) m <<- inverse
  getmean <- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
   ##this function stores a matrix to input into cacheSolver
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
        ## Return a matrix that is the inverse of 'x'
  ##this function calculates the inverse of the matrix created with makeCacheMatrix
}
