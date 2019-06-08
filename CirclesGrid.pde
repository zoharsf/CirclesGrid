int h = 800;
int w = 800;
int distance = 100;
int mul = 5;
ArrayList<Circles> c = new ArrayList();

void setup() {
  size(600, 600);
  for (int i=0; i<h/distance; i++) {
    for (int j=0; j<w/distance; j++) {
      c.add(new Circles(i*distance+distance/2, j*distance+distance/2, 
        (int)(random(1, 10)/2)*1*mul, (int)(random(1, 10)/2)*1*mul, 
        (int)(random(1, 10)/2)*2*mul, (int)(random(1, 10)/2)*2*mul, 
        (int)(random(1, 10)/2)*3*mul, (int)(random(1, 10)/2)*3*mul, 
        (int)(random(1, 10)/2)*4*mul, (int)(random(1, 10)/2)*4*mul));
    }
  }
}

void draw() {
  int rounds = 0;
  rounds++;
  background(0);
  for (Circles cir : c) {
    cir.draw();
  }
  int index=(int)(random(0, c.size()));
  Circles replacement = c.get(index);
  int whatToChange = (int)random(0, 7);
  switch (whatToChange) {
  case 0:
    replacement = new Circles(
      replacement.x, replacement.y, 
      (int)(random(1, 10)/2)*1*mul, replacement.sh, 
      replacement.mw, replacement.mh, 
      replacement.lw, replacement.lh, 
      replacement.xlw, replacement.xlh);
    break;
  case 1:
    replacement = new Circles(
      replacement.x, replacement.y, 
      replacement.sw, (int)(random(1, 10)/2)*1*mul, 
      replacement.mw, replacement.mh, 
      replacement.lw, replacement.lh, 
      replacement.xlw, replacement.xlh);
    break;
  case 2:
    replacement = new Circles(
      replacement.x, replacement.y, 
      replacement.sw, replacement.sh, 
      (int)(random(1, 10)/2)*2*mul, replacement.mh, 
      replacement.lw, replacement.lh, 
      replacement.xlw, replacement.xlh);
    break;
  case 3:
    replacement = new Circles(
      replacement.x, replacement.y, 
      replacement.sw, replacement.sh, 
      replacement.mw, (int)(random(1, 10)/2)*2*mul, 
      replacement.lw, replacement.lh, 
      replacement.xlw, replacement.xlh);
    break;
  case 4:
    replacement = new Circles(
      replacement.x, replacement.y, 
      replacement.sw, replacement.sh, 
      replacement.mw, replacement.mh, 
      (int)(random(1, 10)/2)*3*mul, replacement.lh, 
      replacement.xlw, replacement.xlh);
    break;
  case 5:
    replacement = new Circles(
      replacement.x, replacement.y, 
      replacement.sw, replacement.sh, 
      replacement.mw, replacement.mh, 
      replacement.lw, (int)(random(1, 10)/2)*3*mul, 
      replacement.xlw, replacement.xlh);
    break;
  case 6:
    replacement = new Circles(
      replacement.x, replacement.y, 
      replacement.sw, replacement.sh, 
      replacement.mw, replacement.mh, 
      replacement.lw, replacement.lh, 
      (int)(random(1, 10)/2)*4*mul, replacement.xlh);
    break;
  case 7:
    replacement = new Circles(
      replacement.x, replacement.y, 
      replacement.sw, replacement.sh, 
      replacement.mw, replacement.mh, 
      replacement.lw, replacement.lh, 
      replacement.xlw, (int)(random(1, 10)/2)*4*mul);
    break;
  default:
    replacement = new Circles(
      replacement.x, replacement.y, 
      replacement.sw, replacement.sh, 
      replacement.mw, replacement.mh, 
      replacement.lw, replacement.lh, 
      replacement.xlw, replacement.xlh);
    break;
  }
  c.set(index, replacement);
  //delay((int)random(1000, 5000));
  //save("circles_"+rounds+".gif");
}