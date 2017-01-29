void setup()
{
  size(900, 600);
  background(0);
  
  Eflower eflower1  = new Eflower(width/10, height/10);
  eflower1.erender();
  
  Battleflower battleflower1 = new Battleflower(width/10*3, height/10) ;
  battleflower1.brender();
}

//First flower code
void draw()
{
  
  fill(78,152,29);
  stroke(0);
  
  int c = 1;
  int wsize = width/10 ;
  int hsize = height/5 ;
  
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
}
  