## This code creates a matrix with length 0, gives it setters and getters.
## THen makes an inverse if not yet made.

## This function takes numeric sqare matrix as a parameter and gives back getters and setters

makeCacheMatrix <- function(x = matrix(numeric(0), 0,0)) {

  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}
  



## this part takes makeCacheMatrix's output (list of functions for the matrix) as a parameter and calculates inversion if not at the place

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      i <- x$getinverse()
    if(length(i) > 0) {
      message("getting cached data")
      return(i)
    }
    data <- x$get(x)
    i <- solve(data, ...)
    x$setinverse(i)
    i
  }
