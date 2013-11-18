WritingFuture = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\WritingFuture.csv",head=TRUE,sep=","))
OPFocus = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\OPFocus.csv",head=TRUE,sep=","))
OverallFuture = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\OverallFuture.csv",head=TRUE,sep=","))
ProAttRating = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\ProAttRating.csv",head=TRUE,sep=","))
EnvFocus = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\EnvFocus.csv",head=TRUE,sep=","))
IntExtRating = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\IntExtRating.csv",head=TRUE,sep=","))
WordCount = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\WordCount.csv",head=TRUE,sep=","))

m1 = data.frame(matrix(na.omit(cbind(OverallFuture[,1],OPFocus[,1],ProAttRating[,1],WritingFuture[,1],EnvFocus[,1],IntExtRating[,1],WordCount)),
                       nrow=49,dimnames = list(c(1:49),c("OF","FoP","PA","WF","EF","Int","WC"))))
m2 = data.frame(matrix(na.omit(cbind(OverallFuture[,2],OPFocus[,2],ProAttRating[,2],WritingFuture[,2],EnvFocus[,2],IntExtRating[,2],WordCount)),
                       nrow=49,dimnames = list(c(1:49),c("OF","FoP","PA","WF","EF","Int","WC"))))
m3 = data.frame(matrix(na.omit(cbind(OverallFuture[,3],OPFocus[,3],ProAttRating[,3],WritingFuture[,3],EnvFocus[,3],IntExtRating[,3],WordCount)),
                       nrow=49,dimnames = list(c(1:49),c("OF","FoP","PA","WF","EF","Int","WC"))))
m4 = data.frame(matrix(na.omit(cbind(OverallFuture[,4],OPFocus[,4],ProAttRating[,4],WritingFuture[,4],EnvFocus[,4],IntExtRating[,4],WordCount)),
                       nrow=49,dimnames = list(c(1:49),c("OF","FoP","PA","WF","EF","Int","WC"))))

library(yhat)
library(psych)

mat1 = cor(na.omit(cbind(OverallFuture[,1],OPFocus[,1],ProAttRating[,1],WritingFuture[,1],EnvFocus[,1],IntExtRating[,1],WordCount)))
mat2 = cor(na.omit(cbind(OverallFuture[,2],OPFocus[,2],ProAttRating[,2],WritingFuture[,2],EnvFocus[,2],IntExtRating[,2],WordCount)))
mat3 = cor(na.omit(cbind(OverallFuture[,3],OPFocus[,3],ProAttRating[,3],WritingFuture[,3],EnvFocus[,3],IntExtRating[,3],WordCount)))
mat4 = cor(na.omit(cbind(OverallFuture[,4],OPFocus[,4],ProAttRating[,4],WritingFuture[,4],EnvFocus[,4],IntExtRating[,4],WordCount)))

apsr1 = aps(m1,"OF",list("FoP","PA","WF","EF","Int","WC"))
apsr2 = aps(m2,"OF",list("FoP","PA","WF","EF","Int","WC"))
apsr3 = aps(m3,"OF",list("FoP","PA","WF","EF","Int","WC"))
apsr4 = aps(m4,"OF",list("FoP","PA","WF","EF","Int","WC"))

sink("Dominance Tables.txt")
dominance(apsr1)$D
dominance(apsr2)$D
dominance(apsr3)$D
dominance(apsr4)$D
sink()

sink("Conditional Dominance.txt")
dominance(apsr1)$C
dominance(apsr2)$C
dominance(apsr3)$C
dominance(apsr4)$C
sink()

sink("General Dominance.txt")
dominance(apsr1)$G
dominance(apsr2)$G
dominance(apsr3)$G
dominance(apsr4)$G
sink()
sink("betas.txt")
set.cor(c(1),c(2,4),m1)
set.cor(c(1),c(3,4,6),m2)
set.cor(c(1),c(4,7),m3)
set.cor(c(1),c(3,4,7),m4)
set.cor(c(1),c(2,4),mat1)
set.cor(c(1),c(3,4,6),mat2)
set.cor(c(1),c(4,7),mat3)
set.cor(c(1),c(3,4,7),mat4)
sink()