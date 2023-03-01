class Spiller{
  int p1x,p1y,p2x,p2y;
  
  Spiller(){
    p1x = width/2;
    p1y = 625;
    p2x=width/2;
    p2y=675;
  }
  
  void show(){
    fill(215, 0, 64);
    circle(p1x,p1y,20);
    fill(137, 207, 240);
    circle(p2x,p2y,20);
  } 

}
