float r=0;
int numPos = 30;
int[] xPos = new int[numPos];
int[] yPos = new int[numPos];
int[] zPos = new int[numPos];
void setup() {
  size(600, 600);

  smooth();
  
  for(int i=0; i<numPos; i++){
    xPos[i]=0;
    yPos[i]=0;
    zPos[i]=0;
  }
}

void draw() {
  smooth();
  translate(width/2, height/2);
  background(0);
  
  for(int i=0; i<numPos-1; i++) { 
    xPos[i] = xPos[i+1];
    yPos[i] = yPos[i+1];
    zPos[i] = yPos[i+1];
  }
  xPos[numPos - 1]=mouseX;
  yPos[numPos - 1]=mouseY;
  zPos[numPos - 1]=(mouseX+mouseY)*2;
  
  for(int i=0; i<numPos; i++) { 
    fill(random(255), 0, 255);
    noStroke();
    triangle(xPos[i], yPos[i], 0, zPos[i], mouseX, mouseY);
    r=30*cos(mouseX/(mouseY+0.01));
    rotate(radians(r));
  }
}
