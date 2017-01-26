class Energy
{
  PShape eflower;
  
  Energy(float x, float y)
  {
    energycreate();
  }


  void energycreate()
  {
    eflower = createShape(GROUP);
    strokeWeight(2);
    stroke(0);
    fill(237, 54, 17);
    PShape outer = createShape(ELLIPSE, 0, 0, width/10, height/10);
    fill(237, 131, 17);
    PShape middle = createShape(ELLIPSE, 0, 0, width/12, height/12);
    fill(255);
    PShape inner = createShape(ELLIPSE, 0, 0, width/15, height/15);
    PShape leye = createShape(LINE, -width/100, -height/100, -width/100, -height/100+(height/100*2));
    PShape reye = createShape(LINE, width/100, -height/100, width/100, -height/100+(height/100*2)) ;
    stroke(34, 237, 17);
    PShape stalk = createShape(LINE, 0, height/20, 0, height/10) ; 
    PShape root = createShape(LINE, -width/100, height/10, width/100, height/10);
    
    eflower.addChild(outer) ;
    eflower.addChild(middle) ;
    eflower.addChild(inner) ;
    eflower.addChild(leye) ;
    eflower.addChild(reye) ;
    eflower.addChild(stalk) ;
    eflower.addChild(root);
    
    shape(eflower);
    
  }
  
  void render()
  {
    pushMatrix();
    translate(width/2, height/2) ;
    shape(eflower, 0, 0);
    popMatrix();
  }
}