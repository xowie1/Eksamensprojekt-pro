Terninger terninger;
spillePlade visPlade;
void setup(){
  size(800,800);
  terninger = new Terninger();
  visPlade = new spillePlade();
}

void draw(){
  background(150);
  terninger.show();
  visPlade.show(150);
  
}
