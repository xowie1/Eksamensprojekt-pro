class Terninger{
  int x,y,værdi,værdi2,nyVærdi;
  
  Terninger(){
    x = width/2;
    y = 50;
    værdi = int(random(1,7));
    værdi2 = int(random(1,7));
    nyVærdi = værdi + værdi2; 
    println(nyVærdi);
   
    
  }
  
  void show(){
    rectMode(CENTER);
    if(værdi == 1){
      fill(255);
      rect(x-30,y,40,40);
      push();
      fill(0);
      circle(x-30,y,6);
      pop();
  }
    
    if(værdi == 2){
      fill(255);
      rect(x-30,y,40,40);
      push();
      fill(0);
      circle(x-8-30,y-8,6);
      circle(x+8-30,y+8,6);
      pop();
    }
    
    if(værdi == 3){
      fill(255);
      rect(x-30,y,40,40);
      push();
      fill(0);
      circle(x-30,y,6);
      circle(x-8-30,y-8,6);
      circle(x+8-30,y+8,6);
      pop();
    }
    
    if(værdi == 4){
      fill(255);
      rect(x-30,y,40,40);
      push();
      fill(0);
      circle(x-8-30,y-8,6);
      circle(x+8-30,y+8,6);
      circle(x+8-30,y-8,6);
      circle(x-8-30,y+8,6);
      pop();
    }
    
    if(værdi == 5){
      fill(255);
      rect(x-30,y,40,40);
      push();
      fill(0);
      circle(x-8-30,y-8,6);
      circle(x+8-30,y+8,6);
      circle(x+8-30,y-8,6);
      circle(x-8-30,y+8,6);
      circle(x-30,y,6);
      pop();
    }
    
    if(værdi == 6){
      fill(255);
      rect(x-30,y,40,40);
      push();
      fill(0);
      circle(x-8-30,y-12,6);
      circle(x+8-30,y+12,6);
      circle(x+8-30,y-12,6);
      circle(x-8-30,y+12,6);
      circle(x+8-30,y,6);
      circle(x-8-30,y,6);
      pop();
    }
    
    if(værdi2 == 1){
      fill(255);
      rect(x+30,y,40,40);
      push();
      fill(0);
      circle(x+30,y,6);
      pop();
  }
    
    if(værdi2 == 2){
      fill(255);
      rect(x+30,y,40,40);
      push();
      fill(0);
      circle(x-8+30,y-8,6);
      circle(x+8+30,y+8,6);
      pop();
    }
    
    if(værdi2 == 3){
      fill(255);
      rect(x+30,y,40,40);
      push();
      fill(0);
      circle(x+30,y,6);
      circle(x-8+30,y-8,6);
      circle(x+8+30,y+8,6);
      pop();
    }
    
    if(værdi2 == 4){
      fill(255);
      rect(x+30,y,40,40);
      push();
      fill(0);
      circle(x-8+30,y-8,6);
      circle(x+8+30,y+8,6);
      circle(x+8+30,y-8,6);
      circle(x-8+30,y+8,6);
      pop();
    }
    
    if(værdi2 == 5){
      fill(255);
      rect(x+30,y,40,40);
      push();
      fill(0);
      circle(x-8+30,y-8,6);
      circle(x+8+30,y+8,6);
      circle(x+8+30,y-8,6);
      circle(x-8+30,y+8,6);
      circle(x+30,y,6);
      pop();
    }
    
    if(værdi2 == 6){
      fill(255);
      rect(x+30,y,40,40);
      push();
      fill(0);
      circle(x-8+30,y-12,6);
      circle(x+8+30,y+12,6);
      circle(x+8+30,y-12,6);
      circle(x-8+30,y+12,6);
      circle(x+8+30,y,6);
      circle(x-8+30,y,6);
      pop();
    }
    
  }
  
  void roll(){
    værdi = int(random(1,7));
    værdi2 = int(random(1,7));
    nyVærdi = værdi + værdi2; 
    println(nyVærdi);
  }
  
}
