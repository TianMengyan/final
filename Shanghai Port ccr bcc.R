library("deaR")
library(readxl)
#######read file(Shanghai Port)#####
getwd()

data<- read.csv("shanghai.csv")
data

######CCR code#####
data_basic<-read_data(data,dmus=1,inputs=2:3,outputs=4:5)
data_basic
result_data<-model_basic(data_basic,dmu_eval = 1:5,dmu_ref = 1:5,orientation = "io",rts = "crs")
result_data
summary(result_data)


#####BCC code###
result_data_bcc<-model_basic(data_basic,dmu_eval = 1:5,dmu_ref = 1:5,orientation = "oo",rts = "vrs")
result_data_bcc
summary(result_data_bcc)

