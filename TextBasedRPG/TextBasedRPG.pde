// main file where we call everything. also the file defining the "engine"

Player player;

void setup() {
  size(500, 500);
  player = new Player();
  
}
void draw() {
  player.playerHealth();

}