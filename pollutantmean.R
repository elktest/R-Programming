
## Assignment 1

pollutantmean <- function(directory, pollutant, id = 1:332) {

        ## Create character vector with each filename in folder
        filename <- as.character(list.files(directory)) 
        
        ## Create character vector with full filepath
        path <- as.character(paste0(directory,"/",filename))
        
        ## Initialize empty data frame
        pollutantdata <- data.frame()

        ## Create for loop to add rows of each file to data frame
        for(i in id) {
                pollutantdata <- rbind(pollutantdata, read.csv((path[i]),
                header=TRUE, sep=","))
        
        ## Calculate the mean of pollutant after removing NA values
                meancol <- mean(pollutantdata[,pollutant],na.rm=TRUE)
        }
        meancol
}


