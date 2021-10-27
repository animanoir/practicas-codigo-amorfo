//https://www.youtube.com/watch?v=KWoJgHFYWxY

int c = 15;

float x;
float y;

float tamano = 10;

void setup(){
  background(255);
  size(800,800);
  ellipseMode(CENTER);
  noStroke();
  frameRate(60);
}

void draw(){
  translate(width/2,height/2);
 
  
  float r = c * sqrt(frameCount);
  x = r * cos(frameCount+137.5);
  y = r * sin(frameCount+137.5); 
   fill(random(255),random(255),random(255),100);
  ellipse(x,y, tamano, tamano);
  println(r);
  tamano+=0.1;
 }


void mouseReleased() {
saveFrame(random(100)+".png");
 }
 
