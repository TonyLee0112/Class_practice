Cutecat cat, cat2;
Simpson sim, sim2;

void setup() {
  size(1000, 1000);
  cat = new Cutecat(random(width), random(height), 100);
  cat2 = new Cutecat(width/2,height/2,100);
  
  sim = new Simpson(width/2,height/2);
  sim2 = new Simpson(width/2,height/2);
}

void draw() {
  background(0, 128, 255);
  
  cat.display();
  
  cat2.act();
  cat2.display();
  
  sim.act();
  sim.display();
  
  sim2.move(mouseX,mouseY);
  sim2.display();
}
void keyPressed() {
  if (keyCode == 'W') {
    cat.y -= 2 * cat.vy;
  } else if (keyCode == 'S') {
    cat.y += 2 * cat.vy;
  } else if (keyCode == 'A') {
    cat.x -= 2 * cat.vx;
  } else if (keyCode == 'D') {
    cat.x += 2 * cat.vx;
  }
}
