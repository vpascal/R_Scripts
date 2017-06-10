strip_comma <- function(x) gsub(",", "", x)
#or strip_comma <- function(x) as.numeric(gsub(",", "", x))
vlad<-apply(data,MARGIN=2,FUN=strip_comma)

# trims leading and trailing space
trim <- function (x) gsub("^\\s+|\\s+$", "", x)