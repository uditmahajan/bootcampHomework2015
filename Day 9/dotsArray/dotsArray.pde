ArrayList<Dot> dots;

int score;

void setup(){
 size(600, 600);
background(255);
dots = new ArrayList<Dot>();
score = 0;
}

void draw(){
 background(255);
 frameRate(15);
 
  fill(0);
  textAlign(CENTER);
  textSize(30);
  
  String scoreText = "DOTS CAPTURED: " + score;
  text(scoreText, width/2, 40);
  
  //add dots to array
  
  if(dots.size() < 10){
   dots.add(new Dot(random(width), random(height))); 
  }
  
  //draw dots
  for(int i = 0; i < dots.size(); i++){
    Dot tempDot = dots.get(i);
   tempDot.display();
   tempDot.dotHit(tempDot, i);
  }
  
}
