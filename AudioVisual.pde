import processing.video.*;

Capture cam;

float xoff = 0.0;
boolean[] keys;
float eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ;

import ddf.minim.*;
Minim minim;

AudioInput in;
VrHead []vrHead; 
int count;
int unit = 70;
float g = 10;
void setup() {
  size(640, 640, P3D);
 String[] cameras = Capture.list();  
 if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
    println(cameras[i]);
    }
      cam = new Capture(this, cameras[0]);
    cam.start();     
  }
eyeX = 2000;
eyeY = 2000;
eyeZ = 500;
centerX = width/2;
centerY = height/2;
centerZ = width/2;
upX =0; 
upY = 0;
upZ =-1;
minim = new Minim(this);
in = minim.getLineIn();
int wideCount = width / unit;
int highCount = height / unit;
count = wideCount * highCount;
vrHead= new VrHead[count];
int index = 0;
for (int y = 0; y < highCount; y++) {
for (int x = 0; x < wideCount; x ++) {
vrHead[index++] = new VrHead(x*(unit*3), y*(unit*3), 0);
    }
  }
}
void draw() {  
frameRate(30);
xoff = xoff + .01;
float n = noise(xoff) * width;
if (cam.available() == true) {
cam.read();
}
pushMatrix();
translate(-600,-2400,2800);
scale(1.8);
rotateX(454);
rotateZ(443);
println (mouseX +"," + mouseY);
rotateY(.67);
image(cam, -2200, -200,6000, 5000);
tint(0, 154, in.left.level()*15000, 30);  // Tint blue and set transparency
popMatrix();
