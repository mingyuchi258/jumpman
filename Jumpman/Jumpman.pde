Land land;
Man man;

void setup(){
 size(600, 400);
//Declaration and assignment
 land = new Land();
//Let man start on the third land
 float x = land.px[2]+ land.lw/2;
 float y = land.py[2] - 15;
 man= new Man(x, y, 15); 
}

void draw(){
 background(#B4D4FF);
 //call land and man
  land.drawland();
  land.landmove();
  
  man.drawman();
  man.manmove();
  man.check();
}

//press "w" man to jump up
void keyPressed(){
  if (key == 'w'){
    man.jump();
  }
 }
