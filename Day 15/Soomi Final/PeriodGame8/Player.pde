class Player {
 PImage playerImage, playerImageWin;
 PVector pos, vel;
 float jumpVel, playerH, playerW; //jumping velocity, ground position, height of player
 boolean jumping;
 
 float circleW;
  
  
  Player (PVector startPos){
   pos = new PVector (startPos.x, startPos.y); 
   vel = new PVector (0, 0); //starting velocity of player (0)
   jumpVel = 30; //give the player an upward force of 30 units per frame when keyPressed
   playerImage = loadImage("playerImage.png");
   playerImageWin = loadImage("playerImageWin.png");
   playerH = playerImage.height;
   playerW = playerImage.width;
   jumping = false;
   circleW = playerImage.height;
    
  }
  
  void update(){//all calculations to change speed/movement or the computation part    
    pos.add(vel); //add that velocity we calculated as player position


   }
  
  void draw(){ //graphics part - drawing the computation
    if(!gameWin){
    
    imageMode(CENTER);
    image(playerImage, pos.x+playerW/2, pos.y-playerH/2, playerW, playerH); //pos.y-playerH is the top of the player so we control Y/ jumping from his feet
//  println("vel.x: " + vel.x, " vel.y: " + vel.y);
    }
    else{
      
      imageMode(CENTER);
    image(playerImageWin, pos.x+playerW/2, pos.y-playerH/2, playerImageWin.width, playerImageWin.height);
    vel.set(1, -2);
    }
    
  }
  
  void transform(){
      noFill();
      stroke(255, 180);
      strokeWeight(0.5);
      ellipseMode(CENTER);
      ellipse(pos.x+playerW/2, pos.y-playerH/2, circleW, circleW);
      circleW*=2;
      
  }
  
  void jump(){
    vel.y = -2; //set velocity as upVector
    vel.y= vel.y*jumpVel; //multiply velocity by jump velocity 
    jumping = true; 
  }
  
  
 void movePlayerLeft(){
    vel.x -=4;
    vel.limit(10);
  }
  void movePlayerRight(){
    vel.x +=4;
    vel.limit(10);
  }
  
  void playerStay(){
   vel.x =0;
  }
  
  
}
