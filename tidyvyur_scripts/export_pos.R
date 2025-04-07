install.packages("remotes")
remotes::install_github("johnfranchak/tidyvyur")
library(tidyverse)
library(tidyvyur)
library(here)

# List opf_files for easy iteration
opf_files <- list.files(path = here("opf_files"), pattern = ".opf", full.names = T)

# read_opf reads all columns into a list
all_data <- read_opf(opf_files[1])
glimpse(all_data)

# Individual columns can be accessed as data frames
position <- all_data[['position']]
sync <- all_data[['sync']]

# Write functions that read what you want
read_one_file <- function(opf_file) {
  tmp_opf <- read_opf(opf_file)
  position <- tmp_opf[['position']]
  sync <- tmp_opf[['sync']]
  position$sync_point <- sync$onset[1]
  position$id <- sub('.*IMUL_', '', opf_file)
  return(position)
}

# Use the function to read one file
one_file <- read_one_file(opf_files[1])

# Use the function to read in and merge a vector of files
all_data <- map_dfr(opf_files, read_one_file)
