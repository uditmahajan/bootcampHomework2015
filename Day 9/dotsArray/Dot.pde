class Dot{
 
  float x, y;
  
  Dot(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  void display(){
   pushMatrix();
   translate(x, y);
   noStroke();
   fill(random(255), random(255), random(255));
   ellipse(0, 0, 15, 15);
   popMatrix();
  }
  
  void dotHit (Dot dot, int dotIndex){ //if mouseX, mouseY hits dot.x, dot.y, score +1, make dot explode and disappear
    if(dist(mouseX, mouseY, x, y) < 7){
      dots.remove(dotIndex);
      score++;
    }
  }
  
  
  
}
