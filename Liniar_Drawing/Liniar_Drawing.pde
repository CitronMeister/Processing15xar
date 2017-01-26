ArrayList<Line> lines;

void setup() {
  fullScreen();
  background(0);
  lines = new ArrayList<Line>();
  frameRate(120);
}

void draw() {
  background(0);
  lines.add(new Line());
  for ( Line l : lines) { //Using all of the commands for every single line. Just like a normal for-loop with arraylists.
    l.grow();
    l.show();
    l.spawn();
  }
}