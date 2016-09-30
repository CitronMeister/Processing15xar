class drawColor {
  //Varibales
  int mouseover;
  int popup;

  
  
  //Drawing colors rect
  void drawBox() {
    rect(0, 0, width/6, height/4);
  }


  void mouseOver() {
    
    //if you mouse over the popup window when its popup keep the window up.
    if (mouseover == 1 && mouseCord.xCord > width/6 && mouseCord.xCord < (width/6)*2 && mouseCord.yCord > 0 && mouseCord.yCord < height/2 && clear.started == true) {
      popup = 1;
    } else {
      mouseover = 0;
      popup = 0;
    }

    //if mouse is insite the "color" area make a popup window
    if (mouseCord.xCord > 0 && mouseCord.xCord < width/6 && mouseCord.yCord > 0 && mouseCord.yCord < height/4 && clear.started == true) {
      mouseover = 1;
      popup = 1;
      pushStyle();
      strokeWeight(5);
      rect(0, 0, width/6, height/4);
      popStyle();       

    }
    
    
    //popup window
    if (popup == 1) {
      //the big box
      pushStyle();
      rect(width/6, 0, width/6, height/2);
      popStyle();
      
      //color 1
      pushStyle();
      rect(width/6, 0, width/6, (height/2)/15);
      popStyle();
      
      //color 2
      pushStyle();
      rect(width/6, (height/2)/15, width/6, (height/2)/15);
      popStyle();
      
      //color 3
      pushStyle();
      rect(width/6, ((height/2)/15)*2, width/6, (height/2)/15);
      popStyle();
      
      //color 4
      pushStyle();
      rect(width/6, ((height/2)/15)*3, width/6, (height/2)/15);
      popStyle();
      
      //color 5
      pushStyle();
      rect(width/6, ((height/2)/15)*4, width/6, (height/2)/15);
      popStyle();
      
      //color 6
      pushStyle();
      rect(width/6, ((height/2)/15)*5, width/6, (height/2)/15);
      popStyle();
      
      //color 7
      pushStyle();
      rect(width/6, ((height/2)/15)*6, width/6, (height/2)/15);
      popStyle();
      
      //color 8
      pushStyle();
      rect(width/6, ((height/2)/15)*7, width/6, (height/2)/15);
      popStyle();
      
      //color 9
      pushStyle();
      rect(width/6, ((height/2)/15)*8, width/6, (height/2)/15);
      popStyle();
      
      //color 10
      pushStyle();
      rect(width/6, ((height/2)/15)*9, width/6, (height/2)/15);
      popStyle();
      
      //color 11
      pushStyle();
      rect(width/6, ((height/2)/15)*10, width/6, (height/2)/15);
      popStyle();
      
      //color 12
      pushStyle();
      rect(width/6, ((height/2)/15)*11, width/6, (height/2)/15);
      popStyle();
      
      //color 13
      pushStyle();
      rect(width/6, ((height/2)/15)*12, width/6, (height/2)/15);
      popStyle();
      
      //color 14
      pushStyle();
      rect(width/6, ((height/2)/15)*13, width/6, (height/2)/15);
      popStyle();
      
      //color 15
      pushStyle();
      rect(width/6, ((height/2)/15)*14, width/6, (height/2)/15);
      popStyle();
      //if you click on the smaller rects then change color.
      
      
      
    }
  }
}