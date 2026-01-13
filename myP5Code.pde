//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here

  
 var eyeX = 345
 var eyeY = 106
 var mouthX = 420
 var mouthY = 190
 var LegX = 310
 var LegY = 310
//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);

    fill(119, 166, 81);
    ellipse(423, 180, 200, 180); //body
    ellipse(eyeX, eyeY, 80, 60);
    ellipse(eyeX + 150, eyeY, 80, 60); 
    arc(425, 340, 230, 200, PI, TWO_PI);
    ellipse (LegX, LegY, 60, 60);
    ellipse (LegX + 230, LegY, 60, 60);
    arc(LegX - 20, LegY + 30, 80, 30, PI, TWO_PI);
    arc(LegX + 250, LegY + 30, 80, 30, PI, TWO_PI);
    rect(390, 250, 20, 100);

  //Show x y values when mousepressed
  if(mousePressed){showXYPositions();}

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
