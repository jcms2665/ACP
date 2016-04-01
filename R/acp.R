#' Análisis de componentes principales.
#' @title Análisis de componentes principales
#' @name acp
#' @param base base de datos
#' @param v conjunto de variables
#' @export
#' 

acp<-function (base,v){
  
  valida(base,v)
  b<-base[,v]
  chk_num(b,v)
  b1<-b
  
  for(r in 1:dim(as.array(v))){
    b1[,r]<-b[,r]-mean(b[,r])
  }
  
  cov_m<-cov(b, use="complete.obs")
  eig_m<-eigen(cov_m)
  eig<-data.matrix(eig_m$vectors)
  
  b2<-data.matrix(b1)
  res1<-b2 %*% eig
  res2<-eig
  assign("CFactorial",res1,envir = .GlobalEnv)
  assign("Ponderadores",res2,envir = .GlobalEnv)
  message("Se generaron correctamente la carga factorial y ponderadores (Eigenvalores)") 
}
 