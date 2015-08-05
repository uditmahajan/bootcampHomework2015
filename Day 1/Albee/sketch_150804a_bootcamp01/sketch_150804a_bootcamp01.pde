void setup(){
 //background size
 size(500,500);
 //change background color
 background(207,241,250);
 
 noStroke();
 fill(255,211,203);
 ellipse(width/2, height/2, 180,100);//head
 
 
 stroke(108,68,67);
 strokeWeight(3);
 fill(234,161,159);
 ellipse(width/2, (height/2)+15, 90, 35);//muzzle 
 
 noStroke();
 fill(108,68,67);
 ellipse((width/2)+15,(height/2)+15, 8, 16);//right nose
 ellipse((width/2)-15,(height/2)+15, 8, 16);//left nose
 
 fill(90,65,64);
 ellipse((width/2)+45,(height/2)-10, 8, 8);//right eye
 ellipse((width/2)-45,(height/2)-10, 8, 8);//left eye
 
 fill(234,161,159);
 triangle((width/2)+83,(height/2)-15,(width/2)+83,(height/2)-45, (width/2)+40,(height/2)-45);//right ear
 triangle((width/2)-83,(height/2)-15,(width/2)-83,(height/2)-45, (width/2)-40,(height/2)-45);//left ear
 
 //frame
 ellipseMode(CENTER);
 stroke(38,197,252);
 strokeWeight(2);
 noFill();
 ellipse(width/2, height/2, 200, 200);

 //frame2
 ellipseMode(CENTER);
 stroke(38,197,252);
 strokeWeight(5);
 noFill();
 ellipse(width/2, height/2, 225, 225);
 
}

void draw(){

}
