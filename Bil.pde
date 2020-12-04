class Bil{
  
  float x, y;
  float xStoerrelse, yStoerrelse;
  float hastighed;
  
  Hjul hjul1;
  Hjul hjul2;
  Hjul hjul3;
  Hjul hjul4;
  
  Bil(float bilX, float bilY, float bilXStoerrelse, float bilYStoerrelse, float bilHastighed, float hjulStoerrelse) {
    
    hjul1 = new Hjul(hjulStoerrelse);
    
    x = bilX;
    y = bilY;
    xStoerrelse = bilXStoerrelse;
    yStoerrelse = bilYStoerrelse;

    hastighed = bilHastighed;
  }
  
  void tegnBil() {
    
    rect(x, y, xStoerrelse, yStoerrelse);
    //hjul1.tegnHjul();
    
    x += hastighed;
  }
}
