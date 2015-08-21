class Background{
  PImage backgroundImage1, backgroundImage2;
  float bgX, bg1X, bg2X, bgWidth;
  
  
  
 Background(){
  backgroundImage1 = loadImage("cityImage.png");
  backgroundImage2 = loadImage("cityImage.png");
  
  bgX = 0;
  bgWidth = backgroundImage1.width;

 } 
  
  void update(){
    bg1X = bgX;
    bg2X = bgX + bgWidth;
    bgX-=2;
    
  }
  
  void draw(){
    imageMode(CORNER);
    image(backgroundImage1, bg1X, 0, bgWidth, backgroundImage1.height); 
    image(backgroundImage2, bg2X, 0, bgWidth, backgroundImage1.height);  

   
  if(bg1X+bgWidth < 0){
    bgX = bg1X+bgWidth;
  }  
  }
 
  
  
}
