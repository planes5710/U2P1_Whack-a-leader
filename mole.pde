                                       
class mole
{
  float x;
  float y;
  float ySpeed;
  int downTime = -9999;
  int reloadTime = 2000;

  mole()
  {
    x = 100;
    y = 500;
    ySpeed = 1;
  }

  mole(float _x, float _y, float _ySpeed)
  {
    x = _x;
    y = _y;
    ySpeed = _ySpeed;
  }

  void Move()
  {
    if(millis()-downTime > reloadTime)
    y = y + ySpeed;
  }

  void Popup()
  {
    if (y > 550)
    {
      downTime = millis();
      reloadTime = (int)random(500,3500);
      ySpeed =  random(-2,-1);
      y=549;
    }

    if (y < 450)
    {
      ySpeed = ySpeed * -1;
    }
   
  }

  void Render()
  {
    fill(#FA1008);
    rect(x, y, 120, 100);
  }
  
  
  
  
}
