GPA = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\GPA.csv",head=TRUE,sep=","))
Conscientiousness = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\Conscientiousness.csv",head=TRUE,sep=","))
Agreeableness = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\Agreeableness.csv",head=TRUE,sep=","))
Extraversion = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\Extraversion.csv",head=TRUE,sep=","))
Neurotocism = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\Neurotocism.csv",head=TRUE,sep=","))
Openness = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\Openness.csv",head=TRUE,sep=","))
OverallRating = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\OverallRating.csv",head=TRUE,sep=","))

Matrix.pers = na.omit(cbind(Agreeableness,Conscientiousness,Extraversion,Neurotocism,
                            Openness,OverallRating))
Matrix.persCor = cor(Matrix.pers)
B.5 = data.frame(Matrix.persCor)
write.csv(B.5, "B5Matrix.csv")

OpenT = matrix(rowMeans(Openness, na.rm = TRUE, dims = 1), dimnames = list(c(1:97),c("Openness")))
ConscT = matrix(rowMeans(Conscientiousness, na.rm = TRUE, dims = 1), dimnames = list(c(1:97),c("Conscientiousness")))
ExtraT = matrix(rowMeans(Extraversion, na.rm = TRUE, dims = 1),dimnames = list(c(1:97),c("Extraversion")))
AgreeT = matrix(rowMeans(Agreeableness, na.rm = TRUE, dims = 1),dimnames = list(c(1:97),c("Agreeableness")))
NeuroT = matrix(rowMeans(Neurotocism, na.rm = TRUE, dims = 1),dimnames = list(c(1:97),c("Neuroticism")))
OverT = as.matrix(rowMeans(OverallRating, na.rm = TRUE, dims = 1))

Matrix.pers2 = na.omit(cbind(AgreeT,ConscT,ExtraT,NeuroT,
                            OpenT,rowMeans(OverallRating)))
Matrix.persCor2 = cor(Matrix.pers2)
B.5.Aggregate = data.frame(Matrix.persCor2)
write.csv(B.5.Aggregate, "B5AggregateMatrix.csv")

cor.test(GPA,OverT)
cor.test(OverT, ExtraT)
cor.test(OverT, ConscT)
cor.test(OverT, NeuroT)
cor.test(OverT, AgreeT)
cor.test(OverT, OpenT)