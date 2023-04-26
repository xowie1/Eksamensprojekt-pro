Terning terning1;
Terning terning2;
spillePlade visPlade;
Spiller spiller1;
Spiller spiller2;
boolean tur = true;
ArrayList<Grund> grunde = new ArrayList<Grund>();

void setup(){
  size(800,800);
  visPlade = new spillePlade();
  terning1 = new Terning(width/2-30);
  terning2 = new Terning(width/2+30);
  spiller1 = new Spiller(5,255,135,206,150,30,1);
  spiller2 = new Spiller(5,285,220, 20, 60,65,2);
  for(int i = 0; i < 29; i++){
    grunde.add(new Grund(
    grundData[(4*i)+0],
    grundData[(4*i)+1],
    grundData[(4*i)+2],
    grundData[(4*i)+3]));
  }
}
void draw(){
  background(150);
  visPlade.show(150);
  spiller1.show();
  spiller2.show();
  terning1.show();
  terning2.show();
  for(int j =0; j<29; j++){
    Grund part = grunde.get(j);
    part.show();
  }
}
void keyPressed(){
  if(tur==false){
  spiller1.grundKøb();
  }else{
  spiller2.grundKøb();
}}
void mouseReleased(){
  if(tur == true){
    spiller1.roll();
    spiller1.pengeUpdate();
    spiller1.lykken();
    spiller1.leje();
    tur = !tur;
  }else{
    spiller2.roll();
    spiller2.pengeUpdate();
    spiller2.lykken();
    spiller2.leje();
    tur = !tur;
  }
}
//posistion, pris, leje, ejer
int[] grundData={
0,0,0,0,
1,4000,1000,0,
2,4000,1000,0,
3,4000,1000,0,
4,0,0,0,
5,2000,500,0,
6,2000,500,0,
7,2000,500,0,
8,5000,2000,0,
9,5000,2000,0,
10,5000,2000,0,
11,0,0,0,
12,3000,500,0,
13,3000,500,0,
14,3000,500,0,
15,2000,400,0,
16,2000,400,0,
17,2000,400,0,
18,0,0,0,
19,4000,1000,0,
20,4000,1000,0,
21,4000,1000,0,
22,3000,500,0,
23,3000,500,0,
24,3000,500,0,
25,0,0,0,
26,2000,400,0,
27,2000,400,0,
28,2000,400,0,
};
