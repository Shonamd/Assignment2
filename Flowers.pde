class Eflower
{
  PShape eflower;
  
  float xpos ;
  float ypos ;
  
  Eflower(float x, float y)
  {
    xpos = x ;
    ypos = y ;
    
    energycreate();
  }


  void energycreate()
  {
    eflower = createShape(GROUP);
    strokeWeight(2);
    stroke(0);
    fill(237, 54, 17);
    PShape outer = createShape(ELLIPSE, 0, 0, width/15, height/15);
    fill(237, 131, 17);
    PShape middle = createShape(ELLIPSE, 0, 0, width/20, height/20);
    fill(255);
    PShape inner = createShape(ELLIPSE, 0, 0, width/30, height/30);
    PShape leye = createShape(LINE, -width/130, -height/120, -width/130, -height/120+(height/120*2));
    PShape reye = createShape(LINE, width/130, -height/120, width/130, -height/120+(height/120*2)) ;
    stroke(34, 237, 17);
    PShape stalk = createShape(LINE, 0, height/30, 0, height/30*2) ; 
    PShape leaves = createShape(LINE, -width/130, height/30, width/130, height/30);
    
    eflower.addChild(outer) ;
    eflower.addChild(middle) ;
    eflower.addChild(inner) ;
    eflower.addChild(leye) ;
    eflower.addChild(reye) ;
    eflower.addChild(stalk) ;
    eflower.addChild(leaves);
   
  }
  
  void render()
  {
    pushMatrix();
    translate(xpos, ypos) ;
    shape(eflower); 
    popMatrix();
  }
}