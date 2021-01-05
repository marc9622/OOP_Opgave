Bil gustavsBil, gustavsBil2, marcusBil, marcusBil2;

void setup() {
  
  size(1000, 500);
  frameRate(144);
  
  //Start-X (0-1), start-y (0-heigth), hastighed, bil-stoerrelse, hjul-stoerrelse, lygte-stoerrelse, bil-farve
  
  gustavsBil = new Bil(0, 0.15 * height, 0.5, 150, 50, 25, color(0, 255, 0));
  gustavsBil2 = new Bil(0, 0.4 * height, 0.8, 100, 50, 50, color(255, 0, 0));
  marcusBil  = new Bil(0.5, 0.65 * height, 1.5, 100, 50, 50, color(0, 0, 255));
  marcusBil2  = new Bil(0.5, 0.9 * height, 0.3, 50, 25, 20, color(128, 64, 0));

  
  
  rectMode(CENTER);
  noStroke();
}

void draw() {
  background(0);
  
  gustavsBil.tegnBil();
  gustavsBil2.tegnBil();
  marcusBil.tegnBil();
  marcusBil2.tegnBil();
}
