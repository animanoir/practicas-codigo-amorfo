//https://www.youtube.com/watch?v=KWoJgHFYWxY

int c = 15;

float x;
float y;

int tamano = 15;

void setup(){
  background(80);
  size(800,800);
  noStroke();
  ellipseMode(CENTER);
  frameRate(18);
}

void draw(){
  translate(width/2,height/2);
  fill(noise(10),noise(255),255);
  
  float r = c * sqrt(frameCount);
  x = r * cos(frameCount+137.5);
  y = r * sin(frameCount+137.5); 
  ellipse(x,y, tamano, tamano);
 }


void mouseReleased() {
saveFrame("tx.png");
 }
 
