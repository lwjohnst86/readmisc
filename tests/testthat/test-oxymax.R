context("Oxymax")

test_that("Reading in Oxymax csv file", {
    fi <- system.file("extdata", "oxymax_data.csv", package = "readmisc")
    ds <- read_oxymax(fi)
    expect_equal(nrow(ds), 160)
    expect_equal(ncol(ds), 30)
    expect_identical(class(ds$date.time), c("POSIXct", "POSIXt"))
})
