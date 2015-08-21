class Player{
  
//MM animation
int numFrames = 4;
float currentFrame = 0;
PImage[] images = new PImage[numFrames];

PImage MMJump;
  
  PVector pos, vel, upV, position;
  
  PVector gravity;
  
  float jumpSpeed;
  
  float ground;
  
  boolean jumping;
  
  int jumpCount;
  
  Player(PVector startPos){
    
    pos = new PVector(startPos.x, startPos.y);
    //position = new PVector(0, 0);
    //position = pos;
    //println(position.x);
    ground = startPos.y;
    vel = new PVector(0, 0);
    gravity = new PVector(0, 2);
    upV = new PVector(0, -1);
    
    jumpCount = 0;
    
    MMJump = loadImage("megaman_jump.png");
    
    jumpSpeed = 40;
    
    jumping = false;
    
     //MM animation
  for (int i = 0; i < numFrames; i++) {
  String imageName = "running" + nf(i, 4) + ".gif";
  images[i] = loadImage(imageName);
  }
  }
  
  //void setup(){
  //  //MM animation
  //for (int i = 0; i < numFrames; i++) {
  //String imageName = "running" + nf(i, 4) + ".gif";
  //images[i] = loadImage(imageName);
  //}
  //}
  
  void update(){
    position = new PVector(0, 0);
    position = pos;
    pos.add(vel);
    applyGravity();
  }
  
  void display(){
   fill(255);
   //ellipse(pos.x, pos.y, 50, 30);
 currentFrame = (currentFrame+0.1) % numFrames;
  //int offset = 0;
  //for (int x = -100; x < width; x += images[0].width) { 
    if(jumping == true){
      image(MMJump, pos.x, pos.y, 80, 80);
    }else{image(images[int(currentFrame)], position.x, position.y-65, 80, 80);
    }
    //offset+=2;
    //image(images[(currentFrame+offset) % numFrames], width, height/2);
    //offset+=2;
  //}
}
  
   void jump(){
     
    vel.set(upV);
    vel.mult(jumpSpeed);
    if(keyCode == ' '){
      jumpCount++;
      if(jumpCount >= 2){
        jumpCount = 0;
          jumping = true;
      }
    }
  }
  
  
  void applyGravity(){
    
    if(pos.y < ground){
      vel.add(gravity);
    }else{
     pos.y = ground;
     vel.set(0, 0);
     jumping = false;
    }
  }
}