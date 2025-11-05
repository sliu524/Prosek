//Create your own fish drawing!
void setup() {
  size(1000, 500);
  background(173, 216, 230);
  float fishFattness = 14; //Change how fat the fish is!
  float fishNumber = 400; //Change how many fish you want(looks better if more than 200 and less than 800)
  for (int i = 0; i < fishNumber; i ++){
    float x = randomGaussian()*200 + 500;
    float y = random(450) + 20;
    float w = random(70, 90);
    //red to orange
    if (x <= 200){
      fill(255, (x/1.8), 0);
    }
    //orange to yellow
    else if (x <= 400){
      fill(255, 128+(x/3.5), 0);
    }
    //yellow to green
    else if (x <= 600){
      fill(255-(x-345), 255, x-345);
    }
    //green to blue
    else if (x <=800 ){
      fill(0, 255-(x/6.2), x-545);
    }
    //blue to purple
    else if (x <=1000 ) {
      fill(255-(x/7.9), 0, 255-(x/7.8));
    } 
    fish(x, y, w, fishFattness);
  }
 
}
void fish(float x, float y, float sizeX, float sizeY){
  noStroke();
  ellipse(x, y, sizeX, sizeY);
  float tailX = x + (sizeX / 2);
  float tailW = sizeY / 3;
  float tailH = sizeX / 7;
  triangle(tailX, y, tailX + tailW, y - tailH, tailX + tailW, y + tailH);
}
