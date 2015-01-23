##this function first checks to see if matrix inverse exists
## if it doesn't, it creates the matrix inverse by using the "solve" command

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