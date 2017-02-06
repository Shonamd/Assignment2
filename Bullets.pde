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
  
}

void keyPressed()
{
 if(keyCode == 'f' || keyCode == 'F')
 {
   energy++;
 }
}