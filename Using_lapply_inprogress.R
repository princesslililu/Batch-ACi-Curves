
#give the source of the script that contains the function
source("Desktop/ACi-convert-Fit-Function.R");
#ACi_convert_Fit("Desktop/AciTest2.csv");

#get a list of all .csv files in directory
all_Aci_files <- list.files("TestFolder1", pattern = "*.csv",
                               full.names = TRUE);

# use lapply function to apply the function to every file in the list
lapply(X = all_Aci_files,   # List or vector
       FUN = ACi_convert_Fit()); # Function to be applied) # Additional arguments to be passed to FUN