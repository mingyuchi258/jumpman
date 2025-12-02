Land land;
Man man;

void setup(){
 size(600, 400);
//Declaration and assignment
 land = new Land();

 float x = land.px[1]+ land.lw/2;
 float y = land.py[1] - 20;
 man= new Man(x, y, 15); 
}

void draw(){
 background(255);
 //call land
  land.drawland();
  land.landmove();
  
  man.drawman();
  man.manmove();
}
