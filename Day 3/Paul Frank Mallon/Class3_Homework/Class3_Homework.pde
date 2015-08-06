PImage Wu;
PImage Woods;
PImage Carrots;
PImage madWu;
PFont words;

color colorChange;

void setup(){
  
  frameRate(120);
  
  size(800, 800);
  
  Wu = loadImage("wukong.png");
  Woods = loadImage("Forest.jpg");
  Carrots = loadImage("carrot.png");
  madWu = loadImage("madWukong.jpg");
  words = loadFont("ComicSansMS-Bold-48.vlw");
  
//  image(Carrots, width/2, height/2, Carrots.width/30, Carrots.height/30);
  
}

void draw(){
  
  tint(255, 255);
  image(Woods, 0, 0, Woods.width, Woods.height * 1.6);
  
  tint(255, 255);
  image(Carrots, mouseX, mouseY, Carrots.width / 30, Carrots.height / 30);
  
  
  if(mouseX <= 300 && mouseY <= 425 && mouseX>= 0 && mouseY >= 150){
    
    tint(255, 255);
    image(madWu, -2000, -400, Wu.width*8, Wu.height*4);
    textFont(words, 60);
    fill(#03FC32);
    text("I HATE CARROTS!!", width/5, 200);
    
    float r = random(255);
    float g = random(255);
    float b = random(255);
    
    tint(r, g, b);
    
    pushMatrix();
//    rect(10, height/2, 10, 10);

    image(Wu, random(-75, 475), random(-75, 375), Wu.width/1.5, Wu.height/1.5);
    popMatrix();
  }else{
   tint(255, 255);
   rotate(radians(8)); 
   image(Wu, 35, 100, Wu.width/1.5, Wu.height/1.5);
  
  }
  
//  image(Wu, 35 + Move, 100, Wu.width/1.5, Wu.height/1.5);
}
