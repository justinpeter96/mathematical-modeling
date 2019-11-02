P<-rbind(c(1/2,1/4,1/4),c(1/2,0,1/2),c(1/4,1/4,1/2))
ew<-c("1/2","1/4","1/4","1/2","1/2","1/4","1/4","1/2")
install.packages("igraph")
library(igraph)
gc <- graph_from_adjacency_matrix(P, weighted=TRUE)
tkplot(gc,vertex.color=c("skyblue","gold","white"),
       vertex.label=c("R","N","S"),  edge.label=ew,
       edge.label.dist=.5, edge.curved=.6,edge.label.size = .6)

