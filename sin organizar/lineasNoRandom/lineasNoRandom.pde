float radio = 10;
int centX; 
int centY;
float x, y;
float lastX = -999;
float lastY = -999;

int sepX = 33;
int sepY = 33;

int hue;


void setup() {
  //frameRate(60);
  size(1000, 1000 );
  background(0);
  centX = width/2;
  centY = height/2;
  smooth(8);
  strokeWeight(3);
  colorMode(HSB);
  noFill();
}

void draw() {  

  hue = (int)map(mouseX, 0, width, 0, 255);
  //background(0);
  
  for (float ang = 0; ang <= 1440; ang+=50) {
    stroke(hue/2, 255, 255);
    float rad = radians(ang);
    radio+=0.05;
    x = centX + (radio * cos(rad));
    y = centY + (radio * sin(rad));

    if (lastX > -999) {
      line(x, y, lastX, lastY);
    }


    lastX = x;
    lastY = y;
  }

/*
  for (float ang = 0; ang <= 360; ang+=5) {
    stroke(hue, 128, 128);
    float rad = radians(ang);
    radio+=0.05;
    x = centX + (radio * cos(rad));
    y = centY + (radio * sin(rad));
    line(x+sepX, y+sepY, mouseX, mouseY);
  }

  for (float ang = 0; ang <= 360; ang+=7) {
    stroke(hue/3, 255, 255);
    float rad = radians(ang);
    radio+=0.05;
    x = centX + (radio * cos(rad));
    y = centY + (radio * sin(rad));
    line(x+66, y+66, mouseX, mouseY);
  }
  
  */
}
