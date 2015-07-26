# R Programming Assignment #2: "Caching the Inverse of a Matrix"
# General Instructions/Goals:
# The goal of this assignment is to create two functions: 
# One that caches the inverse values for an invertable matrix
# One that calculates inverse values for a matrix if not already cached

# Functions:
## The function below will take a matrix from user input, then store
## the matrix in a cache 
# Here I am making a function() and taking it into the argument 'x' but
# storing it into the object 'makeCacheMatrix'. 
# 'x' is converted to a matrix using the matrix() function
makeCacheMatrix <- function(x = matrix()) {
  # Set an default empty object where the matrix can be stored after user input
  my_matrix <- NULL
  
  # Make another function() that sets the value of the matrix from user 
  set_matrix <- function(y) {

  # This gets or caches the input matrix to compare in cacheSolve() function
  # The <<- operator assigns a value to an object, but allows the object to
  # be used in the undefined environments; When <<- is present R searches the 
  # parent environment for the defintion of the object
    x <<- y
  
    # Set default value to object which will store the inverse matrix
    my_matrix <<- NULL
  }
  
  # Obtain the matrix the user inputed; this gets the value of the 
  # vector 'x'
  get <- function() x
  
  # Set the value of the inverse to the object 'setinverse'
  setinverse <- function(inverse) my_matrix <<- inverse
 
  # Get the inverse value and store it in object 'getinverse'
  getinverse <- function() my_matrix
  
  
  # Make a list that checks if matrix is cached by seeing if values are equal
  list(set_matrix = set_matrix, get = get, setinverse = setinverse, getinverse
  = getinverse)
  
}


## This function will make an inverse matrix if a matrix is not already created
## and stored
# Method:
# The solve() function will calculate the inverse of a matrix
# The arguments for this function is solve(a, b, ...) where,
# both a/b are numeric or complex matrixes
# Alternativelt the givn() function also retuns the inverse of a matrix
# The arguments for this function is ginv(X, tol = sqrt(.Machine$double.eps))
# where 'X' is the matrix to determine the inverse on

cacheSolve <- function(x, ...) {

  # The solve() function will calculate the inverse of a matrix
  # The arguments for this function is solve(a, b, ...) where,
  # both a/b are numeric or complex matrixes
  # Alternativelt the givn() function also retuns the inverse of a matrix
  # The arguments for this function is ginv(X, tol = sqrt(.Machine$double.eps))
  # where 'X' is the matrix to determine the inverse on
  
  
  # Here I will return a matrix that is the inverse of 'x'
  # I will use the return function
  return()
}





















