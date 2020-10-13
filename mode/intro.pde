void intro(){
  theme.play();
  
  
  background(244,252,13);

if(mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY <600) {
  fill(255);
}else{
fill(255,0,0);
}
rect (300,500,200,100);
if(mouseX > 330 && mouseX < 480 && mouseY > 630 && mouseY <680) {
  fill(255);
}else{
fill(255,0,0);}

rect (330,630,150,50);
fill(0);
textSize(70);
text("start",400,535);
text("CLICKER GAME",400,300);
textSize(40);
text("options",405,650);

}

void introClicks(){
  
 if(mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY <600)
 mode = game;

if(mouseX > 330 && mouseX < 480 && mouseY > 630 && mouseY <680) 
 mode = options;

}
