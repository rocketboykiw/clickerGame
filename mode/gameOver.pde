void gameOver(){
  background(255,0,0);
text("GAME OVER",400,400);
theme.pause();
gameover.play();
}
  
  void gameOverClicks(){
  mode = intro;
theme.rewind();
}
