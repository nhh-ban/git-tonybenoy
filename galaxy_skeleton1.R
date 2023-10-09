# Skeleton file 1 for Assignment 1 in BAN400.
# -------------------------------------------

# Comments below describes briefly a set of steps that solves Problem 1.

# Read the entire data file into memory using the readLines()-function. Use the
# URL direcly or read the data from the local file that is in the repository.
data <- readLines("http://www.sao.ru/lv/lvgdb/article/suites_dw_Table1.txt")


# Identify the line number L of the separator line between the column names and
# the rest of the data table
L <- grep("-----+", data)

# Save the variable descriptions (i.e. the information in lines 1:(L-2)) in a
# text-file for future reference using the cat()-function

desc <- data[1:(L - 2)]
cat(desc, file = "./desc.txt", sep = "\n")

# Extract the variable names (i.e. line (L-1)), store the names in a vector.

names <- trimws(unlist(strsplit(data[L - 1], "\\|")))

# Read the data. One way to do this is to rewrite the data to a new .csv-file
# with comma-separators for instance using cat() again, with the variable names
# from the step above on the first line (see for instance paste() for collapsing
# that vector to a single string with commas as separators).
file_name <- "clean_data.csv"
cat(paste(names, collapse = ","), file = file_name, sep = "\n")
for (i in L + 1:length(data)) {
    cat(paste(trimws(unlist(strsplit(data[i], "\\|"))), collapse = ","), file = file_name, append = TRUE, sep = "\n")
}
# Read the finished .csv back into R in the normal way.

data_csv <- read.csv(file_name)
