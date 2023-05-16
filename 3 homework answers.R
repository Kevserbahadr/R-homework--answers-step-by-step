#KEVSER BAHADIR 20201101086 3. R ODEVİM

#1.SORU

#1a

# Aylık talep verileri

maske_talep <- c(180, 150, 200, 150, 125, 100, 90, 85, 100, 125, 130, 140)
names(maske_talep) <- c("ocak" , "şubat" , "mart" , "nisan", "mayıs", "haziran",
                  "temmuz" , "ağustos" , "eylül" , "ekim" , "kasım","aralık")

print(maske_talep) #AYLAR VE TALEPLLERİ YAZDIRDI

kapasite_maske <- maske_talep > 130 #130'DAN FAZLA OLANLAR EK PERSONELE İHTİYAÇ VAR DEMEK
maske_talep[kapasite_maske] #ek personele ihtiyaç olduğu günler ve maske talebi. 

# Aylık talep verileri
siperlik_talep <- c(120,100,100,95,80,75,65,50,75,80,90,110)
names(siperlik_talep) <- c("ocak" , "şubat" , "mart" , "nisan", "mayıs", "haziran",
                          "temmuz" , "ağustos" , "eylül" , "ekim" , "kasım","aralık")
print(siperlik_talep) #AYLAR VE TALEPLLERİ YAZDIRDI
kapasite_siperlik <- siperlik_talep >95 #95'ten büyük olduğu günlerde ek personel ihtiyacı var.
siperlik_talep[kapasite_siperlik]#ek personele ihtiyaç olduğu günler ve siperlik talebi. 

#1b Aylık talep miktarlarını maske için büyükten küçüğe, siperlik için küçükten büyüğe sıralayınız.

sort(maske_talep[kapasite_maske], decreasing = TRUE) #BÜYÜKTEN KÜÇÜĞE
sort(siperlik_talep[kapasite_maske]) #KÜÇÜKTEN BÜYÜĞE

#2. SORU


v1 <- c(10,8,6,5)
v2 <- c(8,6,5,4)
v3<- c(7,7,2,3)
v4 <-c(5,2,4,3)
v5 <-c(12,15,7,9)
v6 <-c(12,13,7,8)
v7 <- c(15,15,8,9)
v<- c(v1,v2,v3,v4,v5,v6,v7)
#2a  Şirketin uçuş listesi bilgilerinden oluşan ucus isimli bir matris oluşturun
ucus <- matrix(v, nrow = 7 , ncol = 4 , byrow = TRUE)
#2b Tabloda verilen satır ve sütun isimlerini ucus matrisine satır ve sütun ismi olarak ekleyin.

satır_ısımlerı <- c("Pazartesi" , "Salı" , "Çarsamba",
                    "Perşembe" , "Cuma", "Cumartesi" , 
                    "Pazar")
sutun_ısımlerı<- c("Ankara" , "İzmir", "Gaziantep" ,
                    "Samsun")
row.names(ucus) <- satır_ısımlerı
colnames(ucus) <- sutun_ısımlerı
print(ucus)

#2c Her gün için toplam uçuş sayısı bilgilerini tutan gunluk_ucus_toplamı isimli bir vektör oluşturun.

gunluk_ucus_toplamı <- rowSums(ucus)
print(gunluk_ucus_toplamı)

# 2d  Oluşturmuş olduğunuz gunluk_ucus_toplamı vektörünü ucus matrisine sütun olarak ekleyin.

ucus <- cbind( ucus , gunluk_ucus_toplamı)
print(ucus)

#e) Uçuş yapılan her il için toplam uçuş sayısı bilgisini tutan il_toplam_ucus isimli bir vektöroluşturun.
il_toplam_ucus <- colSums(ucus)
print(il_toplam_ucus)

#f) Uçuş yapılan her il için haftalık ortalama uçuş sayısını tutan ort_ucus isimli vektör oluşturun.
ort_ucus <-colMeans(ucus)
print(ort_ucus)

#g) il_toplam_ucus ve ort_ucus vektörlerini sırasıyla ucus matrisine satır olarak ekleyin.

ucus <- cbind(ucus , il_toplam_ucus , ort_ucus )
print(ucus)

#3.soru

veri <- array (c(10,8,7,5,12,12,15,8,6,7,2,15,13,15,6,5,2,4,
                 7,7,8,5,4,3,3,9,8,9,15,9,7,5,13,11,15,9,5,6,
                 3,10,12,16,9,6,3,3,8,7,8,4,3,2,4,9,10,9))
str(veri)
is.array(veri)
veri <- array(veri, dim = c(7, 4,2))

# Dizi boyutu

print(dim(veri))

# Dizinin içeriği

print(veri)

#dizi isimleri 

rownames(veri) <- c("Pazartesi", "Salı", "Çarşamba" , "Perşembe" , "Cuma", "Cumartesi" , "Pazar")
colnames(veri) <- c("Ankara", "İzmir" , "Gaziantep" , "Samsun")
dimnames(veri)[[3]] <- c("1.hafta" , "2. hafta" )

print(veri)

#4.SORU

#4a
#VERİLERİ VEKTÖR OLARAK TANIMLAMA

calısma <- c("soğuk" , "normal" , "soğuk" , "sıcak" , "sıcak" ,
             "normal")
calısma <- factor(calısma)
calısma[1] #ilk elemanı verir.
str(calısma)

is.vector(calısma)
is.factor(calısma)

#VERİLERİ VEKTOR OLARAK TANIMLAMA

sıcaklık <- factor(calısma, levels = c("soğuk" , "normal" , "sıcak"),
                   labels = c(0,1,2))

is.factor(sıcaklık)
print(sıcaklık)

# 4b 
sıralı_hal<- factor(sıcaklık, ordered=TRUE, levels=c("soğuk", "normal", "sıcak"))

# Yeni faktörün seviyeleri
print(levels(sıralı_hal))





















