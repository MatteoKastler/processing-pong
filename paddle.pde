class Paddle{
  Paddle(float x, float y){
    this.x = x;
    this.y = y;
  }

  float x, y;
  
  
 
  void show(){
    rect( x, y, 20, 250);
  }
  void move(int whichplayer){
    if (whichplayer == 0){
      if (keyPressed){
        if (key == 'w' || key == 'W'){
          float ymove = gety() - 10;
           sety(ymove);
      }
    }
     if (keyPressed){
      if (key == 's' || key == 'S'){
        float ymove = gety() + 10;
         sety(ymove);
      }
     }
    }
    else{
     if (keyPressed){
      if (key == CODED) {
        if (keyCode == UP){
          float ymove = gety() - 10;
           sety(ymove);
      }
    }
    }
     if (keyPressed){
      if (key == CODED) {
        if (keyCode == DOWN){
          float ymove = gety() + 10;
           sety(ymove);
      }
     }
     }
    }
    if (y > height - 250){
      y = height - 250;
    }
    if (y < 0){
      y = 0;
    }
      }
   
      
      
  
    

    float gety(){
     return y; 
}
    float getx(){
       return x; 
}
    void sety(float yset){
      y = yset;
    }
   


}
