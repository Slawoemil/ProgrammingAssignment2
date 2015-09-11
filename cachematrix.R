## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeMatrix <- function(x = matrix()) {
    cacheMatrix <- NULL
    setMatrix <- function(y){
        x <<- y
        cacheMatrix <<- NULL
    }
    getMatrix <- function() x
    
    setCacheMatrix <- function(setMatrixInverse)
        cacheMatrix <- setMatrixInverse
    getCacheMatrix <- function() cacheMatrix
    
    list(setMatrix = setMatrix,
         getMatrix = getMatrix,
         setCacheMatrix = setCacheMatrix,
         getCacheMatrix = getCacheMatrix)
}

## Write a short comment describing this function 

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    
}
