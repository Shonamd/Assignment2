int ecount = 0 ;
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
  //Practice bug
  bug.add(new Bug(width, height/2));
  
}
//Create the arraylists
ArrayList<Eflower> eflower = new ArrayList<Eflower>();
ArrayList<Bflower> bflower = new ArrayList<Bflower>();
ArrayList<Bug> bug = new ArrayList<Bug>();
ArrayList<Sun> sun = new ArrayList<Sun>();
ArrayList<Bullet> bullet = new ArrayList<Bullet>();
//Create the 2d array to store the location and status of each square on the grid 
int[][] full = new int[8][3];

PFont maint ;
PFont tscore ; 

//First flower code
void draw()
{
  //Call the main game
  Game_screen() ;
  flowers() ;

}
  