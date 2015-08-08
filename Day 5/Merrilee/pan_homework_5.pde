void setup(){
  size(500, 500);
}

void draw(){
  background(255);
  ellipseMode(CORNER);
  int circleSize = 20;
  
  for(int y=0; y<mouseY; y+=circleSize){
    for(int x=0; x<mouseX; x+=circleSize){
      fill(random(255), random(255), random(255));
      ellipse(x, y, circleSize, circleSize);
      circleSize+=10;
    }
  }
}
