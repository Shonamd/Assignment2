void setup()
{
  size(900, 600);
  background(0);
}

//First flower code
void draw()
{
  fill(237, 54, 17);
  ellipse(width/2, height/2, 140, 100);
  fill(237, 131, 17);
  ellipse(width/2, height/2, 110, 70);
  fill(255);
  ellipse(width/2, height/2, 80, 40);
  stroke(0);
  strokeWeight(2);
  line(width/2-10, height/2-10, width/2-10, height/2+10);
  line(width/2+10, height/2-10, width/2+10, height/2+10);
  stroke(34, 237, 17);
  strokeWeight(4);
  line(width/2, height/2+50, width/2, height/2+80);
  stroke(0);
  strokeWeight(3);
}