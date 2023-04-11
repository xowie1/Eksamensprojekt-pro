class Spiller{
  int spillepladeFelter,spillepladeDIA;
  int posPlade,oldPlade;
  int penge;
  int spillerNummer;
  int x,y,r,g,b,yText,bKort;
  int mode;
  boolean spiller,kort;
  
  
  Spiller(int a,int b,int rr,int gg, int bb,int yTekst,int _spillerNummer){
    spiller=true;
    spillepladeFelter=29;
    spillepladeDIA=650;
    x = a;
    y = b;
    posPlade = 0; 
    penge = 8000;
    r = rr;
    g = gg;
    b = bb;
    yText = yTekst;
    mode = 2; 
    bKort = 130;
    kort = true;
    spillerNummer=_spillerNummer;
  }
  
  void roll(){
    oldPlade=posPlade;
    posPlade+=terning1.roll();
    posPlade+=terning2.roll();
    
  }
  
  void lykken(){
    if (posPlade%spillepladeFelter == 4 || posPlade%spillepladeFelter == 11 || posPlade%spillepladeFelter == 18 || posPlade%spillepladeFelter == 25 ){
      mode = int (random(2));
      if(mode == 0){
      penge += 1000;
    }else{
      penge -= 1000;
    }
    }
  }
  
  void show(){
    fill(r,g,b);
    textSize(30);
    text("Spiller har " + penge + " kr",20,yText);
    push();
    translate(width/2, height/2);
      rotate((TWO_PI/spillepladeFelter)*posPlade);
      fill(r,g,b);
      circle(x,y,20);
      pop(); 
    
    
    if (mode ==0){
      fill(255);
      rect(width/2,height/2,bKort,bKort/2);
      fill(0);
      textSize(15);
      text("Du vandt 1000 kr", width/2-50,height/2);
      
    }
    if (mode ==1){
      fill(255);
      rect(width/2,height/2,bKort,bKort/2);
      fill(0);
      textSize(15);
      text("Du taber 1000 kr", width/2-50,height/2);
      
    }
    Grund g = grunde.get(posPlade%29);
    if (g.ejer == spillerNummer){
      push();
      translate(width/2, height/2);
      rotate((TWO_PI/spillepladeFelter)*posPlade);
      fill(r,5,b);
      rect(x,y+30,20,20);
      pop();
    
  }
  }
  
  
  
  void pengeUpdate(){
    if(oldPlade%spillepladeFelter > posPlade%spillepladeFelter){
    penge = penge + 3000;  
    }}
  void grundKøb(){
    Grund g = grunde.get(posPlade%29);
    if(keyPressed){
      if(key == 'y' || key == 'Y'){
      // Tjek om grunden er ledig
          if(g.ejer == 0){
        // Opdater grunden med spillerens nummer som ejer
          g.ejer = spillerNummer;
        // Træk grundens pris fra spillerens penge
          penge -= g.pris;
        // Opdater grunden i arraylisten
          grunde.set(posPlade%29, g);
      }}}

}
void leje(){
  Grund g = grunde.get(posPlade%29);
      if(g.ejer ==0){
    }else if(g.ejer !=spillerNummer){
       print(g.leje);
       penge -= g.leje;
    }

}
      //hvis grundplade == 0 skal man have mulighed for at købe eller ej
      //men hvis grundplade !=spillernummer || 0 skal man betale til den anden spiller
}
    
