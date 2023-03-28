Terninger terninger;
spillePlade visPlade;
Spiller spiller;
Penge penge;


void setup(){
  size(800,800);
  visPlade = new spillePlade();
  terninger = new Terninger();
  spiller = new Spiller();
  penge = new Penge();
  
}

void draw(){
  background(150);
  terninger.show();
  visPlade.show(150);
  spiller.show();
  penge.show();

  
}

void mouseReleased(){
  terninger.roll();
  spiller.værdiTerning();

}
