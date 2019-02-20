
library(zoo)
library(lubridate)
df1<-read.csv(file.choose(),header = TRUE)
dates <- as.Date(df1$Date, '%d-%m-%Y')
dates
yr <- year(dates)
monyr <- as.yearmon(dates)
lst <- lapply(list(dates, yr, monyr), function(x) 
  transform(df1, Count=ave(seq_along(x), x, FUN= length)))
names(lst) <- paste0('newdf', seq_along(lst))
list2env(lst, envir=.GlobalEnv)
# //the result is found in newdf3
