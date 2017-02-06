int ecount = 0 ;
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
  
  bflower.add(new Bflower(width/10*3, height/10));
  
  bug.add(new Bug(width, height/2));
  
}

ArrayList<Eflower> eflower = new ArrayList<Eflower>();
ArrayList<Bflower> bflower = new ArrayList<Bflower>();
ArrayList<Bug> bug = new ArrayList<Bug>();

int[][] full = new int[8][3];

PFont maint ;
PFont tscore ; 

//First flower code
void draw()
{
  
  Game_screen() ;
  flowers() ;
  

}
  