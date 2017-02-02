boolean eflower1, eflower2, eflower3, eflower4, eflower5 = false ;

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
  
  //bflower.add(new Bflower(width/
  
}

ArrayList<Eflower> eflower = new ArrayList<Eflower>();
ArrayList<Bflower> bflower = new ArrayList<Bflower>();

PFont maint ;
PFont tscore ; 
  
//First flower code
void draw()
{
  Game_screen() ;
  add_flowers();
  
  if(eflower1 == true)
  {
      Eflower eflowers = eflower.get(1);
      eflowers.erender();
      energy = energy - 20 ;
  }
  
  Eflower eflower1  = new Eflower(width/10, height/10);
  eflower1.erender();
  
  Bflower battleflower1 = new Bflower(width/10*3, height/10) ;
  battleflower1.brender();
  
  
}
  