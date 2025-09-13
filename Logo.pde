class Logo{
  //ATRIBUTOS
  private PVector posicion;
  private PVector tamanio;
  private PVector velocidad;
  private PImage imagen;
  
  //CONSTRUCTOR
  public Logo(PVector posicion, PVector tamanio, PVector velocidad, PImage imagen){
    this.posicion = posicion;
    this.tamanio = tamanio;
    this.velocidad = velocidad;
    this.imagen = imagen;
  }
  //METODOS
  public void dibujar(){
    imageMode(CENTER);
    image(this.imagen, this.posicion.x, this.posicion.y, this.tamanio.x, this.tamanio.y);
  }
  public void mover(float deltaTime){
    this.posicion.x += this.velocidad.x * deltaTime;
    this.posicion.y += this.velocidad.y * deltaTime;
  }
  public void validarRebote(){
    if(this.posicion.x >= width - this.tamanio.x/2 || this.posicion.x <= 0 + this.tamanio.x/2){
      this.velocidad.x *= -1;
      tint(random(0,255), random(0,255), random(0,255));
    }
    if(this.posicion.y >= height - this.tamanio.y/2 || this.posicion.y <= 0 + this.tamanio.y/2){
      this.velocidad.y *= -1;
      tint(random(0,255), random(0,255), random(0,255));
    }
  }
}
