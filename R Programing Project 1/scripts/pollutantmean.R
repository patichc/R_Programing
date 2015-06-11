pollutantmean <- function(directory, pollutant, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        
        ## 'pollutant' is a character vector of length 1 indicating
        ## the name of the pollutant for which we will calculate the
        ## mean; either "sulfate" or "nitrate".
        
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return the mean of the pollutant across all monitors list
        ## in the 'id' vector (ignoring NA values)
        ## NOTE: Do not round the result!
        
        fileToRead <- sprintf("%03d.csv",id) 
        
        allLocationPollutant <- data.frame()
        
        oncallwd <- getwd()
        setwd(directory)
        for (i in fileToRead) {
                iPollutant <- read.csv(i)
                allLocationPollutant <- rbind(iPollutant,allLocationPollutant)
        }
        setwd(oncallwd)
        
        pollutantdata <- allLocationPollutant[pollutant]
        sapply(pollutantdata,mean,na.rm = TRUE)
}