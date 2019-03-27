race_collape <- function(dataset) {
  temp <- apply(apply(dataset, 2, function(x)
    !is.na(x)),
    1, sum)
  
  temp[temp > 1] <- 'more than one'
  temp[temp == 0] <- 'uknown'
  
  ifelse(temp == 1, dplyr::coalesce(!!!dataset), temp)
}
