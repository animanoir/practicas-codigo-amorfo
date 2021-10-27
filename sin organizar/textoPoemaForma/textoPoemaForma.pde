FiguraTextual fig1, fig2;
String[] fontList = PFont.list();
PFont fuente;

void setup() {
  printArray(fontList);
  fuente = createFont(fontList[264],32);
  textFont(fuente);
  size(1000, 1000); 
  fig1 = new FiguraTextual();
  fig2 = new FiguraTextual();
}

void draw() {
  background(255);
  fig1.aparecer(0, 0, 500, "Me llamo Óscar Alejandro Montiel Mejía");
  fig1.aparecer(width/2, 0, 500, "iweiwhrtbierheihtekthkhkj");
}

class FiguraTextual {

  FiguraTextual() {
  }

  void aparecer(int x, int y, int tamano, String texto) {
    fill(0);
    textSize(tamano/24);
    //int longitudTexto = int(tamano / texto.length());
    //println(longitudTexto);
    for(int i = 0; i <= width; i++){
      text(texto, x, (y+i)*24, tamano, tamano);
    }
  }
}
