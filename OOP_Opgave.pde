Bil gustavsBil, gustavsBil2, marcusBil, marcusBil2;

void setup() {
  
  size(1000, 500);
  frameRate(144);
  surface.setResizable(true);
  
  //Start-X (0-1), Start-Y (0-1), hastighed, bil-stoerrelse, hjul-stoerrelse, lygte-stoerrelse, bil-farve, mod højre
  
  gustavsBil = new Bil(0, 0.1, 0.5, 125, 25, 25, color(0, 255, 0), false);
  gustavsBil2 = new Bil(0, 0.35, 0.8, 75, 25, 50, color(255, 0, 0), false);
  marcusBil  = new Bil(0.5, 0.65, 1.5, 100, 50, 50, color(0, 0, 255), true);
  marcusBil2  = new Bil(0.5, 0.9, 0.3, 50, 25, 20, color(128, 64, 0), true);
  
  rectMode(CENTER);
}

void draw() {
  background(0);
  
  noStroke();
  
  gustavsBil.tegnBil();
  gustavsBil2.tegnBil();
  marcusBil.tegnBil();
  marcusBil2.tegnBil();
  
  stroke(255);
  strokeWeight(10);
  
  line(0, height / 2, width, height / 2);
}
