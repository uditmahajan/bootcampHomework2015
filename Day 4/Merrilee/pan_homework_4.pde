
float a = 0;
int r,g,b;


void setup() {
  size(300,300);
}


void draw() {
  noStroke();
  fill(0,30); //fade effect
  rect(0,0,width, height);
  
  a+= 0.05;  
  
  r=198;
  g=98;
  b=98;
  fill(r,g,b);
  
  pushMatrix();
    translate(width/2, height/2);
   scale( 1+ 0.1 *sq( sin(a*4) > 0 ? sin(a*4): 0 ) );
  translate(-width/2, -height/2);

  beginShape();
  vertex(150,150);
  bezierVertex( 150,125, 100,125, 100, 155);
  bezierVertex( 100,180, 151,185, 150, 210 );
  bezierVertex( 150,180, 200,180, 200, 150 );  
  bezierVertex( 200,110, 150,120, 150, 150 );  
  endShape();
  popMatrix();
}
