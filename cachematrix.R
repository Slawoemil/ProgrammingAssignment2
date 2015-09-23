## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeMatrix functions builds a matrix and prepares interface
## to manage cashed matrix object
makeMatrix <- function(x = matrix()) {
    cacheMatrix <- NULL
    setMatrix <- function(y){
        x <<- y
        cacheMatrix <<- NULL
    }
    getMatrix <- function() x
    
    setCacheMatrix <- function(setMatrixInverse)
        cacheMatrix <<- setMatrixInverse
    getCacheMatrix <- function() cacheMatrix
    
    list(setMatrix = setMatrix,
         getMatrix = getMatrix,
         setCacheMatrix = setCacheMatrix,
         getCacheMatrix = getCacheMatrix)
}

## Write a short comment describing this function 
## cacheSolve returns inversed square matrix form the cache
## if there is no matrix in the cache cacheSolve creates one
## and stores it in the cache
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    invMatrix <- x$getCacheMatrix()
    if(!is.null(invMatrix)){
        message("getting cached matrix")
        return(invMatrix)
    }
    matrixData <- x$getMatrix()
    temp <- solve(matrixData)
    x$setCacheMatrix(temp)
    temp
}


## speed test
speedMatrixTest <- function(size){
    hugeMatrix <- makeMatrix(matrix(rnorm(size), ncol = sqrt(size)))
    system.time(cacheSolve(hugeMatrix))
    system.time(cacheSolve(hugeMatrix))
}


