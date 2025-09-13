private Logo miLogoDVD;
private int tiempoAnterior;

void setup(){
  fullScreen();
  miLogoDVD = new Logo(new PVector(width/6, height/2), new PVector(width/6, height/8), new PVector(100, 100), loadImage("dvd-logo.png"));
  tiempoAnterior = millis();
}
void draw(){
//----------------------------------------DELTATIME
  int tiempoActual = millis();
  float deltaTime = (tiempoActual - tiempoAnterior) / 1000.0;
  tiempoAnterior = tiempoActual;
  
  background(0);
  miLogoDVD.dibujar();
  miLogoDVD.mover(deltaTime);
}
