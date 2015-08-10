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
 
  imageMode(CENTER);
  rotate(radians(r));
  colorMode(HSB,200);

   for (int i = 0; i < 100; i++) {
   for (int j = 0; j < 100; j++) {
    
     stroke(r%200, 200, 200);
      
     arc(0, 0,  mouseY, mouseX, radians(270), radians(1620));
    
     r=r+12;
     i++;
     j++;
  }
  
}
   
}





