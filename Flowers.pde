class Eflower
{
  PShape eflower;
  
  float xpos ;
  float ypos ;
  
  Eflower(float x, float y)
  {
    xpos = x ;
    ypos = y ;
    
    ecreate();
  }


  void ecreate()
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
  
  void erender()
  {
    pushMatrix();
    translate(xpos, ypos) ;
    shape(eflower); 
    popMatrix();
  }
  
  void eupdate()
  {
    sun.add(new Sun(xpos, ypos)); 
  }

}

class Bflower
{
  PShape battleflower;
  
  float xpos ;
  float ypos ;
  
  Bflower(float x, float y)
  {
    xpos = x ;
    ypos = y ;
    
    bcreate();
  }
  
  void bcreate()
  {
    battleflower = createShape(GROUP);
    strokeWeight(2);
    stroke(0);
    fill(255, 124, 207);
    PShape main = createShape(ELLIPSE, 0, 0, width/30, width/30);
    PShape petal1 = createShape(ELLIPSE, width/100, 0, width/30, width/30);
    PShape petal2 = createShape(ELLIPSE, width/100, width/100, width/30, width/30);
    PShape petal3 = createShape(ELLIPSE, -width/100, width/100, width/30, width/30);
    PShape petal4 = createShape(ELLIPSE, -width/100, -width/100, width/30, width/30);
    stroke(34, 237, 17);
    PShape stalk = createShape(LINE, 0, width/100+ width/60, 0, width/100*5); 
    PShape leaves = createShape(LINE, -width/100, width/100+ width/60, width/100, width/100+ width/60);
 
    battleflower.addChild(main);
    battleflower.addChild(petal1);
    battleflower.addChild(petal2);
    battleflower.addChild(petal3);
    battleflower.addChild(petal4);
    battleflower.addChild(stalk);
    battleflower.addChild(leaves);
  }
  
  void brender()
  {
    pushMatrix();
    translate(xpos, ypos) ;
    shape(battleflower); 
    popMatrix();
  }
  
  void bupdate()
  {
    bullet.add(new Bullet(xpos, ypos));
  }
}