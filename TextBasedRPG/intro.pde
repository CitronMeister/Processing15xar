public class Intro {
  boolean skipIntro = true;
  void intro1() {
    if (skipIntro == false) {
      
    }
    else {
      intro2();
    }
  }
  void intro2() {
    if(skipIntro == true) {
       
    }
  }
}