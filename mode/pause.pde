void pause(){
stroke (255);
rect (315,300,50,200);
rect (415,300,50,200);

 if(dist(mouseX,mouseY,50,50)<25){
   stroke(255,0,0);

 }else{
   stroke(0);
 strokeWeight(5);
 }

fill(255);
circle(50,50,50);
fill(150);
triangle(40,30,40,70,70,50);
}

void pauseClicks(){
  if(dist(mouseX,mouseY,50,50)<25){
 mode = game; 
  }
}
