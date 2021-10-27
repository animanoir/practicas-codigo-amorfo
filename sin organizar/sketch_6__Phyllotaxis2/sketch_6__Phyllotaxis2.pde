//https://www.youtube.com/watch?v=KWoJgHFYWxY

int n = 4000;
int c = 5;

float x;
float y;

int tamano = 15;

void setup(){
  background(255);
  size(1200,1200, P3D);
  noStroke();
  ellipseMode(CENTER);
  frameRate(60);
}

void draw(){
  translate(width/2,height/6);
  fill(0);
  rotateX(cos(frameCount*3)); //gira alrededor de eje Y rotateY
  rotateY(sin(frameCount));
  
for (float i = 0; i < n; i++){
  float r = c * sqrt(i);
  x = r * cos(i*137.5);
  y = r * sin(i*137.5); 
  ellipse(x*sin(frameCount),y*131.7, random(3), random(3));
 }

saveFrame("filo22/capa####.png");
}
