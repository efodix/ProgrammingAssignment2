##this function basically sets and gets the matrix and its inverse

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