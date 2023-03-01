Terninger terninger;
spillePlade visPlade;
 


void setup(){
  size(800,800);
  visPlade = new spillePlade();
  terninger = new Terninger();
  
  
}

void draw(){
  background(150);
  terninger.show();
  visPlade.show(150);
}
