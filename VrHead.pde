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
void update()
{
 if(z > height +400)
  {
    vel = - vel;
  }
fill(in.left.level()*10000,0,0,trans);
//VrFace
pushMatrix(); 
beginShape();
vertex(x+134.376, y+3.525,z+78.118);
vertex(x+70.241, y+114.610,z+78.118); 
vertex(x+80.163, y+131.795,z+4.062); 
vertex(x+154.219,y+ 3.525,z+4.062); 
endShape();
//topPlane    
beginShape();
vertex(x+134.376,y+ 3.525,z+78.118);
vertex(x+70.241,y+ 114.610,z+78.118); 
vertex(x+43.301,y+75,z+50);
vertex(x+86.603,y+0,z+50);
endShape();
//Bottom Plane
beginShape();
vertex(x+154.219,y+ 3.525,z+4.062); 
vertex(x+80.163, y+131.795,z+4.062); 
vertex(x+50,y+86.603,z+0);
vertex(x+100,y+0,z+0);
endShape();
}
//LeftPlane

