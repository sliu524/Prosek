void setup() {
  size(1200,500);
  background(173, 216, 230);
  for (int i = 0; i < 200; i ++){
    float x = random(width);
    float y = random(height);
    float w = random(70, 80);
    fish(x, y, w, 10);
  }
  for (int i = 0; i < 50; i ++){
    float x = random(400, 800);
    float y = random(100, 400);
    float w = random(70, 80);
    fish(x, y, w, 10);
  }
}
void fish(float x, float y, float sizeX, float sizeY){
  float a = random(1);
  if (a < 0.5){
    fill(0, 0, 128);
  } else{
    fill(255);
  }
  ellipse(x, y, sizeX, sizeY);
  float tailX = x + sizeX/2;
  float tailW = sizeY / 3;
  float tailH = sizeX / 7;
  triangle(tailX, y, tailX+tailW, y-tailH, tailX+tailW, y+tailH);
}
