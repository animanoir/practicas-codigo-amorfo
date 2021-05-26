float xoff = 0.0;
float yoff = 0.0;


void setup() {
  size(1000, 1000);
  smooth(8);
  background(0);
  frameRate(60);
  noiseDetail(3);
  colorMode(HSB);
  noFill();
  strokeWeight(100);
}


void draw() {
  background(0);
  xoff += 0.01;
  yoff += 0.02;
  beginShape(POINTS);
  stroke(0, 255, 255);
  vertex(noise(xoff)*width, noise(yoff)*height);
  noiseSeed(1);
  vertex(noise(xoff)*width, noise(yoff)*height);
  noiseSeed(2);
  vertex(noise(xoff)*width, noise(yoff)*height);
  noiseSeed(3);
  vertex(noise(xoff)*width, noise(yoff)*height);
  noiseSeed(4);
  vertex(noise(xoff)*width, noise(yoff)*height);
  endShape(CLOSE);
}

void mouseClicked() {
  save(mouseY+random(100)+"_ruido.png"); 
  println("se guardó la imagen");
}
