//Simply reads the x and y cord of the mouse - this is used in other classes

class mouseCordinate {
  float xCord;
  float yCord;
  
  void mouseCord() {
    xCord = mouseX;
    yCord = mouseY;
  }
}