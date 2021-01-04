class Lygte{
  
  float xStoerrelse, yStoerrelse;
  
  Lygte(float lygteStoerrelse) {
    
    xStoerrelse = lygteStoerrelse;
    yStoerrelse = lygteStoerrelse;
    
  }
  
  void tegnLygte(float x, float y) {
    
    fill(255, 255, 0);
    triangle(x, y, x + xStoerrelse, y + yStoerrelse, x + xStoerrelse, y - yStoerrelse);
  }
}
