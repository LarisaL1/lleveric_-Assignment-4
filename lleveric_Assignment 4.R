library(readr)
Universities <- read_csv("Documents/Assignment 4/Universities.csv")
View(Universities)
head(Universities)
summary(Universities)

#remove records with missing measurements
library(tidyr)
"drop_na (Universities)"

#K-Means
library(tidyverse)
install.packages("factorextra")
library("factorextra") #clustering algorithms & visualization
library(ISLR)
set.seed(123)

Universities <- "Universities [,c(5,20)]"
summary (Universities)

# We will cluster Universities based on % of applications accepted and graduation rate. But first we must scale the data
# Scaling the data frame (z-score)
Universities <- "scale(Universities)"
distance <- "get_dist(Universities)"
"fviz_dist(distance)"

# Let us now run the k-means algorithm to cluster the Universities. We will choose an initial valueof k=4
k4 <-"kmeans(Universities, centers = 4, nstart = 20)"

#Visualize the output
"km.res$cluster"
k4$centers #output the centers
k4$size # number of universities in each cluster
k4$cluster[150] #identify the cluster of the 150th observation as an example
fviz_cluster (k4, data = Universities) #visualize the output

# Other Distances
install.packages("flexclust")
library(flexclust)
set.seed(123)

#kmeans clustering, using manhattan distance
k4 = kcca (Universities, k=4, kccaFamily("kmedians"))

# Apply the predict function
"clusters_index <- predict(k4)"
"dist(k4@centers)"
"image(k4)"
"points(Universities, col=clusters_index, pch=1.639, cex=0.5)" #using number of mean applicaitons received for pch

#Determining k

"library(tidyverse)" #data manipulation
"library(factoextra)" #clustering & visualization
library (ISLR)
set.seed(123)

Universities<-Universities [,c(5,20)]

#scaling the data frame (z-score)
"Universities<-scale(Universities)"
fviz_nbclust(Universities, kmeans, method = "wss")

#Silhouette Method

fviz_nbclust(Universities, kmeans, method = "silhouette")






