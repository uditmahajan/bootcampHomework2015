PImage cat;
PImage floor;
PImage pizza;
PImage guy;
PImage GO;

float xPos, yPos;
float mRX, mRY;

int score = 0;

float x, y;
float speed;
float size;
float radius;
boolean wave;

void setup(){
  size(800, 800);
  
  xPos = width/2.5;
  yPos = height/2.5;
  
  cat = loadImage("cat.png");
  pizza = loadImage("pizza.png");
  floor = loadImage("floor.jpg");
  guy = loadImage("angry.png");
  GO = loadImage("GameOver.jpg");
  
  
  mRX = random(50, width - 100);
  mRY = random(50, height - 100);
  
  x = width/2;
  y = height/2;
  radius = 20;
  speed = 0.05;
  size = width/2;
  wave = true;
  
}

void draw(){
  image(floor, 0, 0, floor.width, floor.height);
  
  if(keyPressed){
   if(key == 'w' && yPos > -10){
    yPos-=10;
   } else if(key =='s' && yPos < 630){
    yPos+=10;
   } else if(key =='a' && xPos > -15){
    xPos-=10;
   } else if(key =='d' &&  xPos < 690){
    xPos+=10; 
   }
  }
  
  image(cat, xPos, yPos, cat.width/3, cat.height/3);
  
  image(pizza, mRX, mRY, pizza.width/25, pizza.height/25);
    if(dist(xPos, yPos, mRX, mRY) <= 75){
     score++;
     println(score);
    }

  
   if(wave == true){
     x = frameCount%width;
     y = height/2 + size * sin(frameCount * speed);
     image(guy, x, y, guy.width/2, guy.height/2);
   }
   
  if(dist(x, y, mRX, mRY) <= 140){
     score-=3;
     println(score);
   }
   
   if(dist(xPos, yPos, x, y) <= 75){
    image(GO, 0, 0, width, height);
    wave = false;
   }
   
   if(score < 0){
     image(GO, 0, 0, width, height);
   }
  
}
