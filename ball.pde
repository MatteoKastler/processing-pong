class ball{
float x = 1000;
float y = 500;
float xdirection = random(2, 5);
float ydirection = random(2, 5);
float xspeed =  2;
float yspeed =  2; 
float rad = 30;
void setxdirection(float setx){
  xdirection *= -1;
  
}

void show(){
ellipse (x, y, rad, rad);
}
void move (){
  x = x + ( xspeed * xdirection );
  y = y + ( yspeed * ydirection );
   
   
   textSize(64);
   String text1 = str(score1);
   String text2 = str(score2);
   text(text2,1900, 150);
   text(text1, 100, 150);
   if (ball.x < 95){
     score2++;
     print("1");
     xdirection = random(-5, 5);
     ydirection = random(-5, 5);
      x = 1000;
      y = 500;
 }
   if(ball.x > 1900){
      print("2");
      score1++;
      xdirection = random(-5, 5);
      ydirection = random(-5, 5);
      x = 1000;
      y = 500;
   }
  }

  
  
void bounce(){
 
if (y > height - rad || y < rad){
   ydirection *= -1;
   
 }
 
}
  
float getyx(){
     return x;
     
}
float gety(){
     return y; 
}
void xspeedmult(){
xspeed += 0.1;
}
}
