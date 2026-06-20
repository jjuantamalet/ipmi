//https://youtu.be/GH1czxyfYPs
PImage imagen10;
int columnas=6;
int filas=6;
float tamCelda;
boolean colorActivado=false;
float r,g,b;

void setup(){
  size(800,400);
  imagen10=loadImage("10.jpeg");
  tamCelda=400/columnas;
}
void draw(){
  background(255);
  image(imagen10,0,0,400,400);
  grilla(tamCelda,columnas,filas);
}
void keyPressed(){
  if (key=='r'||key=='R'){
    colorActivado=false;
}
}
void mousePressed(){
  colorActivado=true;
  r=random(255);
  g=random(255);
  b=random(255);
}
