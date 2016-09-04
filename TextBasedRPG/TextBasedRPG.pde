// main file where we call everything. also the file defining the "engine"
BackgroundController BGC;
Player player;
Shop shop;
characterCreation CC;
Intro intro;
int mouseClicked = 0;

void setup() {
  fullScreen();
  intro = new Intro();
  CC = new characterCreation();
  player = new Player();
  BGC = new BackgroundController();
  shop = new Shop();
  player.playerHealth();
}


void draw() {
  // intro stuff
  BGC.introBackground();
  intro.intro0();
  
  
  
  
}




// for testing variables :P
void mousePressed() {
  mouseClicked = 1;
}
void mousepress() {
  //player.healthPoints = player.healthPoints + 1;
  //BGC.introBackground();
  //shop.displayShop();
  BGC.selectClassBackground();
  CC.selectGender();
}