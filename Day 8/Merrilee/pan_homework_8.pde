int num=50;

PVector[] pos= new PVector[num];
PVector[] speed=new PVector[num];


void setup (){
   size(400,400);
   background(255);
   
   for(int i=0; i<num; i++){
     pos[i]=new PVector(random(width), random(height));
     speed[i]= new PVector(0,0);
    }
}

void draw (){
  fill(0);
  rect(0,0, width, height);
  
  for(int i=0; i<num; i++){
   pos[i]=new PVector(random(width), random(height));
   speed[i]= new PVector(0,0);

  //changing directions
  if(pos[i].x > width || pos[i].x <0){
   speed[i].x *= -1; 
 }
  
  if(pos[i].y>height || pos[i].y <0){
    speed[i].y *= -1;
  }
  
  pos[i].add(speed[i]); 
  
  noFill();
  stroke(255);
  ellipse(pos[i].x, pos[i].y, 20,20);
}
}


