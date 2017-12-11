
<!-- README.md is generated from README.Rmd. Please edit that file -->
readmisc
========

[![Travis-CI Build Status](https://travis-ci.org/lwjohnst86/readmisc.svg?branch=master)](https://travis-ci.org/lwjohnst86/readmisc) [![Coverage Status](https://img.shields.io/codecov/c/github/lwjohnst86/readmisc/master.svg)](https://codecov.io/github/lwjohnst86/readmisc?branch=master)

The goal of readmisc is to provide an interface to reading in output from various scientific equipment.

Installation
============

``` r
# install.packages("devtools")
devtools::install_github("lwjohnst86/readmisc")
```

Example
=======

This is an example function which shows you how to read in a OxyMax csv file:

``` r
library(readmisc)
oxymax_file <- system.file("extdata", "oxymax_data.csv", package = "readmisc")
read_oxymax(oxymax_file)
#> # A tibble: 160 x 30
#>    interval  chan           date.time   vo2  o2in o2out   do2 acco2  vco2
#>       <int> <chr>              <dttm> <int> <dbl> <dbl> <dbl> <dbl> <int>
#>  1        1  0103 2017-09-25 07:47:51  1198 20.88 20.43  0.46   0.0   991
#>  2        2  0103 2017-09-25 08:05:51  1568 20.89 20.29  0.60   0.2  1354
#>  3        3  0103 2017-09-25 08:23:51  1635 20.89 20.26  0.63   0.4  1410
#>  4        4  0103 2017-09-25 08:41:51  1464 20.89 20.33  0.56   0.6  1244
#>  5        5  0103 2017-09-25 08:59:51  1302 20.89 20.39  0.50   0.8  1151
#>  6        6  0103 2017-09-25 09:17:51  1611 20.89 20.27  0.62   1.0  1400
#>  7        7  0103 2017-09-25 09:35:51  1344 20.89 20.37  0.52   1.2  1145
#>  8        8  0103 2017-09-25 09:53:51   997 20.89 20.51  0.38   1.4   845
#>  9        9  0103 2017-09-25 10:11:51  1052 20.89 20.48  0.40   1.5   904
#> 10       10  0103 2017-09-25 10:29:51  1055 20.89 20.48  0.41   1.7   924
#> # ... with 150 more rows, and 21 more variables: co2in <dbl>,
#> #   co2out <dbl>, dco2 <dbl>, accco2 <dbl>, rer <dbl>, heat <dbl>,
#> #   flow <dbl>, status1 <chr>, feed1 <dbl>, feed1.acc <dbl>,
#> #   status2 <chr>, feed2 <dbl>, feed2.acc <dbl>, xtot <int>, xamb <int>,
#> #   ztot <int>, rh.samp <dbl>, rh.ref <dbl>, rh.purge <dbl>, rh.amb <dbl>,
#> #   temp.amb <dbl>
```
