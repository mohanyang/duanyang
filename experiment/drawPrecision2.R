par(mar=c(0, 0, 0, 0))
d <- c(244, 64, 118, 51, 74)
d_labels <- round(d/sum(d) * 100, 1)
d_labels <- paste(d_labels, "%", sep="")
pie(d, col=rainbow(length(d)), labels=d_labels, cex=0.8)
legend(0.9,0.8, c("ActiveUCLA","InactiveUCLA",
"Inactive","Intent","Negative"), cex=0.8,fill=rainbow(length(d)))

----------------------------------------------------------------------------

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
