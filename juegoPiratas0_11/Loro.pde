class Loro{
 private PVector posicion;
 private PImage imagen;
 private PVector velocidad;
 int direccion=1;
 public Loro(){
  imagen = loadImage("loro2.png");
 }

  public Loro(PVector posicion, PVector velocidad){
  this.posicion=posicion;
  this.velocidad=velocidad;
  this.imagen = loadImage("guaca.png");
  }
public void dibujar(){
 
 imageMode(CENTER);
 image(imagen,posicion.x,posicion.y,150,150);
}

public void mover(){
  if (this.posicion.x<=width){
  this.posicion.x+=this.velocidad.x;
  println(posicion.x);
  }else {
   if(this.posicion.x!=0){
   this.posicion.x-=this.posicion.x-this.velocidad.x;
   }
  
  }  
  
  
 }

}
