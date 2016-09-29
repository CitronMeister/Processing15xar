//Starts the program with background and writes the welcome text
class startup {
  void startScreen() {
    pushStyle();
    fill(0);
    textSize(24);
    textAlign(CENTER);
    text("Welcome to Paint.HTX - Press anywhere to start", width/2, height/12);
    popStyle();
  }
}