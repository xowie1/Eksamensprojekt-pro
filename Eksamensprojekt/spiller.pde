class Spiller{
  int spillepladeFelter,diameter,spillepladeDIA,nyVærdi,nyVærdi2;
  int antalRyk,nuværendeFelt,nuværendeFelt2;
  int pengeRød, pengeBlå; 
  float p1x,p2x;
  boolean spiller;
  
  
  Spiller(){
    spiller=true;
    spillepladeFelter=32;
    spillepladeDIA=650;
    diameter=spillepladeDIA/3+(spillepladeDIA/24);
    p1x = spillepladeFelter/1.5;
    p2x = spillepladeFelter/1.25;
    nuværendeFelt = 0;
    nuværendeFelt2 = 0; 
    pengeRød = 8000; 
     
  }
  
  void værdiTerning(){
    if(spiller == true){
    nyVærdi = terninger.getNyVærdi();
    nuværendeFelt=nuværendeFelt+nyVærdi;
    println(nuværendeFelt%32);
    
    }else{
      nyVærdi2 = terninger.getNyVærdi();
      nuværendeFelt2 = nuværendeFelt2+nyVærdi2;
    }
    spiller = !spiller;
  }
  
    public int NuværendeFelt(){
      return nuværendeFelt; 
    }
  
 
  void show(){
    translate(width/2, height/2);
      push();
      rotate((TWO_PI/spillepladeFelter)*nuværendeFelt);
      fill(215, 0, 64);
      circle(p1x,diameter,20);
      pop();
      
      push();
      rotate((TWO_PI/spillepladeFelter)*nuværendeFelt2);
        fill(137, 207, 240);
        circle(p2x,diameter*1.25,20);
      pop();
       
  }
}
