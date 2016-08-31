public class Poison {
int diameter = 25;
float ballX = 0 - diameter;
float ballY = random(height);

  void display(){ 
    pushStyle();
    noStroke();
    fill(255,0,0);
    ellipse(ballX, ballY, diameter, diameter);
    popStyle();  
  }
  void calc() {
    if (ballX < width + diameter) {
      ballX = ballX + 5;
    }
    else if (ballX >= width + diameter) {
      ballX = 0 - diameter;
      ballY = random(height);
    
    }
  }

  


}