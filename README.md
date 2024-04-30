# teaching-Rcmdr

本篇文章提供 Rcmdr 教學與說明。

# 01.R,RStudio簡介

+ 教材下載 https://github.com/rwepa/teaching-Rcmdr/blob/main/01-r-rstudio.pdf

# 02.Rcmdr簡介

Rcmdr 套件特色如下：

1. John Fox 教授於2003年在加拿大麥克馬斯特大學（McMaster University）社會科學學院發表Rcmdr套件，Rcmdr全名是 R Commander 。
2. Rcmdr套件基於免費tcltk 框架並使用Ｒ語言撰寫的視窗操作統計分析套件。tcltk 表示 Tcl（Tool Command Language) 和 Tk (Graphical User Interface Toolkit）統稱。
3. Rcmdr套件可以透過視窗滑鼠與鍵盤選取完成統計分析功能。
4. Rcmdr支援資料摘要分析、T檢定、變異數分析、迴歸、廣義線性模型、主成分分析與集群分析等統計模型。
5. Rcmdr支援增益集的使用，例：存活分析等。

+ 教材下載 https://github.com/rwepa/teaching-Rcmdr/blob/main/02-Rcmdr-tutorial.pdf

# 03.Tab檔案匯入技巧

+ 教材下載 https://github.com/rwepa/teaching-Rcmdr/blob/main/03-Rcmdr-import-tab-file.pdf

# 04.宗教社會服務概況資料分析

+ 教材下載 https://github.com/rwepa/teaching-Rcmdr/blob/main/04-Rcmdr-Social_Services_of_Religions.pdf

+ 原始資料下載[y01-04.xls] https://github.com/rwepa/teaching-Rcmdr/blob/main/y01-04.xls

+ 整理完成下載[y01-04-完成版.xls] https://github.com/rwepa/teaching-Rcmdr/blob/main/y01-04-完成版.xls

+ 大綱

  1.資料預處理

  2.使用Rcmdr套件進行資料匯入

  3.資料摘要分析

  4.資料視覺化分析 (4.1 直方圖, 4.2 盒鬚圖, 4.3 散佈圖, 4.4 散佈矩陣圖, 4.5 折線圖)

  參考文獻

# 05.ggplot2_tutorial

+ 下載: https://github.com/rwepa/teaching-Rcmdr/blob/main/05-ggplot2_tutorial.R
# RcmdrPlugin

增益集套件除了 Rcmdr 與 RcmdrMisc 二個基本套件，另包括 RcmdrPlugin.aRnova 等套件，合計38個套件，詳細清單如下：

| Rcmdr 增益集 | 英文說明 | 中文說明 |
|---|---|---|
| 1. Rcmdr | R Commander | Rcmdr主程式 |
| 2. RcmdrMisc | R Commander Miscellaneous Functions | Rcmdr相關函數 |
| 3. RcmdrPlugin.aRnova | R Commander Plug-in for Repeated-Measures ANOVA | 變異數分析 |
| 4. RcmdrPlugin.BiclustGUI | 'Rcmdr' Plug-in GUI for Biclustering | 生物集群法與視覺化 |
| 5. RcmdrPlugin.BWS1 | R Commander Plug-in for Case 1 Best-Worst Scaling | 情形1最佳與最差縮放法 |
| 6. RcmdrPlugin.BWS2 | R Commander Plug-in for Case 2 Best-Worst Scaling | 情形2最佳與最差縮放法 |
| 7. RcmdrPlugin.BWS3 | R Commander Plug-in for Case 3 Best-Worst Scaling | 情形3最佳與最差縮放法 |
| 8. RcmdrPlugin.coin | Rcmdr Coin Plug-in | coin套件(Conditional Inference Procedures in a Permutation Test Framework)置換檢定 |
| 9. RcmdrPlugin.cpd | R Commander Plug-in for Complex Pearson Distributions | 複雜皮爾遜分配 |
| 10. RcmdrPlugin.DCCV | R Commander Plug-in for Dichotomous Choice Contingent Valuation | 二元選擇條件評估法 |
| 11. RcmdrPlugin.DCE | R Commander Plug-in for Discrete Choice Experiments | 離散選擇實驗 |
| 12. RcmdrPlugin.depthTools | R Commander Depth Tools Plug-in | 基因資料的統計分析 |
| 13. RcmdrPlugin.DoE | R Commander Plugin for (Industrial) Design of Experiments | 實驗設計 |
| 14. RcmdrPlugin.EACSPIR | Plugin de R-Commander para el Manual 'EACSPIR' | 法國 Estadistica aplicada a las Ciencias Sociales mediante el programa informatico R(EACSPIR)課程教材 |
| 15. RcmdrPlugin.EBM | Rcmdr Evidence Based Medicine Plug-in Package | 實證醫學醫療指標 |
| 16. RcmdrPlugin.EcoVirtual | Rcmdr EcoVirtual Plugin | 生態學課程教材 |
| 17. RcmdrPlugin.Export | Export R Output to LaTeX or HTML | 輸出為 LaTeX 或 HTML 檔案 |
| 18. RcmdrPlugin.EZR | R Commander Plug-in for the EZR (Easy R) Package | 存活分析，ROC分析，元分析，樣本計算等統計函數 |
| 19. RcmdrPlugin.FactoMineR | Graphical User Interface for FactoMineR | 多變量探索性資料分析與資料探勘，包括PCA，CA，MCA等方法 |
| 20. RcmdrPlugin.GWRM | R Commander Plug-in for Fitting Generalized Waring Regression Models | 廣義警告迴歸模型 |
| 21. RcmdrPlugin.HH | Rcmdr Support for the HH Package | 參考 Statistical Analysis and Data Display, Second Edition, 2015 書籍 |
| 22. RcmdrPlugin.KMggplot2 | R Commander Plug-in for Data Visualization with 'ggplot2' | 使用ggplot2資料視覺化 |
| 23. RcmdrPlugin.MA | Graphical User Interface for Conducting Meta-Analyses in R | 參考 Handbook of Research Synthesis and Meta-Analysis, Cooper, Hedges, & Valentine, 2009 書籍 |
| 24. RcmdrPlugin.MPAStats | R Commander Plug-in for MPA Statistics | 美國 Brigham Young University 公共管理碩士課程PMGT630教材 |
| 25. RcmdrPlugin.NMBU | R Commander Plug-in for University Level Applied Statistics | Partial Least Squares Regression and Linear and Quadratic Discriminant analysis |
| 26. RcmdrPlugin.orloca | A GUI for Planar Location Problems | 作業研究中 min-sum location 問題 |
| 27. RcmdrPlugin.PcaRobust | R Commander Plug-in for Robust Principal Component Analysis | 穩健主成分分析 |
| 28. RcmdrPlugin.RiskDemo | R Commander Plug-in for Risk Demonstration | 精算和財務風險 |
| 29. RcmdrPlugin.RMTCJags | R MTC Jags 'Rcmdr' Plugin | 混合治療比較法（Mixed Treatment Comparison） |
| 30. RcmdrPlugin.ROC | Rcmdr Receiver Operator Characteristic Plug-in Package | 特徵操作曲線計算與繪圖 |
| 31. RcmdrPlugin.SCDA | Rcmdr Plugin for Designing and Analyzing Single-Case Experiments | 單一對象實驗設計 |
| 32. RcmdrPlugin.sos | Efficiently search the R help pages | R中函數與資料集快速搜尋 |
| 33. RcmdrPlugin.survival | R Commander Plug-in for the 'survival' Package | 存活分析 |
| 34. RcmdrPlugin.TeachingDemos | Rcmdr Teaching Demos Plug-in | R教學示範 |
| 35. RcmdrPlugin.TeachStat | R Commander Plugin for Teaching Statistical Methods | 統計方法教學 |
| 36. RcmdrPlugin.temis | Graphical Integrated Text Mining Solution | 文字探勘 |
| 37. RcmdrPlugin.UCA | UCA Rcmdr Plug-in | 變異數檢定, 隨機檢定 |
| 38. RcmdrPlugin.WorldFlora | R Commander Plug-in for the 'WorldFlora' Package | 世界線上植物搜尋 |
