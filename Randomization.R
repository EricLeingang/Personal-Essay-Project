set.seed=8675309
rater1<-sample.int(98,98,FALSE,NULL)
rater2<-sample.int(98,98,FALSE,NULL)
rater3<-sample.int(98,98,FALSE,NULL)
rater4<-sample.int(98,98,FALSE,NULL)
Orders<-cbind(rater1,rater2,rater3,rater4)
write.table(Orders, "clipboard", sep="\t")