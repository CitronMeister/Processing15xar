Food f;
Ball1 b;
Poison p;
int score = 0;
boolean gameLive = true;
void setup() {
  fullScreen();
  //size(500, 500);
  f = new Food();
  b = new Ball1();
  p = new Poison();
}



void draw(){
float distance1 = dist(f.ballX, f.ballY, b.ballX - b.ballDia, mouseY);
float distance2 = dist(p.ballX, p.ballY, b.ballX - b.ballDia, mouseY);
  if(gameLive == true){
    background(71);
    f.display(); f.calc();
    b.display();
    p.display(); p.calc();
    
    text(score, width/2, height/2);
    // food hits player.
    if(distance1 <= (f.diameter + b.ballDia)/2) {
      b.ballDia = b.ballDia + 10;
      f.ballX = 0 - f.diameter;   
      f.ballY = random(height);
      score = score + 1;
    }
  }
  if(distance2 <= (p.diameter + b.ballDia)/2) {
    background(0);
    gameLive = false;
    textAlign(CENTER);
    text("Game Over!", width/2, height/2);
    text("Click to Restart", width/2, height/2 + 30);
  }
}
void mousePressed() {
  if(gameLive == false) {
    gameLive = true;
    score = 0;
    p.ballX = 0 - p.diameter;
    f.ballX = 0 - f.diameter;
    p.ballY = random(height);
    f.ballY = random(height);
  }

}