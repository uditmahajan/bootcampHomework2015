PFont awesomeFont;
PImage myImage;
int winSize =600;

void setup(){
  frameRate(20); 
  size(winSize,winSize);
  myImage=loadImage("speaker.png");
  awesomeFont = loadFont("BadaBoomBB-48.vlw");
 }

void draw (){
  textAlign(CENTER, CENTER);
  textFont(awesomeFont, 24 );
  imageMode(CENTER);
  
  pushMatrix();
  background(255);
  translate(winSize/2, winSize/2);
  float freq = map(mouseX, 0, width, 0.001, 1);
  float scale= map(sin(freq*frameCount),-1,1, 450, 500);
  image(myImage, 0,0, scale, scale);
  
  fill(0);
  text("!BOOM!", scale/2.2, scale/4.5);
  text("!BOOM!", -scale/2.8, scale/3.5);
  text("!BOOM!", scale/2.5, -scale/4);
  text("!BOOM!", -scale/2.6, -scale/5);
  text("!BOOM!", scale/4, scale/2.8);
  text("!BOOM!", scale/4, -scale/2.8);
  popMatrix();
}
