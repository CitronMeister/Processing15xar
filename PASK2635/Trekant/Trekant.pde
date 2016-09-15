int count;

//Circle
float d = 20;

//Vinkel
float vinkel;

//Corners
float cornX1;
float cornY1;
float cornX2;
float cornY2;
float cornX3;
float cornY3;
float areal;

void setup() {
  background(0);
  size(500,500);
}

void draw() {
}

void mouseClicked() {
  count = count+1;
  if (count==1) {
    cornX1 = mouseX;
    cornY1 = mouseY;
    ellipse(mouseX,mouseY,d,d);
  } 
  
  if(count==2) {
    cornX2 = mouseX;
    cornY2 = mouseY;
    ellipse(mouseX,mouseY,d,d);
  } 
  
  if(count==3) {
    cornX3 = mouseX;
    cornY3 = mouseY;
    
    ellipse(cornX3,cornY3,d,d);
    background(0);
    triangle(cornX1,cornY1,cornX2,cornY2,cornX3,cornY3);
    areal = Areal(cornX1,cornY1,cornX2,cornY2,cornX3,cornY3);
    text(areal,10,30);
    vinkel = Vinkel(cornX1,cornY1,cornX2,cornY2,cornX3,cornY3);
    text(vinkel,10,50);
    println(vinkel);
  }
  if (count==4) {
    background(0);
    count = 0;
  }
}