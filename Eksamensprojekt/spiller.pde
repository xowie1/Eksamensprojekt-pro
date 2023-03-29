class Spiller{
  int spillepladeFelter,spillepladeDIA;
  int posPlade,oldPlade;
  int penge; 
  int x,y;
  boolean spiller;
  
  
  Spiller(int a,int b){
    spiller=true;
    spillepladeFelter=32;
    spillepladeDIA=650;
    x = a;
    y = b;
    posPlade = 0; 
    penge = 8000; 
     
  }
  
  void roll(){
    oldPlade=posPlade;
    posPlade+=terning1.roll();
    posPlade+=terning2.roll();
  }
  
  void show(){
    push();
    translate(width/2, height/2);
      
      rotate((TWO_PI/spillepladeFelter)*posPlade);
      fill(215, 0, 64);
      circle(x,y,20);
      pop(); 
      
  }
  
  void pengeUpdate(){
    if(posPlade%32 > (oldPlade+posPlade)%32){
    penge = penge + 3000;
    println(penge);
  }
  }
}
