
library(tidyverse)
library(readxl)

dt <- read_csv("/home/p3cival/Documents/data-viz/lab-3/import.csv",col_names=FALSE)
names(dt) <- c("names","Age in years","Sex","Points")

dt2 <- read_excel("/home/p3cival/Documents/data-viz/lab-3/asia.xlsx")
