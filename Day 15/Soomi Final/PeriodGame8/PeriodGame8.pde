Player player;
ArrayList <Building> buildings;
float buildingSpace;
PVector gravity;
LeakBar leakBar;
Background background;

ArrayList<Hygiene> hygiene;

boolean gameWin;
PFont Helvetica;
float textX, textY;

boolean reset;
int score;

void setup(){
 size(1000, 700);
 frameRate (60);
 smooth();
 
 gravity = new PVector( 0, 1);
 PVector playerStart = new PVector(width*0.2, height*0.1);
 player = new Player(playerStart); 
 buildings = new ArrayList <Building>();
 
 leakBar = new LeakBar();
 background = new Background();
 
 hygiene = new ArrayList <Hygiene>();

 gameWin = false;
 Helvetica = loadFont("HelveticaRoundedLT-Bold-48.vlw");
 textX = 0;
 textY = height;
 
 reset = false;
 score = 0;
}

void draw(){
 background(255);
 background.update();
 background.draw();
 gravity.set(0,1);



 while(buildings.size() == 0 ||(width-(buildings.get(buildings.size()-1).startX + buildings.get(buildings.size()-1).buildingW) > buildingSpace)){
    //if the right side last building in the array is bigger than random space distance, add new building. 
   buildingSpace = random(80,150);
   float newStartX = buildingSpace;
   if(buildings.size() != 0){
    newStartX += buildings.get(buildings.size()-1).startX + buildings.get(buildings.size()-1).buildingW;
   }
   buildings.add(new Building(newStartX)); //add building to array at right end of screen
     
   
  }
   //draw buildings
  for(int i = 0; i < buildings.size(); i++){
      Building Building1 = buildings.get(i);
      
      
      Building1.update();
      Building1.display();
   
      //building1 no gravity
      if((player.pos.x + player.playerW) > Building1.startX && player.pos.x < (Building1.startX + Building1.buildingW) && 
      player.pos.y >= (height-Building1.buildingH) && player.pos.y < ((height-Building1.buildingH)+10)){
         gravity.set(0,0);
         if(player.vel.y >= 0){
           player.vel.y = 0;
         }
         player.pos.y = (height-Building1.buildingH);
         player.pos.x -=3;
         if(player.pos.x<=0){
          player.pos.x = 0; 
         }
         player.jumping = false;
        }
      

     if(Building1.startX < -(Building1.buildingW)){
       buildings.remove(i);
     }

    
  }
  
  player.update();
  player.draw();
  player.vel.add(gravity);
  player.vel.limit(10);
    
  leakBar.draw();
  //SCORE
  score++;
  textFont(Helvetica, 20);
  fill(255);
  text("Score: " + score, width*0.85, height*0.05);
  
  //HYGIENE ITEMS ARRAY
  if(hygiene.size() < 3 && (frameCount%200)==0){
   hygiene.add(new Hygiene(int(random(3))));
 }
 
 for (int i=0; i<hygiene.size(); i++){
  Hygiene tempHygiene = hygiene.get(i);
  
  tempHygiene.update(); 
  tempHygiene.draw();
  
  if(player.pos.x+player.playerW > tempHygiene.hygieneX && player.pos.x < tempHygiene.hygieneX+tempHygiene.hygieneW && 
   player.pos.y > tempHygiene.hygieneY-tempHygiene.hygieneH && player.pos.y - player.playerH < tempHygiene.hygieneY){
   hygiene.remove(i);
   leakBar.leak -=25; 
  }  
  
  if (tempHygiene.hygieneX < -50){
   hygiene.remove(i); 
  }
 }
 
 //RESET
 if(player.pos.y > height){
   score = 0;
  player.pos.y = 0;
  player.pos.x = width*0.1;
  leakBar.leak = 0;
  reset = true; 
 }

 
///GAME WIN
if(gameWin){
  hygiene.clear();
  textFont(Helvetica, 25);
  fill(255);
  text("Unshackled by Societal Pressures,", textX, textY);
  text("You don’t let no leak get you down and fly away!", textX-20, textY+30); 
  textX++;
  textY--;
  player.transform();
  
}

}


void keyPressed(){
  if (key == ' ' && !player.jumping){ //add jumping boolean so player cant jump indefinitely (must come down before jumping again)
      player.jump();
      player.jumping = true;
  } 
  if (key == CODED){
     if (keyCode == LEFT){
      player.movePlayerLeft();
     } 
     if (keyCode == RIGHT){
       player.movePlayerRight(); 
     }
  }

}

void keyReleased(){
  if (key == CODED){
     if (keyCode == LEFT){
      player.playerStay();
     } 
     if (keyCode == RIGHT){
       player.playerStay(); 
     }
  }
}
