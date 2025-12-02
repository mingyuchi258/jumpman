//the class of man
class Man{
boolean onland = false;
boolean gameover = false;
PVector P;
PVector V;
float r;
float v = 3;

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
}
