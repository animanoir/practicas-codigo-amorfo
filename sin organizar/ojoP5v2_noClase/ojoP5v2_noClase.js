var ojo;
let angulo = 0;
let escalar = 10;
let velocidad = 0.05;

let cantidadOjos = 100;

let arregloPosX = [];
let arregloPosY = [];
let arregloFrame = [];
let cantidadFrames;


function preload() {
  
}

function setup() {
  background(0);
  ojo = loadGif('data/ojo.gif');
  cantidadFrames = ojo.totalFrames();
  console.log('frames: '+ojo.totalFrames());
  createCanvas(windowWidth, windowHeight);
  for (let i = 0; i <= cantidadOjos; i++) {
    arregloPosX[i] = random(width);
    arregloPosY[i] = random(height);
    arregloFrame[i] = random(cantidadFrames);
  }
}


function draw() {
  background(0);
  //let ojoPosX = cos(angulo) * escalar;
  //let ojoPosY = sin(angulo) * escalar;

  for (let i = 0; i <= cantidadOjos - 1; i++) {


    image(ojo, arregloPosX[i], arregloPosY[i]);

  }

  //angulo += velocidad;
  //escalar += velocidad;
}

function windowResized() {
  background(0);
  resizeCanvas(windowWidth, windowHeight);
}


class Ojo {
  constructor(posX, posY, tamano, imgFuente) {
    imageMode(CENTER);
    this.posX = posX;
    this.posY = posY;
    this.tamano = tamano;
    this.imgFuente = imgFuente;
  }

  aparecer() {
    //this.posX = _posX;
    //this.posY = _posY;
    //this.imgFuente.position(this.posX, this.posY);
    //this.imgFuente.size(50, 50);
    
    this.imgFuente.frame(randomFrame);
    this.imgFuente.play();
    image(this.imgFuente, this.posX, this.posY, this.tamano, this.tamano);
  }
}
