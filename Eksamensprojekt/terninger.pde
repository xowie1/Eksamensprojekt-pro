class Terning{
  int x,y,value;
  
  Terning(int a){
    x = a;
    y = 50;
  }
  
  void show(){
    rectMode(CENTER);
    if(value == 1){
      fill(255);
      rect(x,y,40,40);
      fill(0);
      circle(x,y,6);
  }
    
    if(value == 2){
      fill(255);
      rect(x,y,40,40);
      fill(0);
      circle(x-8,y-8,6);
      circle(x+8,y+8,6);
    }
    
    if(value == 3){
      fill(255);
      rect(x,y,40,40);
      fill(0);
      circle(x,y,6);
      circle(x-8,y-8,6);
      circle(x+8,y+8,6);
    }
    
    if(value == 4){
      fill(255);
      rect(x,y,40,40);
      fill(0);
      circle(x-8,y-8,6);
      circle(x+8,y+8,6);
      circle(x+8,y-8,6);
      circle(x-8,y+8,6);
    }
    
    if(value == 5){
      fill(255);
      rect(x,y,40,40);
      fill(0);
      circle(x-8,y-8,6);
      circle(x+8,y+8,6);
      circle(x+8,y-8,6);
      circle(x-8,y+8,6);
      circle(x,y,6);
    }
    
    if(value == 6){
      fill(255);
      rect(x,y,40,40);
      fill(0);
      circle(x-8,y-12,6);
      circle(x+8,y+12,6);
      circle(x+8,y-12,6);
      circle(x-8,y+12,6);
      circle(x+8,y,6);
      circle(x-8,y,6);
    }
  }
  
  int roll(){
    value = int(random(1,7));
    return value;
  }
}
