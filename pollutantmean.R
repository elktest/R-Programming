## Combine CSV files into one dataframe by listing all the files in the directory

pollutantmean <- function(directory, pollutant, id = 1:332) {
        directory <- "C:/Users/erinstratton/Documents/Programming/Coursera/Assignments/specdata/"
        listfiles <- as.character(list.files(directory))
        path <- paste0(directory,listfiles)
        readfile <- data.frame()
        
        ##filename <- c(paste0("00",id[1:9],".csv"),
        ##              paste0("0",id[10:99],".csv"),
        ##             paste0(id[100:length(id)],".csv"))
        
        
        for(i in id) {
                readfile <- rbind(readfile, read.csv(path[i]))
        }
        summary(readfile)
}



## Assignment 1

pollutantmean <- function(directory, pollutant, id = 1:332) {

        ## Set directory
        directory <- "C:/Users/erinstratton/Documents/Programming/Coursera/Assignments/specdata/"
        
        ## Define pollutant
        
        ## Create character vector with each filename based on length of id
        filename <- as.character(list.files(directory)) ##paste0(formatC(id, width=3, flag="0"),".csv")
        
        ## Create character vector with full filepath
        path <- as.character(paste0(directory,filename))
        
        ## Initialize empty data frame
        pollutantdata <- data.frame()

        ## Create for loop to add rows of each file to data frame
        for(i in id) {
                pollutantdata <- rbind(pollutantdata, read.csv((path[i]),
                header=TRUE, sep=",", 
                colClasses=c("Date","numeric","numeric","numeric"),
                stringsAsFactors=FALSE))        
                meancal <- mean(pollutantdata[,pollutant],na.rm=TRUE)

        }
        meancal
        
        ## Calculate the mean of pollutant after removing NA values

}

 