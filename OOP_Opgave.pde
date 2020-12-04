Bil gustavsBil;

void setup() {
  
  size(1000, 500);
  
  gustavsBil = new Bil(width/2, height/2, 100, 50, 1, 10);
  
  rectMode(CENTER);
}

void draw() {
  background(0);
  
  gustavsBil.tegnBil();
}
