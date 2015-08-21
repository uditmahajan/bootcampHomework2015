class Hygiene{
  PImage tampon, cup, pad;
  PImage [] hygieneArray = new PImage [3];
  float hygieneX, hygieneY, hygieneW, hygieneH;
  int randomImage;
  
 Hygiene(int randomImage){
 this.randomImage = randomImage;
 tampon = loadImage("tamponImage.png");
 cup = loadImage("cupImage.png");
 pad = loadImage("padImage.png");
 
 hygieneArray [0] = tampon;
 hygieneArray [1] = cup; 
 hygieneArray [2] = pad; 
 
 hygieneX = width;
 hygieneY = random(height*0.4, height*0.5);
 hygieneW = tampon.width = cup.width = pad.width;
 hygieneH = tampon.height = cup.height = pad.height;
 
 } 
 
 void draw(){
   imageMode(CENTER);
   image(hygieneArray[randomImage], hygieneX+hygieneW*0.5, hygieneY-hygieneH*0.5, hygieneW, hygieneH);
 }
 
 void update(){
   hygieneX -=2;
   
 }
  
  
}
