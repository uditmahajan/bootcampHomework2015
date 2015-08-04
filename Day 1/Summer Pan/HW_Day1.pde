void setup(){
  size (600, 600);
  smooth();
}

void draw (){
  background(#AFE4FF);

  shapeMode(CENTER);
  noStroke();
  fill(#9DFF2E);
  ellipse(width/2,height/2-30,300,300);

  fill(255);
  ellipse(width/2,height/2-60,150,150);

  fill(#71DBC5);
  ellipse(width/2,height/2-60,100,100);

  fill(0);
  ellipse(width/2,height/2-60,50,50);
  
  //eye light
  float x= (mouseX)/30;
  float y= (mouseY)/30;
  fill(255);
  ellipse(width/2+20-x,height/2-70-y,20,20);
  
  stroke(0);
  strokeWeight(5);  
  noFill();
  arc(width/2, height/2+50, 60, 60, 0, PI+PI/6);

  shapeMode(CENTER);
  noStroke();
  fill(#9DFF2E);
  ellipse(width/2-70,height/2+100,30,200);

  shapeMode(CENTER);
  noStroke();
  fill(#9DFF2E);
  ellipse(width/2+70,height/2+100,30,200);

  rotate(PI/10);
  shapeMode(CENTER);
  noStroke();
  fill(#9DFF2E);
  ellipse(200,height/2-50,200,30);
  
  shapeMode(CENTER);
  noStroke();
  fill(#9DFF2E);
  ellipse(570,height/2-100,200,30);






}

