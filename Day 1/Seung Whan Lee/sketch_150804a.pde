color gray, red, blue;

int middleX, middleY;


void setup(){
  size(700,700);
  smooth();
  middleX = width/2;
  middleY = height/2;
  
  gray = color(111,111,111);
  red= color(188,20,0);
  blue = color(100,248,250);
}

 void draw(){
 
  middleX = mouseX;
  middleY = mouseY; 
 
  
  background(blue);
  

  noStroke();
  fill(gray);
  ellipse(middleX, middleY-150, 100,150);
  ellipse(middleX, middleY+70, 150,300);
  
 

  
  
 fill(0);
 ellipse(middleX-25, middleY-200, 10, 20); 
 ellipse(middleX+25, middleY-200, 10, 20); 
  
  ellipse(middleX, middleY-220, 10, 50); 
  
 fill(red);
  triangle(middleX-42, middleY-60,middleX, middleY-80,middleX-42, middleY-100);
  triangle(middleX+42, middleY-60,middleX, middleY-80,middleX+42, middleY-100);
   fill(gray);
  triangle(middleX-242, middleY,middleX, middleY,middleX-242, middleY+150);
  triangle(middleX+242, middleY,middleX, middleY,middleX+242, middleY-150);
  
  triangle(middleX-42, middleY+300,middleX, middleY+200,middleX+42, middleY+300);
 
  fill(blue);
  ellipse(middleX-200, middleY+100, 10, 50); //nose
  ellipse(middleX-180, middleY+100, 10, 50); //nose
  ellipse(middleX-160, middleY+100, 10, 50); //nose
  ellipse(middleX-140, middleY+100, 10, 50); //nose
  
  ellipse(middleX+200, middleY, 10, 50); //nose
  ellipse(middleX+180, middleY, 10, 50); //nose
  ellipse(middleX+160, middleY, 10, 50); //nose
  ellipse(middleX+140, middleY, 10, 50); //nose
  
  //frame
  rectMode(CENTER);
  stroke(100);
  strokeWeight(5);
  noFill();
  rect(middleX, middleY,650, 650);
}
 
