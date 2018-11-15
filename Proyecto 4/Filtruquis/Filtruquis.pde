import processing.video.*;

Capture cam;

int random;
PImage colorines;

void setup(){
size(640, 480);

  cam = new Capture (this, 640, 480);
  cam.start();

  colorines = loadImage("colorines.PNG");
}

void draw (){
  
cam.read();
image(cam,0,0,width,height);

textSize(15);
text("Pulsa espacio para poner el primer filtro",15,15);
fill(random(200),10,random(50));

//filtro de multiples camaras.
  if (key ==' '){
   for (int i = 0; i < 650; i = i+100) {
      for (int j = 0; j< 500; j = j+100) {
        image(cam, i, j, 100, 100);}
textSize(15);
text("X para quitarlo.",15,15);
fill(random(200),10,random(70));
      }
     }
  if (key == 'x'){
    for (int i = 0; i<0; i=0 ){
      image(cam,0,0);
}
  }
textSize(15);
text("Pulsa Z para poner el segundo filtro.",15,30);
fill(random(200),100,random(100));
  
  if (key =='z'){
      fill(0,0,300,300);
      image(colorines,0,0,640,480);
    
  textSize(15);
  text("C para quitarlo.",15,15);
  fill(random(200),10,random(70));
  
  if(key == 'c'){
   for (int i = 0; i<0; i=0 ){
      image(cam,0,0);
  }
        }

}

  
}
