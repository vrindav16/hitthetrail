/* load the background picture and character
run a for loop that moves the picture to the left if the key is pressed
counter for number of times key is pressed
if statements for obstacles/ending */

/* @pjs preload="b1.PNG";
@pjs preload="b2.PNG";
@pjs preload="b3.PNG";
@pjs preload="b4.PNG";
@pjs preload="b5.PNG";
@pjs preload="b6.PNG";
@pjs preload="b7.PNG";
@pjs preload="b8.PNG";
@pjs preload="b9.PNG";
@pjs preload="b10.PNG";
@pjs preload="hicker.PNG";
@pjs preload="hicker1.PNG";
@pjs preload="hicker2.PNG";
@pjs preload="waaaa.PNG";
@pjs preload="watereee.PNG";
*/

PImage [] img = new PImage[10];
PImage hicker;
PImage hicker1;
PImage hicker2;
PImage bird;
PImage waterfall;
PImage waterfall1;
int image = 0;
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
 img[7] = loadImage("b8.PNG");
 img[8] = loadImage("b9.PNG");
 img[9] = loadImage("b10.PNG");
 hicker = loadImage("hicker.png");
 hicker1 = loadImage("hicker1.png");
 hicker2 = loadImage("hicker2.png");
 bird = loadImage("bird.png");
 waterfall = loadImage("waaaa.PNG");
 waterfall1 = loadImage("watereee.PNG");
 background (img[0]);
 textSize(20);
 text("Instructions: Help Nikki reach the waterfall by pressing the right arrow!", 11, 50);
 text("Remember, life is a journey, not a destination...",11,80);
}
 

int temp=704;
void draw () {
    // The font must be located in the sketch's 
    // "data" directory to load successfully
    image(hicker, 50, 525,100,100);
    if (keyCode==RIGHT&&keyPressed&&pressed==false) {
        pressed=true;
    
        if (image == 6) { 
           /*int i = 0;
            if (keyCode==RIGHT && keyPressed && pressed==false && (i < 4)) {
                background(img[i+6]);
                i++;
            }*/
            image (hicker,50, 525,100,100);
            image (hicker1,50, 525,100,100);
            image (hicker2,50, 525,100,100);
            birdy.play();
           
            text ("Do you hear a birdy? Look around in the next few steps to meet",11,50);
            text ("a new friend!", 11,80);
            image++;
        }//if 2
        
        else if ( (image < 10)) {
          background (img[image]);  
          image++; 
          println(image);
          println(counter);
        }//else if 2
        
        else if(image<20){
          image = 7; 
        }// else 2
            
       if(counter<20)counter++;
       if (counter==8) {
         delay (500);
         image (bird,150,280,100,100);
         fill (210,255,110,100);
         stroke(255, 255, 255);
         ellipse (100,300,175,125);
         fill (255,255,255);
         textSize (15);
         text ("Hi there", 77, 256);
         text ("Nikki! 'You know", 47, 272);
         text ("all those things", 41, 288);
         text("you've always wanted",27,304);
         text( "to do? You should go", 20, 320);
         text(" do them...'", 41, 336);
         
       }// if 3
       if (counter==9) {
         birdy.close();
         minim1.stop();
       }// if 4
    
    }// if 1
  
     else if (counter >= 20) {
        counter++;
        image (waterfall,0, 0,temp,707);
        image (hicker,50, 525,100,100);
        fill(0);
        textSize(40);
        text("TEST",100,100);
        temp+=10;
        image (waterfall1,0, 0,704,707);
        image (hicker,50, 525,100,100);
        image = 20;
   }
     
}// draw
  
  
void keyReleased () {
  pressed=false;
}

void stop()
{
  player.close();
  minim.stop();
//super.stop();

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
