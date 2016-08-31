public class Ball1 {
int ballDia = 25;
float ballX = width/2 + width/3 + width/6;
float ballY = mouseY;
  void display(){
    
    pushStyle();
    noStroke();
    fill(0,0,255);
    ellipse(ballX - ballDia, mouseY, ballDia, ballDia);
    popStyle();  
  }
}