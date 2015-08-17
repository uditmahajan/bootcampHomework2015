ArrayList tris = new ArrayList();
Tri drawTri;
float numPerRow;
float triSize;


void setup(){
  background(255);
  size(600, 600);
  smooth();
  numPerRow = 10;
 
}

void draw(){

 numPerRow=10;
 for(int i=0; i<numPerRow; i++){
    for(int j=0; j<numPerRow; j++){
      tris.add(new Tri(i, j));
  triSize = height / numPerRow ;
     
    }
  }
  
 for (int i = tris.size() - 1; i>= 0; i--) {
    
    drawTri = (Tri) tris.get(i); 
    drawTri.display();
    drawTri.turn();
    
  }
}






  