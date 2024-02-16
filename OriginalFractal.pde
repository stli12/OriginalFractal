int t = 30;

public void setup() {
  size(900, 900);
}

public void draw() {
  background(0);
  myFractal(50, 400, 30, 20, 100);
}

public void myFractal(double r, double dRadians, double w, double h, int m) {
  if (m <= 10) {
    double x = r * Math.cos(dRadians);
    double y = r * Math.sin(dRadians);
    t = (t <= 70) ? t + 1 : t - 1;
    fill(110, 0, 255, t);
    strokeWeight(4);
    ellipse(500 + (int)x, 500 + (int)y, (int)w, (int)h);
  } else {
    noFill();
    double x = r * Math.cos(dRadians);
    double y = r * Math.sin(dRadians);
    t = (t <= 70) ? t + 1 : t - 1;
    fill(110, 0, 255, t);
    strokeWeight(4);
    ellipse(400 + (int)x, 400 + (int)y, (int)w, (int)h);
    myFractal(r + 5, dRadians - 9, w + 2, h + 2, m - 1);
  }
}
