#1.sorua
tur1 <- "Yunan Adaları"
tur2 <- "İsviçre"
tur3 <- "Japonya"
satısfıyatı_yun <- 200
satısfıyatı_isvicre <-5600
satısfıyatı_japonya <- 25000
satıs_adeti_yunan <- 200
satıs_adeti_isvicre <-100
satıs_adeti_japonya <- 0

#1.sorub
yunan_aylık_kazanc <- satısfıyatı_yun * satıs_adeti_yunan
ısvıcre_aylık_kazanc <- satısfıyatı_isvicre * satıs_adeti_isvicre
japonya_aylık_kazanc <- satısfıyatı_japonya * satıs_adeti_japonya

#1.soruc

satıs_adeti_yunan <- as.integer(satıs_adeti_yunan)
satıs_adeti_isvicre <- as.integer(satıs_adeti_isvicre)
satıs_adeti_japonya <- as.integer(satıs_adeti_japonya)

#1sorud 
rm(satısfıyatı_japonya , satıs_adeti_japonya)


#2. soru 
#2a
ucus <- matrix(c(100,250,300,85,300,450,120,350,560) , nrow = 3 , ncol = 3 , byrow = TRUE)
#2b
satır_ısımlerı <- c("Haziran" , "Temmuz" , "Ağustos")
sutun_ısımlerı <- c("Ankara" , "İzmir" , "Antalya")
rownames(ucus) <- satır_ısımlerı
colnames(ucus) <- sutun_ısımlerı
ucus
#2c
aylik_ucus_toplami <- rowSums(ucus)


#2d
ucus <- cbind(ucus, aylik_ucus_toplami)
ucus






