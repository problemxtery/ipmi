//Gonzalez Martina Julieta, 88141/9 tp1

PImage naranja;

void setup(){
 size(800,400);
 naranja = loadImage ("naranja.jpg");
}

void draw(){
 background(255);
 fill(255,165,0); 
 ellipse(200,200,300,300);//
 fill(0,255,0);
 ellipse(220,130,30,30); 
 image(naranja, 400, 200,200,200);
 
}
