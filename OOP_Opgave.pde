Bil gustavsBil, marcusBil;

void setup() {
  
  size(1000, 500);
  frameRate(144);
  
  //Start-X (0-1), start-y (0-heigth), hastighed, bil-stoerrelse, hjul-stoerrelse, lygte-stoerrelse, bil-farve
  
  gustavsBil = new Bil(0, 0.3 * height, 1, 250, 50, 75, color(255, 0, 0));
  marcusBil  = new Bil(0.5, 0.7 * height, 1.20, 150, 75, 50, color(0, 0, 255));
  
  rectMode(CENTER);
  noStroke();
}

void draw() {
  background(0);
  
  gustavsBil.tegnBil();
  marcusBil.tegnBil();
}
