ArrayList<Line> lines;
GUI g;

void setup() {
  fullScreen();
  background(0);
  lines = new ArrayList<Line>();
  g = new GUI();
}

void draw() {
  background(0);
  lines.add(new Line());
  for ( Line l : lines) { //Using all of the commands for every single line. Just like a normal for-loop with arraylists.
    l.grow();
    l.show();
    l.debug();
  }
  //g.XCoord(); //This command is useless, unless it's only one line, that you're checking. 
}