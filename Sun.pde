class Sun extends Eflower
{ 
  Sun (float xpos, float ypos)
  {
    super(xpos, ypos);
  }
  
  void srender()
  {
    pushMatrix();
    translate(xpos, ypos);
    stroke(247, 141, 0);
    fill(234, 250, 23);
    ellipse(0, -50, 20, 20);
    popMatrix();
  }
  
  void sremove()
  {
     energy += 15 ;
     sun.remove(this);
  }
}