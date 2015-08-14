int num = 10;
Dot[] placedDots = new Dot[num];

//int[] colors = new colors[3];
//colors[0]= 179;
//colors[1]= #F5BE0A;
//colors[2]= #EA21A4;
//colors[3]= #0AC5F2;


void setup(){
   size(600,600);
  for (int i=0; i <placedDots.length; i++){
    PVector location =  new PVector(random(width), random(height));
    PVector speed =  new PVector(random(-2, 2), random(-2, 2));
    placedDots[i] = new Dot(location, speed, placedDots);
    
  }
}

void draw(){
  noStroke();
  fill(0, 20);
  rect(0, 0, width, height);
  
  fill(#B3F51E);
  for (int i = 0; i < placedDots.length; i++) {
    placedDots[i].run();
  }
}

class Dot{
 PVector location,speed;
 Dot[] theArray;
 
 Dot(PVector loc, PVector spd, Dot[] myArray) {
    location = loc;
    speed = spd;
    theArray = myArray;
}

void run() {
    display();
    move();
    bounds();
}

void display() {
    ellipse(location.x, location.y, 20, 20);
  }
 
  void move() {
    location.add(speed);
  }
 
  void bounds() {
    if (location.x > width || location.x < 0) {
      speed.x = speed.x * -1;
      move();
    }
    if (location.y > height || location.y < 0) {
      speed.y = speed.y * -1;
      move();
    }
  }
  
   public PVector getLocation() {
    return location;
  }
}
