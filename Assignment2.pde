boolean eflower1, eflower2, eflower3, eflower4, eflower5 = true ;
boolean bflower2 = true, bflower3 = true, bflower4 = true, bflower5=true, bflower6=true, bflower7 = true ;
boolean gbflower1, gbflower2, gbflower3, gbflower4, gbflower6 = false ;

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
  bflower.add(new Bflower(width/10*1.5, height/5*1.5));
  bflower.add(new Bflower(width/10*1.5, height/5*2.5));
  bflower.add(new Bflower(width/10*1.5, height/5*3.5));
  bflower.add(new Bflower(width/10*2.5, height/5*1.5));
  bflower.add(new Bflower(width/10*2.5, height/5*2.5));
  bflower.add(new Bflower(width/10*2.5, height/5*3.5));
  
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
  
  if (add_bflower == true)
  {
    if(dist(mouseX, mouseY, width/10*1.5, height/5*1.5) < width/10)
    {
      if( bflower2 == true)
      {
        fill(255);
        rect(width/10, height/5, width/10, height/5);
      
        if(mousePressed == true)
        {
         gbflower1 = true ; 
         energy = energy - 30 ;
         /* Bflower bflowers = bflower.get(1) ;
          bflowers.brender();
          energy = energy - 30 ;
          bflower2 = false ;*/
        }
      }
    }    
  }
  if(gbflower1 == true)
  {
    Bflower bflowers = bflower.get(1) ;
    bflowers.brender() ;
    bflower2 = false ;
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
  
  if(bflower2 == true)
  {
    Bflower bflowers = bflower.get(1) ;
    bflowers.brender();
  }
  
  if(bflower3 == true)
  {
    Bflower bflowers = bflower.get(2) ;
    bflowers.brender();
  }*/
  
  Eflower eflower1  = new Eflower(width/10, height/10);
  eflower1.erender();
  
  Bflower battleflower1 = new Bflower(width/10*3, height/10) ;
  battleflower1.brender();
  
  if(frameCount % 60 == 0)
  {
    energy ++ ;
  }
}
  