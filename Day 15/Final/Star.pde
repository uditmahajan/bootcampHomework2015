class Star{
  
  float starX, starY;
  float starVelocity;
  
  
  Star(float starX, float starY, float starVelocity){
    this.starX = starX;
    this.starY = starY;
    this.starVelocity = starVelocity;
  }
  
  void display(){
    pushMatrix();
    translate(starX, starY);
    fill(255);
    ellipse(0, 0, 5, 5);
    popMatrix();
  }
  
  void update(){
    starX -= starVelocity;
  }
}