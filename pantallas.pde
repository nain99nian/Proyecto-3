PImage pa1,pa2,pa3,pa4,pa5;

interface Pantallas
{
  
  void display();
}

class pantalla1 implements Pantallas
{
  int x,y;
  
  pantalla1()
  {
    x=0;
    y=0;
  }
  
  void display()
  {
    pa1 = loadImage("pantalla1.jpg");
   image (pa1,x,y,width,height);
  }
}

class pantalla2 implements Pantallas
{
  int x,y;
  
  void display()
  {
    pa2 = loadImage("pantalla2.jpg");
   image (pa2,x,y,width,height);
  }
}

class pantalla3 implements Pantallas
{
  int x,y;
  
  void display()
  {
    pa3 = loadImage("pantalla3.jpg");
   image (pa3,x,y,width,height);
  }
}

class pantalla4 implements Pantallas
{
  int x,y;
  
  void display()
  {
    pa4 = loadImage("pantalla4.jpg");
   image (pa4,x,y,width,height);
  }
}

class pantalla5 implements Pantallas
{
  int x,y;
  
  void display()
  {
    pa5 = loadImage("pantalla5.jpg");
   image (pa5,x,y,width,height);
  }
}
