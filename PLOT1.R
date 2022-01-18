## Read data 

setwd()

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## Aggregate the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008
aggTotals <- aggregate(Emissions ~ year,NEI, sum)

## Plot 1

barplot(
  (aggTotals$Emissions)/10^6,
  names.arg=aggTotals$year,
  xlab="Year",
  ylab="PM2.5 Emissions (10^6 Tons)",
  main="Total PM2.5 Emissions From All US Sources"
)
