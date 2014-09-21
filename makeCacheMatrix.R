#makes a matrix and a list detailing what operations have been performed in it
makeMat <- function(x = matrix(1:4,2)) {
       #This function requieres a square matrix, x,  as input (Solve function will not work unless matrix is square)
       #The output if this function is a list, which details the matrix, the operation to do with it (solve), the 
       #result of the operation (matrix inverse), and a variable stating if the operation has already been performed (i)
       #It first sets i (the inverse of x) as null
        i <- NULL
        #set will store y as x, and i as null
        #this condition is used to check if the inverse has allready been calculated in cacheSolve.R
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        #get stores the matrix
        get <- function() x
        #setsolve defines the solve operation
        setsolve <- function(solve) i <<- solve
        #getsolve is the inverse of x
        getsolve <- function() i
        #Finally all the 4 objects are stored in a list, named x
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
        
}
