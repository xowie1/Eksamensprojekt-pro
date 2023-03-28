class Penge{
  int penge1,penge2; 
  
  Penge(){
    penge1 = 8000;
    penge2 = 8000;
  }
  
  void show(){
    
    textSize(30);
    fill(215, 0, 64);
    text("Rød har " +penge1 + " kr",-380,-370);
    fill(137, 207, 240);
    text("Blå har " +penge2 + " kr",-380,-330);
  }
  
  public int Penge1(){
    return penge1; 
  }
  
  public int Penge2(){
    return penge2; 
  }
  
}
