
test_format <- function()
{
    ## On a list.
    x1 <- list(1:5, NULL, 1:2)
    target1 <- c("1, 2, 3,....", "            ", "        1, 2")
    checkIdentical(target1, format(x1))

    ## On a list where some list elements are S4 objects.
    library(IRanges)
    x2 <- list(IRanges(), IRanges(1, 8:9), IRanges(2, 23:21))
    target2 <- c("            ", "    1-8, 1-9", "2-23, 2-....")
    checkIdentical(target2, format(x2))

    ## On a data.frame.
    x <- data.frame(x1=I(x1), x2=I(x2))
    current <- format(x)
    checkTrue(is.data.frame(current))
    checkIdentical(c(3L, 2L), dim(current))
    checkIdentical(I(target1), current$x1)
    checkIdentical(I(target2), current$x2)

    ## Getting rid of the silly AsIs wrapper around the columns should
    ## make no difference.
    x[[1]] <- unclass(x[[1]])
    x[[2]] <- unclass(x[[2]])
    checkIdentical(current, format(x))
}

