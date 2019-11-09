mole leftMole;
mole leftCentreMole;
mole rightCentreMole;
mole rightMole;

int score = 0;
PImage sky;

void setup()
{
  size(1200, 700);
  sky = loadImage("ground.png");
  sky.resize(width, height);

  leftMole = new mole(100, 500, 1);
  leftCentreMole = new mole(390, 500, 1);
  rightCentreMole = new mole(680, 500, 1);
  rightMole = new mole(970, 500, 1);
}

void draw()
{
  background(sky);
  textSize(25);
  text("Score: " + score, 75, 75);

  fill(#672525);
  ellipse(160, 580, 190, 100);
  ellipse(450, 580, 190, 100);
  ellipse(740, 580, 190, 100);
  ellipse(1030, 580, 170, 100);

  leftMole.Move();
  leftMole.Render();
  leftMole.Popup();

  leftCentreMole.Move();
  leftCentreMole.Render();
  leftCentreMole.Popup();

  rightCentreMole.Move();
  rightCentreMole.Render();
  rightCentreMole.Popup();

  rightMole.Move();
  rightMole.Render();
  rightMole.Popup();
}

void keyPressed()
{
  if (key == 'a' && leftMole.y < 500)
  {
    leftMole.y = 551;
    leftMole.downTime = millis();
    score = score + 1;
  }
  if (key == 'w' && leftCentreMole.y < 500)
  {
    leftCentreMole.y = 551;
    leftCentreMole.downTime = millis();
    score = score + 1;
  }
  if (key == 's' && rightCentreMole.y < 500)
  {
    rightCentreMole.y = 551;
    rightCentreMole.downTime = millis();
    score = score + 1;
  }
  if (key == 'd' && leftMole.y < 500)
  {
    rightMole.y = 551;
    rightMole.downTime = millis();
    score = score + 1;
  }
}
