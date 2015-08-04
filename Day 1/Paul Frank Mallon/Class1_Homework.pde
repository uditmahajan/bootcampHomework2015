int Xpos, Ypos;
int Xmin = -350;
int Xmax = 350;
int Ymin = -350;
int Ymax = 350;

int Speed = 1;

void setup(){
 size(750, 750); 
 background(#0325FC);
}

void draw(){
  
  Speed++;
  
  Xpos = mouseX;
  Ypos = mouseY;
  
  fill(#FF0307);
  ellipse(375 + Speed, 375 + Speed, 50, 50);

  if(Speed >= Xmax){
   Speed = Xmin;
  }
  
  if(Speed >= Ymax){
   Speed = Ymin; 
  }
  
  ellipse(375 + Speed, 375 - Speed, 50, 50);

  if(Speed >= Xmax){
   Speed = Xmin;
  }
  
  if(Speed >= Ymax){
   Speed = Ymin; 
  }
  
  fill(#03FF47);
  ellipse(375 - Speed, 375 - Speed, 50, 50);
  
   if(Speed >= Xmax){
   Speed = Xmin;
  }
  
  if(Speed >= Ymax){
   Speed = Ymin; 
  }
  
  ellipse(375 - Speed, 375 + Speed, 50, 50);

  if(Speed >= Xmax){
   Speed = Xmin;
  }
  
  if(Speed >= Ymax){
   Speed = Ymin; 
  }
  
  fill(#0325FC); 
  noStroke();
  rect(Xpos, Ypos, 100, 100);
  
  if(mousePressed){
   background(0); 
  }
  
}
