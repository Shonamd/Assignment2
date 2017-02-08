void opening()
{
  background(0);
  strokeWeight(2);
  stroke(34, 237, 17);
  noFill();
  rect(width/20, height/20, width/20*18, height/20*18);
  textFont(tscore);
  fill(34, 237, 17);
  text("Stop Bugging Me!", width/20*7.5, height/20*8);
  
  noFill();
  rect(width/20*8, height/20*12, width/5, height/8);
  text("Start Game", ((width/20*8)+(width/5)/5.5), ((height/20*12) + (height/8)/1.75));
  
  noFill();
  rect(width/20*8, height/20*15, width/5, height/8);
  text("Help", ((width/20*8) + (width/5)/5.5), ((height/20*15) + (height/8)/1.75));
  
  // To start the game
  if(mouseX > width/20*8 && mouseX < ((width/20*12)))
    {
      if(mouseY > height/20*12 && mouseY < ((height/20*12) + (height/8)))
      {
        //println("Works2");
        fill(34, 237, 17);
        rect(width/20*8, height/20*12, width/5, height/8);
        fill(0);
        text("Start Game", ((width/20*8)+(width/5)/5.5), ((height/20*12) + (height/8)/1.75));
        
        if(mousePressed == true)
        {
          gstart = false ;
          game = true ;
        }
      }
    }
    if(mouseX > width/20*8 && mouseX < width/20*12)
    {
     if(mouseY > height/20*15 && mouseY < ((height/20*15) + (height/8)))
      {
        fill(34, 237, 17);
        rect(width/20*8, height/20*15, width/5, height/8);
        fill(0);
        text("Help", ((width/20*8) + (width/5)/5.5), ((height/20*15) + (height/8)/1.75));
        
        if(mousePressed == true)
        {
          instruct = true ;
          gstart = false ;
        }
      }
    }
}