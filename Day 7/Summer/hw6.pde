int n = 50;
float[] xx = new float[n];
float[] yy = new float[n];

void setup(){
  size(600,600);  
  smooth();
  stroke(#339933); 
//  for(int i = 0; i < n; i++) {
//    xTop[i] = width; 
//   xBottom[i] = height; 
//  }
}

void draw(){
   background(255); 
  
   for(int i = 0; i < n; i++) {
   xx[i] = random(0, 600); 
   yy[i] = random(0, 600); 
   line(xx[i], 0, 600,yy[i]);
   line(0, xx[i], yy[i],600);
   line(0, yy[i],xx[i],0);
   line(xx[i],600,600, yy[i]);
   

  }
}


