class personaje{
  float ataque;
  float vida;
  
  PImage c1,c2,c3,c4,c5;
  
  personaje(float ataque_, float vida_){
    ataque = ataque_;
    vida = vida_;
  }
  
  void personaje1(){
 c1 =loadImage ("ps4.png");
 image(c1,10,10);
  }
  
  void personaje2(){
 c2 =loadImage ("one.png");
 image(c2,10,10);
    
  }
  
  void personaje3(){
 c3 =loadImage ("nintendo.png");
 image(c3,10,10);
  }
  
  void personaje4(){
c4 =loadImage ("esfera.png");
 image(c4,10,10);
  }
  
  void personaje5(){
 c5 =loadImage ("tanstaneca.png");
 image(c5,10,10); 
  }
}

personaje jugador1;
personaje jugador2;

pantalla1 una;
pantalla2 dos;
pantalla3 tres;
pantalla4 cuatro;
pantalla5 cinco;

int p = 2;
boolean p1=true;
boolean p2=true;
int id=4,id2=4;
int turno = 1;

void setup(){
  size(700,500);
  jugador1 = new personaje(random(10,20),100);
  jugador2 = new personaje(random(10,20),100);
  
  una = new pantalla1();
  dos = new pantalla2();
  tres = new pantalla3();
  cuatro = new pantalla4();
  cinco = new pantalla5();
}

void draw(){
  switch(p){
    case 0:
   una.display();
    switch(key){
      case ENTER:
      p = 1;
      break;
    }
    break;  
    case 1:
    
    dos.display();


    switch(key){
      case 'q':
      p1 = true;
      id = 0;
      break;
      case 'a':
      p1 = true;
      id = 1;
      break;
      case 'z':
      p1 = true;
      id = 2;
      break;
      case 'w':
      p1 = true;
      id = 3;
      break;
      case 's':
      p1 = true;
      id = 4;
      break;
      case 'e':
      p2 = true;
      id2 = 0;
      break;
      case 'd':
      p2 = true;
      id2 = 1;
      break;
      case 'c':
      p2 = true;
      id2 = 2;
      break;
      case 'r':
      p2 = true;
      id2 = 3;
      break;
      case 'f':
      p2 = true;
      id2 = 4;
      break;
    }
    if(p1&&p2){
      p=2;
    }
    break;
    
    case 2:
    tres.display();
  
    textSize(60);
    
    pushMatrix();
    textSize(30);
    fill(0);
    text(jugador1.vida,250,420);
    fill(0);
    text(jugador2.vida,550,420);
    popMatrix();


switch(id){
case 0:
pushMatrix();
scale(0.3,0.3);
translate(350,550);
jugador1.personaje1();
popMatrix();
break;
case 1:
pushMatrix();
scale(0.3,0.3);
translate(350,450);
jugador1.personaje2();
popMatrix();
break;
case 2:
pushMatrix();
scale(0.5,0.5);
translate(100,450);
jugador1.personaje3();
popMatrix();
break;
case 3:
pushMatrix();
scale(0.3,0.3);
translate(350,750);
jugador1.personaje4();
popMatrix();
break;
case 4:
pushMatrix();
scale(0.3,0.3);
translate(350,450);
jugador1.personaje5();
popMatrix();
break;
}


switch(id2){
case 0:
pushMatrix();
scale(0.3,0.3);
translate(1550,550);
jugador2.personaje1();
popMatrix();
break;

case 1:
pushMatrix();
scale(0.3,0.3);
translate(1550,450);
jugador2.personaje2();
popMatrix();
break;
case 2:
pushMatrix();
scale(0.5,0.5);
translate(900,450);
jugador2.personaje3();
popMatrix();
break;
case 3:
pushMatrix();
scale(0.3,0.3);
translate(1450,750);
jugador2.personaje4();
popMatrix();
break;
case 4:
pushMatrix();
scale(0.3,0.3);
translate(1550,450);
jugador2.personaje5();
popMatrix();
break;
}

    
    if(turno == 1){
    textSize(20);
    fill(31,33,92);
    text("Presiona 1 para pelear",100,100);
    if(keyPressed){
    if(key=='1'){
    jugador2.vida = jugador2.vida - jugador1.ataque;
    turno = 2;
    }}}
    
    if(turno == 2){
    textSize(20);
    fill(31,33,92);
    text("Presiona 9 para pelear",400,100);
    if(keyPressed){
    if(key=='9'){
    jugador1.vida = jugador1.vida - jugador2.ataque;
    turno = 1;
    }}}
    
    if(jugador1.vida == 0 || jugador2.vida == 0){
    p=3;
    }
    break;
    
    case 3:
    background(156,191,213);
    if(jugador1.vida > 0){
      cuatro.display();
    }
    if(jugador2.vida > 0){
      cuatro.display();
    }
    if(key == 'p' || key == 'P'){
      jugador1.vida = 100;
      jugador2.vida = 100;
      p1 = false;
      p2 = false;
      turno = 1;
      p = 0;
    }
    
    if (key==CODED && key==ESC)
    {
      exit();
    }
    break;
  }
}
