#q5

library(igraph)
set.seed(202)
link <- read.table("C:\\Users\\lglg9\\Desktop\\out.fb",sep = " ",header = F)
g <- graph_from_data_frame(d=link,directed = F)
plot(g, vertex.label= NA, edge.arrow.size=0.02,vertex.size = 0.5, xlab = "")
data <- degree(g)
data <- data[data>0]
data.dist <- data.frame(k=0:max(data),p_k=degree_distribution(g))
data.dist <- data.dist[data.dist$p_k>0,]
library(ggplot2)
ggplot(data.dist) + geom_point(aes(x=k, y=p_k)) + theme_bw()



#q8
#library(igraph)
set.seed(202)
link <- read.table("C:\\Users\\lglg9\\Desktop\\out.twitter",sep = " ",header = F)
g <- graph_from_data_frame(d=link,directed = F)
plot(g, vertex.label= NA, edge.arrow.size=0.02,vertex.size = 0.5, xlab = "")
data <- degree(g)
data <- data[data>0]
z <- alpha_centrality(g, nodes = V(g), alpha = 1, loops = FALSE,
                     exo = -.7, weights = NULL, tol = 1e-07, sparse = TRUE)
plot(z)
z <- alpha_centrality(g, nodes = V(g), alpha = 1, loops = FALSE,
                      exo = .7, weights = NULL, tol = 1e-07, sparse = TRUE)
plot(z)
library(CINNA)
library(centiserve)
links <- read.table("C:\\Users\\lglg9\\Desktop\\out1.hubbell",sep = " ",header = F,fill=TRUE)
caida <- graph_from_data_frame(d=link,directed = T)
is_weighted(caida)
visualize_graph( caida , centrality.type="Hubbell Index")

