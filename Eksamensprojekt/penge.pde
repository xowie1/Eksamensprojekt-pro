class Penge{
  int penge1,penge2,nuværendeFelt,nyVærdi; 
  
  Penge(){
    
    penge1 = 8000;
    penge2 = 8000;
  }
  
  
  
  void update(){
    nuværendeFelt = spiller.NuværendeFelt();
    nyVærdi = terninger.getNyVærdi();
    println(nuværendeFelt%32);
    println(nyVærdi);
    //println((nyVærdi+nuværendeFelt)%32);
    if(nuværendeFelt%32 > (nyVærdi+nuværendeFelt)%32){
    penge1 = penge1 + 3000;
    //println(penge1);
    
    
    }
  }
  
  void show(){
    textSize(30);
    fill(215, 0, 64);
    text("Rød har " +penge1 + " kr",-380,-370);
    fill(137, 207, 240);
    text("Blå har " +penge2 + " kr",-380,-330);
  }
  
}
