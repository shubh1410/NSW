library("igraph")
links <- read.table("/home/shuham/Desktop/retweet.txt")
head(links)
kashmir_retweet <- graph_from_data_frame(d=links,directed = T)

tkplot(kashmir_retweet,layout=layout.auto(kashmir_retweet),edge.arrow.size=0.6,edge.color="black",vertex.color="orange",vertex.size=15, 
     
     vertex.frame.color="black", vertex.label.color="black", 
     
     vertex.label.cex=0.45, vertex.label.dist=0)

