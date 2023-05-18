#1.SORU
#Girilen bir x argümanının veri tipini yazdıran in_type isimli bir fonksiyon oluşturun.


in_type <- function(x) {
  verinin_tipi <- class(x)
  print(paste("Girilen x argümanının veri tipi:", verinin_tipi))
}
#deneyelim
in_type("merhaba")
in_type(TRUE)


#2.SORU
#fonksiyonu factorial fonkiyonu ile yazdık. 

kombinasyon <- function(n, r)
  {
  faktoriyel_n <- factorial(n)
  faktoriyel_nr <- factorial(n - r)
  faktoriyel_r <- factorial(r)
  
  kombinasyonunformulu <- faktoriyel_n / (faktoriyel_nr * faktoriyel_r)
  return(kombinasyonunformulu)
  }
#çalışıyor mu diye örnek verelim. 

n <- 6
r <- 3
cevap <- kombinasyon(n, r)
print(cevap)

#3.SORU

karelerin_toplamı <- function(n) {
  toplam <- 0
  for(i in 1:n) {
    a <- i^2
    toplam <- toplam + a
  }
  return(toplam)
}
#örneğin 

karelerin_toplamı(4)

#4.soru

#veriyi indirdim ve import ettim

library(readr)
breast_cancer <- read_csv("C:/Users/Kev/Desktop/breast-cancer.csv")
View(breast_cancer)

#veri hakkında bi kaç gözlem yaptım.

dim(breast_cancer)
summary(breast_cancer)
head(breast_cancer)




















