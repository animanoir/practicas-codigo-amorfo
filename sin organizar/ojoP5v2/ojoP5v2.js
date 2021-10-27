let ojo;
let angulo = 0;
let escalar = 10;
let velocidad = 0.05;

let arregloOjos = [];
let cantidadOjos = 333;




function preload() {
  ojo = loadGif('data/ojo.gif');
}

function setup() {

  for (let i = 0; i <= cantidadOjos; i++) {
    arregloOjos[i] = new Ojo(random(windowWidth), random(windowHeight), random(53), ojo);
  }
  createCanvas(windowWidth, windowHeight);
  background(0);
}


function draw() {
 background(0);
  //let ojoPosX = cos(angulo) * escalar;
  //let ojoPosY = sin(angulo) * escalar;

  for (let i = 0; i <= arregloOjos.length; i++) {
    arregloOjos[i].aparecer();
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
    let randomFrame = random(this.imgFuente.totalFrames());
    this.imgFuente.frame(randomFrame);
    this.imgFuente.play();
    image(this.imgFuente, this.posX, this.posY, this.tamano, this.tamano);
  }
}
