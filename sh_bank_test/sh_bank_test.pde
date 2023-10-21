//Shinhan_Bank_Media_Facade;
import processing.opengl.*;
import processing.video.*;
Movie mov1;
//PImage tex1;
//float t1_wid, t1_hit;
int inbetween = 70;

void setup() {
  size(1500, 800, P3D);
  noStroke();
  mov1 = new Movie(this, "test_mov.mp4");
  mov1.speed(1);
  mov1.loop();
  //tex1 = loadImage("test_img.png");
  //textureMode(NORMAL);
  textureMode(IMAGE);
  //t1_wid = mov1.width;
  //t1_hit = mov1.height;
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  camera( mouseX-(width/2), 0.0, 200-0.4*abs(mouseX-width/2), // eyeX, eyeY, eyeZ
    0.0, 0.0, -626, // centerX, centerY, centerZ
    0.0, 1.0, 0.0); // upX, upY, upZ

  background( 0 );
  noStroke();
  noTint();

  //Center
  beginShape();
  texture(mov1);
  vertex( -80, -8-(inbetween*3)-16*3, -600, (mov1.width/32)*12, (mov1.height/6)*0);
  vertex( 80, -8-(inbetween*3)-16*3, -600, (mov1.width/32)*20, (mov1.height/6)*0);
  vertex( 80, -8-(inbetween*3)-16*2, -600, (mov1.width/32)*20, (mov1.height/6)*1 );
  vertex( -80, -8-(inbetween*3)-16*2, -600, (mov1.width/32)*12, (mov1.height/6)*1 );
  endShape();

  beginShape();
  texture(mov1);
  vertex( -80, -8-(inbetween*2)-16*2, -600, (mov1.width/32)*12, (mov1.height/6)*1);
  vertex( 80, -8-(inbetween*2)-16*2, -600, (mov1.width/32)*20, (mov1.height/6)*1);
  vertex( 80, -8-(inbetween*2)-16*1, -600, (mov1.width/32)*20, (mov1.height/6)*2);
  vertex( -80, -8-(inbetween*2)-16*1, -600, (mov1.width/32)*12, (mov1.height/6)*2);
  endShape();

  beginShape();
  texture(mov1);
  vertex( -80, -8-(inbetween*1)-16*1, -600, (mov1.width/32)*12, (mov1.height/6)*2);
  vertex( 80, -8-(inbetween*1)-16*1, -600, (mov1.width/32)*20, (mov1.height/6)*2);
  vertex( 80, -8-(inbetween*1), -600, (mov1.width/32)*20, (mov1.height/6)*3);
  vertex( -80, -8-(inbetween*1), -600, (mov1.width/32)*12, (mov1.height/6)*3);
  endShape();

  beginShape();
  texture(mov1);
  vertex( -80, -8, -600, (mov1.width/32)*12, (mov1.height/6)*3);
  vertex( 80, -8, -600, (mov1.width/32)*20, (mov1.height/6)*3);
  vertex( 80, 8, -600, (mov1.width/32)*20, (mov1.height/6)*4);
  vertex( -80, 8, -600, (mov1.width/32)*12, (mov1.height/6)*4);
  endShape();

  beginShape();
  texture(mov1);
  vertex( -80, 8+(inbetween*1)+16*0, -600, (mov1.width/32)*12, (mov1.height/6)*4);
  vertex( 80, 8+(inbetween*1)+16*0, -600, (mov1.width/32)*20, (mov1.height/6)*4);
  vertex( 80, 8+(inbetween*1)+16*1, -600, (mov1.width/32)*20, (mov1.height/6)*5);
  vertex( -80, 8+(inbetween*1)+16*1, -600, (mov1.width/32)*12, (mov1.height/6)*5);
  endShape();

  //Left side
  beginShape();
  texture(mov1);
  vertex( -240, -8-(inbetween*3)-16*3, -726, (mov1.width/32)*0, (mov1.height/6)*0);
  vertex( -80, -8-(inbetween*3)-16*3, -600, (mov1.width/32)*12, (mov1.height/6)*0);
  vertex( -80, -8-(inbetween*3)-16*2, -600, (mov1.width/32)*12, (mov1.height/6)*1);
  vertex( -240, -8-(inbetween*3)-16*2, -726, (mov1.width/32)*0, (mov1.height/6)*1);
  endShape();

  beginShape();
  texture(mov1);
  vertex( -240, -8-(inbetween*2)-16*2, -726, (mov1.width/32)*0, (mov1.height/6)*1);
  vertex( -80, -8-(inbetween*2)-16*2, -600, (mov1.width/32)*12, (mov1.height/6)*1);
  vertex( -80, -8-(inbetween*2)-16*1, -600, (mov1.width/32)*12, (mov1.height/6)*2);
  vertex( -240, -8-(inbetween*2)-16*1, -726, (mov1.width/32)*0, (mov1.height/6)*2);
  endShape();

  beginShape();
  texture(mov1);
  vertex( -240, -8-(inbetween*1)-16*1, -726, (mov1.width/32)*0, (mov1.height/6)*2);
  vertex( -80, -8-(inbetween*1)-16*1, -600, (mov1.width/32)*12, (mov1.height/6)*2);
  vertex( -80, -8-(inbetween*1)-16*0, -600, (mov1.width/32)*12, (mov1.height/6)*3);
  vertex( -240, -8-(inbetween*1)-16*0, -726, (mov1.width/32)*0, (mov1.height/6)*3);
  endShape();

  beginShape();
  texture(mov1);
  vertex( -240, -8-(inbetween*0)-16*0, -726, (mov1.width/32)*0, (mov1.height/6)*3);
  vertex( -80, -8, -600, (mov1.width/32)*12, (mov1.height/6)*3);
  vertex( -80, 8, -600, (mov1.width/32)*12, (mov1.height/6)*4);
  vertex( -240, 8, -726, (mov1.width/32)*0, (mov1.height/6)*4);
  endShape();

  beginShape();
  texture(mov1);
  vertex(-240, 8+(inbetween*1)+16*0, -726, (mov1.width/32)*0, (mov1.height/6)*4);
  vertex(-80, 8+(inbetween*1)+16*0, -600, (mov1.width/32)*12, (mov1.height/6)*4);
  vertex(-80, 8+(inbetween*1)+16*1, -600, (mov1.width/32)*12, (mov1.height/6)*5);
  vertex(-240, 8+(inbetween*1)+16*1, -726, (mov1.width/32)*0, (mov1.height/6)*5);
  endShape();

  beginShape();
  texture(mov1);
  vertex(-240, 8+(inbetween*2)+16*1, -726, (mov1.width/32)*0, (mov1.height/6)*5);
  vertex(-80, 8+(inbetween*2)+16*1, -600, (mov1.width/32)*12, (mov1.height/6)*5);
  vertex(-80, 8+(inbetween*2)+16*2, -600, (mov1.width/32)*12, (mov1.height/6)*6);
  vertex(-240, 8+(inbetween*2)+16*2, -726, (mov1.width/32)*0, (mov1.height/6)*6);
  endShape();

  //rightside
  beginShape();
  texture(mov1);
  vertex(80, -8-(inbetween*3)-16*3, -600, (mov1.width/32)*20, (mov1.height/6)*0);
  vertex(240, -8-(inbetween*3)-16*3, -715, (mov1.width/32)*32, (mov1.height/6)*0);
  vertex(240, -8-(inbetween*3)-16*2, -715, (mov1.width/32)*32, (mov1.height/6)*1);
  vertex(80, -8-(inbetween*3)-16*2, -600, (mov1.width/32)*20, (mov1.height/6)*1);
  endShape();
  
  beginShape();
  texture(mov1);
  vertex(80, -8-(inbetween*2)-16*2, -600, (mov1.width/32)*20, (mov1.height/6)*1);
  vertex(240,-8-(inbetween*2)-16*2, -715, (mov1.width/32)*32, (mov1.height/6)*1);
  vertex(240, -8-(inbetween*2)-16*1, -715, (mov1.width/32)*32, (mov1.height/6)*2);
  vertex(80, -8-(inbetween*2)-16*1, -600, (mov1.width/32)*20, (mov1.height/6)*2);
  endShape();
  
  beginShape();
  texture(mov1);
  vertex(80, -8-(inbetween*1)-16*1, -600, (mov1.width/32)*20, (mov1.height/6)*2);
  vertex(240, -8-(inbetween*1)-16*1, -715, (mov1.width/32)*32, (mov1.height/6)*2);
  vertex(240, -8-(inbetween*1)-16*0, -715, (mov1.width/32)*32, (mov1.height/6)*3);
  vertex(80, -8-(inbetween*1)-16*0, -600, (mov1.width/32)*20, (mov1.height/6)*3);
  endShape();
  
  beginShape();
  texture(mov1);
  vertex(80, -8, -600, (mov1.width/32)*20, (mov1.height/6)*3);
  vertex(240, -8, -715, (mov1.width/32)*32, (mov1.height/6)*3);
  vertex(240, 8, -715, (mov1.width/32)*32, (mov1.height/6)*4);
  vertex(80, 8, -600, (mov1.width/32)*20, (mov1.height/6)*4);
  endShape();
}
