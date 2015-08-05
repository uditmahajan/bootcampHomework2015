color colorChange;
int timer;
int negTimer = 500;
int Speed = 1;

int xPos;
int yPos;

void setup(){
  
  size(750, 750);
  yPos = height/2;
  
}

void draw(){
  background(0);
  
  timer = (timer + 1) % 120;
  
  negTimer = (negTimer - 1) % 200;
  
  xPos = (xPos + Speed) % width;
  
    if(yPos < height){
     yPos = (yPos + Speed) % height; 
    }else{
     yPos = (yPos - Speed) % height;
    } 

    colorChange = color(random(255), random(255), random(255));
    fill(colorChange); 
    ellipse(xPos, yPos, timer, timer);
    
    
    //invoke
    rect(random(width), timer, negTimer, timer);
    rect(timer, random(height), timer, negTimer);
    rect(random(width), negTimer, timer, timer);
    rect(negTimer, random(height), timer, timer);
    
}
