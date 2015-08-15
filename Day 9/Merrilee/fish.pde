class Fish{
  int i;
  color orange, lightOrange;
  float middleX, middleY, size, xPos, yPos, speed, x, y;
  boolean wave, pulse, bubble;


Fish(float x1, float y1){
   orange = color(250, 134, 45);
   lightOrange = color (240, 173, 111); 
   speed=3;
   x = x1;
   y = y1;
   wave = true;
   xPos=0;
   middleY=y;
   
}

void move(){
  xPos=(xPos+1)%width;
//  y = sin(x + frameCount);
  
// if (wave==true) {
//    middleX=frameCount%width;
//    middleY=height/2+(size*0.2)*sin(frameCount*speed);
//  }  
}

void display(){
  pushMatrix();
 noStroke();
  //tail
  fill(lightOrange);
  triangle(xPos, middleY, xPos-190, middleY-92, xPos-190, middleY+92);
  //top finn
  fill(lightOrange);
  triangle(xPos-50, middleY-70, xPos+100, middleY-90, xPos-100, middleY-150);
  //body
  fill(orange);
  ellipse(xPos+30, middleY, 300, 200);
  //side finn
  fill(lightOrange);
  triangle(xPos+70, middleY, xPos+30, middleY-40, xPos+30, middleY+40); 
  //gill
  fill(lightOrange);
  ellipse(xPos+110, middleY, 50, 150);
  fill(orange);
  ellipse(xPos+115, middleY, 50, 150);
  //eye
  fill(255);
  ellipse(xPos+150, middleY-20, 40, 25); 
  //eyeball
  fill(0);
  ellipse(xPos+160, middleY-20, 13, 13);
  //mouth
  fill(0);
  ellipse(xPos+170, middleY+10, 13, 20);
  popMatrix(); 
}
}
