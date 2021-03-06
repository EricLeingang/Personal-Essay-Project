VolCurrent = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\VolCurrent.csv",head=TRUE,sep=","))
VolPY = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\VolPY.csv",head=TRUE,sep=","))
VFICareer = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\VFICareer.csv",head=TRUE,sep=","))
GPA = as.matrix(read.csv(file="C:\\Users\\Eric Leingang\\Desktop\\Final Paper\\Variable Data\\GPA.csv",head=TRUE,sep=","))

sink("volunteerHyp.txt")
summary((a = aov(lm(GPA ~ (VolCurrent*rowMeans(VFICareer))))))
summary((b = aov(lm(GPA ~ (VolPY*rowMeans(VFICareer))))))
sink()