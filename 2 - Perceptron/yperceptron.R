#Função que realiza a operação do perceptron
yperceptron <- function(xvec, w, par){
  # xvec: vetor de entrada
  # w: vetor de pesos
  # par: se adiciona ou não o vetor de 1s na entrada 
  # yperceptron: resposta do perceptron
  if ( par==1){
    xvec<-cbind ( 1 , xvec )
  } 
  u <- xvec %*% w
  y <- 1.0 * (u>=0)
  return(as.matrix(y))
}
  