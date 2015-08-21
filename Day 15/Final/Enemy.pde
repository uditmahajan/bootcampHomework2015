class Enemy{
  
  PImage fireBall;
  
  float x, y;
  float velocity;
  
  int score;
  
  int timer = 0;
  
  
  Enemy(float x, float y, float velocity){
    this.x = x;
    this.y = y;
    this.velocity = velocity;
    fireBall = loadImage("fireball.png");
  }
  
  void display(){
    pushMatrix();
    translate(x, y);
    image(fireBall, 0, 0, 
    fireBall.width/25, fireBall.height/22);
    //fill(255, 0, 0);
    //rect(0, 0, 40, 40);
    popMatrix();
  }
  
  void update(){
    x -= velocity;
  }
  
  void EnemyCollision(Enemy enemy, Player player, int enemyIndex){
  if(dist(player.pos.x, player.pos.y, x, y)<90){
    enemies.remove(enemyIndex);
    lives--;
    Down.play();
    Down.rewind();
    Die.rewind();
    timer++;
    fill(255, 0, 0);
    rect(0, 0, width, height);
    if(timer >= 50){
      timer = 0;
      fill(255, 0, 0);
    rect(0, 0, width, height);
    }
    }
  }
  
}