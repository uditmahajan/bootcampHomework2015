PFont font;
int winSize = 700;

void setup(){
  //background size
  size(winSize, winSize);
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
  
  fill(0); 
  rect(335, 280, 30, 10); // mouth
  
  fill(255);
  rect(0, 530, 700, 400); //snow
 
  font = loadFont("snowman.vlw");
  textFont(font);

  
}

void draw(){
  if(mousePressed){
    noStroke();
    fill(255);
    ellipse(random(width), random(height), 15, 15); 
    
    textFont(font, 70); 
    fill(10, 200, 120);
    text("Merry Christmas", 90, 115);
 
  }else{
    noStroke();
    fill(220);
    ellipse(random(width), random(height), 5, 5);
    
    textFont(font, 60); 
    fill(167, 50, 50);
    text("Snowing!!!", 210, 630 );
   
    

  }
   
   
   
   
   //frame
  rectMode(CENTER);
  stroke(53,34,34);
  strokeWeight(5);
  noFill();
  rect(width/2, height/2, 650, 650);
  
}
