Food food, food2, food3;
Snake s;
int scl = 20;

void setup() {
  size(600, 600);
  s = new Snake();
  frameRate(10);
  pickLocation();
}

void pickLocation() {
  int cols = width/scl;
  int rows = height/scl;
  food = new Food(cols, rows, scl);
  food2 = new Food(cols, rows, scl);
  food3 = new Food(cols, rows, scl);
}

void draw() {
  int cols = width/scl;
  int rows = height/scl;
  background(51);

  if (s.eat(food)) {
    food.relocate(cols, rows, scl);
  }
  if (s.eat(food2))
    food2.relocate(cols, rows, scl);
  if (s.eat(food3))
    food3.relocate(cols, rows, scl);
  s.death();
  s.update();
  s.show();
  food.show(scl);
  food2.show(scl);
  food3.show(scl);
}


void keyPressed() {
  if (keyCode == UP && s.yspeed != 1) {
    s.dir(0, -1);
  } else if (keyCode == DOWN && s.yspeed != -1) {
    s.dir(0, 1);
  } else if (keyCode == RIGHT && s.xspeed != -1) {
    s.dir(1, 0);
  } else if (keyCode == LEFT && s.xspeed != 1) {
    s.dir(-1, 0);
  }
}