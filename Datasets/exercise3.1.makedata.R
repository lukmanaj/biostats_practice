### exercise 3.1
###  this re-creates the dataset that went into making the 2x2 table

n11 = 5244
n12 = 785
n21 = 25117
n22 = 2348
ntotal = n11+n12+n21+n22

cell11 = matrix(rep(c("No","White"),n11),byrow=T,nrow=n11)
cell12 = matrix(rep(c("No","Black"),n12),byrow=T,nrow=n12)
cell21 = matrix(rep(c("Yes","White"),n21),byrow=T,nrow=n21)
cell22 = matrix(rep(c("Yes","Black"),n22),byrow=T,nrow=n22)

data = as.data.frame(cbind(1:ntotal,rbind(cell11,cell12,cell21,cell22)))
colnames(data) = c("person","Pap.smear","Race")
head(data)

### note R alphabetizes the the levels of each variable,
###   so the table has columns reversed from the original
table(data$Pap.smear,data$Race)


