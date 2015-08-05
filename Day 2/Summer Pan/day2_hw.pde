float xPos,yPos;
float xspeed = 2.8;  // Speed of the shape
float yspeed = 2.2;  // Speed of the shape

int xdirection = 1;  // Left or Right
int ydirection = 1;

void setup(){
  size(600,200);
  xPos=width/2;
  yPos=height/2;
  //noCursor();
  smooth(); 
}

void draw(){
  background(#89D2E5);
  noStroke();
  fill(#FFC400);
  rect(0, 181, width, height);
  
  if(mouseX>2*width/3){
  xPos++;
  fill(#A3F016);
  ellipse(xPos,yPos+60,50,50);
  fill(255);
  ellipse(xPos,yPos+60,30,30);
  fill(#0EAF88);
  ellipse(xPos,yPos+60,20,20);
  }
  else if(mouseX<width/3){ //else if (---){}
    xPos--;
    fill(#A3F016);
    ellipse(xPos,yPos+60,50,50);
    fill(255);
    ellipse(xPos,yPos+60,30,30);
    fill(#0EAF88);
    ellipse(xPos,yPos+60,20,20);
  }
  else if(mouseX>width/3 && mouseX<2*width/3){
    fill(#A3F016);
    ellipse(xPos+(xspeed*xdirection),yPos+(yspeed*ydirection),50,50);
    fill(255);
    ellipse(xPos,yPos,30,30);
    fill(#0EAF88);
    ellipse(xPos,yPos,20,20);
  }
  
  
}
