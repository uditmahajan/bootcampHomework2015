class Building{
  float startX, buildingW, buildingH;

 
 Building(float startX){
   this.startX = startX;
   
   buildingW = random(width*0.4, width*0.5);
   buildingH = random(height*0.2, height*0.4);

   
 }
 
 void display(){
  fill(50);
  noStroke();
  rectMode(CENTER);
  rect(startX+buildingW/2, height-buildingH/2, buildingW, buildingH);

   
 }
 
 void update(){
  startX -= 3;

 }
  
  
}
