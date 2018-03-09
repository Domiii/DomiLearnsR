### hw_1_question


########################################################### Task 1

# 查看內建資料集: 鳶尾花(iris)資料集
iris

# 使用dim(), 回傳iris的列數與欄數
dim(iris)


# 使用head() 回傳iris的前六列
head(iris)


# 使用tail() 回傳iris的後六列
tail(iris)


# 使用str() 
str(iris)


# 使用summary() 查看iris敘述性統計、類別型資料概述。
summary(iris)


########################################################### Task 2

# 使用for loop 印出九九乘法表
# Ex: (1x1=1 1x2=2...1x9=9 ~ 9x1=9 9x2=18... 9x9=81)
nrow <- 9
ncol <- 9
tbl = matrix(nrow=nrow, ncol=ncol, byrow=TRUE, dimnames = list(1:nrow, 1:ncol))
for (r in 1:nrow) {
  for (c in 1:ncol) {
    tbl[r, c] <- paste(r, 'x', c, '=', r*c, sep='')
  }
}
print(tbl)


########################################################### Task 3

# 使用sample(), 產出10個介於10~100的整數，並存在變數 nums
nums <- sample(10:100, size=10)

# 查看nums
nums


# 1.使用for loop 以及 if-else，印出大於50的偶數，並提示("偶數且大於50": 數字value)
# 2.特別規則：若數字為66，則提示("太66666666666了")並中止迴圈。
i <- 50
for (i in seq(50, 100, by=2)) {
  if (i == 66) {
    print(paste('偶數且大於50', i, '太66666666666了'))
  }
  else {
    print(paste("偶數且大於50", i))
  }
}





########################################################### Task 4

# 請寫一段程式碼，能判斷輸入之西元年分 year 是否為閏年

isLeapYear <- function(y) {
  if (y %% 400 == 0) return <- TRUE
  else if (y %% 100 == 0) return <- FALSE
  else if (y %% 4 == 0) return <- TRUE
  else return <- FALSE
}
print(paste(
  isLeapYear(2000),
  !isLeapYear(2100),
  !isLeapYear(1999),
  isLeapYear(2012)
))






########################################################### Task 5

# 猜數字遊戲
# 1. 請寫一個由電腦隨機產生不同數字的四位數(1A2B遊戲)
# 2. 玩家可重覆猜電腦所產生的數字，並提示猜測的結果(EX:1A2B)
# 3. 一旦猜對，系統可自動計算玩家猜測的次數
source("hw1_1A2B.R")
