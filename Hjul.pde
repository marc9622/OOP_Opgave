class Hjul {
  
  float xStoerrelse, yStoerrelse;
  
  Hjul(float hjul_Stoerrelse) {
    
    xStoerrelse = hjul_Stoerrelse;
    yStoerrelse = hjul_Stoerrelse;
    
  }
  
  void tegnHjul(float x, float y) {
    
    fill(100);
    rect(x, y, xStoerrelse, yStoerrelse);
    
  }
}
