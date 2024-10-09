### R code from vignette source 'EBSeq_Vignette.Rnw'

###################################################
### code chunk number 1: EBSeq_Vignette.Rnw:172-173
###################################################
library(EBSeq)

input <- function(inputfile) {
    IsoEBOut <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {
pdf(outputfile)

###################################################
### code chunk number 33: EBSeq_Vignette.Rnw:695-700
###################################################
par(mfrow=c(2,2))
PolyFitValue=vector("list",3)
for(i in 1:3) {
    PolyFitValue[[i]]=PolyFitPlot(IsoEBOut$C1Mean[[i]], 
    IsoEBOut$C1EstVar[[i]],5)
}


###################################################
### code chunk number 34: EBSeq_Vignette.Rnw:713-722
###################################################
PolyAll=PolyFitPlot(unlist(IsoEBOut$C1Mean), unlist(IsoEBOut$C1EstVar),5)
lines(log10(IsoEBOut$C1Mean[[1]][PolyFitValue[[1]]$sort]), 
PolyFitValue[[1]]$fit[PolyFitValue[[1]]$sort],col="yellow",lwd=2)
lines(log10(IsoEBOut$C1Mean[[2]][PolyFitValue[[2]]$sort]), 
PolyFitValue[[2]]$fit[PolyFitValue[[2]]$sort],col="pink",lwd=2)
lines(log10(IsoEBOut$C1Mean[[3]][PolyFitValue[[3]]$sort]), 
PolyFitValue[[3]]$fit[PolyFitValue[[3]]$sort],col="green",lwd=2)
legend("topleft",c("All Isoforms","Ng = 1","Ng = 2","Ng = 3"),
col=c("red","yellow","pink","green"),lty=1,lwd=3,box.lwd=2)

}


