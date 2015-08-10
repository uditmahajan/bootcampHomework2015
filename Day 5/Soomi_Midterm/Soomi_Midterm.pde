import java.util.Iterator;

class Coordinate {
  int x, y;
  Coordinate(int _x, int _y){
    x = _x;
    y = _y;
  }
}
// moniesArray is an array of Coordinate (which holds my x & y)  
ArrayList<Coordinate> moniesArray = new ArrayList<Coordinate>();
PImage Elephant;
PImage Donkey;
PImage Money;
PFont Helvetica;

int xPosElephant = 0, xPosDonkey = 700;

float elephantScale = 1, donkeyScale = 1;

boolean elephantLeft, elephantRight, donkeyLeft, donkeyRight, gamePlay = false;

int donkeyScore = 0, elephantScore = 0;


void setup(){
  //background size
 size(800, 700);
 Elephant = loadImage("elephantImage.png");
 Donkey = loadImage("donkeyImage.png");
 Money = loadImage("moneyImage.png");
  Helvetica = loadFont("HelveticaRoundedLT-Bold-48.vlw");

}

void draw(){
 //background color 
 background(255);
 fill(0);
 
 //begin screen
 if(!gamePlay){
 textAlign(CENTER);
  textFont(Helvetica, 38);
text("Race to collect campaign funds!", width/2, height/3);
 
  textFont(Helvetica, 25);
  fill(255, 0, 0);
text("Player 1: Republican", width/2-180, height/2);
text("Left: 'A'   Right: 'D'", width/2-180, height/2+50);

fill(0, 0, 255);
text("Player 2: Democrat", width/2+180, height/2);
text("Left: '⬅'   Right: '➡'", width/2+180, height/2+50);

fill(0);
text("Press Enter to Begin", width/2, 4*height/5);
 } else { 

  //elephant
  image(Elephant, xPosElephant, 600-Elephant.height*elephantScale, Elephant.width*elephantScale, Elephant.height*elephantScale);
  
  //donkey
  image(Donkey, xPosDonkey, 600-Donkey.height*donkeyScale, Donkey.width*donkeyScale, Donkey.height*donkeyScale);

  //move elephant
  if(elephantLeft){
     xPosElephant = (xPosElephant-4)%width;
  } else if(elephantRight){
     xPosElephant = (xPosElephant+4)%width; 
  }
  if (xPosElephant < -100){
    xPosElephant = 800;
  }

  //move donkey
  if(donkeyLeft){
    xPosDonkey = (xPosDonkey-4)%width;
  }else if(donkeyRight){
    xPosDonkey = (xPosDonkey+4)%width; 
  }
  if (xPosDonkey < -100){
    xPosDonkey = 800;
  }
  
  //keep score
   textAlign(CENTER);
  textFont(Helvetica, 25);
  fill(255,0,0);
  text("$" + elephantScore + " Million", width/4, 670 );
  fill(0,0,255);
  text("$" + donkeyScore + " Million", 3*width/4, 670 );
  
  //money is added to array every 60 framecount
  
  if (frameCount % 60 == 0) {
    moniesArray.add(new Coordinate(int(random(width-Money.width)), -Money.height));
  }
  
  //make an iterator from moniesArray, and assign to 'i'
  Iterator<Coordinate> i = moniesArray.iterator();
  //while there are other things in the array, do this
  while (i.hasNext()) {
    //monies = the next thing in array
    Coordinate monies = i.next();
    image(Money, monies.x, monies.y, Money.width, Money.height);
    monies.y+=3;
     if(monies.x > xPosDonkey-Money.width && monies.x < xPosDonkey+Donkey.width*donkeyScale && monies.y > 600-Donkey.height*donkeyScale-Money.height){
       donkeyScore++;
       donkeyScale*=1.05;
       i.remove();
     } else if(monies.x > xPosElephant-Money.width && monies.x < xPosElephant+Elephant.width*elephantScale && monies.y > 600-Elephant.height*elephantScale-Money.height){
       elephantScore++;
       elephantScale*=1.05;
       i.remove();
     }else if (monies.y > height) {
       i.remove();
     }   
  }
  
 }

}
 
 
void keyPressed() {
  if (key == 'a')  elephantLeft = true;
  if (key == 'd')  elephantRight = true;
  if (keyCode == LEFT)  donkeyLeft = true;
  if (keyCode == RIGHT)  donkeyRight = true;
  
}

void keyReleased() {
  if (key == 'a')  elephantLeft = false;
  if (key == 'd')  elephantRight = false;
  if (keyCode == LEFT)  donkeyLeft = false;
  if (keyCode == RIGHT)  donkeyRight = false;
    if(key == RETURN || key == ENTER){ 
//  fill(255);
//  rect(0, 0, width, height);
background(255);
  gamePlay=true;
}
}

