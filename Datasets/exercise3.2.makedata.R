### exercise 3.2
###  this re-creates the dataset that went into making the 2x2 table

n11 = 1763
n12 = 489
n21 = 403
n22 = 670
ntotal = n11+n12+n21+n22

cell11 = matrix(rep(c("Present","Present"),n11),byrow=T,nrow=n11)
cell12 = matrix(rep(c("Present","Absent"),n12),byrow=T,nrow=n12)
cell21 = matrix(rep(c("Absent","Present"),n21),byrow=T,nrow=n21)
cell22 = matrix(rep(c("Absent","Absent"),n22),byrow=T,nrow=n22)

data = as.data.frame(cbind(1:ntotal,rbind(cell11,cell12,cell21,cell22)))
colnames(data) = c("Pair","First.screen","Second.screen")
head(data)

### note R alphabetizes the the levels of each variable,
###   so the table has columns and rows reversed from the original
table(data$First.screen,data$Second.screen)


