int[] vect = new int[2];
int x, y;

void setup() {
  size(800, 600);

  x = int(random(0, 800));
  y = int(random(0, 600));

  vect[0] = x;
  vect[1] = y;
}

void draw() {
  background(255);
  noStroke();
  fill(0, 0, 255);
  circle(vect[0], vect[1], 50);
  float h = sqrt((mouseX - vect[0])*(mouseX - vect[0]) + (mouseY - vect[1])*(mouseY - vect[1]));
  println(h);

  if (h <= 50) {
    x = int(random(0, 800));
    y = int(random(0, 600));
    vect[0] = x;
    vect[1] = y;
  }
}
