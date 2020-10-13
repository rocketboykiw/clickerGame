void game(){
  background(0,255,0);
textSize(50);
text ("score:" +score, width/2,50);
text ("lives:" +lives, width/2,100);


//display target
stroke(255,0,0);
strokeWeight(10);
fill(0);
circle(x,y,d);

//moving
x=x+vx;
y=y+vy;



//bouncig
if(x < d/2 ||x > width -d/2 ){
  vx = vx * -1;
  }

if(y < d/2 || y >height -d/2){
  vy = vy * - 1;
  }

//pause
stroke(0);
strokeWeight(1);
 if(dist(mouseX,mouseY,50,50)<50){
   fill(255);
 }else{
   fill(100);
 }
circle(50,50,50);
fill(255);


rect(35,35,10,30);
rect(55,35,10,30);

}

void gameClicks(){
  if (dist(mouseX,mouseY,x,y) < 50 ){
    score = score +1;
 coin.rewind();
 coin.play(); 
  }else if(dist(mouseX,mouseY,50,50)<50){
 mode = pause;
}else{
 bump.rewind();
 bump.play();
 lives =lives -1;
  if (lives == 0) 
  mode = gameOver; 
}


}
