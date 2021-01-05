class Lygte{
  
  float xStoerrelse, yStoerrelse;
  
  Lygte(float lygte_Stoerrelse) {
    
    xStoerrelse = lygte_Stoerrelse;
    yStoerrelse = lygte_Stoerrelse;
    
  }
  
  void tegnLygte(float bil_X, float xOffSet, float y, boolean erModHoejre) {
    
    fill(255, 255, 0); //<>//
    
    float xLaengde = xStoerrelse;
    
    if(!erModHoejre) {
      xOffSet *= -1;
      xLaengde *= -1;
    }
    
    float x = bil_X + xOffSet;
    
    triangle(x, y, x + xLaengde, y + yStoerrelse, x + xLaengde, y - yStoerrelse);
    
  }
}
