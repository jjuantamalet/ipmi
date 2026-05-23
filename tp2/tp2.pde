PImage logo,walterdolares,walterenfermo,walterprof,walterfallecido,waltermeta;
  PFont fuente;
  float posXText,posYText;
  int tamText,opacidad,contador,marcaDeTiempo,estado;

void setup(){
  size(640,480);
  logo = loadImage("bbadlogo.jpg");
  walterprof = loadImage("walter profesor.jpg");
  walterenfermo = loadImage("walter enfermo.jpg");
  walterdolares = loadImage("walter dolares.jpg");
  walterfallecido = loadImage("walter fallecido.jpg");
  waltermeta = loadImage("walter meta.jpg");
 
  fuente = loadFont("Arial-Black-48.vlw");
}
void draw(){
  background(0);
  contador = frameCount-marcaDeTiempo;
  
  if (contador>300 && estado<5){
    estado++; 
    marcaDeTiempo = frameCount;
    contador = 0; 
  }
  
  if (contador<60) {
    opacidad = int(map(contador,0,60,0,255));      
    
  if (estado == 0 || estado == 3) {
      posYText = map(contador,0,60,30,0); 
      posXText = 0;
    } 
  else if (estado == 1 || estado == 4) {
      posXText = map(contador,0,60,150,0); 
      posYText = 0;
    } 
  else if (estado == 2) {
      posYText = map(contador,0,60,-30,0); 
      posXText = 0;
    } 
  else if (estado == 5) {
      posXText = map(contador,0,60,-150,0);
      posYText = 0;
    }
  }
  else {
    opacidad = 255;
    posYText = 0;
    posXText = 0; 
  }
  
  textSize(30); 
  textAlign(CENTER,CENTER);
  
  if (estado == 0) {
    image(logo,0,0,width,height);
    
    fill(0,opacidad);   
    text("La historia de Walter White",width/2+2+posXText,height-40+posYText);
    fill(0,opacidad);   
    text("La historia de Walter White",width/2-2+posXText,height-40+posYText);
    fill(0,opacidad);   
    text("La historia de Walter White",width/2+posXText,height-40+posYText+2);
    fill(0,opacidad);   
    text("La historia de Walter White",width/2+posXText,height-40+posYText-2);
    fill(255,opacidad);   
    text("La historia de Walter White",width/2+posXText,height-40+posYText);
    
  } else if (estado == 1) {
      image(walterprof,0,0,width,height);
      fill(0,opacidad);
      text("Walter White era un profesor de química brillante,\npero su vida era completamente normal....", width/2+2+posXText,height-40+posYText);
      fill(0,opacidad);
      text("Walter White era un profesor de química brillante,\npero su vida era completamente normal....", width/2-2+posXText,height-40+posYText);
      fill(0,opacidad);
      text("Walter White era un profesor de química brillante,\npero su vida era completamente normal....", width/2+posXText,height-40+posYText+2);
      fill(0,opacidad);
      text("Walter White era un profesor de química brillante,\npero su vida era completamente normal....", width/2+posXText,height-40+posYText-2);
      fill(255,opacidad);
      text("Walter White era un profesor de química brillante,\npero su vida era completamente normal....", width/2+posXText,height-40+posYText);
    
  } else if (estado == 2) {
      image(walterenfermo,0,0,width,height);
      fill(0,opacidad);
      text("Todo cambió cuando le diagnosticaron cáncer.\nNecesitaba dinero para su familia..",width/2+2+posXText,height-40+posYText);
      text("Todo cambió cuando le diagnosticaron cáncer.\nNecesitaba dinero para su familia..",width/2-2+posXText,height-40+posYText);
      text("Todo cambió cuando le diagnosticaron cáncer.\nNecesitaba dinero para su familia..",width/2+posXText,height-40+posYText+2);
      text("Todo cambió cuando le diagnosticaron cáncer.\nNecesitaba dinero para su familia..",width/2+posXText,height-40+posYText-2);
      fill(255,opacidad);
      text("Todo cambió cuando le diagnosticaron cáncer.\nNecesitaba dinero para su familia..",width/2+posXText,height-40+posYText);
  } else if (estado == 3) {
    image(waltermeta,0,0,width,height);
    fill(0,opacidad);
    text("Desesperado, empezó a fabricar metanfetamina.\nLo que parecía una solución fácil cambió su vida.",width/2+2+posXText,height-60+posYText);    
    text("Desesperado, empezó a fabricar metanfetamina.\nLo que parecía una solución fácil cambió su vida.",width/2-2+posXText,height-60+posYText);
    text("Desesperado, empezó a fabricar metanfetamina.\nLo que parecía una solución fácil cambió su vida.",width/2+posXText,height-60+posYText+2);
    text("Desesperado, empezó a fabricar metanfetamina.\nLo que parecía una solución fácil cambió su vida.",width/2+posXText,height-60+posYText-2);
    fill(255,opacidad);
    text("Desesperado, empezó a fabricar metanfetamina.\nLo que parecía una solución fácil cambió su vida.",width/2+posXText,height-60+posYText);
  } else if (estado == 4) {
      image(walterdolares,0,0,width,height);
      
      fill(0,opacidad);
      text("Con el tiempo, Walter dejó de ser Walter.\nHeisenberg tomó el control.",width/2+2+posXText,height-60+posYText);
      text("Con el tiempo, Walter dejó de ser Walter.\nHeisenberg tomó el control.",width/2-2+posXText,height-60+posYText);
      text("Con el tiempo, Walter dejó de ser Walter.\nHeisenberg tomó el control.",width/2+posXText,height-60+posYText+2);
      text("Con el tiempo, Walter dejó de ser Walter.\nHeisenberg tomó el control.",width/2+posXText,height-60+posYText-2);
      
      fill(0,opacidad);
      text("Con el tiempo, Walter dejó de ser Walter.\nHeisenberg tomó el control.",width/2+2+posXText,height-60+posYText);
      text("Con el tiempo, Walter dejó de ser Walter.\nHeisenberg tomó el control.",width/2-2+posXText,height-60+posYText);
      text("Con el tiempo, Walter dejó de ser Walter.\nHeisenberg tomó el control.",width/2+posXText,height-60+posYText+2);
      text("Con el tiempo, Walter dejó de ser Walter.\nHeisenberg tomó el control.",width/2+posXText,height-60+posYText-2);
      fill(255,opacidad);
      text("Con el tiempo, Walter dejó de ser Walter.\nHeisenberg tomó el control.",width/2+posXText,height-60+posYText);
  } else if (estado == 5) {
      image(walterfallecido,0,0,width,height);
      fill(0,opacidad);
      text("Su ambición terminó destruyéndolo todo.\nFinalmente, Walter muere solo.",width/2+2+posXText,height-40+posYText);
      text("Su ambición terminó destruyéndolo todo.\nFinalmente, Walter muere solo.",width/2-2+posXText,height-40+posYText);
      text("Su ambición terminó destruyéndolo todo.\nFinalmente, Walter muere solo.",width/2+posXText,height-40+posYText+2);
      text("Su ambición terminó destruyéndolo todo.\nFinalmente, Walter muere solo.",width/2+posXText,height-40+posYText-2);
      fill(255,opacidad);
      text("Su ambición terminó destruyéndolo todo.\nFinalmente, Walter muere solo.",width/2+posXText,height-40+posYText);
    if (contador % 60 < 45)//efecto titilar, de los 60 frame, solo muestra el texto en 45, los 15 restantes esta vacio
      { 
        fill(255); 
        text("Presiona el mouse para reiniciar",width/2,height/2);
      }
dibujarBotonReiniciar();  }
}
