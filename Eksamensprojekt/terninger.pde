class Terninger{
  int x,y,værdi;
  
  Terninger(){
    x = width/2;
    y = 50;
    værdi = int(random(0,7)); 
  }
  
  void show(){
    println(værdi);
    rectMode(CENTER);
    if(værdi == 1){
      rect(x,y,40,40);
      push();
      fill(0);
      circle(x,y,6);
      pop();
  }
    
    if(værdi == 2){
      rect(x,y,40,40);
      push();
      fill(0);
      circle(x-8,y-8,6);
      circle(x+8,y+8,6);
      pop();
    }
    
    if(værdi == 3){
      rect(x,y,40,40);
      push();
      fill(0);
      circle(x,y,6);
      circle(x-8,y-8,6);
      circle(x+8,y+8,6);
      pop();
    }
    
    if(værdi == 4){
      rect(x,y,40,40);
      push();
      fill(0);
      circle(x-8,y-8,6);
      circle(x+8,y+8,6);
      circle(x+8,y-8,6);
      circle(x-8,y+8,6);
      pop();
    }
    
    if(værdi == 5){
      rect(x,y,40,40);
      push();
      fill(0);
      circle(x-8,y-8,6);
      circle(x+8,y+8,6);
      circle(x+8,y-8,6);
      circle(x-8,y+8,6);
      circle(x,y,6);
      pop();
    }
    
    if(værdi == 6){
      rect(x,y,40,40);
      push();
      fill(0);
      circle(x-8,y-12,6);
      circle(x+8,y+12,6);
      circle(x+8,y-12,6);
      circle(x-8,y+12,6);
      circle(x+8,y,6);
      circle(x-8,y,6);
      pop();
    }
  }
}
