## The following makeCacheMatrix function takes an empty matrix as an input 
## and returns another matrix with 4 properties which are also functions namely: set, get, setInv, getInv 


makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  
  setInv <- function(Inverse) inv <<- Inverse
  getInv <- function() inv
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)  
}


## The following cacheSolve function takes output of the makeCacheMatrix function as an input 
## and ouput of cacheSolve function is the reverse of matrix input.
## The function checks if the special matrix was inversed 
## If it was already inversed, the prevouse result is returned. If not, solve() function will return the inverse of matrix

cacheSolve <- function(x, ...) {
  inv <- x$getInv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setInv(inv)
  inv
}

## How to run the code is in the guide.md file
