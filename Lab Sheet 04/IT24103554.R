setwd("C:/Users/IT24103554/Desktop/IT24103554")
getwd()

#1
branch_data <- read.table("Exercise.txt", header = TRUE, sep = ",")

#2
head(branch_data)
str(branch_data)

#3
boxplot(branch_data$Sales_X1,
        main = "Box plot for sales",
        ylab = "Sales amount",
        col = "orange",
        border = "black")

#4
summary(branch_data$Advertising_X2)
IQR(branch_data$Advertising_X2)

#5
get.outliers <- function(z){
  q1 <- quantile(z)[2]
  q3 <- quantile(z)[4]
  
  IQR <- q3 - q1
  
  UB <- q3 + 1.5 * IQR
  LB <- q1 + 1.5 * IQR
  
  print(paste("Upper Bound =", UB))
  print(paste("Lower Bound =", LB))
  
  outliers <- sort(z[z < LB | z > UB])
  
  if (length(outliers) > 0) {
    print(paste("Outliers:", paste(outliers, collapse = ",")))
  } else {
    print("No outliers detected.")
  }
}
get.outliers(branch_data$Years_X3)












