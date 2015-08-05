color orange, blue, lightOrange;
int middleX;
int middleY;

void setup(){
  size(500,500);
  
  middleX=width/2;
  middleY=height/2;
  
  blue = color(94,216,207);
  orange = color(250,134,45);
  lightOrange = color (240,173,111);
  
  background(blue);

  noStroke();
  fill(lightOrange);
  triangle(middleX, middleY, middleX-190, middleY-92, middleX-190, middleY+92); //tail
  
  //top finn
  fill(lightOrange);
  triangle(middleX-50, middleY-70, middleX+100, middleY-90, middleX-100, middleY-150);
  
  //body
  fill(orange);
  ellipse(middleX+30, middleY, 300, 200);
  
   //side finn
  fill(lightOrange);
  triangle(middleX+70, middleY, middleX+30, middleY-40, middleX+30, middleY+40); 
  fill(orange);
  rect(middleX+80,middleY, 50,50);
  
  //gill
  fill(lightOrange);
  ellipse(middleX+110, middleY, 50, 150);
  fill(orange);
  ellipse(middleX+115, middleY, 50,150);
  
  fill(255);
  ellipse(middleX+150, middleY-20, 40,25); //eye
  
  fill(0);
  ellipse(middleX+160, middleY-20, 13,13); //eye ball
  
  //mouth
  fill(0);
  ellipse(middleX+170, middleY+10, 13, 20);
  
//frame
rectMode(CENTER);
stroke(255);
strokeWeight(5);
noFill();
rect(middleX,middleY, 475, 475);
}

void draw(){
  
}
