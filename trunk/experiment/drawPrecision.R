report_data <- read.table("D:/research/twitter/cs246/ucla/loss of information/report.txt", header=T, sep="\t")

plot_colors <- c(rgb(r=0.0,g=0.0,b=0.9),
	"red",
	"forestgreen",
	rgb(r=0.0, g=0.0, b=0.0))
par(mar=c(4.2, 4.2, 0.5, 0.5))

plot(report_data$NBA, type="l", col=plot_colors[1], 
   ylim=range(0.4, 1.0), axes=F, xlab="Percentage of positive examples",
   ylab="Precision", cex.lab=1, lwd=2)
lines(report_data$RSA, type="l", lty=2, lwd=2, col=plot_colors[2])
lines(report_data$CM, type="l", lty=3, lwd=2, col=plot_colors[3])
axis(2, las=1, cex.axis=0.8)
axis(1,at=(1:10),lab=c("10%","20%","30%","40%","50%","60%","70%","80%","90%","100%"), cex.axis=0.8)
box()

# Create a legend in the top-left corner that is slightly  
legend("topright", names(report_data), cex=1, col=plot_colors, 
   lty=1:4, lwd=2, bty="n");

----------------------------------------------------------------------------


report_data <- read.table("D:/research/twitter/cs246/ucla/report_active.txt", header=T, sep="\t")

plot_colors <- c(rgb(r=0.0,g=0.0,b=0.9),
	"red",
	"forestgreen",
	rgb(r=0.0, g=0.0, b=0.0))
par(mar=c(4.2, 4.2, 0.5, 0.5))

plot(report_data$SA, type="l", col=plot_colors[1], 
   ylim=range(0.2, 1.0), axes=F, xlab="Position",
   ylab="Precision", cex.lab=1, lwd=2)
lines(report_data$NBA, type="l", lty=2, lwd=2, col=plot_colors[2])
lines(report_data$BSA, type="l", lty=3, lwd=2, col=plot_colors[3])
lines(report_data$CA, type="l", lty=4, lwd=2, col=plot_colors[4])
axis(2, las=1, cex.axis=0.8)
axis(1,at=(1:20),lab=c("5","10","15","20","25","30","35","40","45","50",
 "55","60","65","70","75","80","85","90","95","100"), cex.axis=0.8)
box()

# Create a legend in the top-left corner that is slightly  
legend("topright", names(report_data), cex=0.8, col=plot_colors, 
   lty=1:4, lwd=2, bty="n");
