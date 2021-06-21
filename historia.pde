int svar = 1;
PImage capa,p1,p2,p3,p4,p5,o,c1,c2,c3,c4,c5,c6;
PFont font;



void setup(){
  size(900,1020);
//  noStroke();
  capa = loadImage("capa.png");
  p1 = loadImage("p1.png");
  p2 = loadImage("p2.png");
  p3 = loadImage("p3.png");
  p4 = loadImage("p4.png");
  p5 = loadImage("p5.png");
  c1 = loadImage("c1.png");
  c2 = loadImage("c2.png");
  c3 = loadImage("c3.png");
  c4 = loadImage("c4.png");
  c5 = loadImage("c5.png");
  c6 = loadImage("c6.png");
  o = loadImage("o.png");
  //inserir outras imagens 
  background(0);

}

void draw(){
  font = loadFont("ComicSansMS-20.vlw");
  textFont(font,15);
  if (svar==1) tela1(); // principal
  else if (svar==2) tela2(); // 1º nível
  //if (svar==3) tela3(); // 1º nível
  //if (svar==4) tela4(); // 1º nível
  
  else if (svar==21) tela21(); // 2º nível, associada a tela 2
  else if (svar==22) tela22(); // 2º nível, associada a tela 2
  else if (svar==23) tela23(); // 3º nível, associada a tela 2
  
  println(svar);
}

void tela1(){
  // botões tela 1
  
  image(capa,0,0);
  fill(156,222,245);   rect(0,980, 250,40); fill(0); text("Inicio", 120,995);
  fill(245,193,79);     rect(225,980,225,40);   fill(0);   text("Patinho feio", 320,995);
  fill(242,114,157);    rect(450,980,225,40);   fill(0);   text("Chapeuzinho Vermelho", 500,995);
  fill(255,128,128);    rect(675,980,225,40);   fill(0);   text("Os 3 porquinhos", 750,995);
  
  // interação válida na tela 1, 3 e 4
  if(mousePressed) {
    if((mouseX<225)&&(mouseY>980)) svar=1;
    if((mouseX>225)&&(mouseX<450)&&(mouseY>980)) svar=2;
    if((mouseX>450)&&(mouseX<675)&&(mouseY>980)) svar=3;
    if((mouseX>675)&&(mouseX<1000)&&(mouseY>980)) svar=4;   
  }
}

//Historia patinho feio

void tela2(){
  //botoes tela 2
  fill(0,255,0);       rect(0,980,900, 40);
  image(p1,0,0);
  fill(156,222,245);   rect(0,980, 300,40); fill(0); text("Inicio", 120,995);
  fill(245,193,79);     rect(300,980,300,40);   fill(0);   text("Anterior", 320,995);
  fill(255,128,128);    rect(600,980,300,40);   fill(0);   text("Proximo", 615,995);
  
  if(mousePressed) {
    if((mouseX<300)&&(mouseY>980)) svar=1;
    
    if((mouseX>600)&&(mouseY>980)) svar=21;
    
  }
}

// parte 1 patinho

void tela21(){
  //botoes tela 2
  noStroke();
  image(p2,0,0);
  //pra cobrir o antrior
   
  fill(156,222,245);   rect(0,980, 300,40); fill(0); text("Inicio", 120,995);
  fill(245,193,79);     rect(300,980,300,40);   fill(0);   text("Anterior", 320,995);
  fill(255,128,128);    rect(600,980,300,40);   fill(0);   text("Proximo", 615,995);
  
  /*if(mousePressed) {
    if((mouseX<300)&&(mouseY>980)) svar=1;
    if((mouseX>300)&&(mouseX<600)&&(mouseY>980)) svar=2;
    if((mouseX>600)&&(mouseY>980)) svar=22;
    
  }*/
}

void mouseReleased(){
   System.out.println("entrou");
   if(svar == 21){
   if((mouseX<300)&&(mouseY>980)) svar=1;
   if((mouseX>300)&&(mouseX<600)&&(mouseY>980)) svar=2;
   if((mouseX>600)&&(mouseY>980)) svar=22;
   }
   else if(svar == 22){
    if((mouseX<300)&&(mouseY>980)) svar=1;
    if((mouseX>300)&&(mouseX<600)&&(mouseY>980)) svar=21;
    if((mouseX>600)&&(mouseY>980)) svar=23;
   }
   else if(svar == 23){
    if((mouseX<300)&&(mouseY>980)) svar=1;
    if((mouseX>300)&&(mouseX<600)&&(mouseY>980)) svar=22;
    if((mouseX>600)&&(mouseY>980)) svar=24;
   }
}
//a partir daqui da problema 

void tela22(){
  //botoes tela 2
  
  image(p3,0,0);
  fill(156,222,245);   rect(0,980, 300,40); fill(0); text("Inicio", 120,995);
  fill(245,193,79);     rect(300,980,300,40);   fill(0);   text("Anterior", 320,995);
  fill(255,128,128);    rect(600,980,300,40);   fill(0);   text("Proximo", 615,995);
  
  /*if(mousePressed) {
    if((mouseX<300)&&(mouseY>980)) svar=1;
    if((mouseX>300)&&(mouseX<600)&&(mouseY>980)) svar=21;
    if((mouseX>600)&&(mouseY>980)) svar=28;
    
  }*/
}

void tela23(){
  //botoes tela 2
  
  image(p4,0,0);
  fill(156,222,245);   rect(0,980, 300,40); fill(0); text("Inicio", 120,995);
  fill(245,193,79);     rect(300,980,300,40);   fill(0);   text("Anterior", 320,995);
  fill(255,128,128);    rect(600,980,300,40);   fill(0);   text("Proximo", 615,995);
  
  /*if(mousePressed) {
    if((mouseX<300)&&(mouseY>980)) svar=1;
    if((mouseX>300)&&(mouseX<600)&&(mouseY>980)) svar=21;
    if((mouseX>600)&&(mouseY>980)) svar=23;
    
  }*/
}
