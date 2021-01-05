class Bil{
  
  float x, y;
  float startX;
  float xStoerrelse, yStoerrelse;
  float hastighed;
  
  color farve;
  
  Hjul[] hjul = new Hjul[4];
  Lygte[] lygte = new Lygte[2];
  
  Bil(float bilX, float bilY, float bilHastighed, float bilStoerrelse, float hjulStoerrelse, float lygteStoerrelse, color bilFarve) {
    
    for(int i = 0; i < hjul.length; i++) {
      hjul[i] = new Hjul(hjulStoerrelse);
    }
    
    for(int i = 0; i < lygte.length; i++) {
      lygte[i] = new Lygte(lygteStoerrelse);
    }
    
    x = bilX;
    y = bilY;
    startX = bilX;
    xStoerrelse = bilStoerrelse;
    yStoerrelse = bilStoerrelse / 2;
    
    farve = bilFarve;

    hastighed = bilHastighed;
  }
  
  void tegnBil() {
    
    x = getPos();
    
    tegnLygte();
    tegnHjul();
    
    fill(farve);    
    rect(x, y, xStoerrelse, yStoerrelse);
  }
    
  void tegnLygte() {
    
    lygte[0].tegnLygte(x + xStoerrelse / 2, y + yStoerrelse / 3);
    lygte[1].tegnLygte(x + xStoerrelse / 2, y - yStoerrelse / 3);
  }
  
  void tegnHjul() {
    
    hjul[0].tegnHjul(x + xStoerrelse / 3, y + yStoerrelse / 2);
    hjul[1].tegnHjul(x - xStoerrelse / 3, y + yStoerrelse / 2);
    hjul[2].tegnHjul(x + xStoerrelse / 3, y - yStoerrelse / 2);
    hjul[3].tegnHjul(x - xStoerrelse / 3, y - yStoerrelse / 2);
  }
  
  float getPos() {
    
    float pos = millis() * hastighed / width + startX;
    pos = (pos - floor(pos)) * width;
    //Tager hensyn til bilens xStoerrelse, så man ikke ser den telepotere
    pos += (pos / width - floor(pos / width)) * (xStoerrelse + 100) - (xStoerrelse + 100) / 2;
        
    return pos;
  }
}
