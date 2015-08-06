int d;
PFont font;
PImage A1;
PImage A2,A3,A4,A5,A6;
 
void setup () {
  size(800,640);
  background(0);
  colorMode(HSB, 360, 100, 100);
  smooth();
  font= loadFont("SansSerif-48.vlw");
  A1= loadImage("1.png");
  A2= loadImage("2.png");
  A3= loadImage("3.png");
  A4= loadImage("4.png");
  A5= loadImage("5.png");
  A6= loadImage("6.png");
}
 
void draw() {
  //background
  float h= random(0,360);
  float s=80;
  float b=100;
  fill(h,s,b);
  rect(-10,-10,900,800);
 
  //I <3
  pushMatrix(); 
  smooth();
  textFont(font);
  textSize(65);
  float h1= random(100,360);
  float s1=50;
  float b1=100;
  fill(h1,s1,b1);
  text("I   <3          ." ,width/2-150,height/2);
  popMatrix();
 
  //animal
  float d = 1+ int(random(6));
  if(d==1) {
    println(d);
    image(A1,width/2+35,height/2-170);
  }
    else if(d==2) {
    println(d);
    image(A2,width/2+35,height/2-170);
  }
    else if(d==3) {
    println(d);
    image(A3,width/2+35,height/2-170);
  }
    else if(d==4) {
    println(d);
    image(A4,width/2+35,height/2-170);
  }
    else if(d==5) {
    println(d);
    image(A5,width/2+35,height/2-170);
  }   
    else {
    println(d);
    image(A6,width/2+35,height/2-170);
  }
 
 
 
}
 
 
void mousePressed() {
  loop();
}
 
void mouseReleased() {
  noLoop();
}

