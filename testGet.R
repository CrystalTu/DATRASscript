# Get DATRAS data
# Crystal 20151008

# call required libraries
library(XML, quietly = TRUE) 
library(doParallel, quietly = TRUE) 
library(parallel, quietly = TRUE) 
library(foreach, quietly = TRUE) 
library(data.table, quietly = TRUE)

setwd('work/Fishery/ICES')
source('getDATRAS.R') #from 'rICES' toolbox, FLR still can't build on the R 3.1.x

# For more information, check https://datras.ices.dk/WebServices/Webservices.aspx
BITS <- getDATRAS(record="CA",
                  survey="BITS",
                  startyear=2000,
                  endyear=2001,
                  quarters=1,
                  parallel=TRUE,
                  cores=4)