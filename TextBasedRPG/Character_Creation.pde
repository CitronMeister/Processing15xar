public class characterCreation {
  int gender = 0;

  void selectClass() {
    
    
  }
  void selectName() {
    
  
  }
  void selectGender() {
      if(gender == 0) {
        text("select a gender", width/2, height/2);
        
      }
      else if(gender == 1) {
         text("You have selected male!", width/2, height/2);
      }
      else if(gender == 2) {
         text("You have selected female!", width/2, height/2);
      }
      else {
        gender = 0;
      }
  }
}