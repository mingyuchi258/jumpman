//the class of land
class Land{
float[]px = new float[5];
float[]py = new float[5];
float lw =random(0, 90);
float g =80;

Land(){
  float lx = 0;
for (int i = 0; i < 5; i++){
    px[i] = lx;
   lx= lx + lw+ g;
    py[i] = 250 + random(0, 60); 
  }
}
//draw lands
void drawland(){
 fill(0);
    for(int i = 0; i < 5; i++){
      rect(px[i], py[i], lw, height - py[i]);
   }
 }
}
