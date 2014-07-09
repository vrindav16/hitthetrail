/* load the background picture and character
run a for loop that moves the picture to the left if the key is pressed
counter for number of times key is pressed
if statements for obstacles/ending */

PImage [] img = new PImage[7];
PImage hicker;
PImage hicker1;
PImage hicker2;
PImage bird;
int image = 1;
int counter =0;
boolean pressed = false;
import ddf.minim.*;

AudioPlayer player;
Minim minim;//audio context

AudioPlayer birdy;
Minim minim1;




void setup () {
 size (704,707);
 minim = new Minim(this);
 player = minim.loadFile("waterfall.mp3", 2048);
 player.play();
 
 minim1 = new Minim(this);
 birdy = minim1.loadFile("birdchirp.mp3", 2048);
 
 img[0] = loadImage("b1.PNG");
 img[1] = loadImage("b2.PNG");
 img[2] = loadImage("b3.PNG");
 img[3] = loadImage("b4.PNG");
 img[4] = loadImage("b5.PNG");
 img[5] = loadImage("b6.PNG");
 img[6] = loadImage("b7.PNG");
 hicker = loadImage("hicker.png");
 hicker1 = loadImage("hicker1.png");
 hicker2 = loadImage("hicker2.png");
 bird = loadImage("bird.png");
 background (img[0]);
 text("Instructions:", 100, 50);
}
 


void draw () {
  // The font must be located in the sketch's 
  // "data" directory to load successfully
  image(hicker, 50, 525,100,100);
  if (keyCode==RIGHT&&keyPressed&&pressed==false) {
    pressed=true;
    if ((image<6)) {
      background (img[image]);  
      image++; 
    }//1 first
        
    else{ 
      background (img[6]);
      image (hicker,50, 525,100,100);
      image (hicker1,50, 525,100,100);
      image (hicker2,50, 525,100,100);
    }
   counter++;
   if (counter==8) {
     image (bird,150,280,100,100);
     birdy.play();
   }
   if (counter==9) {
     birdy.close();
     minim1.stop();
   }
     
  }


}
  
  
void keyReleased () {
  pressed=false;
}

void stop()
{
  player.close();
  minim.stop();
  super.stop();

}
  /*
  if (keyCode==RIGHT&&keyPressed) {
    if ((image >= 0) && (image<7)) { 
    if(counter%30==0) 
    image++;
    //change=true;
    counter++;
    background (img[image%7]);
    image (img2,0,525,100,100);
    }
    i=i+1;
  }
   // image (img3,0,525,100,100);
    
    //  moving ();
   
*/   

/*void moving () {
  
  }
}


void refreshBack () {
  //for (int i=0, i++) {
    
   
  
    //if steps < 10 > 0 i
} */
