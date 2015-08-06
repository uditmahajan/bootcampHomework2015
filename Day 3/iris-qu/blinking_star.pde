float numPoints= 5;
float radius = 100; 
PVector[] points = new PVector[30];

void setup(){
  size(600, 600);
  background(0);
}

void draw() {
  numPoints = cos(mouseX/(2*mouseY+0.01))*10;
  
  stroke(0);
  fill(0, 0, 0, 30);
  ellipse(mouseX, mouseY, 1000, 1000);
  imageMode(CENTER);
  
  float angle = TWO_PI / numPoints;
  
  int r=int(mouseX);
  int g=0;
  int b=int(mouseY);
  
  stroke(r, g, b);
  
  for(int i = 0; i < numPoints; i++) {
      float x = cos( angle * i ) * radius;
      float y = sin( angle * i ) * radius;
      points[i] = new PVector(x+mouseX, y+mouseY);
  } 
  
  
  for (int i = 0; i < numPoints; i++) {
    for (int j = 0; j < numPoints; j++) {
        if ( j != i ) {
            line( points[i].x, points[i].y, points[j].x, points[j].y );        
        }
      }
  } 
}

