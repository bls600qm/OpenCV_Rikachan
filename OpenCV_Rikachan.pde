import ddf.minim.*;
import gab.opencv.*; 
import processing.video.*;
import java.awt.*;
 
Capture video;
Minim minim;  
AudioPlayer player, player2, bgm;  
OpenCV opencv;
Rectangle[] faces;

boolean[] field = { false, false, false,false,false,false,false,false };
PFont font;
PImage eye1, eye2;
PImage face1, face2, face3, face4;
PImage ribon, ribonP;
PImage earing, earingG;
PImage travel, licca, glass, ear, camera, onpu;
PImage haikei, re;
PImage gface, gface2, gface3, gface4;
boolean[] flag = { false, false, false, false };

void setup() {
  size(900, 480);
  video = new Capture(this, 640, 480);
  opencv = new OpenCV(this, 640, 480);
  minim = new Minim(this);
  face1=loadImage("face1.png");
  face2=loadImage("face2.png");
  face3=loadImage("face3.png");
  face4=loadImage("face4.png");
  ribon=loadImage("ribon.png");
  ribonP=loadImage("ribonP.png");
  travel=loadImage("travel.png");
  licca=loadImage("licca.png");
  glass=loadImage("glass.png");
  ear=loadImage("ear.png");
  camera=loadImage("camera.png");
  onpu=loadImage("onpu.png");
  earing=loadImage("earing.png");
  earingG=loadImage("earingG.png");
  gface=loadImage("ggface.png");
  gface2=loadImage("ggface2.png");
  gface3=loadImage("ggface3.png");
  gface4=loadImage("ggface4.png");
  haikei=loadImage("rika1.png");
  re=loadImage("re.png");
  video.start();  
  font =createFont("AvenirNextCondensed-HeavyItalic-48.vlw",22);
  textFont(font); 
  player = minim.loadFile("clicked.mp3");  
  player2=minim.loadFile("shatter.mp3");
  bgm=minim.loadFile("bgm.mp3");
}
 
void draw() {

    image(haikei,0,0);
    fill(0,0,0);
    textSize(40);
    text("Click Here!",150,200);
    textSize(30);
    fill(255,105,180);
    text("Sumitomo Rika",220,320);
    if(mousePressed){
     player.play();
     player.rewind(); 
     flag[0]=false;
     flag[1]=true;
    }

if(flag[1]==true){
  opencv.loadImage(video); 
  int a=110;
  image(video, a, 0 );  
  
   opencv = new OpenCV(this, video);
   opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);
   faces = opencv.detect();
   frame();//frame kaku method
   
   fill(255,105,180);
    textSize(22);
   //left box 1
   text("+Ribon",30,45);
   image(ribon,20,40);
   
   //left box 2
   text("+Glasses",27,160);
   image(glass,20,170);
   
   //left box 3
   text("+Earing",30,270);
   image(ear,22,280);
   
   //left box 4
   image(travel,20,350);
   
   //right box 1
   image(licca,770,20);
   
   //right box 2
   text("+BGM",780,160);
   image(onpu,770,150);
   
   //right box 3
   text("Camera",780,270);
   image(camera,775,260);
   
   //right box 4
   text("Re start",780,380);
   image(re,775,370);
   
    
  
    for(int i=0; i<faces.length; i++){
       image(face1, faces[0].x-(faces[0].width/2)+a+5, faces[0].y-(faces[0].height)+20, faces[0].width*2, faces[0].height*2);
      
      if(i==1){
         image(face2, faces[1].x-(faces[1].width/2)+a, faces[1].y-(faces[1].height)+20, faces[1].width*2.3, faces[1].height*2.9);
       }if(i==2){
         image(face3, faces[2].x-(faces[2].width/2)+a-25,faces[2].y-(faces[2].height*0.5), faces[2].width*2.4, faces[2].height*3.4);
       }if(i==3){
         image(face4, faces[3].x-(faces[3].width/2)+a-60, faces[3].y-(faces[3].height/2)+20, faces[3].width*2.9, faces[3].height*2.1);
       }
     }
     
     //if mouse released 
      if(field[0] == true) { //ribon
       for(int i=0; i<faces.length; i++){
        image(ribon,faces[0].x-(faces[0].width/2)+a, faces[0].y-(faces[0].height)+20, faces[0].width, faces[0].height);
        if(i==1){
         image(ribonP,faces[1].x-(faces[1].width/3)+a, faces[1].y-(faces[1].height)+20, faces[1].width, faces[1].height);
        }if(i==2){
         image(ribon,faces[2].x-(faces[2].width/5)+a,faces[2].y-(faces[2].height*0.6), faces[2].width, faces[2].height);
        }if(i==3){
         image(ribonP, faces[3].x-(faces[3].width/2)+a-20,faces[3].y-(faces[3].height/2)+20, faces[3].width*1.1, faces[3].height*1.1);
         }
       }
      }if(field[1] == true) {//megane
          for(int i=0; i<faces.length; i++){
           image(gface, faces[0].x-(faces[0].width/2)+a+5, faces[0].y-(faces[0].height)+20, faces[0].width*2, faces[0].height*2);
      
            if(i==1){
             image(gface2, faces[1].x-(faces[1].width/2)+a, faces[1].y-(faces[1].height)+20, faces[1].width*2.3, faces[1].height*2.9);
            }if(i==2){
             image(gface3, faces[2].x-(faces[2].width/2)+a-25,faces[2].y-(faces[2].height*0.5), faces[2].width*2.4, faces[2].height*3.4);
            }if(i==3){
             image(gface4, faces[3].x-(faces[3].width/2)+a-60, faces[3].y-(faces[3].height/2)+20, faces[3].width*2.9, faces[3].height*2.1);
           }
       }
         
      }if(field[2] == true) {//earing
           for(int i=0; i<faces.length; i++){
          image(earing,faces[0].x-(faces[0].width/2)+a, faces[0].y-(faces[0].height/10)+20, faces[0].width*2, faces[0].height);
          if(i==1){
           image(earingG,faces[1].x-(faces[1].width/3)+a, faces[1].y-(faces[1].height/10)+20, faces[1].width*2, faces[1].height);
          }if(i==2){
           image(earing,faces[2].x-(faces[2].width/2)+a,faces[2].y+20, faces[2].width*2, faces[2].height);
          }if(i==3){
           image(earingG,faces[3].x-(faces[3].width/3)+a-20,faces[3].y-(faces[3].height/10)+60, faces[3].width*2, faces[3].height);
           }
         }
      
      }if(field[5] == true) {
       bgm.play();
        
      }if(field[6] == true) {//camera
        
      }if(field[7] == true) {//restart
      
        
      }
    
 }  
}
 
void captureEvent(Capture c) {
  c.read();
}


void frame(){
  
  int h=20; //haba
  int b=110; //block 
  //waku
  noStroke(); 
  fill(255,105,180);
  rect(0,0,h,480);
  rect(0,0,900,h);
  rect(900-h,0,h,480);
  rect(0,480-h,900,h);
  
  //uchi waku
  rect(h+b,h,h,480);
  rect(900-(h*2+b),h,h,480);
  
  //block left 4
  stroke(255,105,180);
  fill(#ffff80);
  rect(h,h,b,b);
  fill(#bfff80);
  rect(h,h+b,b,b);
  fill(#ffff80);
  rect(h,h+b*2,b,b);
  fill(#d1e8ff);
  rect(h,h+b*3,b,b);
  
  //block right 4
  stroke(255,105,180);
  fill(#e8d1ff);
  rect(900-(h+b),h,b,b);
  fill(#bfff80);
  rect(900-(h+b),h+b,b,b);
  fill(#ffff80);
  rect(900-(h+b),h+b*2,b,b);
  fill(#bfff80);
  rect(900-(h+b),h+b*3,b,b);
}

void mouseReleased() {

  int x=mouseX;
  int y=mouseY;
  
  if(x<130 && y<130) {
    field[0] = true;
    player.play();
    player.rewind(); 
  }else if(x<130 && y<240) {
    field[1] = true;
    player.play();
    player.rewind(); 
  }else if(x<130 && y<350) {
    field[2] = true;
    player.play();
    player.rewind(); 
  }else if(x<130 && y<460) {
    field[3] = true; 
  }else if(770<x && y<130) {
    field[4] = true; 
  }else if(770<x && y<240) {
    field[5] = true;
    player.play();
    player.rewind(); 
  }else if(770<x && y<350) {  //camara
    field[6] = true;
    player2.play();
    player2.rewind(); 
    int count=0;
    String path  = System.getProperty("user.home") + "/Desktop/screenshot" + count + ".jpg";
        save(path);
        count++; 
  }else if(770<x && y<460) {
    field[7] = true;
    player.play();
    player.rewind();
     
    flag[1]=false;
    flag[0]=true;
    field[0] = false;
    field[1] = false;
    field[2] = false;
    field[3] = false;
    field[4] = false;
    field[5] = false;
    field[6] = false;
       
     bgm.pause();
     player.pause();  
     player2.pause();
  }
  
}

void stop(){
  player.close();  
  player2.close(); 
  bgm.close();
  minim.stop();
  super.stop();
}