x <- Sys.time()
x
names(x)

p <- as.POSIXlt(x)
names(unclass(p))
p$sec
