## Put comments here that give an overall description of what your
## This is a function written for coursera R-Programming course Week 3  Assignment.
## These two functions cache and calculates the inverse of a matrix

## This function caches teh inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  
 inverse<- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse1) inverse <<-inverse1
  getinverse <- function() inverse
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## This function finds the inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$getinverse()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data, ...)
  x$setinverse()
  inverse
}
