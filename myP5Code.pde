//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here

  
 var eyeX = 345
 var eyeY = 106
 var mouthX = 421
 var mouthY = 170
 var OmNom = 10
 var LegX = 310
 var LegY = 310
 var Hidex = 420
 var HideY = 100
 var FlyX = 115
 var FlyY = 160
//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  strokeWeight(1);
  stroke(0,0,0);
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
    rect(435, 250, 20, 100);

    fill(119, 166, 81); 
    noStroke();
    rect(Hidex - 80, HideY, 83, 83);
    rect(Hidex + 5, HideY, 83, 83);
    rect(Hidex - 50, HideY + 80, 110, 110);

    fill(0,0,0);  //eyes
    ellipse(eyeX, eyeY, 45, 15);
    ellipse(eyeX + 150, eyeY, 45, 15);

    fill(0,0,0);  //nose
    ellipse(eyeX + 65, eyeY, 5, 5);
    ellipse(eyeX + 80, eyeY, 5, 5);

    fill (219, 148, 134); //cheeks
    ellipse(eyeX + 20, eyeY + 35, 25, 15);
    ellipse(eyeX + 140, eyeY + 35, 25, 15);

    strokeWeight(1); //mouth
    stroke(0,0,0);
    fill(156, 89, 87);
    ellipse(mouthX, mouthY, 90, OmNom);


    fill(175, 227, 222); //flywings
    ellipse(FlyX + 5, FlyY - 16, 15,20);
    ellipse(FlyX - 5, FlyY - 16, 15,20);

    fill(179, 196, 184); //flybody
    ellipse(FlyX, FlyY, 30,20);


    //CODE 

    FlyX += 2;
    if(FlyX > 450){FlyX = -90; OmNom = 10};

  if(OmNom<110 && FlyX > 30){OmNom += 1;}
  //if(OmNom > 110){}
 

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
