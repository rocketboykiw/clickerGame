



import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;




int mode;
final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameOver = 3;
final int options = 4;
// vareables===============================================================
float slider;
float x,y,d;
float vx,vy;
int highscore;
int score, lives;
float size;
float thickness;
int selected = 1;
 
PImage vans,santa,spit;

//sound variable======================================================================
Minim minim;
AudioPlayer theme,coin,bump,gameover;





void setup(){
size(800,800);
  mode = intro;
 textAlign(CENTER,CENTER);

//target initializ
x = width/2;
y = height/2;
d = 100;
vx = random(-5,5);
vy = random(-5,5);
lives = 3;
score =0;
slider = 500;
size = 50;
thickness = 60;
vans = loadImage("vans.png");
spit = loadImage("spit.png");
santa = loadImage("santa.png");

//minim
minim = new Minim(this);
theme = minim.loadFile("theme.mp3");
coin =  minim.loadFile("coin.wav");
bump =  minim.loadFile("bump.wav");
gameover =  minim.loadFile("gameover.wav");


}


void draw (){
 
  if (mode == intro){
     intro();
  }else if (mode == game ){
    game();
  }else if (mode == pause ){
   pause();
  }else if (mode == gameOver ){
    gameOver();
  } else if (mode == options ) {
   options();
  }else{ 
     println("error:mode = " + mode);
  }
}
