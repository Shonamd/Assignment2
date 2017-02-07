int score = 0 ;
int energy = 30;
boolean add_eflower = false ;
boolean add_bflower = false ;
boolean blane = false ;
boolean bulletfire = false ;
boolean attack = true ;
boolean start = false;

void Game_screen()
{ 
  background(0);
  fill(78,152,29);
  stroke(0);
  float wsize = width/10 ;
  float hsize = height/5 ;
  
  int c = 1;
  
  //Creates the spotlights for the energy flowers
  fill(250, 246, 126);  
  for (int i=1 ; i < 5 ; i++)
  {
    ellipse(wsize*2*i , hsize*4.8, wsize, wsize/2);
  }
  //Creates the grid
  stroke(0);
  strokeWeight(2);
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
  //Creates the box and info that holds the flowers
  stroke(34, 237, 17);
  noFill();
  rect(10, 10, wsize*3.5, hsize*.85);
  textFont(maint);
  text("Energy", width/15, 30);
  text("Damage", width/15*4, 30);
  //Shows the current score and level of energy availible
  rect(width/5*3, 10, wsize*3.5, hsize*.85);
  textFont(tscore);
  text("Score:", wsize*6.4, hsize*.3);
  text("Energy:", wsize*6.4, hsize*.7);
  text(score, wsize*8.5, hsize*.3);
  text(energy, wsize*8.5, hsize*.7);
  
}

void flowers()
{
  //Create icon flowers at the top
  Bflower battleflower1 = bflower.get(0) ;
  battleflower1.brender();
  Eflower eflower1 = eflower.get(0);
  eflower1.erender();
  
  //Buy the flowers using energy
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
      }
    }
  }
  
  
  for(int i = 1 ; i < bflower.size() ; i++)
  {
    Bflower tempflower = bflower.get(i) ;
    tempflower.brender() ;
   }
    
  
  for(int  i = 1 ; i < ecount+1 ; i++)
  {
    Eflower temp = eflower.get(i) ;
    temp.erender() ;
    
    if( frameCount % 300 == 0)
    {
      temp.eupdate();
    }
  
  }
  
  //Adds the flowers to the 2d array
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
  
  if( attack == true)
  {
    int y = int(random(3)) ;
    
    bug.add( new Bug(width, (height/5)+(y*height/5) + (height/5*.5)));
    lane[y] = 1 ;
    blane = true ;
    
    if (blane == true)
    {
      Bug temp = bug.get(0) ;
      temp.bug_render();
      temp.update_bug();
    
      if(frameCount % (25*60) == 0)
      {
        temp.bremove();
        blane = false ;
      }
     }
  
 /* if (blane == true)
  {
    Bug temp = bug.get(0) ;
    temp.bug_render();
    temp.update_bug();
    
    if(frameCount % (25*60) == 0)
    {
      temp.bremove();
      blane = false ;
    }*/
  }
  
  
  //Creates the bullets
 for(int i = 1 ; i < bflower.size() ; i++)
 {
     Bflower tempflower = bflower.get(i) ;
     tempflower.bupdate();
      
     if( attack == true)
       {
         Bullet tempbullet = bullet.get(i-1) ;
         tempbullet.bullet_render();
         tempbullet.update_bullet();
       }
   
 }
 
  //Creates the sun and removes it
 for(int i = 0 ; i < sun.size()-1 ; i++)
  {
    Sun tempsun = sun.get(i) ;
    tempsun.srender() ;
    
    if(frameCount % 80 == 0)
    {
      tempsun.sremove();
    }
  }
  
  //Generates energy if you have no flowers
  if(frameCount % 60 == 0)
  {
    energy ++ ;
  }
  
}