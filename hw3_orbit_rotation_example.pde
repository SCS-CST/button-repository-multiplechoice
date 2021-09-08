

void setup(){
  size(800,600);
}

void draw(){
  background(#2E3798); // dark blue
  
  fill(#F4F534);// yellow for the suns
  stroke(#F58834);// orange border for suns
  rectMode(CENTER);
  strokeWeight(3);
  // --------- stationary SUN ---------
  rect(400,300,100,100);
  
  // --------- rotating SUN ---------
  fill(#F4F534,200);// yellow for the suns
  pushMatrix();
    translate(400,300);
    rotate(radians(mouseX*360/(width-1)));
    rect(0,0,100,100);
  popMatrix();
  
  // --------- stationary PLANET ---------
  fill(#41B261); // green planet
  stroke(#0AFA23); // bright green border
  ellipse(650,300,75,75);
  
  // --------- rotating PLANET ---------
  fill(#FA0A6E,150); // bright pink planet
  stroke(255); // white  border
  
  pushMatrix();
    translate(400,300);
    rotate(radians(-mouseY*720/(height-1)));
    ellipse(250,0,75,75);
  popMatrix();
  
  // ------- text -------
  fill(255);
  textSize(30);
  textAlign(CENTER,CENTER);
  text("Introducing the \"UNLIKELY Solar System\"", 400,40);
  
  textSize(25);
  text("Move the mouse left and right to rotate the SUN\nMove the mouse up and down to rotate the PLANET", 400,560);
  
  // --- challenge ---
  
  //fill(#A50AFA); // purple
  //textSize(10+mouseX*.23);
  //text("UNLIKELY", 400,300);
  
}
