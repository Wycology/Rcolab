# Task: Extracting raster values and saving them in Excel file as .xlsx
# Author: Wyclife Agumba Oluoch
# Contact: wyclifeoluoch@gmail.com
# Date: Created on 13th June 2021
# Last modified: 

library(raster)     # For creating the raster objects and stacking them 
library(xlsx)       # For handling the workbook and excel sheets

# I will create three raster files and stack them

r1 <- raster(nrows = 20, ncols = 20) # Creating a simple raster
r1[] <- rnorm(n = ncell(r1)) # Filling it with random numbers
r2 <- r1 ^ 2 # Simple math on the raster
r3 <- r2 / 13 # Simple math operation on raster

stacked_rasters <- stack(r1, r2, r3)

# Here I create a function to achieve the job

stack_to_xlsx <- function(rs, filename) {
  w = createWorkbook()
  for (i in 1:nlayers(rs)) {
    cs = createSheet(w, sheetName = paste0("Band-", i))
    dr = raster::as.data.frame(raster::as.matrix(raster(rs, i)))
    addDataFrame(dr,
                 cs)
  }
  saveWorkbook(w, filename)
}

# Then I use the function on my stacked rasters to create a file called myxlsx.xlsx 
# workbook in my working directory

stack_to_xlsx(stacked, 'myxlsx.xlsx')

# Note: The pixels can be too many in case of worldclim data. Kindly consider
# cropping and masking to your study area before creating an Excel file.