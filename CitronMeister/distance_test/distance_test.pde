Food f;
Ball1 b;
Poison p;
// points og en bool på hvorvidt spilleren er i live.
int score = 0;
boolean gameLive = true;

void setup() {
  // fullscreen og de classes jeg benytter.
  fullScreen();
  f = new Food();
  b = new Ball1();
  p = new Poison();
}



void draw(){
// distance formel: ved godt det ikke lige er den vi blev bedt om at benytte, men den her er nemmere for andre at afkode.
float distance1 = dist(f.ballX, f.ballY, b.ballX - b.ballDia, mouseY);
float distance2 = dist(p.ballX, p.ballY, b.ballX - b.ballDia, mouseY);
// checker om spilleren er i live.
  if(gameLive == true){
    background(71);
    // henter functions fra mine classes.
    f.display(); f.calc();
    b.display();
    p.display(); p.calc();
    // Skriver scoren til skærmen.
    pushStyle();
    textSize(height/20);
    textAlign(CENTER);
    text(score, width/2, height/2);
    popStyle();
    // Tester om den grønne "mad" rammer spilleren.
    if(distance1 <= (f.diameter + b.ballDia)/2) {
      b.ballDia = b.ballDia + 10;
      f.ballX = 0 - f.diameter;   
      f.ballY = random(height);
      score = score + 1;
      f.randomizeSpeed = random(5, 40);
      }
    if(f.ballX > b.ballX) {
      f.randomizeSpeed = random(5, 40);       
    }
    if(p.ballX > b.ballX) {
      p.randomizeSpeed = random(15, 40);
    
    }
  }
  // tester om den røde "gift" rammer spilleren.
  if(distance2 <= (p.diameter + b.ballDia)/2) {
    background(0);
    gameLive = false;
    pushStyle();
    textAlign(CENTER);
    textSize(height/20);
    text("Game Over!", width/2, height/2);
    text("Click to Restart", width/2, height/2 + height/20);
  }
}
// funktion til at genstarte spillet når man er død.
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