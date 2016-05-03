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

