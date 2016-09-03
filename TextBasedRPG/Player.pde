public class Player {
  int healthPoints = 10;
  int currentHealth;
  int gold;
  int mana;
  int level;
  
  // armour values
  int helmet = 2;
  int body = 0;
  int legs = 5;
  int gloves = 0;
  int boots = 0;
  
  int armorBonus = helmet + body + legs + gloves + boots;
  // weapon
  int weaponDamage;
  // int weaponLevel; if needed :P
  int weaponType; // if needed :P
  
  
  
  
  void playerHealth() {
   healthPoints = healthPoints + armorBonus;
   //text("hello world!", width/2, height/2);
 }
  
  
  

}