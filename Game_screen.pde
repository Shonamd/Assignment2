int score = 0 ;
int energy = 30;
boolean add_eflower = false ;
boolean add_bflower = false ;
int bcount ;
int ecount ;

void Game_screen()
{ 
  background(0);
  fill(78,152,29);
  stroke(0);
  float wsize = width/10 ;
  float hsize = height/5 ;
  
  int c = 1;
  
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

void add_flowers()
{
  if (mousePressed == true)
  {
    if (dist(mouseX, mouseY, width/10, height/10) < height/10)
    {
      if(energy > 20)
      {
        add_eflower = true ;
        ecount ++ ;
      }
    }
    
    if (dist(mouseX, mouseY, width/10*3, height/10) < height/10)
    {
      if(energy > 30)
      {
        add_bflower = true ;
        bcount ++ ;
      }
    }
  }
  
  if( add_eflower == true)
  {
    if(ecount < 5)
    {
      Eflower eflowers = eflower.get(ecount);
      eflowers.erender();
      energy = energy - 20 ;
    }
    
    add_eflower = false ;
  }
  
  if( add_bflower == true)
  {
    if(bcount < 6)
    {
      
    
}