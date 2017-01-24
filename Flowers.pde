class Energy
{
  float radius ;
  PShape eflower ;

  
  Energy(float x, float y)
  {
    energycreate();
  }


  void energycreate()
  {
    
    eflower = createShape(GROUP);
    fill(237, 54, 17);
    PShape outer = createShape(ellipse(x, y, width/10, height/10);
    fill(237, 131, 17);
    PShape middle = createShape(ellipse(x, y, width/11, height/11);
    fill(255);
    PShape inner = createShape(ellipse(x, y, width/12, height/12);
   /* eflower.beginShape();
    eflower.fill(237, 54, 17);
    eflower.ellipse(x, y, 140, 100);
    eflower.fill(237, 131, 17);
    eflower.ellipse(x, y, 110, 70);
    eflower.fill(255);
    eflower.ellipse(x, y, 80, 40);
    eflower.stroke(0);
    eflower.strokeWeight(2);
    eflower.line(x-10, y-10, x-10, y+10);
    eflower.line(x+10, y-10, x+10, y+10);
    eflower.stroke(34, 237, 17);
    eflower.strokeWeight(4);
    eflower.line(x, y+50, x, y+80);
    eflower.stroke(0);
    eflower.strokeWeight(3);*/
    endShape(CLOSE);
  }
  
  void render()
  {
    pushMatrix();
    translate(x, y);
    shape(eflower, 0, 0);
    popMatrix();
}