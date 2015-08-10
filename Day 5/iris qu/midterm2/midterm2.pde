float r=0;
void setup(){
  size(700,700, P3D);
  background(0);
  noFill();
}
  
void draw(){
  smooth();
 
  
  translate(width/2, height/2);
  fill(0, 0, 0, 30);
  ellipse(mouseX, mouseY, r, r);
  imageMode(CENTER);
  rotate(radians(r));
  

   for (int i = 0; i < 100; i++) {
   for (int j = 0; j < 100; j++) {
     
     int r=int(mouseX);
     int g=0;
     int b=int(mouseY);
    
  
     stroke(r, g, b);
      
     arc(0,0, mouseY, mouseX, radians(270), radians(1620));
    
     r=r+12;
     i++;
     j++;
  }
  
}
   
}

