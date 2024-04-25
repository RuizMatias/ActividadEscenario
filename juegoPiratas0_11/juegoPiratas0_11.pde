public Slayer pirata;
public Loro loro;
PImage img;
int space=180;

public void setup(){
size(600,600);
img= loadImage("fondo.png");
pirata= new Slayer();


   pirata.setPosicion(new PVector(width/2,450));
   pirata.setVelocidad(new PVector(10,0));
    
   loro = new Loro(new PVector (100,65), new PVector (4,4) ); 
}
 public void draw(){
    background(0);
    imageMode(CENTER);
   image(img,300,300);
  
  //lorito.dibujar();
  pirata.dibujar();
  loro.dibujar();
  loro.mover();
 }
 
 public void mousePressed(){
    if (mousePressed){
      if (mouseButton == LEFT){
      
      pirata.mover(0);
      } else {
       if (mouseButton == RIGHT){
       pirata.mover(1);
       }
      }
    }
 }
