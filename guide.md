For a given matrix x (e.g. `x <- matrix(c(4,3,3,2), nrow = 2, ncol = 2, byrow = T)`), run the following block in R console
```
newX <- makeCacheMatrix()
newX$set(x)
cacheSolve(newX)
```
