class Bullet extends Bflower
{
  PVector pos ;
  float speed = 200 ;
  float alive ;
  
  Bullet(float xpos, float ypos)
  {
    super(xpos, ypos) ;
    pos = new PVector(xpos, ypos) ;
  }
  
  void bullet_render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    strokeWeight(5);
    stroke(250, 13, 48);
    line(-4, 0, 4, 0);
    popMatrix();
    
  }
  
  void update_bullet()
  {
    pos.x = pos.x + 50 ;
  }
  
}

void keyPressed()
{
 if(keyCode == 'f' || keyCode == 'F')
 {
   energy++;
 }
}