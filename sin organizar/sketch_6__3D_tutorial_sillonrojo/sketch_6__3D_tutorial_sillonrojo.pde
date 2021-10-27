PImage img;

void setup() {
  size(1200, 1200, P3D);  
  img = loadImage("cafe.jpg");
  img.resize(1200, 1200);
  fill(255, 0, 10, 50); //colorcito
  noStroke();
  sphereDetail(5);
}

void draw() {
  background(0);
  //image(img, 0,0);


  float tiles = 150; //cantidad de mosaicos de la reticula
  float tileSize = width/tiles; //tamaño del mosaico usando los 1200 del size

  push();
  translate(width/2, height/2);
  //rotateX(frameCount*0.125); //gira alrededor de eje Y rotateY
  rotateY(radians(map(mouseX, 0,width,0,360)));

  //ahora vamos a escanear la imagen con un contador, iniciando en 0 y avanzando hasta los mosaicos que fijamos arriba
  for (int x = 0; x< tiles; x++) {
    for (int y = 0; y<tiles; y++) {

      color c = img.get(int(x*tileSize), int(y*tileSize)); //obtiene de la imagen la cantidad de mosaicos que la conforman
      float b = map(brightness(c), 0, 100, 1, 0); //lee los valores tonales del negro al blanco de cada mosaico, y los referencia, como negro el más grande (1) y blanco el más pequeño(0)

      float z = map(b, 0, 1, -400, 400); //toma los valores mapeados en b, y los recoloca en el eje z que va de -200 a 200
      //por eso las esferas chicas se van hacia -z y las grandes hacia z
      push();
      translate(x*tileSize - width/2, y*tileSize - height/2, z);//centra la imagen
      sphere(tileSize*b); //suaviza la esfera a un 65 por ciento del tamaño del mosaico

      pop();
    }
  }

  pop();

  //saveFrame("sillon/frame"+millis()+".png"); //con glitch
  //saveFrame("sillon/sillon####.png"); //sin glitch
}

//funciones que no comprendí:  frameCount, push y pop (funcionan en conjunto)

//void mouseReleased() {

//saveFrame("fotografia.png");
