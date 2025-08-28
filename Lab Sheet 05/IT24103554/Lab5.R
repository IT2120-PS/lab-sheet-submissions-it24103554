setwd("C:/Users/Vishwa Nethsara/Desktop/IT24103554")

# Import the data set
Delivery_Times <- read.table("Exercise - Lab 05.txt",header = TRUE, sep = ",")

# View in separate window
fix(Delivery_Times)

# attach the file into R
attach(Delivery_Times)

# create histogram
hist(Delivery_Times$Delivery_Time_.minutes.,
     main = "Histogram of Delivery Times",
     breaks <- seq(20, 70, length = 10), right = FALSE,
     col = 'orange',
     xlab = "Delivery Times",
     border = 'black')

# make frequently table
freq_table <- table(cut(Delivery_Times$Delivery_Time_.minutes.,
                        breaks <- seq(20,70, length = 10), right = FALSE))

# cumulative frequency
cum_freq <- cumsum(freq_table)

# frequency polygon
plot(breaks[-1],
     main="Frequency Polygon of Delivery Times",
     cum_freq, 
     type="o", 
     col="purple",
     xlab="Delivery Time", 
     ylab="Cumulative Frequency")


