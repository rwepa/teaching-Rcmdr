# file     : 06-Rcmdr-package.R
# title    : R套件簡介
# author   : Ming-Chang Lee
# date     : 2024.05.01
# YouTube  : https://www.youtube.com/@alan9956
# RWEPA    : http://rwepa.blogspot.tw/
# GitHub   : https://github.com/rwepa
# Email    : alan9956@gmail.com

# 大綱
# 1.套件簡介
# 2.套件的應用類別(CRAN Task Views)
# 3.套件的安裝與載入
# 4.內建安裝 lattice 套件簡介
# 5.自行安裝套件 chords

##############################
# 1.套件簡介
##############################

# Contributed Packages
# https://cloud.r-project.org/web/packages/index.html

# 依名稱排序套件清單
# https://cloud.r-project.org/web/packages/available_packages_by_name.html

##############################
# 2.套件的應用類別(CRAN Task Views)
##############################

# CRAN Task Views (44類別)
# https://cloud.r-project.org/web/views/

# CRAN Task Views (44類別中文對照表)
# https://rwepa.blogspot.com/2013/10/packages-list-32.html

##############################
# 3.套件的安裝與載入
##############################

# 安裝套件
install.packages("e1071")

# 載入套件
library(e1071)

# e1071套件示範
example(svm, package="e1071")

# 顯示已經下載並安裝之套件
library()

# 套件安裝的路徑稱為 library
.libPaths()

# 顯示已經載入之套件,預設載入7個套件
# "stats" "graphics" "grDevices" "utils" "datasets" "methods" "base"
(.packages())

# 顯示已經載入之套件,功能與 (.packages()) 類似, RStudio會新增額外套件.
search()

# 載入 e1071 套件
library(e1071)
(.packages())
search()

# 顯示已經載入之套件與安裝路徑
searchpaths()

# 安裝套件
install.packages("ggplot2")
# WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

# 載入 ggplot2 套件
library(ggplot2)

# 顯示已經載入之套件,已經包括 ggplot2
(.packages())

# Reverse depends

library(tools)

# lattice
# 有哪些套件引用 lattice 套件
sort(dependsOnPkgs("lattice"))

# lattice 套件相依於哪些套件,即引用了哪些套件.
package_dependencies("lattice")

# lattice 被哪些套件引用
dependsOnPkgs("lattice")

# Rcmdr
# Rcmdr 引用哪些套件, 安裝 Rcmdr 時, 也會一併安裝相關套件.
package_dependencies("Rcmdr")

# Rcmdr 被哪些套件引用
dependsOnPkgs("Rcmdr")

# ggplot2
# ggplot2 引用哪些套件
package_dependencies("ggplot2")

# ggplot2 被哪些套件引用
dependsOnPkgs("ggplot2")

##############################
# 4.內建安裝 lattice 套件簡介
##############################

library(lattice)

attach(mtcars)

# create factors with value labels
gear.f <- factor(gear,levels=c(3,4,5),
               labels=c("3gears","4gears","5gears"))

cyl.f <-factor(cyl,levels=c(4,6,8),
               labels=c("4cyl","6cyl","8cyl"))

# kernel density plot 核密度圖
densityplot(~mpg,
            main="Density Plot",
            xlab="Miles per Gallon")

# kernel density plots by factor level 核密度圖(因子水準)
densityplot(~mpg|cyl.f,
            main="Density Plot by Number of Cylinders",
            xlab="Miles per Gallon")

# kernel density plots by factor level (alternate layout) 核密度圖(因子水準)
densityplot(~mpg|cyl.f,
            main="Density Plot by Numer of Cylinders",
            xlab="Miles per Gallon",
            layout=c(1,3))

# scatter plot matrix 散佈圖矩陣
splom(mtcars[c(1, 2, 3, 4, 5)], 
      main="Scatter Plot Matrix for mtcars Data")

# boxplots for each combination of two factors 盒鬚圖(群組)
bwplot(cyl.f ~ mpg|gear.f,
       ylab="Cylinders", 
       xlab="Miles per Gallon",
       main="Mileage by Cylinders and Gears",
       layout=c(1,3))

# scatterplots for each combination of two factors 散佈圖(群組)
xyplot(mpg~wt|cyl.f*gear.f,
       main="Scatterplots by Cylinders and Gears",
       ylab="Miles per Gallon", xlab="Car Weight")

# 3d scatterplot by factor level 3D散佈圖(群組)
cloud(mpg~wt*qsec|cyl.f,
      main="3D Scatterplot by Cylinders")

# dotplot for each combination of two factors 點圖(群組)
dotplot(cyl.f~mpg|gear.f,
        main="Dotplot Plot by Number of Gears and Cylinders",
        xlab="Miles Per Gallon")


##############################
# 5.自行安裝套件 chords
##############################

# 資料視覺化於相關性分析-弦圖 (Chord Diagram)

# https://rwepa.blogspot.com/2019/10/chord-diagram.html

# 安裝 Windows 版本 Rtools
# http://cran.csie.ntu.edu.tw/bin/windows/Rtools/
# 安裝時, Add rtools to system PATH 記得打勾

# 安裝 devtools 套件
install.packages("devtools")

# 安裝 chorddiag 套件
devtools::install_github("mattflor/chorddiag")

# 載入套件
library(chorddiag)

# 建立資料
students <- as.matrix(data.frame(
  文學 = c(68, 75, 65, 97),
  通識 = c(96, 75, 85, 60),
  數學 = c(65, 61, 70, 80),
  體育 = c(66, 79, 85, 61)))

row.names(students) <- c("班級A", "班級B", "班級C", "班級D")

# 繪製弦圖 RStudio-v2024.4.1-748繪圖有問題,使用原生R環境
chorddiag(students)

# 視覺化進階優化1
chorddiag(students, type = "bipartite")

# 視覺化進階優化2
chorddiag(students, type = "bipartite", showTicks = FALSE)

# 視覺化進階優化3
chorddiag(students, type = "bipartite", showTicks = FALSE, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
# end