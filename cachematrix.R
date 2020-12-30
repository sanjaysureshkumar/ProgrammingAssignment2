## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	cached_inverse <- NULL

	get <- function() x
	setinverse <- function(inverse) cached_inverse <<- inverse
	getinverse <- function() cached_inverse
	list( get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	inverse <- x$getinverse()
	if (!is.null(inverse)) {
		message("retrieving inverse from cache")
		return(inverse)
	}

	original <- x$get()
	inverse <- solve(original)
	x$setinverse(inverse)
	inverse
        ## Return a matrix that is the inverse of 'x'
}
