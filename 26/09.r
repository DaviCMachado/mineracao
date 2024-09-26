

df = read.csv(url("https://www-usr.inf.ufsm.br/~joaquim/UFSM/DM/ds/DimR00.csv")) 

print(df)

plot(df)

df2 <- df

dim(df2) <- c(8, 25)

plot(df2)

lines(df)

dim(df)
  

conta <- 0
myMat <- matrix(nrow = 10, ncol = 10)

for (i in 1:10)
    for (j in 1:10) {
      if(i==j){
        conta <- conta+1
        myMat[i][j] <- conta
      }
      else{
        myMat[i][j]
      }
    }

print (myMat)


Z = c(c("A", "B","C","E","F","A"), c("A", "B", "E", "F", "Z", 
  c()
))
