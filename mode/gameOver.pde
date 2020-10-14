void gameOver(){
  background(255,0,0);
text("GAME OVER",400,400);
textSize(50);
text ("high score:" +highscore, width/2,50);
theme.pause();
gameover.play();
}
  
  void gameOverClicks(){
mode = intro;
gameover.pause();
theme.rewind();
score= 0;
lives = 3;
vy= 1;
vx= 1;
}
