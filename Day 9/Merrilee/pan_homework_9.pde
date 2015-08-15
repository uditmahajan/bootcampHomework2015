Fish a, b,c,d;

void setup() {
  size(793, 530);
  a = new Fish(0, height/3);
  b = new Fish(0, height-300);
  c = new Fish(0, height/2);
  d = new Fish(0, height/2);
}

void draw() {
  background(255);
  
  pushMatrix();
  translate(0, -100);
  a.display();
  a.move();
  popMatrix();
  
  pushMatrix();
  translate(0, 300);
  scale(0.7);
  b.display();
  b.move();
  popMatrix();
  
  pushMatrix();
  scale(-1,1);
  translate(-(width), 100);
  c.display();
  c.move();
  popMatrix();
 
  pushMatrix();
  scale(-0.5,0.5);
  translate(-(width*2), 200);
  d.display();
  d.move();
  popMatrix();

}


//Name(int x, int y){
//  posX = x;
//  posY = y;
//}
//
//Name object(50, 60);

