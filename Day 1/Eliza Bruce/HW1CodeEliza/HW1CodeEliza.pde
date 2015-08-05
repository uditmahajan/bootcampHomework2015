color orangeYellow, lightYellow, darkOrange, darkBrown, lightBlue, lightPink;
int midX, midY;

void setup(){
 size(500, 800);
    midX =  width/2;
  midY = height/2;

orangeYellow = color(255, 217, 0);//orangeYellow
lightYellow = color(250, 233, 164);
darkOrange = color(240, 172, 0);//darkOrange
darkBrown = color(77, 29, 7);
lightBlue = color(179, 228, 240);
lightPink=color(255, 227, 240);

  background(lightBlue);
  
  //Pal the Giraffe
  //body
  noStroke();
  fill(orangeYellow);
  ellipse(midX, midY+50, 200, 200);
  
  //neck
noStroke();
fill(orangeYellow);
rect(midX-25, midY-190, 50, 150);

//ear antennae things
stroke(darkBrown);
strokeWeight(10);
line(midX+10, midY-300, midX+15, midY-350);//right
stroke(darkBrown);
strokeWeight(10);
line(midX-13, midY-300, midX-18, midY-350);//left
fill(darkBrown);
ellipse(midX-18, midY-350, 10, 10);///left
fill(darkBrown);
ellipse(midX+15, midY-350, 10, 10);//right

//actual ears
noStroke();
fill(orangeYellow);
ellipse(midX-75, midY-275, 75, 30);//left ear
noStroke();
fill(lightPink);
ellipse(midX-75, midY-275, 70, 20);//left ear
noStroke();
fill(orangeYellow);
ellipse(midX+70, midY-275, 75, 30);//right ear pink
noStroke();
fill(lightPink);
ellipse(midX+70, midY-275, 70, 20);//right ear pink

//head;
noStroke();
fill(orangeYellow);
ellipse(midX, midY-225, 130, 150);//face
fill(lightYellow);
ellipse(midX, midY-175, 115, 75);//mouth
//nose
fill(0);
ellipse(midX-10, midY-175, 5, 10);//left nostril
fill(0);
ellipse(midX+10, midY-175, 5, 10);//right nostril
//eyes
fill(0);
ellipse(midX-25, midY-230, 10, 15);//left eye
fill(0);
ellipse(midX+25, midY-230, 10, 15);//right eye

//front legs
fill(orangeYellow);
rect(midX-60, midY+125, 40, 100);//left front leg
fill(orangeYellow);
rect(midX+15, midY+125, 40, 100);//right front leg
//back legs
fill(orangeYellow);
rect(midX-75, midY+100, 20, 100);//left back leg
fill(orangeYellow);
rect(midX, midY+100, 20, 100);//right back leg

//hooves
fill(darkBrown);
rect(midX-60, midY+225, 40, 10);//left Front
fill(darkBrown);
rect(midX+15, midY+225, 40, 10);//right Front
fill(darkBrown);
rect(midX-75, midY+200, 15, 5);//left back
fill(darkBrown);
rect(midX, midY+200, 15, 5);//right back
stroke(darkBrown);
strokeWeight(0.75);
line(midX+15, midY+150, midX+15, midY+204);
line(midX-60, midY+135, midX-60, midY+204);//separate legs


//tail;
stroke(orangeYellow);
line(midX+75, midY, midX+125, midY-16);//main tail
stroke(darkBrown);
strokeWeight(5);
line(midX+127, midY-17, midX+125, midY-30);
line(midX+127, midY-17, midX+135, midY-30);
line(midX+127, midY-17, midX+140, midY-25);
line(midX+127, midY-17, midX+142, midY-17);
line(midX+127, midY-17, midX+142, midY-10);
line(midX+127, midY-17, midX+137, midY-5);

}

void draw(){
if(mousePressed) {
  noStroke();
  fill(darkBrown);
  ellipse(mouseX, mouseY, 20, 30);
}
}
  




