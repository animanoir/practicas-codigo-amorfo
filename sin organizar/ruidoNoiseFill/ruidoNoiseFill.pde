float xoff = 0.0;
float yoff = 0.0;


void setup() {
  size(1000, 1000);
  smooth(8);
  background(0);
  frameRate(60);
  noFill();
  colorMode(HSB);
  noStroke();
}


void draw() {
  xoff += 0.01;
  yoff += 0.02;
  beginShape();
  fill(noise(xoff)*255, noise(yoff)*128, map(mouseY, 0, height, 0, 255));
  vertex(noise(xoff)*width, noise(yoff)*height);
  noiseSeed(1);
  vertex(noise(xoff)*width, noise(yoff)*height);
  noiseSeed(2);
  vertex(noise(xoff)*width, noise(yoff)*height);
  noiseSeed(3);
  vertex(noise(xoff)*width, noise(yoff)*height);
  endShape(CLOSE);
}

void mouseClicked(){
 save(mouseY+"_ruido.png"); 
 println("se guardó la imagen");
}
