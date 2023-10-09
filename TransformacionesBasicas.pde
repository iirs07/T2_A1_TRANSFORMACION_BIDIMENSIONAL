//Se crea el valor de las variables
float h = 0;
float b=0;
// Se definen las propiedades del entorno inicial
void setup(){
 //Elegimos tamaño del alto y ancho de la ventana de visualizacion 
 size(700, 500);
 //Interpreta parámetros como el punto central de la forma, mientras que el tercer y cuarto parámetros son su ancho y alto.
 rectMode(CENTER);
 //Definimos el color de fondo
 background(240, 99, 238);
} 
  // Se ejecuta las líneas de código
void draw(){
  //Se establece el color utilizado para rellenar las forma del rectangulo
  fill(197,99,240);
  // Creamos un rectangulo 
  rect(width/2, height/2, width, height);
  //y dibujamos el cuadrado 
  //trasladamos el punto 0,0 al centro de la ventana
  translate(width/2,height/2);
  //borde y relleno del cuadrado
  fill(124,188,255);
  stroke(0);
  //Se realiza la escala del tamaño del cuadrado
  scale(1.5);
  //asignamos el valor de giro
  rotate(b);
  //Tamaño del cuadrado
  rect(0, 0, 150, 150);
  //Esto hace que el valor del ángulo aumente a cada ciclo y gire 
  b = b + 0.01;

}
