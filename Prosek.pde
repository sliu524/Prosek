//Create your own fish drawing!
void setup() {
  float fishFattness = 30; //Customize how fat the fish is. (works best above 20 and less than 70)
  float fishNumber = 200; //Customize how many fish you want to draw(works best when more than 200 and less than 800)
  size(1000, 500);
  background(173, 216, 230); //You can change the color of background
  for (int i = 0; i < fishNumber; i ++) {
    float x = randomGaussian() * 300 + 750; //Shifted the mean of standard deviation to 750 so that it looks like a school of fish swimming from right to left
    float y = randomGaussian() * 150 + 250; //Standard deviation with 250 as mean and 150 as deviation
    float w = random(70, 90); //Control how long the fish is
    colorMode(HSB, 360, 100, 100);
    fill(x / 3.8, 100, 100); //The color goes from 0 to approximately 270: red to dark purple
    fish(x, y, w, fishFattness);
  }
}

//fish drawing function
void fish(float x, float y, float sizeX, float sizeY) {
  noStroke();
  ellipse(x, y, sizeX, sizeY);
  float tailX = x + (sizeX / 2);
  float tailW = sizeY / 3; //To make the tail smaller proportionally
  float tailH = sizeX / 7; //To make the tail shorter proportionally
  triangle(tailX, y, tailX + tailW, y - tailH, tailX + tailW, y + tailH);
}
