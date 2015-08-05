int counter, speed, colorCounter;
float xPos, yPos;
color yellow;
boolean eating; 

void setup() {
  size(300, 300);
  counter = 0;
  xPos =0;
  yellow= color(240, 210, 92);
  speed=3;
  colorCounter=0;
}

void draw() {
  background(255);

  xPos=(xPos+1)%width;

  noStroke();
  fill(yellow);
  ellipse(xPos, width/2, 60, 60);//body
  fill(0);
  ellipse(xPos+12, 135, 10, 10); //eye
  fill(255);
  triangle(xPos+7, 150, xPos+40, 130, xPos+40, 170);  //mouth


//if (eaten){
//    disappear;
//}
//else{
//  do not disappear;
//}

  fill(yellow);
  ellipse(20, width/2, 10, 10);
  ellipse(50, width/2, 10, 10);
  ellipse(80, width/2, 10, 10);
  ellipse(110, width/2, 10, 10);
  ellipse(140, width/2, 10, 10);
  ellipse(170, width/2, 10, 10);
  ellipse(200, width/2, 10, 10);
  ellipse(200, width/2, 10, 10);
  ellipse(230, width/2, 10, 10);
  ellipse(260, width/2, 10, 10);
}

