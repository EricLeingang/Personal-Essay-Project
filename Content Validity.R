EnvFocus = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\EnvFocus.csv",head=TRUE,sep=","))
ProAttRating = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\ProAttRating.csv",head=TRUE,sep=","))
ProEnvironment = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\ProEnvironment.csv",head=TRUE,sep=","))
ProsocialPersonality = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\ProsocialPersonality.csv",head=TRUE,sep=","))

Matrix.val = na.omit(cbind(EnvFocus,ProAttRating,ProEnvironment,ProsocialPersonality))

Matrix.contentValidityCor = cor(Matrix.val)
write.csv(data.frame(Matrix.contentValidityCor), "Content Validity.csv")

ProET = matrix(rowMeans(ProEnvironment, na.rm = TRUE, dims = 1), dimnames = list(c(1:97),c("Proenvironmental Attitudes")))
ProSocT = matrix(rowMeans(ProsocialPersonality, na.rm = TRUE, dims = 1), dimnames = list(c(1:97),c("Prosocial Personality Battery")))

Matrix.val2 = na.omit(cbind(EnvFocus,ProAttRating,ProET,ProSocT))

Matrix.contentValidityCor2 = cor(Matrix.val2)
write.csv(data.frame(Matrix.contentValidityCor2), "Content Validity Aggregate.csv")

cor.test(ProET,EnvFocus[,1])
cor.test(ProET,EnvFocus[,2])
cor.test(ProET,EnvFocus[,3])
cor.test(ProET,EnvFocus[,4])
cor.test(ProSocT,ProAttRating[,1])
cor.test(ProSocT,ProAttRating[,2])
cor.test(ProSocT,ProAttRating[,3])
cor.test(ProSocT,ProAttRating[,4])

p.adjust(c(0.229,0.537,0.463,0.022,0.559,0.922,0.603,0.493), method = "holm")
p.adjust(c(0.559,0.922,0.603,0.493), method = "holm")
p.adjust(c(0.229,0.537,0.463,0.022), method = "holm")

