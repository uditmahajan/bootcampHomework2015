boolean followMouse = true;
int X = 0;
int Y = 0;


void setup(){
  //background size
 size(800, 600);


 
 noStroke();
 
 
}

void draw(){
  //background color 
 background(100, 200, 100);
  
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
 triangle (440, 490, 360, 490, 400, 520);
 
 //frame
 rectMode(CENTER);
 stroke (255, 255, 255, 80);
 strokeWeight(15);
 noFill();
 rect(width/2, height/2, 750, 550);

  noStroke();
  
  
  /*
  if(mousePressed) {
    followMouse = !followMouse;
    X = mouseX;
    Y = mouseY;
     }
     
   if (followMouse) {
  fill(0);
  ellipse (mouseX, mouseY, 10, 10);
   }else{
       fill(0);
  ellipse (X, Y, 10, 10);
   }
  
  
   if(mousePressed) {
 followMouse = false;
     }
     
   if (mousePressed || followMouse) {
     X = mouseX;
    Y = mouseY;
    followMouse = false;
  fill(0);
  ellipse (mouseX, mouseY, 10, 10);
   }else{
       fill(0);
  ellipse (X, Y, 10, 10);
   }
  
  */
  
    if(mousePressed) {
 followMouse = false;
     }
     
   if (mousePressed || followMouse) {
     X = mouseX;
    Y = mouseY;
   }
   
  fill(0);
  ellipse (X, Y, 10, 10); 
  
 }


