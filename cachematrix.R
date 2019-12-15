#### R Programming Assignment 2 ####

## Function creates a "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) m <<- inverse
    getinverse <- function() m
    list(set = set,
         get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Function computes the inverse of the "matrix" above.

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if (!is.null(m)) {
      message("getting cached data")
      return(m)
  }
  m1 <- x$get()
  m <- solve(m1, ...)
  x$setinverse(m)

        ## Return a matrix that is the inverse of 'x'
  
  return(m)
}
