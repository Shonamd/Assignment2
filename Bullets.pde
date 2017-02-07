class Bullet extends Bflower
{
  PVector pos ;
  float speed = 200 ;
  float alive ;
  
  Bullet(float xpos, float ypos)
  {
    super(xpos, ypos) ;
    pos = new PVector(xpos, ypos) ;
    bullet_render();
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
  
 /* void update_bullets()
  {
    pos.x = pos.x + 2 ;
  }*/
}

void keyPressed()
{
 if(keyCode == 'f' || keyCode == 'F')
 {
   energy++;
 }
}