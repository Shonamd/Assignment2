PShape sun ;
class Sun extends Eflower
{ 
  Sun (float xpos, float ypos)
  {
    super(xpos, ypos);
    sun_create();
  }
  
  void sun_create()
  {
    sun = createShape() ;
    fill(234, 250, 23);
    ellipse(xpos +50, ypos + 50, 20, 20);
  } 
  
  void srender()
  {
    pushMatrix();
    translate(xpos, ypos);
    shape(sun);
    popMatrix();
  }
}
  
  

}