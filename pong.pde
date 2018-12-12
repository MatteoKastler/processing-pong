
ball ball = new ball();
Paddle paddle1 = new Paddle(100, height/2 + 250);
Paddle paddle2 = new Paddle(1900, height/2 + 250);
int score1 = 0;
int score2 = 0;
float rad = 30;
void setup(){
size(2000, 1000);


}
void draw(){
background(0);
ball.show();
ball.move();
ball.bounce();
paddle1.show();
paddle2.show();
paddle1.move(0);
paddle2.move(1);
   float paddlex = paddle1.getx();
   float paddley = paddle1.gety();
   if (ball.x < paddlex + rad){
   
     if (ball.y > paddley){
     
       if ( ball.y < paddley + 250 ){
         ball.setxdirection(paddlex);
         ball.xspeedmult(); 
       }
     }
   }
   float paddlex2 = paddle2.getx();
   float paddley2 = paddle2.gety();
   if (ball.x > paddlex2 - rad){
   
     if (ball.y > paddley2 + rad){
     
       if ( ball.y < paddley2 + 250 ){
         ball.setxdirection(paddlex2);
         ball.xspeedmult();
       }
     }
   }

   
  
     
}
