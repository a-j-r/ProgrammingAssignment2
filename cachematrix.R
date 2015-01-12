## Programming Assignment 2
## Creates functions to cache the inverse of a inverse matrix.

## Creates a specific representation for a matrix that allows to cache its
## inverse once computed through the function "cacheSolve"

makeCacheMatrix <- function(x = matrix()) {
	# makes a local copy of the passed matrix x
	my_matrix <- x
	# the inverse matrix computed.
	my_inv <- NULL
	
	# solves the inverse of the matrix my_matrix.
	solveInverse <- function(...) {
		m <- get()
		my_inv <<- solve(m, ...)
		my_inv
	}
	
	# returns the inverse matrix, if computed, NULL otherwise.
	getInverse <- function(...) {
		if (is.null(my_inv)) {
			solveInverse(...)
		}
		my_inv
	} 
	# gets the original matrix.
	get <- function() my_matrix
	# sets the original matrix.
	set <- function(m = matrix()) {
		my_matrix <<- m
		my_inv <<- NULL
	}
	list(getInverse = getInverse, get = get, set = set)
}

## Inverses a "CacheMatrix" created trough the function makeCackeMatrix.

cacheSolve <- function(x, ...) {
	# Returns a matrix that is the inverse of the special cached matrix 'x'
	x$getInverse(...)
}
