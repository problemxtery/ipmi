//TP#2 - Variales y Condicionales
//Martina Julieta Gonzalez, 88141/9
//Profesor: Tobias Albirosa, Comision 5



float tiempo; // Número flotante para el tiempo
String[] texto = new String[4]; // Array para almacenar el texto de cada pantalla
PImage[] imagenes = new PImage[4]; // Array para almacenar las imágenes de cada pantalla
PFont fuente;
boolean presentacionIniciada = false;

void setup() {
  imageMode(CENTER); // Pone la imagen en el centro
  textAlign(CENTER); // Pone el texto en el centro
  size(640, 480);
  background(255, 0, 0);
  tiempo = 0;

  // Fuente
  fuente = createFont("Vogue.ttf", 20);
  textFont(fuente);

  // Cargar imágenes
  imagenes[0] = loadImage("caperucita1.png");
  imagenes[1] = loadImage("caperucita2.png");
  imagenes[2] = loadImage("caperucita3.png");
  imagenes[3] = loadImage("caperucita4.png");

  // Texto de cada pantalla
  texto[0] = "Habia una vez en un pueblo, una nena llamada Caperucita Roja, \n y su madre le pidio que llevara una cesta de comida a su abuela enferma.";
  texto[1] = "En el camino, se encontro con un lobo malvado, quien le pregunto donde iba.";
  texto[2] = "El lobo corrio a la casa de la abuela, se la comio y disfrazo de ella \n para enganar a caperucita.";
  texto[3] = "Un cazador que andaba cerca descubrio lo que sucedia y las rescato";
}

void draw() {
  if (presentacionIniciada) { // Comprobar si la presentación ha iniciado
    tiempo++;
    background(255);
    int pantallaActual = int(tiempo / 350); // Determinar la pantalla actual basada en el tiempo

    // Mostrar la imagen correspondiente a la pantalla actual
    image(imagenes[min(pantallaActual, imagenes.length - 1)], width / 2, height / 2, width, height);

    // Mostrar el texto correspondiente con fade
    if (pantallaActual < texto.length) {
      pushStyle();
      textSize(15);
      fill(0);
      text(texto[pantallaActual], width / 2, 400);
      popStyle();
    }

    // Botón de reinicio
    if (pantallaActual >= imagenes.length - 1) {
      rect(250, 440, 120, 30);
      pushStyle();
      fill(0);
      textSize(20);
      text("Reiniciar", 310, 465);
      popStyle();
    }
  } else {
    // Mostrar botón de inicio
    rect(250, 240, 120, 30);
    pushStyle();
    fill(0);
    textSize(20);
    text("Iniciar", 310, 265);
    popStyle();
  }
}

void mousePressed() {
  if (!presentacionIniciada && mouseX > 250 && mouseX < 370 && mouseY > 240 && mouseY < 270) {
    presentacionIniciada = true;
  }

  // Reiniciar la presentación si se hace clic en el botón
  if (presentacionIniciada && mouseX > 250 && mouseX < 370 && mouseY > 440 && mouseY < 470) {
    tiempo = 0;
  }
}
