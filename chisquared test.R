malaria_chisq <- chisq.test(malaria)
malaria_chisq
swine_flu_chisq<-chisq.test(swine_flu)
swine_flu_chisq
blood_vidal_chisq<-chisq.test(blood_vidal)
blood_vidal_chisq
cholera_chisq<-chisq.test(cholera)

cholera_chisq
dengue_chisq<-chisq.test(dengue)
dengue_chisq
install.packages("corrplot")
library(corrplot)
malaria_contrib <- 100*malaria_chisq$residuals^2/malaria_chisq$statistic
round(malaria_contrib, 3)

swine_flu_contrib<-100*swine_flu_chisq$residuals^2/swine_flu_chisq$statistic
round(swine_flu_contrib,3)

blood_vidal_contib<-100*blood_vidal_chisq$residuals^2/blood_vidal_chisq$statistic
round(blood_vidal_contib,3)
cholera_chisq_contrib<-100*cholera_chisq$residuals^2/cholera_chisq$statistic
round(cholera_chisq_contrib,,3)
dengue_chisq_contrib<-100*dengue_chisq$residuals^2/dengue_chisq$statistic
round(dengue_chisq_contrib,3)
corrplot(malaria_contrib, is.cor = FALSE)
corrplot(blood_vidal_contib,is.corr=FALSE)
corrplot(swine_flu_contrib,is.corr = FALSE)
corrplot(cholera_chisq_contrib,is.corr = FALSE)
corrplot(dengue_chisq_contrib,is.corr= FALSE)

