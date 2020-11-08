



makeCacheMatrix <- function(x = matrix() {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsum <- function(sum) s <<- sum
  getsum <- function() s
  list(set = set, get = get,
       setsum = setsum,
       getsum = getsum)
  
}   

  
  cachesum <- function(x, ...) {
    s <- x$getsum()
    if(!is.null(s)) {
      message("getting cached data")
      return(s)
    }
    data <- x$get()
    s <- sum(data, ...)
    x$setsum(s)
    s
  }
        ## Return a matrix that is the inverse of 'x'
}
