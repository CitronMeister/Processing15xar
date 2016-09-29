class drawColor {





}

void setup(){
fullScreen();


}
//Drawing colors rect
void draw(){
  rect(0,0,width/6,height/4);
  
  
}

//if mouseClicked and the mouse is inside the area, when draw a new rect.
void mouseClicked() {
  
  if(mouseCord.xCord > 0 && mouseCord.xCord < width/6 && mouseCord.yCord > 0 && mouseCord.yCord < height/4){
    rect(width/6,0,width/6,height/2);
    
    //if true draw 15 rects inside the rect that just poped up.
    rect(width/6,0,width/(6*7),height/(11*2));
    
    
    
    //if you click on the smaller rects then change color.
    
    
  }
  
  
}