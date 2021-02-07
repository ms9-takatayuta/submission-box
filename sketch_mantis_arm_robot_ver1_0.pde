float baseH = 80;
float armL1 = 50;
float armL2 = 50;
float armL3 = 30;
float armW1 = 8;
float armW2 = 10;
float armW3 = 6;
float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float dif = 2.0;

void setup(){
  size(1200, 800, P3D);
  
  camera(100, 100, 100, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key == 'm'){
      angle0 = angle0 + dif;
    }
    if(key == 'M'){
      angle0 = angle0 - dif;
    }
    if(key == 's'){
      angle1 = angle1 + dif;
    }
    if(key == 'S'){
      angle1 = angle1 - dif;
    }
    if(key == 'a'){
      angle2 = angle2 + dif;
    }
    if(key == 'A'){
      angle2 = angle2 - dif;
    }
    if(key == 'r'){
      angle3 = angle3 + dif;
    }
    if(key == 'R'){
      angle3 = angle3 - dif;
    }
  }
  
  rotateZ(radians(angle0));
  translate(0,0,-baseH/2);
  fill(#30FF03);
  box(15,15,baseH);
  
  translate(7.5+armW1/2,0,baseH/2-armW1/2);
  rotateX(radians(angle1));
  
  translate(0,armL1/2-armW1/2,0);
  fill(#93FF36);
  box(armW1,armL1,armW1);
  
  translate(0,armL1/2-armW2/2,0);
  rotateX(radians(angle2));
  
  translate(0,0,armL2/2-armW2/2);
  fill(#41B428);
  box(armW2,armW2,armL2);
  
  translate(0,0,armL2/2-armW3/2);
  rotateX(radians(angle3));
  
  translate(0,armL3/2-armW3/2,0);
  fill(#429530);
  box(armW3,armL3,armW3);

}
