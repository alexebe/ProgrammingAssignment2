## Put comments here that give an overall description of what your
## functions do

## function that create a matrix and store its inverse

makeCacheMatrix <- function(x = matrix()) {
 i<-NULL
 set <- function(y) {
   x <<- y
   i <<- NULL
 }
 get <- function() x
 setinverse <- function(inv) i <<- inv
 getinverse <- function() i
 list(set = set, get = get,
      setinverse = setinverse,
      getinverse = getinverse)
}


## function that computes the inverse

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
