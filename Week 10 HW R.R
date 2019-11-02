library(igraph)
library(plyr)
library(dplyr)
nodes <- c(1:4)
arcs <- matrix(c(1,3,1, 1,4,1, 3,1,1, 3,2,1, 3,4,1, 3,4,1, 4,1,1, 4,2,1, 4,2,1, 4,3,1, 4,3,1), byrow = TRUE, ncol = 3)
vc <- c("gold", "red", rep("gold", 2))
g <- graph_from_data_frame(arcs, directed = TRUE, vertices = nodes)
V(g)$color <- vc
tkplot(g)
randwalk <- function(x){
  w <- random_walk(g, 1, 100, mode = "out", stuck = "return")
  return(w)
}
stats<-matrix(rep(0,10))
total_stats<-matrix(rep(0,10))
rw_en_1<-function()
{
  current_node<-1
  for (i in 1:10) stats[i]=0
  stats[2]<-1
  while(current_node!=0)
  {
    initial_node<-current_node
    switch(current_node,
           current_node<-sample(2:3, size=1, replace=TRUE),
           current_node<-sample(c(0,1,3), size=1, replace=TRUE, prob=c(0.25,0.25,0.5)),
           current_node<-sample(0:2, size=1, replace=TRUE, prob=c(0.4,0.2,0.4)))
    if (current_node!=0)
    {
      stats[1]<-stats[1]+1
      stats[current_node+1]<-stats[current_node+1]+1
    }
    if (initial_node==1)
    {
      if (current_node==2) stats[5]<-stats[5]+1
      if (current_node==3) stats[6]<-stats[6]+1
    }
    if (initial_node==2)
    {
      if (current_node==1) stats[7]<-stats[7]+1
      if (current_node==3) stats[8]<-stats[8]+1
    }
    if (initial_node==3)
    {
      if (current_node==1) stats[9]<-stats[9]+1
      if (current_node==2) stats[10]<-stats[10]+1
    }
  }
  return(stats)
}

# 100 random walks

for (i in 1:10) total_stats[i]=0
for (i in 1:100)
{
  total_stats<-total_stats+rw_en_1()
}
print(total_stats/100)

# 1000 random walks

for (i in 1:10) total_stats[i]=0
for (i in 1:1000)
{
  total_stats<-total_stats+rw_en_1()
}
print(total_stats/1000)

# 10000 random walks

for (i in 1:10) total_stats[i]=0
for (i in 1:10000)
{
  total_stats<-total_stats+rw_en_1()
}
print(total_stats/10000)