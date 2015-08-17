class Tri {
  int Xindex;
  int Yindex;
  
  float x, y;
  float degree;

  
  Tri(int Xindex, int Yindex) {
    x = Xindex * triSize + triSize/2;
    y = Yindex * triSize + triSize/2; 
  }
   
  void turn() {
    degree += PI/2;
  }
 
  void display() {
    
    
    noStroke();
    fill(random(255), random(200), 200);
    pushMatrix();
    translate(x,y);
    rotate(degree);
  
    triangle(-triSize/2 , -triSize/2 , -triSize/2 , triSize/2 , triSize/2 , triSize/2 ); 
    popMatrix();
    
  }
}