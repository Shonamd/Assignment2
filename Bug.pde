/*ArrayList<Bug> bug = new ArrayList<Bug>();

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
    stroke(0);
    fill(180, 78, 31) ;
    PShape main = createShape(ELLIPSE, 0, 0, height/15, width/15) ;
    
    bug.addChild(main);
  }
  
  void bug_render()
  {
    pushMatrix();
    translate(xpos, ypos);
    shape(bug);
    popMatrix();
  }
*/