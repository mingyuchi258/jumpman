//the class of man
class Man{
boolean onland = false;
boolean gameover = false;
PVector P;
PVector V;
float r;
float v = 3;
float g = 0.5;

Man(float x, float y, float br){
P = new PVector(x, y);
V = new PVector(0, 0);
r = br;
}
//draw man
  void drawman(){
     noStroke();
     fill(#FFFB6F);
     circle(P.x, P.y-40, r*2);
     triangle(P.x-15, P.y + 15, P.x, P.y - 40, P.x + 15, P.y + 15);
     fill(0);
     circle(P.x - 7, P.y - 40, 5);
     circle(P.x + 7, P.y-40, 5);
   }
//the movement law of man
//the movement law of man
  void manmove(){
    V.y = V.y + g;
    P.add(V);
//press the "a" and the "d" to move man left and right
    if (keyPressed){
    if (key == 'a'){ 
    V.x = -v;
    }else if (key == 'd'){ 
    V.x =v;
    }
    } else {
    V.x = 0;
    }
  }
//man can only jump when he is on land
   void jump(){
  for (int i = 0; i < 5; i++){
    if (P.x > land.px[i] && P.x < land.px[i] + land.lw && P.y + r >= land.py[i] - 2 && P.y + r <= land.py[i] + 3){
        V.y = -10;
        }
    }
  }
//check whether man is on land
  void check(){
    onland = false;
    for (int i = 0; i < 5; i++){
    if (P.x > land.px[i]-10 && P.x < land.px[i] + land.lw+10 && P.y + r >= land.py[i]-10 && P.y + r <= land.py[i] + 20 && V.y >= 0){
      P.y = land.py[i] - r;
      V.y = 0;
      P.x = P.x - land.s;
     }
   }
//if man falls the game over
    if (P.y > height + 50){
      gameover = true;
    }
  }
}
