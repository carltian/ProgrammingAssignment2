## The following code is to demonstrate "Lexical Scoping" concept in R.
## Matrix inversion is usually a costly computation and there may be some benefit to 
## caching the inverse of a matrix rather than compute it repeatedly. The following two
## functions will demonstrate how to cache the inverse of a matrix in the first function
## and use the cached values in the second function.

## makeCacheMatrix function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    set <- function() m <<- solve(x)
    get <- function() m
    list(get = get)
}

## computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then 
## the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    print ("Getting cached data")
    m <- x$get()
    m
}
