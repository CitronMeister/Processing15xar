float Areal(float x0,float y0,float x1,float y1,float x2,float y2) {
  float a = Afstand(x0,y0,x1,y1);
  float b = Afstand(x1,y1,x2,y2);
  float c = Afstand(x2,y2,x0,y0);
  float s = (a+b+c)/2;
  float areal = sqrt(s*(s-a)*(s-b)*(s-c));
  return areal;
}