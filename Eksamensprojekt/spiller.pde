class Spiller{
  int spillepladeFelter,spillepladeDIA;
  int posPlade,oldPlade;
  int penge; 
  int x,y,r,g,b,yText;
  boolean spiller;
  
  
  Spiller(int a,int b,int rr,int gg, int bb,int yTekst){
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
  }
  
  void roll(){
    oldPlade=posPlade;
    posPlade+=terning1.roll();
    posPlade+=terning2.roll();
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
     
     
      
  }
  
  void pengeUpdate(){
    if(oldPlade%spillepladeFelter > posPlade%spillepladeFelter){
    penge = penge + 3000;  
    }
  }
}
