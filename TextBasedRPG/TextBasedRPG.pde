// main file where we call everything. also the file defining the "engine"
BackgroundController BGC;
Player player;
Shop shop;
int mouseClicked = 0;

void setup() {
  fullScreen();
  player = new Player();
  BGC = new BackgroundController();
  shop = new Shop();
  player.playerHealth();
}
void draw() {
  background(0);
  text("Health: " + player.healthPoints, width/2, height/2);
  if(mouseClicked == 1) {
    mousepress();
  }
}
// for testing variables :P
void mousePressed() {
  mouseClicked = 1;
}
void mousepress() {
  //player.healthPoints = player.healthPoints + 1;
  //BGC.introBackground();
  shop.displayShop();
  

}