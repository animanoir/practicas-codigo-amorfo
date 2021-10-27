int n = 4000;
int c = 5;

float x;
float y;

int tamano = 15;

void setup(){
  background(231, 239, 197);
  size(1000,1000, P3D);
  noStroke();
  ellipseMode(CENTER);
  frameRate(60);
}

void draw(){
  translate(width/4,height/4);
  fill(random(10), random(10), random(10), 100);
  rotateX(cos(frameCount)*0.05); //gira alrededor de eje Y rotateY
  rotateY(sin(frameCount)*0.5);
  rotateZ(frameCount*0.01);
  
for (float i = 0; i < n; i++){
  float r = c * sqrt(i);
  x = r * cos(i*137.5);
  y = r * sin(i*137.5); 
  ellipse(x*log(2*y)/2,y*exp(x/2)/2, c * random(3), c * random(3));
 }
 
   translate(width/2,height/2);
  fill(random(255), random(10), random(10), 100);
  rotateX(cos(frameCount)*0.05); //gira alrededor de eje Y rotateY
  rotateY(sin(frameCount)*0.5);
  rotateZ(frameCount*0.01);
  
for (float i = 0; i < n; i++){
  float r = c * sqrt(i);
  x = r * cos(i*137.5)/2;
  y = r * sin(i*137.5)/2; 
  ellipse(x*exp(2*y),y*log(x/2), c * random(3), c * random(3));
 }

//saveFrame("filo22/capa####.png");
}
