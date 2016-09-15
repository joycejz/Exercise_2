color yellow = color(250,215,75);
color red = color(215,30,5);
color grey = color(25,30,10);
color beige = color(240,240,225);

void setup() {
  size(1000,1000);
  background(245,225,190);
}

void draw() {
  
  //TOP LEFT CORNER
  //green shadow
  noStroke();
  fill(170,180,110);
  triangle(0,20,0,40,360,220);
  //yellow shadow
  strokeWeight(8);
  stroke(yellow);
  line(0,73,103,0);
  //black triangle
  noStroke();
  fill(0);
  triangle(0,20,0,30,340,210);
  //black line
  strokeWeight(5);
  stroke(0);
  line(0,70,100,0);
  
  
  //BOTTOM STUFF
  //half circles
  fill(beige);
  strokeWeight(3);
  arc(260,940,340,340,radians(-180),radians(0));
  strokeWeight(10);
  stroke(195,85,50);
  arc(-90,940,340,340,radians(-180),radians(-1));
  //triangle
  noStroke();
  fill(yellow);
  triangle(790,940,740,1000,800,1000);
  //horiz line
  stroke(0);
  strokeWeight(2);
  fill(0);
  rect(0,938,790,5);
  //3 lines
  strokeWeight(4);
  line(20,1000,70,950);
  line(40,1000,80,960);
  line(60,1000,100,960);
  //thick line
  strokeWeight(15);
  line(70,600,450,1000);
  
  
  //SPLIT TRIANGLE + CIRCLES
  //back circles
  strokeWeight(10);
  stroke(200,100,60);
  noFill();
  ellipse(230,350,300,300);
  stroke(yellow);
  fill(255);
  ellipse(230,350,200,200);
  strokeWeight(3);
  stroke(0);
  fill(grey);
  ellipse(230,350,80,80);
  
  //triangle side
  line(100,140,370,560);
  //2 color triangle
  noStroke();
  fill(175,110,40);
  quad(0,220,0,560,162,560,49,180);
  fill(100,140,100);
  quad(49,180,100,140,370,560,162,560);
  //line cutting through
  strokeWeight(5);
  stroke(0);
  line(0,0,290,1000);
  
  //half circle
  strokeWeight(3);
  stroke(0);
  fill(beige);
  arc(235,348,80,80,radians(57),radians(237),CHORD);
  
  //colored slices
  //blue
  fill(95,110,165);
  arc(20,360,240,240,radians(-110),radians(-70),PIE);
  arc(20,360,240,240,radians(-15),radians(10),PIE);
  arc(20,360,240,240,radians(50),radians(90),PIE);
  //beige
  fill(beige);
  arc(20,360,240,240,radians(-35),radians(-25),PIE);
  arc(20,360,240,240,radians(90),radians(95),PIE);
  arc(20,360,240,240,radians(95),radians(110),PIE);
  //black
  fill(grey);
  arc(20,360,240,240,radians(-70),radians(-35),PIE);
  arc(20,360,240,240,radians(-25),radians(-15),PIE);
  arc(20,360,240,240,radians(10),radians(50),PIE);
  
  //beige circle
  fill(beige);
  ellipse(20,360,200,200);
  //small black circle
  fill(grey);
  ellipse(40,345,30,30);
  
  //outline
  strokeWeight(5);
  noFill();
  ellipse(20,360,240,240);
  
  
  //MULTICOLOR TRIANGLES
  noStroke();
  //lower
  fill(yellow);
  triangle(420,740,380,780,70,380);
  fill(255);
  triangle(208,522,192,538,70,380);
  fill(red);
  triangle(120,430,114,438,70,380);
  fill(grey);
  beginShape(QUADS);
  vertex(175,485);
  vertex(160,500);
  vertex(165,505);
  vertex(180,490);
  vertex(190,500);
  vertex(173,515);
  vertex(180,525);
  vertex(200,510);
  vertex(207,520);
  vertex(190,535);
  vertex(195,542);
  vertex(215,528);
  endShape(CLOSE);
  //upper
  fill(grey);
  triangle(260,60,280,80,60,300);
  fill(red);
  triangle(170,168,185,175,60,300);
  fill(245,225,190);
  quad(177,140,208,160,182,180,156,165);
  fill(255);
  quad(126,220,132,228,96,264,92,260);
  
  
  //TOP GRID + TRIANGLES
  //base color
  noStroke();
  fill(beige);
  beginShape();
  vertex(270,10);
  vertex(290,0);
  vertex(460,0);
  vertex(540,140);
  vertex(410,230);
  endShape(CLOSE);
  //black quads
  fill(grey);
  quad(388,88,340,120,370,170,418,138);
  fill(grey,200);
  quad(418,138,462,110,498,170,458,200);
  quad(495,145,530,120,543,140,507,163);
  //stripes
  stroke(0);
  strokeWeight(3);
  int x=305;
  for(int y=61;y>35;y-=4) {
    x+=7;
    line(x,y,x-33,y-53);
  }
  //dots
  //left
  noStroke();
  int dotX1=460;
  for(int y=95;y>73;y-=5) {
    dotX1+=7;
    int subX=dotX1;
    int subY=y;
    for(int i=0;i<10;i++) {
      for(int j=0;j<5;j++) {
        ellipse(subX+random(10),subY+random(5),2,2);
      }
      subX-=3;
      subY-=5;
    }
  }
  //right
  int dotX2=378;
  for(int y=80;y>50;y-=6) {
    dotX2+=8;
    int subX=dotX2;
    int subY=y;
    for(int i=0;i<10;i++) {
      for(int j=0;j<5;j++) {
        ellipse(subX+random(10),subY+random(5),2,2);
      }
      subX-=3;
      subY-=5;
    }
  }
  //triangle color
  fill(220,115,45);
  triangle(550,0,600,0,1000,750);
  triangle(540,140,510,165,920,790);
  triangle(500,170,460,200,950,970);
  //horiz lines
  stroke(0);
  strokeWeight(3);
  line(270,10,290,0);
  line(305,65,410,0);
  line(340,120,475,30);
  line(370,170,505,80);
  line(410,230,570,120);
  line(495,145,530,120);
  //vert lines
  line(270,10,890,1000);
  line(330,0,950,970);
  line(400,0,950,970);
  line(400,0,920,790);
  line(460,0,920,790);
  line(550,0,1000,750);
  line(600,0,1000,750);
  
  
  //BIG RED AND BLACK LINE
  //black
  strokeWeight(3);
  fill(grey,150);
  beginShape(QUAD_STRIP);
  vertex(0,720);
  vertex(0,770);
  vertex(70,670);
  vertex(90,690);
  vertex(485,355);
  vertex(500,377);
  vertex(535,320);
  vertex(547,340);
  vertex(570,298);
  vertex(577,315);
  vertex(588,285);
  vertex(597,300);
  vertex(615,265);
  vertex(623,280);
  vertex(680,215);
  vertex(690,230);
  vertex(700,190);
  vertex(715,215);
  vertex(950,0);
  vertex(1000,0);
  endShape();
  //red
  fill(red);
  beginShape();
  vertex(70,670);
  vertex(90,690);
  vertex(500,377);
  vertex(485,355);
  endShape(CLOSE);

  
  //BLACK LINE FROM RIGHT
  strokeWeight(2);
  fill(grey, 200);
  quad(385,390,377,410,1000,610,1000,590);
  
  
  //BLUE CIRCLE
  noStroke();
  fill(80,160,190,200);
  ellipse(580,240,260,260);
  
  
  //RANDOM LINES ON THE RIGHT??
  //3 right
  stroke(0);
  strokeWeight(3);
  line(940,120,1000,120);
  line(920,210,1000,210);
  line(930,310,1000,320);
  
  
  //TOP RIGHT TRIANGLE
  fill(grey);
  triangle(880,0,940,0,900,30);
  
}