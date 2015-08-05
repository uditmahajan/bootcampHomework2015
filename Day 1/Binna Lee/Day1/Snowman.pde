void setup(){
  //background size
  size(500, 500);
  line(30, 200, 30, 200);
  //change background color
  background(167, 50, 50);
  
  noStroke();
  fill(255);
  ellipse(width/2, (height/2)+100, 200, 200); //body
  ellipse(width/2, (height/2)-100, 160, 160); //head
  ellipse(width/2, (height/2)-10, 150, 150); //body
  
  
  fill(53,34,34);
  ellipse((width/2)-35, (height/2)-110,15, 15); //left eye
   ellipse((width/2)+35, (height/2)-110,15, 15); //right eye
   

  ellipse(width/2, (height/2)+40, 15, 15); //button
  ellipse(width/2, (height/2)+10, 15, 15); //button
  ellipse(width/2, (height/2)-20, 15, 15); //button
 
  rect((width/2)-50, (height/2)-200,100, 30); //hat
  rect((width/2)-90, (height/2)-170,180, 10); //hat
  
  //stroke(53,34,34);
  
  fill(20, 120, 50);
  triangle((width/2)-92, (height/2)-40, (width/2)-40, (height/2)-92, (width/2)-150, (height/2)-100); //left ear
  triangle((width/2)+92, (height/2)-40, (width/2)+40, (height/2)-92, (width/2)+150, (height/2)-100); //right ear
  
  //frame
  rectMode(CENTER);
  stroke(53,34,34);
  strokeWeight(5);
  noFill();
  rect(width/2, height/2, 425, 425);
  
}

void draw(){
  
}
