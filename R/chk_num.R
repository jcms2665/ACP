#' Checa si las variables de una base de datos son numéricas.
#' @title Variables numéricas
#' @name chk_num
#' @param b Base de datos
#' @param v Conjunto de variables
#' @export

chk_num<-function (b,v){
  for(r in 1:dim(as.array(v))){
    if(!is.numeric(b[,r]))
      stop("[!] La variable ",names(b[r])," debe ser numérica") 
  }
}