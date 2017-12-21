types <- c(POINT = 1L, MULTIPOINT = 2L, LINESTRING = 3L, MULTILINESTRING = 4L, POLYGON = 5L, MULTIPOLYGON = 6L, Polygons = 7L, Lines = 8L, Points = 9L, MultiPoints = 10L)

ibble.POINT <- function(x, ...) cbind(nrow = 1, ncol = length(unclass(x)), type = 1L)
ibble.MULTIPOINT <- function(x, ...) {dm <- dim(unclass(x)); cbind(nrow = dm[1], ncol = dm[2], type = 2L)}
ibble.LINESTRING  <- function(x, ...) {dm <- dim(unclass(x)); cbind(nrow = dm[1], ncol = dm[2], type = 3L)}


ibble.MULTILINESTRING <- function(x, ...) {
  out <- do.call(rbind, lapply(unclass(x), ibble.MULTIPOINT))
  out[, "type"] <- 4L
  out
}
ibble.POLYGON <- function(x, ...) {
  out <- do.call(rbind, lapply(unclass(x), ibble.MULTIPOINT))
  out[, "type"] <- 5L
  out
}
ibble.POLYPART <- function(x, subobject = 1L, ...) {
 out <- do.call(rbind, lapply(x, ibble.MULTIPOINT))
 cbind(out, subobject = subobject)
}
ibble.MULTIPOLYGON <- function(x, ...) {
  x <- unclass(x)
  out <- do.call(rbind, lapply(seq_along(x), function(a) ibble.POLYPART(x[[a]], subobject = a)))
  out[, "type"] <- 6L
  out
}

ibble.sfc <- function(x, ...) {
  x <- unclass(x)
  out <- do.call(rbind,lapply(seq_along(x), function(gi) cbind(ibble(x[[gi]]), object = gi)))
  out
}
ibble.sf <- function(x, ...) {
  ibble(x[[attr(x, "sf_column")]])
}
