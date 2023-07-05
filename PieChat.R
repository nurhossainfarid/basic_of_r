x<-c(12,25, 13, 40, 10)
country<-c("UK", "USA", "Europ", "Canada", "Japan")
colors<-c("green", "red", "yellow", "blue", "orange")
pie(x, country, main="Country pie chat", col = colors)

#legend
legend("bottomleft", country, cex = 0.9, fill = colors)
