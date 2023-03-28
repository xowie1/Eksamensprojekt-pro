class Penge{
  int penge1,penge2,nuværendeFelt,nyVærdi; 
  
  Penge(){
    nuværendeFelt = spiller.NuværendeFelt();
    nyVærdi = terninger.getNyVærdi();
    penge1 = 8000;
    penge2 = 8000;
  }
  
  
  
  void update(){
    if(nuværendeFelt%32 > (nuværendeFelt+nyVærdi)%32){
    pengeRød = pengeRød + 3000;
    println(pengeRød);
    }
  }
  
  
  
  public int Penge1(){
    return penge1; 
  }
  
  public int Penge2(){
    return penge2; 
  }
  
  void show(){
    
    textSize(30);
    fill(215, 0, 64);
    text("Rød har " +penge1 + " kr",-380,-370);
    fill(137, 207, 240);
    text("Blå har " +penge2 + " kr",-380,-330);
  }
  
}
