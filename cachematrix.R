## Caching the Mean of a Vector
## Info: Created based on Assignment Example and Verified the numbers through Web-based Inverser Matrix Calculator

## Basically it cache matrix into the repository

makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  set <- function(y) {
      x <<- y
      inv <<- NULL
  }

  get <- function() x
  setinverse <- function(inverse) inv
  getinverse <- function() inv
  list(set = set, 
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Return inverse matrix of x

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
            message("getting cached data")
            return(inv)
  }
  data <- x$get()
  inv <- solve(mat, ...)
  x$setinverse(inv)
  inv
       
}
