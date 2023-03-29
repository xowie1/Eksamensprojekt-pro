Terning terning1;
Terning terning2;
spillePlade visPlade;
Spiller spiller1;
Spiller spiller2;
boolean tur = true;


void setup(){
  size(800,800);
  
  visPlade = new spillePlade();
  terning1 = new Terning(width/2-30);
  terning2 = new Terning(width/2+30);
  spiller1 = new Spiller(5,255,135,206,150,30);
  spiller2 = new Spiller(5,285,220, 20, 60,65);
  
  
}

void draw(){
  background(150);
  visPlade.show(150);
  spiller1.show();
  spiller2.show();
  terning1.show();
  terning2.show();
  
  
  
}

void mouseReleased(){
  if(tur == true){
  
    
  spiller1.roll();
  spiller1.pengeUpdate();
  spiller1.lykken();
  tur = !tur;
  }else{
    spiller2.roll();
    spiller2.pengeUpdate();
    spiller2.lykken();
    tur = !tur;
  }
  
  

}
