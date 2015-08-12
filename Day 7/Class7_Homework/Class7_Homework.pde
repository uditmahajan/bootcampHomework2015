String[] msgs = {"Nope", "Not Here", 
"Wrong Again", "Are you even trying?",
"Jeez Finally"};

float[] spaceX = new float [100];
float[] spaceY = new float [100];

float r, g, b;

void setup(){
  
  size(800, 800);
  
}

void draw(){
  
  r = random(0, 255);
  g = random(0, 255);
  b = random(0, 255);
  
  background(0);
  
  fill(255, 0, 0);
  textSize(36);
  textAlign(CENTER);
  text("Find the 'Right Spot'", width/2, 30);
  
  textSize(20);
  textAlign(CENTER);
  text("But don't press spacebar", width/2, 50);
  
  textAlign(LEFT);
  textSize(30);
  
    if(mouseX > 0 && mouseX < width/4){
    text(msgs[3], mouseX, mouseY);
    }else if(mouseX > width/4 && mouseX < width/2 && mouseY < height - height/3){
     text(msgs[2], mouseX, mouseY); 
    }else if(mouseX > width/2 && mouseX < width - width/4 && mouseY < height - height/3){
     text(msgs[1], mouseX, mouseY); 
    }else if(mouseX > width - width/4 && mouseX < width){
     text(msgs[0], mouseX, mouseY); 
    }else if(mouseY > height - height/3){
      fill(255);
      text(msgs[4], mouseX, mouseY);
    }
    
    
  for(int i = 0; i < spaceX.length; i++){
   spaceX[i] = random(0, width);
   spaceY[i] = random(0, height);
  }
  
  for(int i = 0; i < spaceX.length; i++){
    if(keyPressed){
   if(key == ' '){
     
   fill(r, g, b);
   textSize(40);
   textAlign(CENTER);
    text("You shouldn't have done that!", spaceX[i], spaceY[i]);
      
      fill(255);
      text("YOU SHOULDN'T HAVE DONE THAT!", width/2, height/2);
   }
  }
  }
}
