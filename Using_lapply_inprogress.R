
#give the source of the script that contains the function
source("Desktop/ACi-convert-Fit-Function.R");

#get a list of all .csv files in directory of choice
all_Aci_files <- list.files("Desktop/TestFolder1", pattern = "*.csv",
                               full.names = TRUE);

# use lapply function to apply the function to every file in the list
lapply(X = all_Aci_files,   # give the list of files to be batch processed
       FUN = ACi_convert_Fit); # define the function to be applied 