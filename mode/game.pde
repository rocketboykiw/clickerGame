void game() {
  background(200);
  textSize(50);
  fill (0);
  text ("score:" +score, width/2, 50);
  text ("lives:" +lives, width/2, 100);

gameover.rewind();

  //display target
  stroke(255, 0, 0);
  strokeWeight(10);
  fill(255);
  circle(x, y, d);
  
  
  
  if (selected == 1){
  image(santa,x-d/2,y-d/2,d-10,d-10);
  }
  if (selected == 2){
  image(vans,x-d/2,y-d/2,d-10,d-10);  
  }
 if (selected == 3){
  image(spit,x-d/2,y-d/2,d-10,d-10);
 }
  
  //moving
  x=x+vx;
  y=y+vy;



  //bouncig
  if (x < d/2 ||x > width -d/2 ) {
    vx = vx * -1;
  }

  if (y < d/2 || y >height -d/2) {
    vy = vy * - 1;
  }

  //pause
  fill(255);
  stroke(0);
  strokeWeight(1);
  if (dist(mouseX, mouseY, 50, 50)<d/2) {
    stroke(255,0,0);
    strokeWeight(5);
  } else {
    stroke(0);
     strokeWeight(1);
  }
  circle(50, 50, 50);
  fill(150);
 rect(35, 35, 10, 30);
  rect(55, 35, 10, 30);
}

void gameClicks() {






  if (dist(mouseX, mouseY, x, y) < d/2 ) {
    score = score +1;
    vx = vx * 1.1;
    vy = vy * 1.1;

    coin.rewind();
    coin.play();
  } else if (dist(mouseX, mouseY, 50, 50)<25) {
    mode = pause;
  } else {
    bump.rewind();
    bump.play();
    lives =lives -1;
    if (lives == 0) {
      mode = gameOver; 
      highscore = max(highscore, score);
    }
  }
}
