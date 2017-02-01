int numLines = 4000;


/*--------- Arrays -----------*/
ArrayList<PVector> spots;

float[] linesXStart;
float[] linesXEnd;
float[] linesY;
Line[] lines;


void setup() {
  size(537, 529);

  /*-------- Load Image --------*/
  PImage img = loadImage("doge.jpeg");

  /*------------- Pixels -------------*/
  loadPixels();


  background(img);


  /*------------ Creating the Arrays & Spawning Lines ------------*/
  spots = new ArrayList<PVector>();
  lines = new Line[numLines];
  linesY = new float[lines.length];
  linesXStart = new float[lines.length];
  linesXEnd = new float[lines.length];
  
  for(int x = 0; x < img.width; x++) {
    for(int y = 0; y < img.height; y++) {
      spots.add(new PVector(x, y));
    }
  }
  println(spots.size());
  
  for (int i = 0; i < lines.length; i++) {
    lines[i] = new Line(); 
    linesXStart[i] = lines[i].xS;
    linesXEnd[i] = lines[i].xE;
    linesY[i] = lines[i].y;
  }
}

void draw() {
  
  /*--------- Calling the Line functions for every line ---------*/
  for (int i = 0; i < lines.length; i++) {
    lines[i].display();
    lines[i].grow();
  }
}