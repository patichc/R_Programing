corr <- function(directory, threshold = 0, ID=1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        
        ## 'threshold' is a numeric vector of length 1 indicating the
        ## number of completely observed observations (on all
        ## variables) required to compute the correlation between
        ## nitrate and sulfate; the default is 0
        
        ## Return a numeric vector of correlations
        ## NOTE: Do not round the result!
        
        ## requires the function complete to be defined
        
        completeAllMonitors <- complete (directory)
        
        corrVector <- NULL
        
        oncallwd <- getwd()
        setwd(directory)
        
        for (i in ID) {
                if (completeAllMonitors[["nobs"]][i] >=threshold){
                        fileToRead <- sprintf("%03d.csv",i)
                        iPollutant <- read.csv(fileToRead)
                        corrVector <- cbind(corrVector,cor(iPollutant[["sulfate"]],
                                                           iPollutant[["nitrate"]],
                                                           "pairwise.complete.obs"))
                } 
        }
        setwd(oncallwd)
        
        corrVector[1,]
        
}