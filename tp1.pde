/*width,height,\n
*/
String estado = "inicio";
int posx;
int posy;
int tra;
int tra2;
PImage img1;
PImage img2; 
PImage img3;
PImage img4;
String textoini = "El arte electrónico, es una\nforma de arte que hace\n uso de medios\n electrónicos\n Más ampliamente, se\n refiere a tecnología y/o\n medios electrónicos.";
String texto2 = "Está relacionado con el arte de la información, el arte de los nuevos medios, el videoarte, el arte digital, el arte interactivo, el arte en Internet y la música electrónica.";
String texto3 = "su objetivo:\n aprehender la realidad,\n manipularla y ofrecerla al\n espectador convertida\n en obra de arte";
String texto32 = " de tal manera que\n se opere en éste\n una transformación y\n un interés por\n percibir de diferentes\n modos el mundo\n circundante.";

void setup(){
  //size(1000,1000);
size(640,480);
tra = 0;
tra2 = 254;
posx = 0;
posy = 550;
background(55);
img1 = loadImage("asol.jpg");
img2 = loadImage ("descarga.jpg");
img3 = loadImage ("0_TlPUV0_MA9kGOMkG.png");
img4 = loadImage ("art.jpg");

}//fin setup


void draw(){
  background(210);
  

if(estado.equals("inicio")){
fill(0);
image(img1,0,0,640,480);
textAlign(CENTER);//pone el texto en el centro
textSize(60);
fill(255);
text(textoini,width/2,posy);
posx+=5;
posy-=2;
}

if(estado.equals("pant1")){
fill(0);
image(img2,0,0,640,480);
textAlign(CENTER);
textSize(60);
fill(0);
text(texto2,posx,height/2);
posx-=3;
posy+=4;
}


if(estado.equals("pant2")){
fill(0);
 image(img3,0,0,640,480);
textAlign(CENTER);
textSize(60);
fill(123,111,199);
text(texto3,posx,posy);
if(posx<width/2){
posx+=2;}
if(posx==320){
posy--;
}
if (posy<-290){
text(texto32,tra,tra2);
if(tra>width/2){
tra-=2;
}
}
if(tra<=width/2){
tra2-=1;
}
}

if(estado.equals("pant3")){
fill(0);
image(img4,0,0,640,480);
textAlign(CENTER);
textSize(60);
fill(255,255,255,tra);
text("click para\n reiniciar",width/2,height/2);
if (tra<255){tra+=1;}
if (tra==255){tra=-255;}
if (tra<-250){text("click para\n reiniciar",width/2,height/2);}
if (tra>250){text("click para\n reiniciar",width/2,height/2);}
if (tra<0 ){
  fill(255,255,255,tra2);
text("click para\n reiniciar",width/2,height/2);
tra2--;}
if (tra>0){tra2=254;}

fill(0,0,0,0);
circle(320,240,180);
}



if(estado.equals("inicio")){
 if(posy<-605){
  estado = "pant1";
 posx = 2750;
 posy = 0;
}
}

else if(estado.equals("pant1")){
 if(posx<-2560){
  estado = "pant2";
 posx = -350;
 posy = 50;
 tra = 900;
 tra2 = 50;
}
}

else if(estado.equals("pant2")){
 if(tra2<-600){
  estado = "pant3";
 posx = -100;
 posy = 0;
 tra = 0;
tra2 = 254;
}
}


}//fin draw


void mousePressed(){
if(estado.equals("inicio")){
  estado = "pant1";
 posx = 2750;
 posy = 0;
}

else if(estado.equals("pant1")){//con else evito que salte de inicio a pant2
  estado = "pant2";
 posx = -350;
 posy = 50;
 tra = 900;
 tra2 = 50;
}

else if(estado.equals("pant2")){
  estado = "pant3";
 posx = 0;
 posy = 0;
 tra = 0;
tra2 = 254;
}

else if(estado.equals("pant3")){
 
float diu = dist(mouseX,mouseY,320,240);
  
int rad =  180/2 ;
  
  if(diu<rad){
  
  estado = "inicio";
 posx = 0;
 posy = 550;
  tra = 0;
tra2 = 255;
  }


}


}//fin mouse
//donde esta el void loop?
