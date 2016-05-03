class VrHead
{
  float red = random(255);
  float green = random(100);
  float trans = random(50);
 float blue = random(255); 
  float r = random(10);
  float r2 = random(radians(10));
  float r3 = 0.01f;
  float x;
  float y;
  float z;  
  float acc = random(200);
  float vel = 0;
  float deltaTime = 1.0f / 60.0f;

VrHead(float xPos, float yPos, float zPos)
{
  x = xPos;
  y = yPos;
  z = zPos;
}
}
