void instruct()
{
  background(0);
  strokeWeight(2);
  stroke(34, 237, 17);
  noFill();
  rect(width/20, height/20, width/20*18, height/20*18);
  fill(34, 237, 17);
  text("Protect the house from the bugs!", width/18, height/25*3);
  text("Buy the energy flowers to get more energy for 20", width/18, height/25*6);
  text("Buy the pink flowers to fire at the bugs for 30", width/18, height/25*9);
  text("If you're having trouble with the amount of enregy, hold the 'f' key", width/18, height/25*12);
  text("Good luck!", width/16, height/25*15);
  
  noFill();
  rect(width/20*8, height/20*12, width/5, height/8);
  text("Start Game", ((width/20*8)+(width/5)/5.5), ((height/20*12) + (height/8)/1.75));
  
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
          instruct = false ;
          game = true ;
        }
      }
    }
}