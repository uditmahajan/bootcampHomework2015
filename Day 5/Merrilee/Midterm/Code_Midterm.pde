Food[] foodCollection = new Food[60];

PImage myImage;
PFont font;

import ddf.minim.*;
Minim minim;
AudioPlayer player;

int mousePosX, mousePosY, i,x,y;

color orange, lightOrange;

float middleX, middleY, size, xPos, yPos, speed;

boolean wave, pulse, bubble;

void setup() {
  size(793, 530);

  minim = new Minim(this);
  player= minim.loadFile("aquarium.mp3");
  player.loop();

  size=width/4;
  speed=0.1;

  orange = color(250, 134, 45);
  lightOrange = color (240, 173, 111);
  
  
  x = 0;
  y = height/2;
  bubble = false;

  wave = true;

  
  for ( int i = 0; i < foodCollection.length; i++) {
    foodCollection[i] = new Food(random(0, width*2.5), random(height-500));
  }

}

void draw() {
  myImage=loadImage("background.jpg");
  image(myImage, 0, 0);
  
  
  
  middleY=height/2;

  //TOP FISH
  if (wave==true) {
    middleX=frameCount%width*2.5;
    middleY=height/3+(size*0.2)*sin(frameCount*speed);
  }

  pushMatrix();
  scale(0.4);
  noStroke();
  //tail
  fill(lightOrange);
  triangle(middleX, middleY, middleX-190, middleY-92, middleX-190, middleY+92);
  //top finn
  fill(lightOrange);
  triangle(middleX-50, middleY-70, middleX+100, middleY-90, middleX-100, middleY-150);
  //body
  fill(orange);
  ellipse(middleX+30, middleY, 300, 200);
  //side finn
  fill(lightOrange);
  triangle(middleX+70, middleY, middleX+30, middleY-40, middleX+30, middleY+40); 
  //gill
  fill(lightOrange);
  ellipse(middleX+110, middleY, 50, 150);
  fill(orange);
  ellipse(middleX+115, middleY, 50, 150);
  //eye
  fill(255);
  ellipse(middleX+150, middleY-20, 40, 25); 
  //eyeball
  fill(0);
  ellipse(middleX+160, middleY-20, 13, 13);
  //mouth
  fill(0);
  ellipse(middleX+170, middleY+10, 13, 20);
  popMatrix();

  //middle FISH
  if (wave==true) {
    middleX=frameCount%width*2.5;
    middleY=height/3+(size*0.2)*cos(frameCount*speed*2);
  }

  pushMatrix();
  scale(0.4);
  translate(-50, 500);
  //tail
  fill(lightOrange);
  triangle(middleX, middleY, middleX-190, middleY-92, middleX-190, middleY+92);
  //top finn
  fill(lightOrange);
  triangle(middleX-50, middleY-70, middleX+100, middleY-90, middleX-100, middleY-150);
  //body
  fill(orange);
  ellipse(middleX+30, middleY, 300, 200);  
  //side finn
  fill(lightOrange);
  triangle(middleX+70, middleY, middleX+30, middleY-40, middleX+30, middleY+40); 
  //gill
  fill(lightOrange);
  ellipse(middleX+110, middleY, 50, 150);
  fill(orange);
  ellipse(middleX+115, middleY, 50, 150);
  //eye
  fill(255);
  ellipse(middleX+150, middleY-20, 40, 25); 
  //eyeball
  fill(0);
  ellipse(middleX+160, middleY-20, 13, 13);
  //mouth
  fill(0);
  ellipse(middleX+170, middleY+10, 13, 20);
  
  popMatrix();
  
  //BOTTOM FISH 
  if (wave==true) {
    middleX=frameCount%width*2.5;
    middleY=height/3+(size*0.5)*sin(frameCount*speed);
  }

  pushMatrix();
  scale(-0.5, 0.5);
  translate(-(width*2), 600);
  noStroke();
  //tail
  fill(lightOrange);
  triangle(middleX, middleY, middleX-190, middleY-92, middleX-190, middleY+92);
  //top finn
  fill(lightOrange);
  triangle(middleX-50, middleY-70, middleX+100, middleY-90, middleX-100, middleY-150);
  //body
  fill(orange);
  ellipse(middleX+30, middleY, 300, 200);
  //side finn
  fill(lightOrange);
  triangle(middleX+70, middleY, middleX+30, middleY-40, middleX+30, middleY+40); 
  //gill
  fill(lightOrange);
  ellipse(middleX+110, middleY, 50, 150);
  fill(orange);
  ellipse(middleX+115, middleY, 50, 150);
  //eye
  fill(255);
  ellipse(middleX+150, middleY-20, 40, 25); 
  //eyeball
  fill(0);
  ellipse(middleX+160, middleY-20, 13, 13);
  //mouth
  fill(0);
  ellipse(middleX+170, middleY+10, 13, 20);
  popMatrix();
  
      for ( int i = 0; i < foodCollection.length; i++) {
    foodCollection[i].run();
  }
  
  x = frameCount%width;

  rectMode(CENTER);
  noFill();
  rect(x, y, 200, 100, 50);

  if(bubble == true){
  
      noStroke();
      fill(255);
      ellipse(mousePosX, i, 30, 30);
      i--;
    }  
}

void mousePressed() {
  mousePosX = mouseX; 
  mousePosY = mouseY;
  if (mousePosX > x-100 && mousePosX < x+60 && mousePosY > height/2 - 40 && mousePosY < height/2 + 25) {
      i = mousePosY;
      bubble = true;
      minim = new Minim(this);
      player= minim.loadFile("bubbles.mp3");
      player.play();
  }else {
    bubble = false;
  }
}

class Food {
  //GLOBAL VARIABLES
  float x = 0;
  float y = 0;
  float speedX = 0.1;
  float speedY = 0.1;
  
 //CONSTRUCTOR
  Food(float _x, float _y) {

    x = _x;
    y = _y;
  }

  //FUNCTIONS
  void run() {
    display();
    move();
    gravity();
    bounce();
  }
  void gravity() {
    speedY += 0.05;
  }

  void bounce() {
    if (x > width) {
      speedX = speedX *  -0.5;
    }
    if (x < 0) {
      speedX = speedX * -0.5;
    }
    if (y > height) {
      speedY = speedY * -0.3;
    }
    if (y < 0) {
      speedY = speedY * -0.5;
    }
  }

  void move() {
    x +=speedX; 
    y += speedY;
  }

  void display() {
    fill(126, 82, 34);
    ellipse(x, y, 5, 5);
  }
}
