float radio = 1;
int centX; 
int centY;
float x, y;
float lastX = -999;
float lastY = -999;


void setup() {
  frameRate(60);
  size(1000, 1000 );
  background(0);
  centX = width/2;
  centY = height/2;
  smooth(8);
  stroke(255);
  strokeWeight(1);
}

void draw() {  
  background(0);
  for (float ang = 0; ang <= 360; ang+=5) {
    
   float rad = radians(ang);
   radio+=0.05;
   x = centX + (radio * cos(rad));
   y = centY + (radio * sin(rad));
   line(x, y, mouseX, mouseY);
  }
}
