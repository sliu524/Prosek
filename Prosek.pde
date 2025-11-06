//Create your own fish drawing!
void setup() {
  size(1000, 500);
  background(173, 216, 230);
  float fishFattness = 20; //Change how fat the fish is!
  float fishNumber = 500; //Change how many fish you want(looks better if more than 200 and less than 800)
  for (int i = 0; i < fishNumber; i ++){
    float x = randomGaussian() * 300 + 750; //So that it looks like a school of fish swimming from right to left
    float y = randomGaussian() * 150 + 250;
    float w = random(70, 90);
    colorMode(HSB, 360, 100, 100);
    fill(x/3.8, 100, 100);
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
