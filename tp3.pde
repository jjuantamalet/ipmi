//https://youtu.be/10d-K8bBq9E
PImage imagen10;
int columnas= 6;
int filas= 6;
float tamCelda;
boolean colorFijado= false; 
float r,g,b;
void setup(){
  size(800,400);
  imagen10= loadImage("10.jpeg");
  tamCelda= 400/columnas;
}
void draw(){
  background(255);
  image(imagen10,0,0,400,400);
  grilla(tamCelda,columnas,filas);
}
//boton de reiniciar variable de color
void keyPressed() {
  if (key=='r'||key=='R'){
    colorFijado = false; 
  }
}
//Al hacer clic genera un color random y lo fija, para posteriormente poder reiniciarlo
void mousePressed(){
  r= random(255);
  g= random(255);
  b= random(255);
  colorFijado= true; 
}
