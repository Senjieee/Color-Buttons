color red = color(255, 0, 0);
color blue = color(24, 0, 255);
color yellow = color(255, 247, 0);
color green = color(0, 255, 44);
color orange = color(255, 132, 0);
color purple = color(195, 0, 255);
color black = color(0);
color white = color(255);
color tactile = color(209, 199, 107);
color bkg = white;

void setup() {
  size(800, 800);
  strokeWeight(3);
}

void draw() {
  background(bkg);
  tactileCircle(200, 200, 100, red);
  tactileCircle(400, 200, 100, blue);
  tactileCircle(600, 200, 100, yellow);
  tactileSquare(150, 400, 100, 100, green);
  tactileSquare(350, 400, 100, 100, orange);
  tactileSquare(550, 400, 100, 100, purple);
}

boolean touchingSquare(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    return true;
  } else {
    return false;
  }
}

boolean touchingCircle(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    return true;
  } else {
    return false;
  }
}

void tactileSquare(int x, int y, int w, int h, color f) {
  fill(f);
  if (touchingSquare(x, y, w, h)) {
    stroke(tactile);
  } else {
    stroke(black);
  }
  rect(x, y, w, h);
}

void tactileCircle(int x, int y, int r, color f) {
  fill(f);
  if (touchingCircle(x, y, r)) {
    stroke(tactile);
  } else {
    stroke(black);
  }
  circle(x, y, r);
}

void mousePressed() {
  if (touchingCircle(200, 200, 100)) {
    bkg = red;
  }
  if (touchingCircle(400, 200, 100)) {
    bkg = blue;
  }
  if (touchingCircle(600, 200, 100)) {
    bkg = yellow;
  }
  if (touchingSquare(150, 400, 100, 100)) {
    bkg = green;
  }
  if (touchingSquare(350, 400, 100, 100)) {
    bkg = orange;
  }
  if (touchingSquare(550, 400, 100, 100)) {
    bkg = purple;
  }
}
