report_data <- read.table("D:/research/twitter/cs246/ucla/loss of information/report.txt", header=T, sep="\t")

par(mar=c(4.2, 4.2, 1, 1))
x <- report_data$RSA
y <- report_data$NBA
z <- report_data$CM
height <- rbind(x,y,z)
barplot(height, ylab = "Precision@100",
 ylim = c(0, 1), beside = TRUE, col=rainbow(3),
 xlab="Percentage",
 names.arg=c("10%","20%","30%","40%","50%","60%","70%","80%","90%","100%"))

legend("topleft", c("RSA","NBA","CM"), cex=0.6, 
   bty="n", fill=rainbow(3));
box()
