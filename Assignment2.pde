void setup()
{
  size(900, 600);
  background(0);
  
  maint = loadFont("BookAntiqua-20.vlw");
  tscore = loadFont("BookAntiqua-25.vlw");
  
  eflower.add(new Eflower(width/10, height/10));
  eflower.add(new Eflower(width/10*2 , height/5*4.5));
  eflower.add(new Eflower(width/10*2*2 , height/5*4.5));
  eflower.add(new Eflower(width/10*2*3 , height/5*4.5));
  eflower.add(new Eflower(width/10*2*4 , height/5*4.5));
  
}

ArrayList<Eflower> eflower = new ArrayList<Eflower>();

PFont maint ;
PFont tscore ; 
  
//First flower code
void draw()
{
  Game_screen() ;
  add_flowers();
  
  Eflower eflower1  = new Eflower(width/10, height/10);
  eflower1.erender();
  
  Battleflower battleflower1 = new Battleflower(width/10*3, height/10) ;
  battleflower1.brender();
  
  
}
  