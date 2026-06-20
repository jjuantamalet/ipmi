void grilla(float tamCelda,int cantColumnas,int cantFilas){
  for (int i=0; i<cantColumnas; i++){
    for (int j=0; j<cantFilas; j++){
  
      float x=400+(i*tamCelda);
      float y=j*tamCelda;
      // variable que analiza la cercania del mouse para obtener que tanto se mueve
      float fuerza=calcularFuerza(x,y,tamCelda);
      aplicarColor();
      //funcion que representa la fuerza segun la cercania del mouse a la celda
      dibujarBloque(x,y,tamCelda,fuerza);
    }
  }
}

float calcularFuerza(float x,float y,float tam){
  float centroX = x+tam/2;
  float centroY = y+tam/2;
  float distancia=dist(mouseX,mouseY,centroX,centroY);
  
  float limite=distancia;
  if (limite>100){
    limite=100;
  }
  return map(limite,0,100,1,0);
}

void aplicarColor(){
  if (colorActivado){
    stroke(r,g,b);
  }else{
    stroke(0);
  }
}
// dibuja los cuatro rectangulos en la celda
void dibujarBloque(float x,float y,float tam,float fuerza){
  for (int k =0;k<4;k++){
    float tamActual =tam-(k*(tam/6));
    
    //mover el cuadrado en relacion al mouse
    // Si la fuerza es 1(cerca)se desplazan, si es 0(lejos)no se mueve
    float moverX =(mouseX-x)*0.1*fuerza;
    float moverY =(mouseY-y)*0.1*fuerza;
    
    strokeWeight(obtenerGrosor(2+(fuerza*4)));
    rect(x+moverX,y+moverY,tamActual,tamActual);
  }
}

float obtenerGrosor(float valor) {
  return valor;
}
