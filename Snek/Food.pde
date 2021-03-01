class Food{
  PVector pos;
  int r, g, b;
  
  Food(int a, int b, int scl){
    pos = new PVector(floor(random(a)), floor(random(b)));
    pos.mult(scl);
    r = floor(random(255));
    g = floor(random(255));
    b = floor(random(255));
  }
  
  void relocate(int a, int b, int scl){
    pos.x=floor(random(a));
    pos.y=floor(random(b));
    pos.mult(scl);
    r = floor(random(255));
    g = floor(random(255));
    b = floor(random(255));
  }
  
  void show(int scl){
   fill(r, g, this.b); 
   rect(pos.x, pos.y, scl, scl);
   println(pos.x + " " + pos.y);
  }
}