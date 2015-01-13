### Introduction

Proposed solution for the second assignment of the coursea course "R Programming". 

The script cachematrix.R contains two functions to inverse and cache the inverse of a matrix:


1.  `makeCacheMatrix`: This function creates a special "matrix" object
    that can cache its inverse.
2.  `cacheSolve`: This function computes the inverse of the special
    "matrix" returned by `makeCacheMatrix` above. If the inverse has
    already been calculated (and the matrix has not changed), then
    `cacheSolve` should retrieve the inverse from the cache.

It is supposed that the given matrix is square and inversible, else an error occure. 

Its possible to reset the matrix of the matrix object through the function <matrix-object>$set and to retrieve the matrix with <matrix-object>$get where <matrix-object> is an object created by 'makeCacheMatrix'. The inverse of the matrix can also be retrieved with the function <matrix-object>$getInvese. The computation of the inverse can be forced with <matrix-object>$solveInvese

