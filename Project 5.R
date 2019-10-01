#I am importing the data.
myDF <- read.csv("/class/datamine/data/airbnb/united-states/ca/los-angeles/2019-07-08/visualisations/listings.csv")
#There are 44620 observations of 16 variables
#I am looking at the six most host id reviews.
head(as.character(myDF$host_id))
#The solutions are 521, 767, 3008, 3041, 3207, 9171.
#I am replacing the six most host id with the host names.
myDF$host_id <- trimws(myDF$host_name)
head(as.character(myDF$host_id))
#The solutions are Paolo, Melissa, Chas, Yoga Prietess, Bernadine, and Sanni.The host id with the most reviews is Sannie with 9171 reviews.
#I am trying to find the neighborhood with the most reviews by using tapply.
tapply(myDF$neighbourhood, myDF$host_id, sum=1)
#I got a bunch of numbers
#Now, I am going to sort the data into a table by looking at the highest number of reviews.
tail(sort(tapply(myDF$neighbourhood, myDF$host_id, sum=1)))
#The solutions are 8942, 8942, 8942, 8942, 8942, and 8943.
#I am replacing the host id with neighorhood group.
myDF$host_id <- trimws(myDF$neighbourhood_group)
#I am looking for the neighborhood with the most reviews.
tail(myDF$neighbourhood)
#The solutions are Pico-Union, Westlake, Playa del Rey, Mid-Wilshire, Beverly Hills, and Inglewood. The neighborhood with the most reviews is Inglewood.
#Now, I am importing the data about the 2019 flights.
data <- read.csv("/class/datamine/data/flights/2019.csv")
#There are 2997647 observations of 110 variables.
#I am pasting columns together.
data$myflightpath <- paste(data$ORIGIN, data$DEST)
#I am finding the longest average departure.
head(as.character(data$ORIGIN))
tapply(data$ORIGIN, data$DEST, sum=1)
#I got a lot of numbers.
#I am sorting the data.
tail(sort(tapply(data$ORIGIN, data$DEST, sum=1)))
data$DEST <- trimws(data$DEST_CITY_NAME)
#The solutions are Houston TX (three times), Detroit MI, Charlotte NC, and Austin TX. The flight path with the longest average departure delay is Houston TX.
#I am importing the data
data_2 <- read.delim("/class/datamine/data/election/itcont2020.txt", sep="|")
#I am classifying the location according to the total amount of residents who donated.
data_2$location <- paste(data_2$CITY, data_2$STATE)
#I am now sorting the data into a table.
tail(sort(table(data_2$NAME)),6)
#The solution is the six cities with the biggest amount of donations are Karl Anderson, Christine Peloza, Bonnie Davenport, Margaret Kenney, Don E Dumond, and Lillian Farhat. 
