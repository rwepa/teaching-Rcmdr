# file     : 07_Rcmdr-anova.R
# title    : 變異數分析
# author   : Ming-Chang Lee
# date     : 2024.05.22
# YouTube  : https://www.youtube.com/@alan9956
# RWEPA    : http://rwepa.blogspot.tw/
# GitHub   : https://github.com/rwepa
# Email    : alan9956@gmail.com

# 𝑃(𝑍≤ X ) = 0.975,計算X值?
qnorm(c(0.975), mean=0, sd=1, lower.tail=TRUE)

# 𝑃(𝑍≤ 1.96 ) = P,計算P值?
pnorm(c(1.96), mean=0, sd=1, lower.tail=TRUE)

# 𝑃(F(3,9) ≤ X ) = 0.95,計算X值?
qf(c(0.95), df1=3, df2=9, lower.tail=TRUE)

# one-way anova
# 某市場調查公司欲調查市面上四種品牌之相同口味飲料之平均銷售量是否相同，
# 針對每一品牌隨機選定5個地區作調查，各地區單月之銷售量。

# 下載: https://github.com/rwepa/DataDemo/blob/master/beverage.csv

urls <- "https://raw.githubusercontent.com/rwepa/DataDemo/master/beverage.csv"

df <- read.table(urls, header=TRUE, sep=",")
df
head(df)
class(df)

# method 1. oneway.test
df_oneway <- oneway.test(sale ~ brand, data = df, var.equal=TRUE)
df_oneway

# method 2. aov
df_anova <- aov(sale ~ brand, data = df)
summary(df_anova)

# method 3. Linear model
df_lm <- lm(sale ~ brand, data = df)
df_lm
anova(df_lm)
summary(df_lm)
# end