message ("load some packages")
library(RColorBrewer)
library(knitr)
library(markdown)
library(rmarkdown)
library(ggplot2)
library(data.table)
message ("done")

message ("execute some calculations")
1+1
message ("done")

message ("Write some lines to output.txt")
fileConn<-file("output.txt")
writeLines(c("Hello","World"), fileConn)
close(fileConn)
message ("done")
