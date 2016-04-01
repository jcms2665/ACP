#' Esta funcion valida si las variables estan en la base de datos.
#' @title Funcion para validar variables
#' @name valida
#' @param base base de datos
#' @param v conjunto de variables
#' @export

valida<-function (base,v){
  C<-TRUE
  for(r in 1:dim(as.array(v))){
    f<-any(names(base) == v[r])
    C<-c(C,f)
    if(!all(C)){
      stop("[!] No esta la variable: ",v[r])
    }
  }
}


#fr<-data.frame(matrix(0,ncol=dim(as.array(v)),nrow=1))
#for(r in 1:dim(as.array(v))){
#  assign(paste("t",r,sep=""),b[,r]-mean(b[,r]))
#}