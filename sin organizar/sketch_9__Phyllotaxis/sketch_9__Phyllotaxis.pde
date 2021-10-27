//https://www.youtube.com/watch?v=KWoJgHFYWxY

int c = 20;

float x;
float y;

float tamano = 100;

void setup(){
  background(0);
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
fill(random(100),random(100),100,10);
  stroke(255,255,255,10);
  beginShape();
  vertex(x,y);
  vertex(random(width),random(height));
  vertex(mouseX,mouseY);
  endShape(CLOSE);

  tamano+=1;
 }


void mouseReleased() {
saveFrame(random(100)+".png");
 }
 
