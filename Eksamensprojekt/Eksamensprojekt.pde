Terninger terninger;
spillePlade visPlade;
Spiller spiller;


void setup(){
  size(800,800);
  visPlade = new spillePlade();
  terninger = new Terninger();
  spiller = new Spiller();
}

void draw(){
  background(150);
  terninger.show();
  visPlade.show(150);
  spiller.show();
  spiller.show2();
  
}

void mouseReleased(){
  terninger.roll();
  spiller.værdiTerning();

}
