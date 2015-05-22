## Put comments here that give an overall description of what your
## functions do

## function is a list of embedded functions (set,get,setinverse,getinverse) that allow for 
## a matrix and its inverse to be set and retrieved from a separate environment
makeCacheMatrix <- function(x = matrix()) {
m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
    
  }
  get <- function(){
    x
  }

  setinverse <- function(rmi){
    m <<- rmi
  }
  getinverse <- function(){
    m
  }
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}

## check for cached inverse of matrix, if not cached compute inverse and store in cache

cacheSolve <- function(x, ...) {
        
  y <- x$getinverse()
  if (is.null(y)){
    tmp <- x$get()
    y <- solve(tmp)
    x$setinverse(y)
    return(y)
  } else {
  message("getting cached data")
  return(y)
}
}
