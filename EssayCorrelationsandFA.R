OPFocus = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\OPFocus.csv",head=TRUE,sep=","))
OverallFuture = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\OverallFuture.csv",head=TRUE,sep=","))
ProAttRating = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\ProAttRating.csv",head=TRUE,sep=","))
WritingFuture = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\WritingFuture.csv",head=TRUE,sep=","))
WordCount = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\WordCount.csv",head=TRUE,sep=","))
EnvFocus = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\EnvFocus.csv",head=TRUE,sep=","))
IntExtRating = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\IntExtRating.csv",head=TRUE,sep=","))
OverallDaily = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\OverallDaily.csv",head=TRUE,sep=","))
WritingDaily = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\WritingDaily.csv",head=TRUE,sep=","))

library(nFactors)
library(GPArotation)
library(mclust)


Matrix.essay = na.omit(cbind(OPFocus,OverallFuture,ProAttRating,WritingFuture,EnvFocus,IntExtRating))
write.csv((Matrix.essayCor = cor(Matrix.essay)),"FutureCor.csv")
sink("AplphaIndiv.txt")
alpha(Matrix.essay)
sink()
sink("Alpha.txt")
alpha(cbind(OverallFuture,WritingFuture))
alpha(na.omit(cbind(OverallFuture,OPFocus,ProAttRating,EnvFocus,IntExtRating)),keys = (c(rep(1,16),rep(-1,4))))
warnings()
sink()
 
eve <- eigen(Matrix.essayCor)
ape <- parallel(subject=nrow(Matrix.essayCor),var=ncol(Matrix.essay),
                rep=100,cent=.06)
nSe <- nScree(x=eve$values, aparallel=ape$eigen$qevpea)
plotnScree(nSe, main = "     Scree Plot of Eigen Values and 
           Nongraphical Solutions for Essay Data      ")

sink("EssayAnalysis.txt")
fa(r = Matrix.essayCor, nfactors = 2, rotate = "oblimin", SMC = FALSE, 
   fm = "pa",)
sink()



