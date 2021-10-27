//https://www.youtube.com/watch?v=KWoJgHFYWxY

int n = 4000;
int c = 105;

float x;
float y, z;

int tamano = 15;

void setup() {
  background(0);
  size(1000, 1000, P3D);
   smooth(4);
   

  ellipseMode(CENTER);
  //point(x,y,z);
  frameRate(60);
  //rotateZ(10);
  //colorMode(HSB);
}

void draw() {
  for (float i = 0; i <= n; i+=100) {

    rotateX(cos(frameCount*0.1)); //gira alrededor de eje Y rotateY
    rotateY(sin(frameCount*0.1));
    fill(0, 255, random(255), random(128));
    float r = c * sqrt(frameCount);
    x = r * cos(i*130.5);
    y = r * sin(i*130.5); 
    //ellipse(x*frameCount, y*log(i), random(100), random(100));
    ellipse(mouseX, mouseY, r/24, r/24);
  }
}

void mouseClicked() {
  saveFrame("philo6-######.png");
}
