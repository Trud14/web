#install.packages("tidyverse")
#install.packages("rvest")
#install.packages("xml2")
#install.packages("dplyr")

# Loaded the required libraries
library("rvest")
library("tidyverse")
library ("xml2")

# Sent a HTTP request to the desired server and downloaded the HTML file
url <-read_html("https://www.qhatlas.com.au/content/stone-walls-do-prison-make-law-landscape")

# Created a new variable called tables
# Used a pipe operator so the result of the first command is carried to the next, left to right.
# The url variable (below) is run by the html_table function (below).
# This command parses the result as a new variable, "tables".
# Will list tables found in the html code of the sites website.
tables <- url %>% html_table(fill = TRUE)

# This command parses the data from table 2 into a new variable "data".
# The number 2 signifies we want the second table.
# Can inspect the results from the data variable in the Environment pane.
data <- (tables[[1]])

# This command tells R to transform the information in the variable "data" into a *.csv file.
# Saved the *.csv file into into the "path" selected, my HINQ302Assessment_2 repo.
# This was done by choosing the directory in the files pane, selecting more button (cog) and selecting copy folder path to clipboard.
# The copied folder path is inserted between "" in the code below.
# Important to name the file, ending in .csv or it wont save, just get error messages.
write.csv(data,"C:/HINQ302Assessment_2/19c_Brisbane_Prisons.csv")
