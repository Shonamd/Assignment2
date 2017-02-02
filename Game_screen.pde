void Game_screen()
{
  Eflower eflower1  = new Eflower(width/10, height/10);
  eflower1.erender();
  
  Battleflower battleflower1 = new Battleflower(width/10*3, height/10) ;
  battleflower1.brender();
  
  fill(78,152,29);
  stroke(0);
  
  int c = 1;
  int score = 0 ;
  int energy = 0;
  float wsize = width/10 ;
  float hsize = height/5 ;
  
  fill(250, 246, 126);
  
  for (int i=1 ; i < 5 ; i++)
  {
    ellipse(wsize*2*i , hsize*4.8, wsize, wsize/2);
  }
  
  for(int j=1 ; j<9 ; j ++)
  {
    for (int i=1 ; i<4 ; i++)
    {
      if( c % 2 == 0)
      {
        fill(78, 152, 29);
      }
      else
      {
        fill(96, 188, 36);
      }
      rect(wsize*j, hsize*i, wsize, hsize);
      c++ ;
    }
  }
  
  stroke(34, 237, 17);
  noFill();
  
  rect(10, 10, wsize*3.5, hsize*.85);
  textFont(maint);
  text("Energy", width/15, 30);
  text("Damage", width/15*4, 30);
  
  rect(width/5*3, 10, wsize*3.5, hsize*.85);
  textFont(tscore);
  text("Score:", wsize*6.4, hsize*.3);
  text("Energy:", wsize*6.4, hsize*.7);
  text(score, wsize*8.5, hsize*.3);
  text(energy, wsize*8.5, hsize*.7);
}