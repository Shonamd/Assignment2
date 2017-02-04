//boolean eflower1, eflower2, eflower3, eflower4, eflower5 = false ;
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
 /* bflower.add(new Bflower(width/10*1.5, height/5*1.5));
  bflower.add(new Bflower(width/10*1.5, height/5*2.5));
  bflower.add(new Bflower(width/10*1.5, height/5*3.5));
  bflower.add(new Bflower(width/10*2.5, height/5*1.5));
  bflower.add(new Bflower(width/10*2.5, height/5*2.5));
  bflower.add(new Bflower(width/10*2.5, height/5*3.5));*/
  
  
}

ArrayList<Eflower> eflower = new ArrayList<Eflower>();
ArrayList<Bflower> bflower = new ArrayList<Bflower>();

int[][] full = new int[8][3];

PFont maint ;
PFont tscore ; 

//First flower code
void draw()
{
  
  Game_screen() ;
  //add_flowers();
  
  Bflower battleflower1 = new Bflower(width/10*3, height/10) ;
  battleflower1.brender();
  
  if (mousePressed == true)
  {
    if (dist(mouseX, mouseY, width/10, height/10) < height/10)
    {
      if(energy > 20)
      {
        ecount ++ ;
        energy = energy- 20 ;
      }
    }
    
    if (dist(mouseX, mouseY, width/10*3, height/10) < height/10)
    {
      if(energy > 30)
      {
        add_bflower = true ;
        //bcount ++ ;
      }
    }
  }
  
  for(int i = 1 ; i < bflower.size() ; i++)
  {
    Bflower tempflower = bflower.get(i) ;
    tempflower.brender() ;
  }
  
  for(int i = 0 ; i < ecount+1 ; i++)
  {
    Eflower temp = eflower.get(i) ;
    temp.erender() ;
  }

  
  if (add_bflower == true && mouseX >width/10 && mouseY > height/5)
  {
    int x = (mouseX - (width/10))/(width/10) ;
    int y = (mouseY - (height/5))/(height/5);
    
    if(x < 8 && y < 3 && x > -1 && y > -1 && full[x][y] == 0 )
    {
      fill(255);
      rect(width/10+x*width/10, height/5+y*height/5, width/10, height/5);
      
      if ( mousePressed == true)
      {
         bflower.add( new Bflower((width/10)+(x*width/10) + (width/10* 0.5), (height/5)+(y*height/5) + (height/5*0.5))) ;
         full[x][y] = 1 ;
         add_bflower = false ;
         energy = energy - 30 ;
      }
    }
  }
      
   
  /*if(eflower2 == true)
  {
      Eflower eflowers = eflower.get(1);
      eflowers.erender();
  }
  
  if(eflower3 == true)
  {
      Eflower eflowers = eflower.get(2);
      eflowers.erender();
  }
  
  if(eflower4 == true)
  {
      Eflower eflowers = eflower.get(3);
      eflowers.erender();
  }
  
  if(eflower5 == true)
  {
      Eflower eflowers = eflower.get(4);
      eflowers.erender();
  }
  
  
  
  Eflower eflower1  = new Eflower(width/10, height/10);
  eflower1.erender();
  
  Bflower battleflower1 = new Bflower(width/10*3, height/10) ;
  battleflower1.brender();*/
  
  if(frameCount % 60 == 0)
  {
    energy ++ ;
  }
  
}
  