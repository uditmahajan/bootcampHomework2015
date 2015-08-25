/* @pjs preload="GameBackground-02.jpg, GameOver_13.jpg"; */

PImage background;
PImage gameover;
PFont font;

int NumberofCars=6;
int lives = 3;

float [] xPos=new float[NumberofCars];
float [] yPos=new float[NumberofCars];
float [] xMove=new float[NumberofCars];
float [] yMove=new float[NumberofCars];

int xPerson = width/2;
int yPerson = 575;

boolean dispGameOver = false;

void setup() {
  size(600, 600);
  xPos[0]=10;
  yPos[1]=10;
  
  gameover=loadImage("GameOver_13.jpg");
  font = loadFont("BebasNeue-35.vlw");
  
  for (int i = 0; i < NumberofCars; i++) {
    xPos[i]= random(width);
    yPos[i]= i*80+105;
    xMove[i]=24-(i*4);
    
  }//end of for
}//end of setup


void draw() {
  background=loadImage("GameBackground-02.jpg");
  image(background, 0, 0);
  
  textFont(font, 35);
  fill(0);
  text("LIVES = "+lives, 10, 50);

  //draw person
  noStroke();
  fill(252, 64, 67);
  ellipse(xPerson, yPerson, 25, 25);
  rectMode(CENTER);
  rect(xPerson, yPerson, 50,10);


  //location of cars
  for (int i = 0; i < NumberofCars; i++) {
    noStroke();
    fill(255, 191, 88);
    rect(xPos[i], yPos[i], 90, 50);


    //moving cars
    xPos[i]= xPos[i] + xMove[i];

    noFill();
    if (xPos[i]>width) {
      xPos[i]=0;
    }
    if (xPos[i]<0) {
      xPos[i]=width;
    }
    //hit test
    if (dist(xPerson, yPerson, xPos[i], yPos[i]) < 40) {
      xPerson = width/2;
      yPerson = 575;
      lives--;
//      println(lives);
    }//end of if
  }//end of for loop
  
  if(lives==0){
    dispGameOver = true;
    
    if (mousePressed == true) {
//      println("working!");
      redraw();
      dispGameOver = false;
      lives=3;
    }//end of if mousepressed
  }//end of if lives
  
  if(dispGameOver == true){
    image(gameover,0,0);
  }//end of if dispgameover
}//end of draw

void keyPressed() {
  if (key=='d')
    xPerson= xPerson+10;
  if (key=='a')
    xPerson= xPerson-10;
  if (key=='s')
    yPerson= yPerson+10;
  if (key=='w')
    yPerson= yPerson-10;
}


//Sources:
//"FROGGER" by Sophie Hertz, licensed under Creative Commons Attribution-Share Alike 3.0 and GNU GPL license.
//Work: http://openprocessing.org/visuals/?visualID= 62391  
//License: 
//http://creativecommons.org/licenses/by-sa/3.0/
//http://creativecommons.org/licenses/GPL/2.0/

