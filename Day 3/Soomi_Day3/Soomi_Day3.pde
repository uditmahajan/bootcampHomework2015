boolean cakeNear = false;
int rightX = 440;
int leftX = 360;
int bottomY = 520;
int Y = 0;
PImage Cake;
int cakeWidth;
int cakeHeight;
PFont Helvetica;

float cakeScale = 1;
float xPosLeft;
float xPosRight;
float yPosLeft;
float yPosRight;

void setup(){
  //background size
 size(800, 700);
 Cake = loadImage("choco.png");
 cakeWidth = Cake.width/4;
 cakeHeight = Cake.height/4;
Helvetica = loadFont("HelveticaRoundedLT-Bold-48.vlw");
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
 
 //eyeball moving
 
 xPosLeft = map(mouseX, 0, 800, 215, 280);
 yPosLeft = map(mouseY, 0, 700, 315, 400);
  xPosRight = map(mouseX, 0, 800, 515, 580);
 yPosRight = map(mouseY, 0, 700, 315, 400);
 
 //left eye
 fill(255);
 ellipse ((width/2)-150, height/2, 200, 250);
 fill(0);    
 ellipse (xPosLeft, yPosLeft, 100, 100);
//  fill(255);
// ellipse ((width/2)-150, (height/2)+70, 100, 100);
 
 
 
 //right eye
  fill(255);
 ellipse ((width/2)+150, height/2, 200, 250);
 fill(0);    
 ellipse (xPosRight, yPosRight, 100, 100);
 
 
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
 
 if (cakeScale <= 0.01){
cakeNear = false;  
  fill(255);
  textAlign(CENTER);
  textFont(Helvetica, 48);
text("Om Nom Nom!", width/2, 650);
fill(255, 136, 221);
textFont(Helvetica, 40);
text("♡", 3*width/4+15, 650);
}
  
 if(cakeNear && rightX < 540){
   rightX++;
   leftX--;
   bottomY++;
   cakeScale*=0.95;
   
} else if(!cakeNear && rightX > 440){
  rightX--;
  leftX++;
  bottomY--;
}
 
if(mousePressed){
  cakeScale = 1;
}




 
 //frame
 rectMode(CENTER);
 stroke (255, 255, 255, 80);
 strokeWeight(15);
 noFill();
 rect(width/2, height/2, 750, 650);

  noStroke();
 
  //cake
imageMode(CENTER);
image(Cake, mouseX, mouseY, cakeWidth*cakeScale, cakeHeight*cakeScale);
  
  
  
  
 }


