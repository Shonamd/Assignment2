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
    pos.x = pos.x + 5 ;
    
    Bug bugs = bug.get(0);
    
    if(dist(pos.x, pos.y, bugs.pos.x, bugs.pos.y) < height/10)
    {
      println(kcount);
      bullet.remove(this);
      kcount ++ ;
      score = score + 5 ;
    }
    
    if(pos.x > width/4*3)
    {
      bullet.remove(this) ;
    }
  }
  
}

void keyPressed()
{
 if(keyCode == 'f' || keyCode == 'F')
 {
   energy++;
 }
}