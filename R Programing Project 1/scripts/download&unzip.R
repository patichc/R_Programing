
## Function to download and unzip the dataset files
downloadUnzip <- function (
        sourceurl = "https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fspecdata.zip",
        zipName = "specdata.zip",
        extractdir = "specdata",
        DownloadDirectory = "Downloads") {
        
        ## Set download directory if the directory does not exists it is created
        if (!(file.exists(DownloadDirectory))) dir.create(DownloadDirectory)
        currentwd <- getwd()
        setwd(DownloadDirectory)
        
        ## Downloads into the local file
        download.file(url = sourceurl,
                      destfile = zipName,
                      mode = "wb")
        downloadDate <- date
        
        ## Unzip the file on the local directory
        unzip (zipName, exdir = "..")
        
        setwd(currentwd)
        
}


## Sets the working directory to the forder where the Project1 will be developed
setwd("~/DataScientist/R-Programming/R Programing Project 1")
## downloads and unzip the files
downloadUnzip()

source('~/DataScientist/R-Programming/R Programing Project 1/scripts/pollutantmean.R')
part1.1 <- pollutantmean("specdata", "sulfate", 1:10)
part1.2 <- pollutantmean("specdata", "nitrate", 70:72)
part1.3 <- pollutantmean("specdata", "nitrate", 25)

source('~/DataScientist/R-Programming/R Programing Project 1/scripts/complete.R')
part2.1 <- complete("specdata", 1)
part2.2 <- complete("specdata", c(2, 4, 8, 10, 12))
part2.3 <- complete("specdata", 3)

source('~/DataScientist/R-Programming/R Programing Project 1/scripts/corr.R')
cr <- corr("specdata", 150)
part3.1.1 <- head(cr)
part3.1.2 <- summary(cr)
part3.1.3 <- length(cr)
cr <- corr("specdata", 400)
part3.2.1 <- head(cr)
part3.2.2 <- summary(cr)
part3.2.3 <- length(cr)
cr <- corr("specdata", 5000)
part3.3.1 <- head(cr)
part3.3.2 <- summary(cr)
part3.3.3 <- length(cr)
cr <- corr("specdata")
part3.4.1 <- head(cr)
part3.4.2 <- summary(cr)
part3.4.3 <- length(cr)
