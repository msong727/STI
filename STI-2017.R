x=1:20
plot(x,log(x),type='b')
2+3
"Hello Cambodia, welcome to Korea"
4

height_inch <-  72
height_cm=height_inch*2.54
height_cm


help()            # help(help) # the same
help(Syntax)      # R Syntax
help(matrix)      # ?matrix 	 # the same
help(t.test)       
help("for") 	# or ?"for", but the quotes are needed
?"+"			# Arithmetic Operators
help(package="MASS") 	# get help even when package is not loaded
library(help="MASS") 	# the same
data() 	      # list all available data sets
?women 	      # information about data set "women"

example(t.test) 	# example of t test
example(mean) 	# example of mean
help(demo)
demo()		# R demos
demo(graphics) 	# Example of Graphics 
demo(image)       # Example of image-like graphics

sessionInfo()
library(MASS) 	# load package 'MASS'
help(ginv)
require(MASS) 	# the same as library(MASS)

setwd("e:/data")
getwd()
dir()

# 2. R Programming basics
a=3.14159      # pi  the ratio of a circle's circumference to its diameter
a		
x='Korea'      # string
x		


x=1:5; x		
x < 5		
x == 3	
x != 3	
eigen(cbind(-1,2:1))$values # complex values
text <- "Cambodia"; text

mode(pi)
a=3.14159; mode(a)
mode(2>3)
mode(T)        # T, F, TRUE, FALSE
mode(1+4i)
mode("Asia")

class(pi)
typeof(pi)
storage.mode(pi)

?"NULL"
NULL
c(1,2,NA)
log(-5)
x=log(-5); x
1/0
log(0)
-Inf


# Creating a vector
a1 = c(3, 7, 9, 11) 	# Concatenates numeric values into a vector
a2 = c("a", "b", "c") 	# Concatenates character strings into a vector
a3 = 1:5 	# Creates a vector of integers from 1 to 5 inclusive 
a4 = rep(1, times = 5) 	# Creates a vector of 5 repeated `1's
a51 =seq(from=3,to=5,by=0.2)
a52=seq(3,5,0.2)
a6 =seq(from=3,to=5,length=11)

# Factor vector
x <- c(1, 1, 1, 1, 1, 2, 2, 2, 2, 9, 9, 9, 9)

type <- sample(0:1, 20, replace=T); type
typ.f <- factor(type, labels=c("Head","Tail")); typ.f
is.factor(typ.f)
is.factor(type)


#  Creating a matrix
# from vector
matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)

# using rbind, cbind
x <- c(1,2, 3) 	# Creates a vector `x' of 3 values.
y <- c(4, 5, 6) # Creates a vector `y' of 3 values. 
rbind(x, y) 	# Creates a 2 x 3 matrix. Note that row 1 is
# named x and row 2 is named y, 
# according to the order in which the
# arguments were passed to rbind().
cbind(x, y) 	# Creates a 3 x 2 matrix. Note that the
# columns are named according to the
# order in which they were passed to cbind(). 

# Creating a list
x=c(1,2,3,4,5) 	          # numeric vector
y=c('a','b','c','d','e')  # character vector
z=list(v1=x, v2=y)
z


# Creating a data frame
name=c("Kim","Tanaka","Chan")
age=c(30,28,45)
married=c(TRUE,FALSE,TRUE)
dat=data.frame(name,age,married,stringsAsFactors=F)
dat
str(dat)  # structure of data frame dat


# Subsetting : vector indexing
a=-5:5
a[4] = 3.14 	# Inserts 3.14 as the 5th value in the vector `a'
a[5:7] = c(2, 4, 6) 	# Replaces the 5th through 7th values with 2, 4, and 6
x=1:10
x[2]		# 2th element
x[-2]		# all but 2th element
x[1:5] 		# first 5 elements
x[(length(x)-4):length(x)] # last 5 elements
x[c(1,3,5)] 	# 1,3,5th elements
x[-c(1,3,5)]	# all but 1,3,5th elements
x[x>3]		# all greater than 3
x[x < 3 | x > 7] 	# x < -2 or x > 2 (and "&")
which(x == max(x)) # which indices are largest

# Subsetting matrix
A=matrix(rnorm(100),ncol=5)
A[1:5,];		
A[,c(2,5)];	A[,-(3:4)]
A[A[,1] <5,];	A[14:19,c(1,3)]
dim(A); length(A)
dimnames(A)=list(as.character(1:20),
                 paste("col",1:5,sep=""))
A[,"col3"]

# Subsetting list
v=list(c(1,5,20),c("rabbit","antelope"),
       matrix(runif(20),ncol=4))
v
v[[1]]  # # use [[ to select any single element
v[1]
class(v[[1]])
class(v[1])

v[1:2]
v[[1:2]]
v[[2:1]]
names(v) = c("number","animal","mat")
v$number	
v$mat[1:2,]

# sebsetting : data frame
str(mtcars)
class(mtcars)
mtcars$wt
mtcars[,6]
mtcars[1:5,c(1,2,6)]
mtcars[1:5,c("mpg","cyl","wt")]

# Exercise
str(mtcars)
dim(mtcars)
class(mtcars)
mtcars[3,6]
mtcars[c(1,3,9),c(6,1,2)]
mtcars[-(5:30),3:5]
dat=mtcars[mtcars[,2] == 6,]
str(dat)
subset(mtcars, cyl == 6)

# Reading external data (*.txt, *csv)
setwd("E:/data")
titanic=as.data.frame(Titanic)
write.table(titanic,file="titanic.txt",row.names=F)
dat1=read.table("titanic.txt", stringsAsFactors=F, header=T)
str(dat1)
write.csv(titanic,file="titanic.csv",row.names=F)
dat2=read.csv("titanic.csv", stringsAsFactors=F)
str(dat2)

install.packages("sas7bdat") 
library(sas7bdat) 
admit=read.sas7bdat("e:/data/teach/admit.sas7bdat") 

install.packages("haven")
library(haven)
admit <- read_sas("e:/data/teach/admit.sas7bdat") 
str(admit)

admit <- read_sav("e:/data/teach/admit.sav") 
str(admit)

# Operators
help(Syntax)
help(Arithmetic)
?Arithmeric
?Comparison
?Logic


# 6. Vectorization
# apply
x=matrix(1:12,3,4)
apply(x,1,sum) # row sum
apply(x,2,sum) # column sum
apply(airquality,2,summary)
apply(women,2,mean)
apply(x, 2, function(x) mean(x)/sd(x))

# lapply
x <- list(a = 1:10, beta = exp(-3:3), logic = c(TRUE,FALSE,FALSE,TRUE))
lapply(x,mean)

# sapply
sapply(x,mean)

# tapply: vector
score=c(45,48,52,55,57)
sex=c('M','F','F','M','M')
dat=data.frame(score,sex,stringsAsFactors =F)
dat
dat[,2]
tapply(score,sex,sum)

# tapply: data frame
Result=apply(mtcars[,c(1,4,6)],2,function(x) tapply(x,mtcars$am,mean))
round(Result,2)

# ifelse
sex=c('M','F','F','M','M')
sex
ifelse(sex == 'M',1,2)

x=c(NA,3,4,5)
ifelse(is.na(x),0,x)

#7. Sorting
BOD
demand=BOD$demand
sort(demand) # ascending order by demand
BOD[order(demand),] # rearrange row by demand

rank(demand)

#8. Dates and Times in R
# https://rstudio-pubs-static.s3.amazonaws.com/28038_1bcb9aa80ca84f27ace07d612872861a.html

# current date
today <- Sys.Date()
class(today)
today

x <- as.Date("1970-01-01")
x

as.Date("12 April 2017", "%d %B %Y")
# [1] "2017-04-12"

unclass(x)  # 0
unclass(as.Date("1970-01-02"))  # 1
unclass(as.Date("1969-12-31"))  # -1
unclass(as.Date("2017-04-12"))  # 17268

df = data.frame(date=c("2017-04-12", "2017-04-13","2017-04-14")) 
df$day <- weekdays(as.Date(df$date))
# Get weekdays in English in R
# http://stackoverflow.com/questions/17031002/get-weekdays-in-english-in-r
Sys.setlocale("LC_TIME","English")
Sys.setlocale("LC_TIME","Korean")
Sys.setlocale("LC_TIME","Cambodian")

df
##         date       day
## 1 2017-04-12 Wednesday
## 2 2017-04-13  Thursday
## 3 2017-04-14    Friday

# set locale information in R 
# http://r.789695.n4.nabble.com/set-locale-information-in-R-td3432760.html
Sys.getlocale()

# current time
now <- Sys.time()
class(now)
now

# POSIXlt
p <- as.POSIXlt(now)
names(unclass(p))
p$wday  # day of the week (0-6 starting on Sunday)


# POSIXct format
now <- Sys.time()
now
unclass(now)  # Internal representation
now$sec
## Error in now$sec : $ operator is invalid for atomic vectors
p <- as.POSIXlt(now)
names(unclass(p))
p$sec

##### strptime()
Sys.setlocale("LC_TIME", "C")
format(Sys.time(), "%a %b %d %X %Y %Z")

# Operations on Dates and Times
x <- as.Date("2017-4-02")
y <- as.Date("2017-4-19")
y - x + 1


################################################
# Graphics
################################################

# Overview
demo(graphics)

library(lattice)
demo(lattice)

library(ggplot2)
example(qplot)
example(ggplot)

library(ggvis)

###################################
# base graph
library(datasets)
data(cars)
plot(cars$speed, cars$dist)
with(cars, plot(speed, dist))


# multiple plots
library(lattice)
state <- data.frame(state.x77, region = state.region)
xyplot(Life.Exp ~ Income | region, data = state, layout = c(4, 1))

# ggplot2
library(ggplot2)
data(mpg)
str(mpg)

# qplot()
qplot(displ, hwy, data = mpg)
qplot(displ, hwy, col=factor(cyl), data = mpg)
qplot(displ, hwy, facets = ~ cyl, data = mpg)

# ggplot()
p = ggplot(data=mpg)
p = p+ aes(x=displ, y=hwy,col=factor(cyl))
p = p + geom_point() 
p = p + facet_grid( . ~ cyl) # vertical panel
p = p + facet_grid(cyl ~ .)  # horizontal panel
p

# ggvis;  Data Pipeline
# pipeline
install.packages("ggvis")
library(ggvis)
mtcars %>% ggvis(~wt, ~mpg, fill := 'red') %>% layer_points() %>% layer_smooths()

# Shiny
library(dplyr)
library(shiny)
faithful %>%
  ggvis(x = ~waiting) %>%
  layer_histograms(binwidth =
                     input_slider(min=1, max=20, value=11))

# ggmap
install.paclages("ggmap")
library(ggmap)
geocode("Cambodia")
cambodia_center = geocode("Cambodia")
Cambodia = ggmap(get_map(location=cambodia_center, 
                         source="google", zoom=6),extent="panel")
Cambodia

library(ggplot2)
library(ggmap)
head(state.x77)
popdata=data.frame(state=row.names(state.x77), murder=state.x77[,5])
popdata$state = as.character(popdata$state)
for(i in 1:nrow(popdata)) {
  latlon=geocode(popdata$state[i])
  popdata$lon[i]=as.numeric(latlon[1])
  popdata$lat[i]=as.numeric(latlon[2])  }
head(popdata)

usa_center = geocode("United States")
USA = ggmap(get_map(location=usa_center,zoom=4),extent="panel")
USA
USA + geom_point(aes(x=lon,y=lat), data=popdata,col="black",
                 alpha=.4, size=popdata$murder)

# 10 largest cities in Cambodia
# https://en.wikipedia.org/wiki/List_of_cities_in_Cambodia

city=c("Phnom Penh", "Battambang", "Siem Reap","Sihanoukville",
       "Prey Veng","Kampong Cham","Ta Khmau","Pursat","Kampong Speu","Takeo")
pop=c(1325681,196000,148000,94950,73300,58900,48400,46000,31700,28300)

my.data=data.frame(city=city, pop=pop)
my.data
geocode("Phnom Penh")

library(ggplot2)
library(ggmap)

str(my.data)
my.data$city<-as.character(my.data$city)  
str(my.data)

latlon <- geocode(my.data$city)

my.data$lon <- latlon$lon; my.data$lat <- latlon$lat  
# my.data <- cbind(my.data,latlon)  
my.data

Cambodia <- ggmap(get_map(location="Cambidia",zoom=7), extent="panel")  
Cambodia

circle_scale=0.00002
Cambodia + geom_point(aes(x=lon, y=lat),data=my.data, col='red',
                      alpha=0.4, size=my.data$pop*circle_scale)

# basic graphics
# plot
x=mtcars$wt
y=mtcars$mpg
plot(x,y)

par(mfrow=c(2,2))
plot(as.factor(mtcars$cyl)) # Categorical
plot(mtcars$mpg)  # numerical
with(mtcars, plot(wt, mpg))  # scatter plot (2 numeric)
plot(as.factor(mtcars$cyl), as.factor(mtcars$am)) # 2 categorical
par(mfrow=c(1,1))

# hist
hist(mtcars$mpg)

# adding options
hist(mtcars$mpg, main="Miles per Gallon",
     xlab="MPG", ylab ="Frequency", col="blue")

# boxplot
boxplot(mtcars$mpg)

library(UsingR)
data(babies)
help(babies) # ?babies
names(babies)
attach(babies)
par(mfrow=c(2,1))
boxplot(wt,main='birth weight in ounces',horizontal=T)
boxplot(ht,main="mother's height in inches",horizontal=T)
par(mfrow=c(1,1))

# Time series plot
plot(Nile)
ts.plot(ldeaths, mdeaths, fdeaths,
        gpars=list(xlab="year", ylab="deaths", lty=c(1:3)))

###############################################
# Descriptive statistics
###############################################
# Frequency table
x=c('Yes','No','No','Yes','Yes')
table(x)

# Factors
factor(x)
gl(2, 3, labels = c("Yes", "No")) # generate levels

# Bar chart
beer=scan()
3 4 1 1 3 4 3 3 1 3 2 1 2 1 2 3 2 3 1 1 1 1 4 3 1

par(mfrow=c(1,2))
barplot(table(beer))
barplot(table(beer) / length(beer))
par(mfrow=c(1,1))

# Pie Chart
par(mfrow=c(1,2))
beer.counts=table(beer)
names(beer.counts)=c('Domestic\n can','Domestic\n bottle','Microbrew','Import')
pie(beer.counts)
pie(beer.counts,col=c('purple','green2','cyan','white'))
par(mfrow=c(1,1))

# Stem and leaf
scores=c(2,3,16,23,14,12,4,13,2,0,0,0,6,28,31,14,4,8,2,5)
apropos('stem') # Find Objects by (Partial) Name
stem(scores)
stem(scores,scale=2)

# dotchart
dotchart(VADeaths, main = "Death Rates in Virginia - 1940")

## Numerical data summary
mpg=mtcars$mpg
mean(mpg)
median(mpg)
mean(mpg,trim=0.2)
summary(mpg)
fivenum(mpg)
min(mpg)
max(mpg)
sd(mpg)
var(mpg)
quantile(mpg,c(0,.25,.5,.75,1))

###############################################
# Regression Analysis
###############################################

company=1:12
adver=c(11,19,23,26,56,62,29,30,38,39,46,49)
sales=c(23,32,36,46,93,99,49,50,65,70,71,89)
plot(sales ~ adver, main="Sales by Advertising")


plot(sales ~ adver, main="Sales by advertising", pch=16)
res=lm(sales ~ adver); 
res
fitted=fitted(res)
abline(res)
for (i in 1:12) {
  lines(c(adver[i], adver[i]),c(fitted[i],sales[i])) }

par(mfrow=c(2,2))
plot(res)
par(mfrow=c(1,1))
