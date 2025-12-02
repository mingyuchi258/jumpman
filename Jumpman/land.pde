//the class of land
class Land{
float[]px = new float[5];
float[]py = new float[5];
float lw =random(70, 90);
float g =random(60, 100);
float s = 2;

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
//move land to the left and keep accelerating
  void landmove(){
 for (int i = 0; i < 5; i++){
   s = s + 0.005;
   px[i]= px[i] -s;
//If land is moved out of the screen and refreshed on the far right
   if (px[i] + lw <0){
     float out = px[0];
 for (int o = 1; o < 5;o++){
   if (px[o] > out){
     out = px[o];
    }
   }
   px[i] = out + lw + g;
   py[i] = 250 + random(0, 60);
   }
  }
}
}
