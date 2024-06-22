// González Martina Julieta 88141/9
// Comision 5 Tobias Albirosa
// https://youtu.be/C7oHDZBiRLw

PImage foto;
float tam, ang; //TAMAÑO RECTANG Y ANGULO (rot)
color c;

void setup() {
  size (800, 400);
  foto=loadImage("foto.jpg");
  colores(); //void carga 1 color aleatorio
}

void draw() {
  background(0);
  foto.resize (400, 400);
  image(foto, 0, 0);
  rectMode(CENTER); //0, 0 del medio
  translate(width/1.34, height/2); //0, 0 derecha

  for (int i=0; i<50; i++) { //creacion d los cuad

    rotate(map(ang, 0, width, PI/2, PI/50)); //rotacion

    if ( i %2 ==0) { //2 fotogramas
      fill(c); 
    } else {
      fill(255); //blanco
    }
    tam = (height)-i*8.7; //cuad +pequeño
    rect(0, 0, tam, tam);
  }
  //space empieza 
  if (key==' ') {
    angulo();
  }
  
}
//mov el mouse = + o -
void angulo() {
  if (mouseX<width/2) {
    ang += 0.2;
  } else {
    ang-=0.2;
  }
}
//funcion color aleatorio 
void colores() {
c= ColorAleatorio();
}
//Funcion de Reinicio de angulo
void mousePressed() {
  ang=0;
  colores(); //color al again
}
