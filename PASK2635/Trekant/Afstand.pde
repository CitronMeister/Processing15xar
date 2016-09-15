float Afstand(float x0,float y0,float x1,float y1) {
  float distance;
  distance = sqrt(pow(x1-x0,2)+pow(y1-y0,2));
  return distance;
}