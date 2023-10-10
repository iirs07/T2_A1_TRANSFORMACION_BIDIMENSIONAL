float h = 0;
float b = 0;
boolean rotar;

int posX=0;
int posY=0;
int velX=2;
int velY=2;
boolean traslacion;

int a=0;
boolean escalado;

float ladoX4 = width; 
float ladoY4 = height; 
float sesgoX4 = 1; 
float sesgoY4 =0.95;
boolean sesgado;

void setup(){
 size(700, 500);
 background(240, 99, 238);
} 
void draw(){
 if (rotar){
  background(240, 99, 238);
  translate(width/2,height/2);
  fill(124,188,255);
  rectMode(CENTER);
  rotate(b);
  rect(0, 0, 150, 150);
  b = b + 0.01;
}
  if(traslacion){
  background(229,76,76);
    scale(1);
    posX += velX;
    posY += velY;
    if (posX > width || posX  < 0) {
      velX *= -1;
    }
    if (posY > height || posY < 0) {
      velY *= -1;
    }
    rectMode(CENTER);
    rect(posX, posY, 150, 150);
  }
  if (escalado){
  background(76,227,182);
  rectMode(CENTER);
  square (width/2,height/2,a);
    if(a>500){
      a=0;  
  }
        a=a+1;
}
  if (sesgado){
    background(255, 255, 255);
  
    ladoX4 *= sesgoX4;
    ladoY4 *= sesgoY4;
    
    // Dibuja el cuadrado sesgado
    rectMode(CENTER);
    rect(width/2,height/2,ladoX4, ladoY4);
    }
   
}
void keyPressed() {
  if (key == '1') {
    rotar = true;
  } else if (key == '2') {
    rotar = false;
    traslacion= true;
    escalado=false;
    sesgado=false;
  } else if (key == '3') {
    rotar = false;
    traslacion= false;
    escalado=true;
    sesgado=false;
  } else if (key == '4') {
    rotar = false;
    traslacion= false;
    escalado=false;
    sesgado=true;
  }
}
