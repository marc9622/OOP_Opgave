class Bil{
  
  float x, y;
  float startX, startY;
  float xStoerrelse, yStoerrelse;
  float hastighed;
  color farve;
  boolean erModHoejre;
  
  Hjul[] hjul = new Hjul[4];
  Lygte[] lygte = new Lygte[2];
  
  Bil(float bil_X, float bil_Y, float bil_Hastighed, float bil_Stoerrelse, float hjul_Stoerrelse, float lygte_Stoerrelse, color bil_Farve, boolean lygte_ErModHoejre) {
    
    for(int i = 0; i < hjul.length; i++) {
      hjul[i] = new Hjul(hjul_Stoerrelse);
    }
    
    for(int i = 0; i < lygte.length; i++) {
      lygte[i] = new Lygte(lygte_Stoerrelse);
    }
    
    startX = bil_X;
    startY = bil_Y;
    
    xStoerrelse = bil_Stoerrelse;
    yStoerrelse = bil_Stoerrelse / 2;
    
    farve = bil_Farve;
    
    hastighed = bil_Hastighed;
    
    if (!lygte_ErModHoejre)
      hastighed *= -1;
      
    erModHoejre = lygte_ErModHoejre;
  }
  
  void tegnBil() {
    
    y = startY * height;
    x = getPos();
    
    tegnLygte();
    tegnHjul();
    
    fill(farve);    
    rect(x, y, xStoerrelse, yStoerrelse);
  }
    
  void tegnLygte() {
    
    lygte[0].tegnLygte(x, xStoerrelse / 2, y + yStoerrelse / 3, erModHoejre);
    lygte[1].tegnLygte(x, xStoerrelse / 2, y - yStoerrelse / 3, erModHoejre);
  }
  
  void tegnHjul() {
    
    hjul[0].tegnHjul(x + xStoerrelse / 3, y + yStoerrelse / 2);
    hjul[1].tegnHjul(x - xStoerrelse / 3, y + yStoerrelse / 2);
    hjul[2].tegnHjul(x + xStoerrelse / 3, y - yStoerrelse / 2);
    hjul[3].tegnHjul(x - xStoerrelse / 3, y - yStoerrelse / 2);
  }
  
  float getPos() {
    
    //Der ligger et GeoGebra i mappen, der viser hvordan denne funktion virker.
    float pos = millis() * hastighed / width + startX + noise(millis() / 3000f * hastighed);
    pos = (pos - floor(pos)) * width;
    //Tager hensyn til bilens xStoerrelse, så man ikke ser den telepotere
    pos += (pos / width - floor(pos / width)) * (xStoerrelse + 100) - (xStoerrelse + 100) / 2;
        
    return pos;
  }
}
