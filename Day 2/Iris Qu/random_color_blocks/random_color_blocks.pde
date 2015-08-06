float numPoints= 20;
float radius = 500; 
PVector[] points = new PVector[20];
color colorChange; 


void setup(){
  size(600, 600);
  float angle = TWO_PI / numPoints;
  if (mousePressed){
    numPoints = 10;
  }else{
    numPoints = 20;
  }
  for(int i = 0; i < numPoints; i++) {
      float x = cos( angle * i ) * radius;
      float y = sin( angle * i ) * radius;
      points[i] = new PVector(x, y);
  } 
}

void draw() {
  for (int i = 0; i < numPoints; i++) {
    for (int j = 0; j < numPoints; j++) {
        if ( j != i ) {
            colorChange = color(random(255), random(255), random(255));
            fill(colorChange);
            rect( points[i].x, points[i].y, points[j].x, points[j].y );        
        }
      }
  } 
}

void mousePressed() {
  numPoints--;
  redraw();
}




