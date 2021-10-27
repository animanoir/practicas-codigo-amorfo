int n = 4000;
int c = 2;

float x;
float y;

int tamano = 15;

void setup(){
  background(231, 239, 197);
  size(1000,1000, P3D);
  noStroke();
  ellipseMode(CENTER);
  frameRate(60);
  noFill();
  stroke(255);
}

void draw(){
  background(0);
  translate(width/2,height/2);
  //fill(random(10), random(10), random(10), 100);
  rotateX(cos(frameCount)*noise(frameCount)); //gira alrededor de eje Y rotateY
  rotateY(sin(frameCount)*noise(frameCount));
  rotateZ(frameCount*0.001);
  
for (float i = 0; i < n; i++){
  float r = c * sqrt(i);
  x = r * cos(i*360);
  y = r * sin(i*137.5); 
  rect(x*log(2*y),y*log(x/2), r , r );
 }

//saveFrame("filo22/capa####.png");
}
