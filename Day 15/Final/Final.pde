import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Minim minim;
AudioPlayer music;
AudioPlayer menuMusic;
AudioPlayer coinGet;
AudioPlayer Up;
AudioPlayer Down;
AudioPlayer Die;

Player player;

PFont eightBit;

PImage GO;

PImage MMHead;

//PImage Logo;

PImage Q, W, E, R;

//Star array list
ArrayList<Star> stars;

//Enemy array list
ArrayList<Enemy> enemies;

//coin array list
ArrayList<Coin> coins;

//int variables
int distance, counter, coinCounter, score, lives, starCounter;

//Title Screen
boolean restartButton;


void setup(){
  
  minim = new Minim(this);
  music = minim.loadFile("music.mp3");
  menuMusic = minim.loadFile("menu.mp3");
  coinGet = minim.loadFile("coin.wav");
  Up = minim.loadFile("PowerUp.wav");
  Down = minim.loadFile("PowerDown.wav");
  Die = minim.loadFile("Death.mp3");
  
  size(1280, 720);
  frameRate(60);
  score = 0;
  
  restartButton = true;
  
  eightBit = loadFont("8BITWONDERNominal-48.vlw");
  
  GO = loadImage("gameOver.jpg");
  
  Q = loadImage("running0000.gif");
  W = loadImage("running0001.gif");
  E = loadImage("running0002.gif");
  R = loadImage("running0003.gif");
  
  MMHead = loadImage("Life.png");
  
  //Logo = loadImage("logo.png");
  
  //player initialization
  PVector playerStart = new PVector(width*0.25, height*0.9);
  player = new Player(playerStart);
  
  //enemy initialization
  enemies = new ArrayList<Enemy>();
  
  //coin initialization
  coins = new ArrayList<Coin>();
  
  //star initialization
  stars = new ArrayList<Star>();
  
  //player starts at 0 yards
  distance = 0;
  
  //player starts with 3 lives
  lives = 3;
}

void draw(){
  
  
 background(0);
  
 //distance text
 fill(255);
 textAlign(CENTER);
 textSize(30);
 
 //display lives
 String lifeBar = "x " + lives;
 text(lifeBar, width*0.1, 40);
 image(MMHead, 30, 10, MMHead.width/7, MMHead.height/7);
 
 //display distance
 String distanceText = "Distance: " + distance + " yards";
 text(distanceText, width*0.5, 40);
 
 //display coins
 String scoreText = "Coins: " + score;
 text(scoreText, width*0.5, 80);
 
 //so distance doesn't constantly go up
 counter = (counter+1)%60;
 
 if(counter == 0){
   distance++;
 }
 
 //player 'animation'
  player.update();
  player.display();
  
  //coin spawn behavior
  //int maxCoins = distance + 4;
  //int newCoinTiming = 60 - distance;
  //float coinSpeed = 4;
  
  //add coins to coin array
  float coinSpeed = 4;
  coinCounter = (coinCounter+1)%100;
 
 if(coinCounter == 0){
   coins.add(new Coin(width, random(height*0.3, height*0.8), coinSpeed));
 }
  
  //draw coins
  for(int i=0; i<coins.size(); i++){
    Coin tempCn = coins.get(i);
    tempCn.update();
    tempCn.display();
    tempCn.CoinCollision(tempCn, player, 0);
    
    if(tempCn.coinX < 0){
     coins.remove(i);
    }
  }
  
  //star spawn behavior
  float starSpeed = 15;
  starCounter = (starCounter+1)%10;
  
  //add stars to star array
  if(starCounter == 0){
    stars.add(new Star(width, random(0, height*0.9), starSpeed));
  }
  
  //draw stars
  for(int i=0; i<stars.size(); i++){
    Star tempSt = stars.get(i);
    tempSt.update();
    tempSt.display();
    
    if(tempSt.starX < 0){
     stars.remove(i);
    }
  }
  
  //enemy spawn behavior
  int maxEnemies = distance + 3;
  int newEnemyTiming = 120 - distance;
  float enemySpeed = 8;
  
  //add enemies to enemy array
  if(enemies.size() < maxEnemies 
  && frameCount%newEnemyTiming == 0
  ){
  enemies.add(new Enemy(width, random(height*0.3, height*0.8), enemySpeed));
  }
  
  //height*0.8, height*0.3
  
  //draw enemies
  for(int i=0; i<enemies.size(); i++){
   Enemy tempEn = enemies.get(i);
   tempEn.update();
   tempEn.display();
   tempEn.EnemyCollision(tempEn, player, 0);
    
   if(tempEn.x < 0){
    enemies.remove(i);
   }
  }
  
  //ground
   fill(255);
 rect(0, height*0.9, width, height*0.1);
  
  //death and rebirth
  if (lives <= 0){
    image(GO, 0, 0, width, height);
    fill(255);
    textAlign(CENTER);
    textSize(30);
    text("Press 'Enter' to try again!", width*0.5, height*0.8);
    
    Die.play();
    music.pause();
    coinGet.pause();
    Up.pause();
    Down.pause();
    menuMusic.play();
    //menuMusic.rewind();
  }
  
  if(restartButton == true){
      titleScreen();
  }
  
    if (keyCode == ENTER) {
      restartButton = false;
      restart();
  }
  
}

void keyPressed(){
  
  //press space to jump
  if(keyCode == ' ' && !player.jumping){
      //for(int i=0; i<3; i++){
       player.jump();
       //if(i>3){
       // break; 
       //}
       }
    }
//}

void titleScreen(){
    coinGet.pause();
    Up.pause();
    Down.pause();
    menuMusic.play();
    
  background(0);
  textFont(eightBit, 60);
  fill(255);
    textAlign(CENTER);
    textSize(100);
    text("Space Runner", width*0.5, height*0.3);
    textSize(40);
    text("A Game By: Paul Frank Mallon", width*0.5, height*0.5);
    
    textAlign(LEFT);
    textSize(25);
    String a = "Run as far as you can! Jump to collect coins. Five coins equals an extra life. But get hit by a fireball and you lose a life. Zero lives means Game Over!";
    text(a, width*0.1, height*0.6, width*0.8, 200);
    
    textAlign(RIGHT);
    textSize(20);
    String b = "Controls:";
    text(b, width*0.9, height*0.8);
    String c = "Space Bar = Jump";
    text(c, width*0.9, (height*0.8)+30);
    String d = "Enter = Start/Restart Game";
    text(d, width*0.9, (height*0.8)+60);
    
    //image(Logo, 0, 0, 
    //Logo.width, Logo.height);
    
    image(Q, width*0.1, 0, Q.width/3, Q.height/4);
    image(W, width*0.3, 0, Q.width/3, Q.height/4);
    image(E, width*0.5, 0, Q.width/3, Q.height/4);
    image(R, width*0.7, 0, Q.width/3, Q.height/4);
   
    restartButton = true;
}


void restart(){
  enemies.clear();
  coins.clear();
  distance = 0;
  lives = 3;
  score = 0;
  menuMusic.pause();
  music.play();
  music.rewind();
  music.loop();
  enemies.add(new Enemy(width, random(height*0.3, height*0.8), 10));
}