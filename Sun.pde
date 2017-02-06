PShape suns ;

class Sun extends Eflower
{ 
  Sun (float xpos, float ypos)
  {
    super(xpos, ypos);
    this.xpos = xpos;
    this.ypos = ypos;
  }
  
  void srender()
  {
    pushMatrix();
    fill(234, 250, 23);
    ellipse(0, -50, 20, 20);
    translate(xpos, ypos);
    shape(suns);
    popMatrix();
  }
}