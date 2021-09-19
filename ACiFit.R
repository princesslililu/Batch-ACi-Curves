#import libraries
library(plantecophys);
library(readr);

#import raw Licor csv file, skip the first 11 rows so that the headers are in 1st row
raw_licor_data <- read_csv("Desktop/AciTest2.csv", skip = 11, col_types = list(
  Photo = col_double(), #make sure column is numeric
  Tleaf = col_double(), #make sure column is numeric
  PARi = col_double(),  #make sure column is numeric
  Rd = col_double(),    #make sure column is numeric
  Ci = col_double()));  #make sure column is numeric

#convert raw data into usable format by extracting only the relevant rows so we have only the column headings 
#and the values for each measurement
converted_licor_data = raw_licor_data[c(13,19,25,37,43,49,55,61,67,73,79,85,91), ];

#run the plantecophys ACi fit function on the converted licor data
fit = fitaci(converted_licor_data);

#view the parameters
fit;

#plot the ACi Curve
plot(fit)

