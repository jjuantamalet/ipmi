void dibujarBotonReiniciar() {
  
  if (contador % 60 < 45) { 
    fill(255); 
    text("Presiona el mouse para reiniciar", width/2, height/2);
  }
}

void mousePressed() {
  
  if (estado == 5) {
    estado = 0;                  
    marcaDeTiempo = frameCount;  
  }
}
