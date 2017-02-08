class Bug
{
  PShape bugs ;
  PVector pos;
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
    bugs = createShape(GROUP);
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
    
    bugs.addChild(antena1);
    bugs.addChild(antena2);
    bugs.addChild(leg1);
    bugs.addChild(leg2);
    bugs.addChild(leg3);
    bugs.addChild(leg4);
    bugs.addChild(leg5);
    bugs.addChild(leg6);
    bugs.addChild(main);
    
  }
  
  void bug_render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    shape(bugs);
    popMatrix();
  }
  
  void update_bug()
  {
    if ( level == 0)
    {
      //Makes the bug attack in a sin wave pattern
      theta = theta + radians(0.5);
      pos.x = pos.x - 0.5;
      pos.y = midY + sin(theta) * ((height/5)*0.3);
    }
    
    if( level == 1)
    {
      theta = theta + radians(0.5);
      pos.x = pos.x - 3;
      pos.y = midY + sin(theta) * ((height/5)*0.3);
    }
    
     if( level == 2)
    {
      theta = theta + radians(0.5);
      pos.x = pos.x - 5;
      pos.y = midY + sin(theta) * ((height/5)*0.3);
    }
    
  }
  
  void bremove()
  {
    bug.remove(this);
  }
}