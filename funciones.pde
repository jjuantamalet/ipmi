void grilla(float tamCelda,int cantColumnas,int cantFilas){
  for (int i= 0;i<cantColumnas;i++){ //for de columnas
    for (int j= 0;j<cantFilas;j++){ //for de filas
      float x= 400+(i*tamCelda);
      float y= j*tamCelda;
      float fuerza= calcularFuerza(x, y,tamCelda);
      dibujarBloque(x,y,tamCelda,fuerza);
    }
  }
}

float calcularFuerza(float x,float y,float tam){
  float centroX= x+tam/2;
  float centroY= y+tam/2;
  float distancia= dist(mouseX,mouseY,centroX,centroY); //calcula la distancia del mouse entorno al centro del bloque especifico de la grilla
  float limite= min(distancia,200);  //limita la distancia en la que actua el mouse a 200 pixeles
  return map(limite,0,200,1,0); //mapea el efecto de fuerza que hace el mouse sobre la grilla
  //si la distancia esta entre 0 y 200 retorna fuerza, si esta fuera de 200 no hace ningun efecto
}

void dibujarBloque(float x,float y,float tam,float fuerza){
  for (int k= 0;k<4;k++){  //dibuja los 4 cuadrados de la celda
    float tamActual= tam-(k*(tam/6)); //achica cada cuadrado interno
    float moverX= (mouseX-x)*0.1*fuerza;
    float moverY= (mouseY-y)*0.1*fuerza;

    // if y else que permiten que la grilla vuelva a stroke 0 (reinicia varibble de color)
    if (colorFijado){
      stroke(r*fuerza, g*fuerza, b*fuerza);
    } else{
      stroke(0); 
    }
    //traslada la grilla a la porcion derecha del size, y el rotate gira cada cuadrado de la grilla (cercano a el mouse)
    strokeWeight(2+(fuerza*4));
    push();
    translate(x+moverX, y+moverY);
    rotate(fuerza*k*0.1); 
    rect(0,0,tamActual,tamActual); 
    pop();
  }
}
