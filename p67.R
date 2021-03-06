# [1] 7273
# user  system elapsed 
# 0.545   0.000   0.533 

main <- function(){
    pmt <- proc.time()
    colNum <- 100
    x <- read.table("~/R/ProjectEuler/p067_triangle.txt", sep = " ", col.names=paste("V", 1:colNum), fill = TRUE)
    
    gir <- dim(x)[1]
    
    for(i in (gir-1):1){
        for(j in i:1){
            x[i,j] <- x[i,j] + max(x[i+1,j],x[i+1,j+1])
        }       
    }
    print(x[1,1])
    print(proc.time()-pmt)
}

