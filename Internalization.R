IntExtRating = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\IntExtRating.csv",head=TRUE,sep=","))
IERT = as.matrix(rowMeans(IntExtRating, na.rm = TRUE, dims = 1))
Agreeableness = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\Agreeableness.csv",head=TRUE,sep=","))
AgreeT = as.matrix(rowMeans(Agreeableness, na.rm = TRUE, dims = 1))
Conscientiousness = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\Conscientiousness.csv",head=TRUE,sep=","))
ConscT = as.matrix(rowMeans(Conscientiousness, na.rm = TRUE, dims = 1))

cor.test(IERT,AgreeT)
cor.test(IERT,ConscT)