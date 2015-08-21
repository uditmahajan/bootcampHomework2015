class Coin{
  
  PImage mCoin;
  
  float coinX, coinY;
  float coinVelocity;
  
  Coin(float coinX, float coinY, float coinVelocity){
    this.coinX = coinX;
    this.coinY = coinY;
    this.coinVelocity = coinVelocity;
    mCoin = loadImage("coin.png");
  }
  
  void display(){
    pushMatrix();
    fill(#FFED24);
    translate(coinX, coinY);
    image(mCoin, 0, 0, 
    mCoin.width/6, mCoin.height/6);
    popMatrix();
  }
  
  void update(){
    coinX -= coinVelocity;
  }
  
  void CoinCollision(Coin coin, Player player, int coinIndex){
  if(dist(player.pos.x, player.pos.y, coinX, coinY)<90){
    coins.remove(coinIndex);
    coinGet.play();
    coinGet.rewind();
    score++;
    }else if(score==5){
      score = 0;
      Up.play();
      Up.rewind();
      lives++;
    }
  }
  
  
}