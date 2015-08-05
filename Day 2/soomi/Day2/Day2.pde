boolean cakeNear = false;
int rightX = 440;
int leftX = 360;
int bottomY = 520;
int Y = 0;


void setup(){
  //background size
 size(800, 700);

}

void draw(){
  //background color 
 background(100, 200, 100);
  noStroke();
  
 //left eyebrow
fill(80, 150, 80);
 ellipse ((width/2)-150, 150, 170, 150);
 fill (100, 200, 100);
ellipse ((width/2)-150, 170, 220, 150);

//right eyebrow
 fill(80, 150, 80);
 ellipse ((width/2)+150, 150, 170, 150);
 fill (100, 200, 100);
ellipse ((width/2)+150, 170, 220, 150);
 
 //left eye
 fill(255);
 ellipse ((width/2)-150, height/2, 200, 250);
 fill(0);    
 ellipse ((width/2)-150, (height/2)+50, 100, 100);
  fill(255);
 ellipse ((width/2)-150, (height/2)+70, 100, 100);
 
 //right eye
  fill(255);
 ellipse ((width/2)+150, height/2, 200, 250);
 fill(0);    
 ellipse ((width/2)+150, (height/2)+50, 100, 100);
 fill(255);
 ellipse ((width/2)+150, (height/2)+70, 100, 100);
 
 //nose
 fill(250, 100, 100);
 ellipse (width/2, 420, 60, 40);
 
 //mouth
 fill(255, 150, 150);
 triangle (rightX, 490, leftX, 490, 400, bottomY);
 
 //mouth interacts with cake
 if(mouseX >= 260 && mouseX <= 540 && mouseY <= 600 && mouseY >= 470){
  cakeNear = true;
 }else{
  cakeNear = false; 
 }
 
 if(cakeNear && rightX < 540){
   rightX++;
   leftX--;
   bottomY++;
} else if(!cakeNear && rightX > 440){
  rightX--;
  leftX++;
  bottomY--;
}
 
 //frame
 rectMode(CENTER);
 stroke (255, 255, 255, 80);
 strokeWeight(15);
 noFill();
 rect(width/2, height/2, 750, 650);

  noStroke();
  
  //cake
  fill(81, 46, 32);
  arc(mouseX, mouseY, 200, 200, 0, QUARTER_PI);
  //cherry
  fill(255, 0, 0);
  ellipse(mouseX+77, mouseY+30, 20, 20);
  fill(255);
  ellipse(mouseX+80, mouseY+36, 5, 5);
  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  arc(mouseX+80, mouseY+6, 55, 55, 0, HALF_PI);
  
  
  
  
 }


