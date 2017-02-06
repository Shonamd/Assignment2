class Bullet extends Bflower
{
  PVector pos ;
  float speed = 200 ;
  float alive ;
  
  Bullet(float xpos, float ypos)
  {
    super(xpos, ypos) ;
    pos = new PVector(xpos, ypos) ;
    create_bullets();
  }
  
  void create_bullets()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    fill(250, 13, 48);
    strokeWeight(1.5);
    stroke(0);
    popMatrix();
  }
  
  void update_bullets()
  {
    pos.x = pos.x + 2 ;
  }
}

void keyPressed()
{
 if(keyCode == 'f' || keyCode == 'F')
 {
   energy++;
 }
}