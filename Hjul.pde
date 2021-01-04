class Hjul {
  
  float xStoerrelse, yStoerrelse;
  
  Hjul(float hjulStoerrelse) {
    
    xStoerrelse = hjulStoerrelse;
    yStoerrelse = hjulStoerrelse;
    
  }
  
  void tegnHjul(float x, float y) {
    
    fill(100);
    rect(x, y, xStoerrelse, yStoerrelse);
    
  }
}
