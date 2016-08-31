public class Poison {
int diameter = 25;
float ballX = 0 - diameter;
float ballY = random(height);
float randomizeSpeed = random(15, 50);
  void display(){ 
    pushStyle();
    noStroke();
    fill(255,0,0);
    ellipse(ballX, ballY, diameter, diameter);
    popStyle();  
  }
  void calc() {
    if (ballX < width + diameter) {
      ballX = ballX + randomizeSpeed;
      
    }
    else if (ballX >= width + diameter) {
      ballX = 0 - diameter;
      ballY = random(height);
      
    }
  }

  


}