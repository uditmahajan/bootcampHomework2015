class LeakBar{
  PImage leakBarImage;
  float leak;
  int overlay;
 
 LeakBar (){
   leakBarImage = loadImage("leakBarImage.png");
   leak = 0;
 }
  
 void draw(){
  //leak
   fill(255, 0, 51);
   noStroke();
   rectMode(CORNERS);
   rect(300, 20, 300+leak, 75, 19);
   if (leak < 400){
     leak+=0.25;
   }else{
     leak = 400;
     gameWin = true;
   }
   
   overlay= int(map(leak, 0, 400, 0, 200));
   
  fill(255, 102, 153, overlay);
  rectMode(CENTER);
  rect(width/2, height/2, width, height);
   
 
 imageMode(CORNER);
   image(leakBarImage, 300, 20, leakBarImage.width, leakBarImage.height);
 }
  
}

