int cantidadCirculos = 2300;
PImage fondoNoise;

int v = 0;


void setup() {
  fondoNoise = loadImage("noise.png");
  smooth(5);
  //size(int(1800*4.166), int(1200*4.166)); 
  strokeWeight(7);
  size(7498, 4999);
  background(0, 0, 0);
  tint(255, 65);
  image(fondoNoise, 0, 0, width, height);
  ellipseMode(CENTER);
  rectMode(CENTER);
  stroke(255);
  noFill();

  pushMatrix();
  translate((cantidadCirculos/2)+50, height/2);
  for (int i =cantidadCirculos; i >= 0; i-= 100) {
    ellipse(0, 0, i, i);
  }
  popMatrix();
  pushMatrix();
  translate(width/2, height/2);

  for (int i =cantidadCirculos; i >= 0; i-= 500) {
    ellipse(0, random(1, 5), i, i);
  }
  popMatrix();
  pushMatrix();
  translate(width-(cantidadCirculos/2)-50, height/2);

  for (int i =cantidadCirculos; i >= 0; i-= 100) {
    v = (int)random(1, 3);
    ellipse( 0, random(1, 500), i, i);
  }
  popMatrix();
  //Guarda un fotograma como .png. cada que termina el programa de ejecutarse.
  //save("ensayo_s"+second()+"_m"+minute()+"_h"+hour()+"_"+day()+month()+year()+".png");
}

void draw() {
}

void mouseClicked() {
  save("ensayo_s"+second()+"_m"+minute()+"_h"+hour()+"_"+day()+month()+year()+".png"); 
  println("foto guardada");
}
