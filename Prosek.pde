//Create your own fish drawing!
void setup() {
  size(1470,500);
  background(173, 216, 230);
  float fishfattness = 15; //Change how fat the fish is!
  for (int i = 0; i < 300; i ++){
    float x = randomGaussian()*400+735;
    float y = random(450)+20;
    float w = random(70, 90);
    fish(x, y, w, fishfattness);
  }
  for (int i = 0; i < 20; i ++){
    weed(100,200,50,2);
  }
}
void fish(float x, float y, float sizeX, float sizeY){
  float a = random(1);
  if (a < 0.5){
    noStroke();
    fill(0, 0, 128);
  } else{
    noStroke();
    fill(255);
  }
  ellipse(x, y, sizeX, sizeY);
  float tailX = x + sizeX/2;
  float tailW = sizeY / 3;
  float tailH = sizeX / 7;
  triangle(tailX, y, tailX+tailW, y-tailH, tailX+tailW, y+tailH);
}
void weed(float x, float y, float l, float w){
  noFill();
  stroke(0);
  strokeWeight(w);
  arc(x, y, l, l, HALF_PI, PI+HALF_PI);
  //arc(x+l, y, l, l, PI+QUARTER_PI, HALF_PI);
}
