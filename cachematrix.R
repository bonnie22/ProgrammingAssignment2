## Program by Boniface Muganda

## This program gets input as a matrix and caalculates the inverse of the matrix
## The calculated inverse matrix is cached into the program memory. Next time it
## encounters the same matrix, it retrieves the stored inverse

## Function Cache Matrix
## This function creates a special matrix which is a list containing the functions t0
## 1. Get the value of the matrix
## 2. Set the value of the matrix
## 3. Get the value of the inverse
## 4. Set the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
 set <- function(y){
   x <<- y
   m <<- NULL
 }
 get function() x
 setinv <- function(solve) m <<- solve
 getinv <- function() m
 list(set=set, get=get, setinv=setinv,getinv=getinv)
  
}



## This function calculates the inverse of the matrix created above. It first checks to see 
## if the inverse has already been calculated. If so it skips the computation. Otherwise it 
## computes the inverse matrix. The end result is the inverse matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  if(!is.null(m)){
    message("Getting cached data")
    return(m)
  }
  data<-x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
}
