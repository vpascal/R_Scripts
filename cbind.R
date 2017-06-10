repcbind <- function(x,y) {
  nx <- NROW(x)
  ny <- NROW(y)
  if (nx < ny)
    x <- apply(x, 2, rep, length = ny)
  else if (nx > ny)
    y <- apply(y,2,rep,length=nx)
  return(cbind(x, y))
}

