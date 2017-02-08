int ecount = 0 ;
int bcount = 0 ;
int kcount = 0 ;
int level = 0 ;
boolean kill = false ;
boolean game = false ;
boolean gstart = true ;

void setup()
{
  size(900, 600);
  background(0);
  
  maint = loadFont("BookAntiqua-20.vlw");
  tscore = loadFont("BookAntiqua-25.vlw");
  //Create the array of the energy flowers
  eflower.add(new Eflower(width/10, height/10));
  eflower.add(new Eflower(width/10*2 , height/5*4.5));
  eflower.add(new Eflower(width/10*2*2 , height/5*4.5));
  eflower.add(new Eflower(width/10*2*3 , height/5*4.5));
  eflower.add(new Eflower(width/10*2*4 , height/5*4.5));
  //Add the symbol for the flower that fires projectiles
  bflower.add(new Bflower(width/10*3, height/10));
  
}
//Create the arraylists
ArrayList<Eflower> eflower = new ArrayList<Eflower>();
ArrayList<Bflower> bflower = new ArrayList<Bflower>();
ArrayList<Bug> bug = new ArrayList<Bug>();
ArrayList<Sun> sun = new ArrayList<Sun>();
ArrayList<Bullet> bullet = new ArrayList<Bullet>();
//Create the 2d array to store the location and status of each square on the grid 
int[][] full = new int[8][3];
int[] lane = new int[3] ;
int p = 0 ;

PFont maint ;
PFont tscore ; 

//First flower code
void draw()
{
  if( gstart == true)
  {
    opening();
  }
  
  if( game == true)
  {
    //Call the main game
    Game_screen() ;
    flowers() ;
  }
  
  if( level == 3)
  {
    game = false ;
    background(0);
  }
  
 }
  