library(data.table)
library(lubridate)


myData = fread("transactions.csv")

#myData$TransDate <- as_date(myData$TransDate, format="%d.%m.%y")

myData[, TransDate:=as_date(TransDate, format="%d.%m.%y")]

str(myData[c(1:10), TransDate])

myData[PurchAmount > 100 & PurchAmount < 200, Customer, Cost]

myData[, PurchSum:=sum(PurchAmount), by=list(Customer, TransDate)]
myData[, TransCount:=count(TransDate), by=list(Customer)]



