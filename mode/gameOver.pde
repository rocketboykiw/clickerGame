  void gameOver(){
  
  background(255,0,0);
fill(255);
text("GAME OVER",400,400);
textSize(50);
text ("high score:" +highscore, 400,500);
theme.pause();

gameover.play();
}
  
  void gameOverClicks(){
mode = intro;
theme.rewind();
score= 0;
lives = 3;
vy= 1;
vx= 1;
}
