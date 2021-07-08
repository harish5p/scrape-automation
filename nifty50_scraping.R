#load the packages
library(rvest)
library(readr)

# https://www.dataquest.io/blog/web-scraping-in-r-rvest/
# https://www.r-bloggers.com/2021/03/daily-stock-gainers-automated-web-scraping-in-r-with-github-actions/
# Start by reading a HTML page with read_html():
html <- read_html("https://www.firstbridgedata.com/deepdive/index/SGOL")

aberdeen <-html %>% html_nodes("tr") %>% .[[25]] %>% html_text 
#get the  value
num <- parse_number(aberdeen)
# convert to data frame
num <- as.data.frame(num)

 # https://www.geeksforgeeks.org/concatenation-of-elements-without-separator-in-r-programming-paste0-function/
write_csv(num, paste0('data/',Sys.Date(),'-aberdeen.csv'))













 



       
