PVector circPos = new PVector(0, 0);
PVector circSpeed = new PVector(0, 0);

PVector box1Pos = new PVector(width + 100, height + 100);
PVector box1Speed = new PVector (2.5, 2);

float gravity = 0.98;

void setup(){
  
  size(800, 800);
  
}

void draw(){
  
  background(255);
  
  circPos.add(circSpeed);
  
  if(circPos.y < height - 50){
  circSpeed.y += gravity;
  }else if(circPos.y > height - 100){
   circSpeed.y = 0; 
  }
  
  if(circPos.y > height - 50){
   circPos.y = height - 50; 
  }
  
  ellipse(width - width/4, circPos.y, 50, 50);
  fill(255, 0, 0);
  
  if(circPos.y < 0){
   exit(); 
  }
  
  
  box1Pos.add(box1Speed);
  
  if(box1Pos.x > width || box1Pos.x < 0){
   box1Speed.x *= -1;
  }
  
  if(box1Pos.y > height || box1Pos.y < 0){
   box1Speed.y *= -1; //reverses y direction
  }
  
  rect(box1Pos.x, box1Pos.y, 50, 50);
  
  fill(0);
  
  
  if(dist(circPos.x, circPos.y, box1Pos.x, box1Pos.y) == 10
  && box1Pos.x > -1 && box1Pos.x < width + 1){
   exit(); 
  }
}

void keyPressed(){
 if(key == ' ' && circPos.y < height - 50){
  circSpeed.y = -15;
 } 
}
