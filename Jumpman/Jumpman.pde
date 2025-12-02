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
//draw the gameover interface
  if (man.gameover){
    fill(200, 0, 0, 150);
    rect(0, 0, width, height);
    textAlign(CENTER, CENTER);
    textSize(65);
    fill(255);
    text("Game Over", width/2, height/2);
    noLoop();
  }
}

//press "w" man to jump up
void keyPressed(){
  if (key == 'w'){
    man.jump();
  }
 }
