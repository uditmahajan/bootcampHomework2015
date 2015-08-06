float MiddleX, MiddleY;

color circleColor;
int circleColPink;

void setup(){
  background(#282DEA);
  size(600,600);
  circleColPink = 0;
  circleColor = color(#DB54D2);
}

void draw(){
  float diffX = abs(mouseX+MiddleX);
  float diffY = abs(mouseY+MiddleY);
  
  float diff = diffX - diffY;
  
  circleColor = color(circleColPink, diff, diff);
  fill(circleColor);
  
  rect(300, 300, 200, 200);
  rect(300, 300, 100, 100);
  
  rect(MiddleX, MiddleY, diff, diff);
 
  
  circleColPink = (circleColPink+1)%500;
  println(circleColPink);
  
  stroke(0, 100);
  

  
MiddleX = mouseX;
MiddleY = mouseY;
}
