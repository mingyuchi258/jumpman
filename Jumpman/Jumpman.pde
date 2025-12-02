Land land;
Man man;

float savemx;
float savemy;
float savemr;
float[] savepx = new float[5];
float[] savepy = new float[5];
float savelw;
float saveg;

boolean RE = false;

void setup(){
 size(600, 400);
//Declaration and assignment
 land = new Land();
 
//Let man start on the third land
 float x = land.px[2]+ land.lw/2;
 float y = land.py[2] - 15;
 man= new Man(x, y, 15); 
 
//save the initial parameters
 savemx = x;
 savemy = y;
 savemr = 15;
 for (int i = 0; i < 5; i++){
   
   savepx[i] = land.px[i];
   savepy[i] = land.py[i];
 }
  savelw = land.lw;
  saveg = land.g;
}

void draw(){
 background(#B4D4FF);
 
  if (man.gameover){
//if gameover draw the gameover interface
    fill(200, 0, 0, 150);
    rect(0, 0, width, height);
    textAlign(CENTER, CENTER);
    textSize(65);
    fill(255);
    text("Game Over", width/2, height/2);
    noLoop();
    drawbutton();
  }else{
//call land and man
  land.drawland();
  land.landmove();
  
  man.drawman();
  man.manmove();
  man.check();
 }
}

void drawbutton(){
  fill(255);
  rect(width/2 - 80, height/2 + 60, 160, 60);

  fill(0);
  textSize(30);
  text("Restart", width/2, height/2 + 90);

  RE = true;
}

//if the restart button is clicked the void restart will be executed
void mousePressed(){
  if (RE && mouseX > width/2 - 80 && mouseX < width/2 + 80 &&mouseY > height/2 + 60 &&mouseY < height/2 + 120){
    restart();
  }
}

//after clicking the "restart" button, re-enable the initial data
void restart(){
land.lw = savelw;
land.g  = saveg;
//reset land movement speed and man
for (int i = 0; i < 5; i++){
land.px[i] = savepx[i];
land.py[i] = savepy[i];
}
land.s = 2;
man = new Man(savemx, savemy, savemr);
RE = false;
loop();
}

//press "w" man to jump up
void keyPressed(){
  if (key == 'w'){
    man.jump();
  }
 }
