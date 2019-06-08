class Circles {
  int x;
  int y;
  int sw;
  int sh;
  int mw;
  int mh;
  int lw;
  int lh;
  int xlw;
  int xlh;

  Circles(int x, int y, int sw, int sh, int mw, int mh, int lw, int lh, int xlw, int xlh) {
    this.x = x;
    this.y = y;
    this.sw = sw;
    this.sh = sh;
    this.mw = mw;
    this.mh = mh;
    this.lw = lw;
    this.lh = lh;
    this.xlw = xlw;
    this.xlh = xlh;
  }

  void draw() {
    noFill();
    stroke(255);
    strokeWeight(2);
    ellipse(x, y, sw, sh);
    ellipse(x, y, mw, mh);
    ellipse(x, y, lw, lh);
    ellipse(x, y, xlw, xlh);
  }
}