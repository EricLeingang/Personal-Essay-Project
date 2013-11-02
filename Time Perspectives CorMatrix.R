PastPositive = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\PastPositive.csv",head=TRUE,sep=","))
PastNegative = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\PastNegative.csv",head=TRUE,sep=","))
FuturePerspective = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\FuturePerspective.csv",head=TRUE,sep=","))
PresentFatalistic = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\PresentFatalistic.csv",head=TRUE,sep=","))
PresentHedonistic = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\PresentHedonistic.csv",head=TRUE,sep=","))
OverallFuture = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\OverallFuture.csv",head=TRUE,sep=","))

PPT = as.matrix(rowMeans(PastPositive, na.rm = TRUE, dims = 1))
PNT = as.matrix(rowMeans(PastNegative, na.rm = TRUE, dims = 1))
FPT = as.matrix(rowMeans(FuturePerspective, na.rm = TRUE, dims = 1))
PFT = as.matrix(rowMeans(PresentFatalistic, na.rm = TRUE, dims = 1))
PHT = as.matrix(rowMeans(PresentHedonistic, na.rm = TRUE, dims = 1))

write.csv(cor(na.omit(cbind(PPT,PNT,FPT,PFT,PHT,OverallFuture))), "FutureCor.csv")