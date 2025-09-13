private Logo miLogoDVD;

void setup(){
  fullScreen();
  miLogoDVD = new Logo(new PVector(width/6, height/2), new PVector(width/6, height/8), new PVector(10, 10), loadImage("dvd-logo.png"));
}
void draw(){
  background(0);
  miLogoDVD.dibujar();
}
