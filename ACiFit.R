library(plantecophys);
library(readr);

#import raw Licor csv file, skip the first 11 rows so that the 'photo' and 'Ci' etc. become headers
#col_names = TRUE,
mydata <- read_csv("Desktop/AciTest2.csv", skip = 11, col_types = list(
  Photo = col_double(),
  Tleaf = col_double(),
  PARi = col_double(),
  Rd = col_double(),
  Ci = col_double()));

#extract only the relevant rows so we have only the column headings 
#and the headings for each measurement
ACiraw2 = mydata[c(13,19,25,37,43,49,55,61,67,73,79,85,91), ];

#run the plantecophys ACi fit function
fit = fitaci(ACiraw2);

#view the parameters
fit;

#plot the Aci Curve
plot(fit)

