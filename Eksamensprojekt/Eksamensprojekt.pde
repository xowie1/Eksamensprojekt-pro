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
  spiller1 = new Spiller(30,260,135,206,150);
  spiller2 = new Spiller(30,290,220, 20, 60);
  
}

void draw(){
  background(150);
  terning1.show();
  terning2.show();
  visPlade.show(150);
  spiller1.show();
  spiller2.show();
  
  
}

void mouseReleased(){
  if(tur == true){
  spiller1.roll();
  tur = !tur;
  }else{
    spiller2.roll();
    tur = !tur;
  }
  spiller1.pengeUpdate();
  spiller2.pengeUpdate();

}
