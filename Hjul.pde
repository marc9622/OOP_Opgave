class Hjul {
  
  float stoerrelse;
  
  Hjul(float hjulStoerrelse) {
    
    stoerrelse = hjulStoerrelse;
    
  }
  
  void tegnHjul(float x, float y, float xStoerrelse, float yStoerrelse) {
    
    rect(x, y, xStoerrelse, yStoerrelse);
    
  }
}
