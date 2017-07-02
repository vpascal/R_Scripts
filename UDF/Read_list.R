library(dplyr)
library(readr)
library(purrr)

# Reading files and retaining their names as another variable in the data frame. Several approaches are explored.

files <- dir(pattern = "csv")
mylist <- map(files, read_csv)


# Using a loop
for (i in seq_along(mylist)) {
  mylist[[i]]$file_name <- rep(files[i], nrow(mylist[[i]]))
  
}

# Using mapply
mapply(cbind, mylist, "file_name" = files, SIMPLIFY = F)


# Using function programming paradigm
map2(mylist, files, function(x, y)
  cbind(x, "file_name" = y))


# Doing it in one step and outputting the results to a dataframe.
map2_df(mylist, files, function(x, y)
  cbind(x, "file_name" = y))
