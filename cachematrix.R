## These functions create a special "matrix" object that can cache its inverse
## and compute the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.

##This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = numeric()) {
     m <- NULL
     #set the matrix
     set <- function(y) {
          x <<- y
          m <<- NULL
     }
     #get the matrix
     get <- function() x
     #set inverse
     setsolve <- function(solve) s <<- solve
     #get inverse
     getsolve <- function() s
     list(set = set, get = get,
          setsolve = setsolve,
          getsolve = getsolve)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then it retrieves
## the inverse from the cache.
cacheSolve <- function(x, ...) {     
     m <- x$getsolve()
     #check for existing matrix inverse
     if(!is.null(m)) {
          message("getting cached data")
          return(m)
     }
     data <- x$get()
     #create inverse
     m <- solve(data, ...)
     x$setsolve(m)
     m
}
        

