## those  pair of functions can cache the inverse of a matrix

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    inverse_matrix <- NULL
    set <- function(y) {
        x <<- y
        inverse_matrix <<- NULL
    }
    get <- function() x
    setinversematrix <- function(mean) inverse_matrix <<- inverse
    getinversematrix <- function() inverse
    list(set = set, get = get,
         setinversematrix=setinversematrix,
         getinversematrix=getinversematrix)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##If the inverse has already been calculated ,
## then the cachesolve should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
    inverse <- x$getinversematrix()
    if(!is.null(inverse)) {
        message("getting cached data")
        return(inverse)
    }
    data <- x$get()
    inverse <- solve(data, ...)
    x$setinversematrix(inverse)
    inverse   
    
    
        ## Return a matrix that is the inverse of 'x'
}
