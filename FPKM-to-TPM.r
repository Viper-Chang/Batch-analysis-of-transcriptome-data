coding_bulkfpkm<-read.csv('C:/Users/lenovo/Desktop/FPKM/PRJNA894942.csv')
dim(coding_bulkfpkm)
rownames(coding_bulkfpkm)<-coding_bulkfpkm[,1]
coding_bulkfpkm<-coding_bulkfpkm[,-1]
coding_bulktpm = t(t(coding_bulkfpkm)/colSums(coding_bulkfpkm))*10^6
head(coding_bulktpm)
colSums(coding_bulktpm)
write.table(coding_bulktpm,file= "C:/Users/lenovo/Desktop/TPM/PRJNA894942-TPM.csv",sep=",")