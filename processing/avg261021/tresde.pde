PImage img;

void setup() {
  size(900, 900, P3D);
  img = loadImage("e.png");
  img.resize(width, height);
}

void draw() {
  background(0);
  fill(random(255), 255, 0, 100);
  noStroke();
  sphereDetail(3);
  float tiles = 200;
  float tileSize = width/tiles;
  push();
  translate(width/2,height/3);
  rotateY(radians(frameCount*0.5));
  //rotateZ(radians(frameCount));
  
  
  for (int x = 0; x < tiles; x++) {
    for (int y = 0; y < tiles; y++) {
      color c = img.get(int(x*tileSize),int(y*tileSize));
      float b = map(brightness(c),0,255,1,0);
      float z = map(b,0,1,0,50);
      
      push();
      translate(x*tileSize - width/2, y*tileSize - height/2, z);
      sphere(tileSize*random(b));
      pop();
      
    }
  }
  pop();
}
