void options(){
background(200);
 strokeWeight(2);
  stroke(0);
  line (250, 450, 250, 650);
  circle(250, slider, size);
 strokeWeight(5);

fill(255);




if(mouseX > 500 && mouseX < 700 && mouseY > 600 && mouseY <700) {
 stroke (255,0,0);
}else{
stroke(0);
}

rect(500,600,200,100);

if(mouseX > 50 && mouseX < 250 && mouseY > 100 && mouseY <300) {
 stroke (255,0,0);
}else{
stroke(0);
}


rect(50,100,200,200);

if(mouseX > 300 && mouseX < 500 && mouseY > 100 && mouseY <300) {
 stroke (255,0,0);
}else{
stroke(0);
}

rect(300,100,200,200);

if(mouseX > 550 && mouseX < 750 && mouseY > 100 && mouseY <300) {
 stroke (255,0,0);
}else{
stroke(0);
}

rect(550,100,200,200);

fill(0);
textSize(70);
text("save",600,630);

}

void optionClicks(){
  if(mouseX > 500 && mouseX < 700 && mouseY > 600 && mouseY <700)
 mode = intro;
}

void mouseDragged(){
  if (mouseX > 225 && mouseX < 275 && mouseY > 450 && mouseY < 650) {
    slider = mouseY;
    d = (mouseY - 230) /2;
    size = (mouseY - 200) /3;
  
//250, 450, 250, 650
}
  
}
