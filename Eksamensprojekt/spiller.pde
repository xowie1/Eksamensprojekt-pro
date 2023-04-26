class Spiller{
  int spillepladeFelter,spillepladeDIA;
  int posPlade,oldPlade;
  int penge;
  int spillerNummer;
  int x,y,r,g,b,yText,bKort,green;
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
    green = gg;
    b = bb;
    yText = yTekst;
    mode = 2;
    bKort = 130;
    kort = true;
    spillerNummer=_spillerNummer;
  }
  
  //Her slår vi med terningen
  void roll(){
    oldPlade=posPlade;
    posPlade+=terning1.roll();
    posPlade+=terning2.roll();
  }
  
  // Her trækker den en tilfældigt kort hvis man lander på et 'prøv lykken' felt
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
    
    //Viser hvor mange penge hver spiller har
    text("Spiller har " + penge + " kr",20,yText);
    
    //Viser spilleren
    push();
    translate(width/2, height/2);
      rotate((TWO_PI/spillepladeFelter)*posPlade);
      fill(r,g,b);
      circle(x,y,20);
      pop(); 
    
    //Viser prøv lykken kortene
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
  }
  //Her får man 3000 kr hvis man passerer start
  void pengeUpdate(){
    if(oldPlade%spillepladeFelter > posPlade%spillepladeFelter){
    penge = penge + 3000;  
    }
  }
  
  //Her køber man en grund
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

//Her skal man betale leje hvis man lander på en modsat grund, og ejeren får penge
void leje(){
  println(spiller1.penge);
  println(spiller2.penge);
  Grund g = grunde.get(posPlade%29);
      if(g.ejer == 0){
    }else if(g.ejer !=spillerNummer){
       
       penge -= g.leje;
       if(g.ejer == 1){
         spiller1.penge+=g.leje;
       }
       if(g.ejer == 2){
         spiller2.penge+=g.leje;
       }
       println(spiller1.penge);
       println(spiller2.penge);
    }
}
}
    
