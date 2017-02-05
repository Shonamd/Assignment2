

class Bug
{
  PShape bug ;
  
  float xpos ;
  float ypos ;
  
  Bug(float x, float y)
  {
    xpos = x ;
    ypos = y ;
    
    bug_create();
  }
  
  void bug_create()
  {
    bug = createShape(GROUP);
    strokeWeight(1) ;
    stroke(180, 78, 31);
    fill(180, 78, 31) ;
    PShape main = createShape(ELLIPSE, 0, 0, height/10, width/30) ;
    PShape antena1 = createShape(LINE, 0, 0, (-height/10),(0-width/100)) ; 
    PShape antena2 = createShape(LINE, 0, 0, (-height/10), (width/100)); 
    
    bug.addChild(main);
    bug.addChild(antena1);
    bug.addChild(antena2);
  }
  
  void bug_render()
  {
    pushMatrix();
    translate(xpos, ypos);
    shape(bug);
    popMatrix();
  }
}