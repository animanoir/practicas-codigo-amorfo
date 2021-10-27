Estelo esteloGrande, esteloChico, esteloMedio;

void setup() {
  size(1000, 1000);
  esteloGrande = new Estelo(color(255, 0, 0), 200, false);
  esteloMedio = new Estelo(color(0, 0, 255), 100, true);
  esteloChico = new Estelo(color(255), 25, false);
  background(0);
}

void draw() {

  background(0);
  esteloGrande.renderizar();
  esteloMedio.renderizar();
  esteloChico.renderizar();
}

class Estelo {

  int[] xpos = new int[50];
  int[] ypos = new int[50];
  color c;
  int tamano;
  boolean conNoise;
  float nVal;
  float nInt = 10; // noise intensity
  float nAmp = 100; // noise amplitude
  float x = 1;
  float y = 1;
  float t = 0; // time passed
  float tChange = .02; // how quick time flies


  Estelo(color _color, int _tamano, boolean _conNoise) {
    for (int i = 0; i < xpos.length; i++) {
      xpos[i] = 0;
      ypos[i] = 0;
    }
    c = _color;
    conNoise = _conNoise;
    tamano = _tamano;
    noFill();
    strokeWeight(2);
  }

  void renderizar() {

    for (int i=0; i < xpos.length-1; i++) {
      xpos[i] = xpos[i+1];
      ypos[i] = ypos[i+1];
    }

    xpos[xpos.length-1] = mouseX;
    ypos[ypos.length-1] = mouseY;

    if (conNoise) {
      stroke(c);
      strokeWeight(3);
      beginShape();
      for (float theta = 0; theta <= TAU; theta+=TAU/266) {
        nVal = noise(cos(theta)*nInt+1, sin(theta)*nInt+1, t ); // map noise value to match the amplitude
        x = cos(theta)*tamano *nVal;
        y = sin(theta)*tamano *nVal;

        vertex(x+mouseX, y+mouseY);
      }
      endShape(CLOSE);
      t += tChange;
    } else {
      for (int i = 0; i < xpos.length; i++) {
        stroke(c, i*5);
        ellipse(xpos[i], ypos[i], i+tamano, i+tamano);
      }
    }
  }
}
