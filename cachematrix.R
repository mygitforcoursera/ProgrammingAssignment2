## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
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

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
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
