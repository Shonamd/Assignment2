class Bug
{
  PShape bug ;
  PVector pos;
  //float xpos ;
  float midY;
  float theta;
  
  Bug(float x, float y)
  {
    pos = new PVector();
    pos.x = x;
    midY = y;
    
    bug_create();
  }
  
  void bug_create()
  {
    bug = createShape(GROUP);
    strokeWeight(2) ;
    stroke(0);
    fill(180, 78, 31) ;
    PShape antena1 = createShape(LINE, 0, 0, (-height/10),(-width/100)) ; 
    PShape antena2 = createShape(LINE, 0, 0, (-height/10), (width/100)); 
    PShape leg1 = createShape(LINE, 0, 0, (-height/30), (-width/40));
    PShape leg2 = createShape(LINE, 0, 0, 0, (-width/40));
    PShape leg3 = createShape(LINE, 0, 0, (height/30), (-width/40)); 
    PShape leg4 = createShape(LINE, 0, 0, (-height/30), width/40);
    PShape leg5 = createShape(LINE, 0, 0, 0, width/40);
    PShape leg6 = createShape(LINE,0, 0, height/30, width/40);
    PShape main = createShape(ELLIPSE, 0, 0, height/10, width/30) ;
    
    bug.addChild(antena1);
    bug.addChild(antena2);
    bug.addChild(leg1);
    bug.addChild(leg2);
    bug.addChild(leg3);
    bug.addChild(leg4);
    bug.addChild(leg5);
    bug.addChild(leg6);
    bug.addChild(main);
    
  }
  
  void bug_render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    shape(bug);
    popMatrix();
  }
  
  void update_bug()
  {
    theta = theta + radians(0.5);
    pos.x = pos.x - 0.5;
    pos.y = midY + sin(theta) * ((height/5)*0.25);
    
    //////////////////
    if(pos.x < 0)
    {
      pos.x = width;
    }
    ////////////////
  }
}