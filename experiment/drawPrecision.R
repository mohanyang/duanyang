report_data <- read.table("D:/research/twitter/cs246/ucla/report_active.txt", header=T, sep="\t")

plot_colors <- c(rgb(r=0.0,g=0.0,b=0.9),
	"red",
	"forestgreen",
	rgb(r=0.0, g=0.0, b=0.0))
par(mar=c(4.2, 4.2, 0.5, 0.5))

plot(report_data$SA, type="l", col=plot_colors[1], 
   ylim=range(0.4, 1.0), axes=T, xlab="Position",
   ylab="Precision", cex.lab=1, lwd=2, xlim=c(10,100))
lines(report_data$NBA, type="l", lty=2, lwd=2, col=plot_colors[2])
lines(report_data$RSA, type="l", lty=3, lwd=2, col=plot_colors[3])
lines(report_data$CM, type="l", lty=4, lwd=2, col=plot_colors[4])
box()

# Create a legend in the top-left corner that is slightly  
legend("topright", names(report_data), cex=1, col=plot_colors, 
   lty=1:4, lwd=2, bty="n");

----------------------------------------------------------------------------


report_data <- read.table("D:/research/twitter/cs246/ucla/report.all.final.txt", header=T, sep="\t")

plot_colors <- c(rgb(r=0.0,g=0.0,b=0.9),
	"red",
	"forestgreen",
	rgb(r=0.0, g=0.0, b=0.0))
par(mar=c(4.2, 4.2, 0.5, 0.5))

plot(report_data$SA, type="l", col=plot_colors[1], 
   ylim=range(0.6, 1.0), axes=T, xlab="Position",
   ylab="Precision", cex.lab=1, lwd=2, xlim=c(10,100))
lines(report_data$NBA, type="l", lty=2, lwd=2, col=plot_colors[2])
lines(report_data$RSA, type="l", lty=3, lwd=2, col=plot_colors[3])
lines(report_data$CM, type="l", lty=4, lwd=2, col=plot_colors[4])
box()

# Create a legend in the top-left corner that is slightly  
legend("topright", names(report_data), cex=1, col=plot_colors, 
   lty=1:4, lwd=2, bty="n");
