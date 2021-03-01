import peasy.*;

double a = 28;
double b = 10;
double c = 8.0/3.0;

float x = 0.1;
float y = 0;
float z = 0;

ArrayList<PVector> points = new ArrayList<PVector>();

PeasyCam cam;

void setup(){
 size(800, 600, P3D); 
 colorMode(HSB);
 cam = new PeasyCam(this, 500);
 print("hi");
}

void draw(){
   colorMode(HSB);
   background(0);
   
   //atractor
   double dt = 0.01;
   double dx = (b * (y - x)) * dt;
   double dy = (x * (a - z) - y) * dt;
   double dz = (x * y - c * z) * dt;
   
   x += dx;
   y += dy;
   z += dz;
   print(dx, dy, dz);
   points.add(new PVector(x,y,z));
   
   //dibujo
   translate(0, 0, -80);
   scale(5);
   stroke(255);
   noFill();
   
   float hu = 0;
   beginShape();
   for (PVector v : points){
     stroke(hu, 255, 255);
     vertex(v.x, v.y, v.z);
     
     hu += 10 * dt;
     hu %= 255;
   }
  endShape();
  colorMode(RGB);
  translate(x,y,z);
  stroke(255,255,255);
  sphere(1);
}