void setup() {
  size(650, 650);
  background (148, 222, 240);
  
  //body
  noStroke();
  fill(249, 252, 166);
  ellipse(width/2, height/2, 100, 100);
  ellipse(width/2, (height/2)+85, 160, 120);
  
  //eyes
  fill(54, 34, 34);
  ellipse((width/2)-25, (height/2)-10, 15, 15);
  fill(54, 34, 34);
  ellipse((width/2)+25, (height/2)-10, 15, 15);
  
  //mouth
  fill(274, 140, 152);
  ellipse((width/2), (height/2)+15, 35, 15);
  
  //frame
  rectMode(CENTER);
  stroke(53, 34, 34);
  strokeWeight(5);
  noFill();
  rect(width/2, height/2, 600, 600);

}

void draw() {
  if(mousePressed) { 
    noStroke();
    
    //body
    fill(255);
    ellipse (mouseX, mouseY, 50, 25);
    
    //eye
    fill(0);
    ellipse (mouseX+9, mouseY, 8, 8);
    
    //tail
    fill(225);
    triangle(mouseX-35, mouseY+15, mouseX-35, mouseY-15, mouseX-15, mouseY);
  }  
}
