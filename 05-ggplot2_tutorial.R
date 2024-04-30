# file     : ggplot2_tutorial.R
# title    : ggplot2_資料視覺化教學
# author   : Ming-Chang Lee
# date     : 2024.05.01
# YouTube  : https://www.youtube.com/@alan9956
# RWEPA    : http://rwepa.blogspot.tw/
# GitHub   : https://github.com/rwepa
# Email    : alan9956@gmail.com

# 本教學先使用 ggplot2 套件,後續再使用 RcmdrPlugin.KMggplot2 套件輔助教學.
# https://github.com/rwepa/teaching-Rcmdr?tab=readme-ov-file#rcmdrplugin

# ggplot2 CRAN網頁
# https://cran.r-project.org/web/packages/ggplot2/index.html
# ggplot2: Create Elegant Data Visualisations Using the Grammar of Graphics
# 參考資料 https://ggplot2-book.org/

# ggplot2概念
# 1.以圖層(layers)為基礎的繪圖套件,它實現了Wilkinson (2005)的繪圖文法(Grammar of Graphics)概念.
# 2.一個圖形是由數個圖層所組成,其中一層包含了資料(data)層.
# 3.Wilkinson認為圖形繪製須結合數據與繪製規範,規範並非是圖形視覺效果的名稱(例如:長條圖,散佈圖,直方圖等).
# 4.規範應是一組共同決定圖形如何建立的規則 – a grammar of graphics.

# 安裝套件
# install.packages("ggplot2")

# 載入套件
library(ggplot2)

# 查詢 diamonds 資料集線上說明
?diamonds

# 資料結構
# tibble 物件
# 53940*10
str(diamonds)

# 資料摘要
# 資料沒有NA(遺漏值missing value)
summary(diamonds)

# 設定隨機樣本隨機種子,sample函數每次執行結果皆相同.
set.seed(168)

# 隨機抽取500筆資料
dsmall <- diamonds[sample(nrow(diamonds), 500),]

# ggplot: 散佈圖
p <- ggplot(data=dsmall, mapping=aes(carat, price, color=color)) + 
  geom_point(size=4)
p

# 直接使用 ggplot 函數也可以執行
ggplot(data=dsmall, mapping=aes(carat, price, color=color)) + 
  geom_point(size=1) +
  ggtitle("圖1 ggplot2-群組散佈圖") +
  theme(plot.title = element_text(hjust = 0.5))

# ggplot: 散點圖+線性迴歸
ggplot(dsmall, aes(carat, price)) + 
  geom_point() +
  geom_smooth(method="lm", se=FALSE)

ggplot(dsmall, aes(carat, price)) + 
  geom_point() +
  geom_smooth(method="lm", se=TRUE)

# ggplot: 散點圖+群組線性迴歸
ggplot(dsmall, aes(carat, price, group=color)) + 
  geom_point(aes(color=color), size=2) + 
  geom_smooth(aes(color=color), method="lm", se=FALSE)

# ggplot: 線圖
ggplot(iris, aes(Petal.Length, Petal.Width, group=Species, color=Species)) +
  geom_line()

# ggplot: 線圖+分面 facet_wrap()
ggplot(iris, aes(Sepal.Length, Sepal.Width)) + 
  geom_line(aes(color=Species), size=1) + 
  facet_wrap(~Species, ncol=1)

# ggplot: 散佈圖+分面 facet_wrap()
ggplot(mpg, aes(displ, hwy)) + 
  geom_point() + 
  facet_wrap(~class)

# ggplot2: 線圖+散佈圖
ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  geom_line()

# ggplot2: 散佈圖+線圖+群組
ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(color=factor(cyl))) +
  geom_line()

# R軟體開放資料應用-高速公路篇-使用ggplot2
# http://rwepa.blogspot.com/2019/05/highway.html
# end
