# TODO: Confirm that oxymax files are csv files.

#' Read in OxyMax csv data file.
#'
#' OxyMax Respirometer machine collects data on gas concentrations in an
#' enclosed environment. The output from the machine is a csv file with standard
#'
#' @param file OxyMax csv file.
#'
#' @return A data.frame.
#' @export
#'
#' @examples
#'
#' \dontrun{
#' fi <- system.file("extdata", "oxymax_data.csv", package = "readmisc")
#' read_oxymax(fi)
#' }
#'
read_oxymax <- function(file) {
    start_line <- read_lines(file) %>%
        stringr::str_which("^INTERVAL,")
    start_line <- start_line[1]
    end_line <- read_lines(file) %>%
        stringr::str_which("^:EVENTS")

    header_line <- start_line - 1
    column_names <-
        read_lines(file, skip = header_line, n_max = 1) %>%
        stringr::str_split(",") %>%
        unlist() %>%
        tibble::tidy_names(syntactic = TRUE, quiet = TRUE) %>%
        stringr::str_to_lower()
    column_names <- c(column_names[-length(column_names)], "X31")

    data_start_line <- start_line + 2
    data_end_line <- end_line - start_line - 5
    read_csv(
        file,
        col_names = column_names,
        col_types = cols(
            date.time = col_datetime(format = "%F %I:%M:%S %p"),
            X31 = col_skip()
        ),
        skip = data_start_line,
        n_max = data_end_line,
        na = c("", "NA", "ERR:0")
    )
}
