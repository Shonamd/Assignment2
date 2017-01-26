void setup()
{
  size(900, 600);
  background(0);
}

//First flower code
void draw()
{
  Eflower eflower1  = new Eflower(width/10, height/10);
  eflower1.erender();
  
  Battleflower battleflower1 = new Battleflower(width/10*3, height/10) ;
  battleflower1.brender();
}
  