void opening()
{
  background(0);
  strokeWeight(2);
  stroke(34, 237, 17);
  noFill();
  rect(width/20, height/20, width/20*18, height/20*18);
  textFont(tscore);
  fill(34, 237, 17);
  text("Legally-sound-plants-versus-bugs", width/20*6, height/20*8);
  
  noFill();
  rect(width/20*8, height/20*12, width/5, height/8);
  text("Start Game", ((width/20*8)+(width/5)/5.5), ((height/20*12) + (height/8)/1.75));
  
  /*if( gstart == true && game == false)
  {
    bug.add( new Bug(width, (height/5)+(1*height/5) + (height/5*.5)));
    Bug temp = bug.get(0) ;
    temp.bug_render();
    temp.update_bug();
  
    if(frameCount % (25*60) == 0)
    {
      temp.bremove();
    }
  }*/
  
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
}