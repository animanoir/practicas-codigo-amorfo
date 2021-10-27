//https://www.youtube.com/watch?v=KWoJgHFYWxY

int n = 4000;
int c = 105;

float x;
float y, z;

int tamano = 15;

float r = 0.0;

void setup() {
  background(0);
  size(1000, 1000, P3D);
  smooth(4);
  ellipseMode(CENTER);
  //point(x,y,z);
  frameRate(60);
  //rotateZ(10);
  //colorMode(HSB);
 noStroke();
}

void draw() {
  for (float i = 0; i <= n; i+=100) {

    rotateZ(cos(frameCount*0.1)); //gira alrededor de eje Y rotateY
    rotateY(sin(frameCount*0.1));
    fill(255, 255, 255, 128);
    float r = c * sqrt(frameCount);
    x = r * cos(i*36);
    y = r * sin(i*90); 
    ellipse(x, y*log(i), random(100), random(100));

  }
}

void mouseClicked() {
  saveFrame("philo6-######.png");
}
