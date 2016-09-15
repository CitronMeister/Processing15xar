float Vinkel(float x1,float y1,float x2,float y2,float x3,float y3) {
  float a = Afstand(x2,y2,x3,y3);
  float b = Afstand(x3,y3,x1,y1);
  float c = Afstand(x1,y1,x2,y2);
  float Cosinus = cos((pow(b,2)+pow(c,2)-pow(a,2))/(2*b*c));
  float VinkelRadian = acos(Cosinus);
  float Vinkel = VinkelRadian/(2*PI)*360;
  
  return Vinkel;
}