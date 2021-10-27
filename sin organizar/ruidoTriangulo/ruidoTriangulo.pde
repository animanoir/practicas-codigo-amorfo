float xoff = 0.0;
float yoff = 0.0;


void setup(){
 size(1000,1000);
 background(0);
  frameRate(60);
  fill(255,0,0);
}


void draw(){
  xoff += 0.01;
  yoff += 0.02;
  beginShape();
  vertex(noise(xoff)*width,noise(yoff)*height);
  noiseSeed(1);
  vertex(noise(xoff)*width,noise(yoff)*height);
  noiseSeed(2);
  vertex(noise(xoff)*width,noise(yoff)*height);
  noiseSeed(3);
  vertex(noise(xoff)*width,noise(yoff)*height);
  endShape(CLOSE); 
}
