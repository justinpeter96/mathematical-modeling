install.packages("igraph")
install.packages("ggplot")
library(igraph)
gr<-graph_from_literal(a:b--c:d--c)
res<-c(1,1,1,1/2,1/2)
con<-1/res
E(gr)$weight<-con
is_weighted(gr)
tkplot(gr,vertex.color="gold",edge.label=con)
adM <- as_adjacency_matrix(gr,
                           type="both",
                           edges=TRUE,
                           sparse=TRUE)
Cxy <- matrix(sapply(adM,function(x) if(x>0) con[x] else 0),dim(adM))
Cx<-colSums(Cxy)
P<-Cxy/Cx
gMC<-graph_from_adjacency_matrix(P,
                                 mode ="directed",
                                 weighted = TRUE,
                                 add.colnames = NULL,
                                 add.rownames = NA)%>%
  set_vertex_attr("label", value = letters[1:4])
tkplot(gMC,vertex.color="gold",
       edge.curved=.6)
w<-Cx/sum(Cx)
w
w%*%P
w[1]*P[1,3]*P[3,2]*P[2,4]*84
w[4]*P[4,2]*P[2,3]*P[3,1]*84