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
  void dibujar(){
    imageMode(CENTER);
    image(this.imagen, this.posicion.x, this.posicion.y, this.tamanio.x, this.tamanio.y);
  }
  
}
