void pause(){
rect (315,300,50,200);
rect (415,300,50,200);

 if(dist(mouseX,mouseY,50,50)<25){
   fill(255);
 }else{
   fill(100);
 }
circle(50,50,50);
fill(255);
triangle(40,30,40,70,70,50);
}

void pauseClicks(){
  if(dist(mouseX,mouseY,50,50)<25){
 mode = game; 
  }
}
