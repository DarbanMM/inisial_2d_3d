PShape DMM;
boolean x, y, z;

float pitch = 0;
float yaw = 0;
float roll = 0;

void setup() {
  size(800, 500, P3D);
  DMM = createShape(GROUP);
  noStroke();
  fill(255);
  
  PShape D1 = createShape();
  D1.beginShape();
  D1.vertex(0, 100, 0);
  D1.vertex(20, 100, 0);
  D1.vertex(20, 330, 0);
  D1.vertex(0, 330, 0);
  D1.endShape(CLOSE);
  DMM.addChild(D1);
  
  PShape D2 = createShape();
  D2.beginShape();
  D2.vertex(20, 100, 0);
  D2.bezierVertex(170, 110, 0, 170, 320, 0, 20, 330, 0);
  D2.vertex(20, 310, 0);
  D2.bezierVertex(140, 290, 0, 140, 130, 0, 20, 120, 0);
  D2.endShape(CLOSE);
  DMM.addChild(D2);
  
  PShape D3 = createShape();
  D3.beginShape();
  D3.vertex(0, 100, 50);
  D3.vertex(20, 100, 50);
  D3.vertex(20, 330, 50);
  D3.vertex(0, 330, 50);
  D3.endShape(CLOSE);
  DMM.addChild(D3);
  
  PShape D4 = createShape();
  D4.beginShape();
  D4.vertex(20, 100, 50);
  D4.bezierVertex(170, 110, 50, 170, 320, 50, 20, 330, 50);
  D4.vertex(20, 310, 50);
  D4.bezierVertex(140, 290, 50, 140, 130, 50, 20, 120, 50);
  D4.endShape(CLOSE);
  DMM.addChild(D4);
  
  PShape D5 = createShape();
  D5.beginShape();
  D5.vertex(0, 100, 0);
  D5.vertex(20, 100, 0);
  D5.vertex(20, 100, 50);
  D5.vertex(0, 100, 50);
  D5.endShape(CLOSE);
  DMM.addChild(D5);
  
  PShape D6 = createShape();
  D6.beginShape();
  D6.vertex(20, 100, 0);
  D6.bezierVertex(170, 110, 0, 170, 320, 0, 20, 330, 0);
  D6.vertex(20, 330, 50);
  D6.bezierVertex(170, 320, 50, 170, 110, 50, 20, 100, 50);
  D6.endShape(CLOSE);
  DMM.addChild(D6);
  
  PShape D7 = createShape();
  D7.beginShape();
  D7.vertex(0, 330, 0);
  D7.vertex(20, 330, 0);
  D7.vertex(20, 330, 50);
  D7.vertex(0, 330, 50);
  D7.endShape(CLOSE);
  DMM.addChild(D7);
  
  PShape D8 = createShape();
  D8.beginShape();
  D8.vertex(20, 120, 0);
  D8.bezierVertex(140, 130, 0, 140, 290, 0, 20, 310, 0);
  D8.vertex(20, 310, 50);
  D8.bezierVertex(140, 290, 50, 140, 130, 50, 20, 120, 50);
  D8.endShape(CLOSE);
  DMM.addChild(D8);
  
  PShape D9 = createShape();
  D9.beginShape();
  D9.vertex(20, 100, 0);
  D9.vertex(20, 100, 50);
  D9.vertex(20, 330, 50);
  D9.vertex(20, 330, 0);
  D9.endShape(CLOSE);
  DMM.addChild(D9);
  
  PShape D10 = createShape();
  D10.beginShape();
  D10.vertex(0, 100, 0);
  D10.vertex(0, 100, 50);
  D10.vertex(0, 330, 50);
  D10.vertex(0, 330, 0);
  D10.endShape(CLOSE);
  DMM.addChild(D10);
  
  PShape M11 = createShape();
  M11.beginShape();
  M11.vertex(183, 100, 0);
  M11.vertex(213, 100, 0);
  M11.vertex(280, 300, 0);
  M11.vertex(347, 100, 0);
  M11.vertex(377, 100, 0);
  M11.vertex(377, 330, 0);
  M11.vertex(358, 330, 0);
  M11.vertex(358, 130, 0);
  M11.vertex(295, 330, 0);
  M11.vertex(265, 330, 0);
  M11.vertex(202, 130, 0);
  M11.vertex(202, 330, 0);
  M11.vertex(183, 330, 0);
  M11.endShape(CLOSE);
  DMM.addChild(M11);
  
  PShape M12 = createShape();
  M12.beginShape();
  M12.vertex(183, 100, 50);
  M12.vertex(213, 100, 50);
  M12.vertex(280, 300, 50);
  M12.vertex(347, 100, 50);
  M12.vertex(377, 100, 50);
  M12.vertex(377, 330, 50);
  M12.vertex(358, 330, 50);
  M12.vertex(358, 130, 50);
  M12.vertex(295, 330, 50);
  M12.vertex(265, 330, 50);
  M12.vertex(202, 130, 50);
  M12.vertex(202, 330, 50);
  M12.vertex(183, 330, 50);
  M12.endShape(CLOSE);
  DMM.addChild(M12);
  
  PShape M13 = createShape();
  M13.beginShape();
  M13.vertex(183, 100, 0);
  M13.vertex(183, 100, 50);
  M13.vertex(213, 100, 50);
  M13.vertex(213, 100, 0);
  M13.endShape(CLOSE);
  DMM.addChild(M13);
  
  PShape M14 = createShape();
  M14.beginShape();
  M14.vertex(213, 100, 0);
  M14.vertex(213, 100, 50);
  M14.vertex(280, 300, 50);
  M14.vertex(280, 300, 0);
  M14.endShape(CLOSE);
  DMM.addChild(M14);
  
  PShape M15 = createShape();
  M15.beginShape();
  M15.vertex(280, 300, 0);
  M15.vertex(280, 300, 50);
  M15.vertex(347, 100, 50);
  M15.vertex(347, 100, 0);
  M15.endShape(CLOSE);
  DMM.addChild(M15);
  
  PShape M16 = createShape();
  M16.beginShape();
  M16.vertex(347, 100, 0);
  M16.vertex(347, 100, 50);
  M16.vertex(377, 100, 50);
  M16.vertex(377, 100, 0);
  M16.endShape(CLOSE);
  DMM.addChild(M16);
  
  PShape M17 = createShape();
  M17.beginShape();
  M17.vertex(377, 100, 0);
  M17.vertex(377, 100, 50);
  M17.vertex(377, 330, 50);
  M17.vertex(377, 330, 0);
  M17.endShape(CLOSE);
  DMM.addChild(M17);
  
  PShape M18 = createShape();
  M18.beginShape();
  M18.vertex(377, 330, 0);
  M18.vertex(377, 330, 50);
  M18.vertex(358, 330, 50);
  M18.vertex(358, 330, 0);
  M18.endShape(CLOSE);
  DMM.addChild(M18);
  
  PShape M19 = createShape();
  M19.beginShape();
  M19.vertex(358, 330, 0);
  M19.vertex(358, 330, 50);
  M19.vertex(358, 130, 50);
  M19.vertex(358, 130, 0);
  M19.endShape(CLOSE);
  DMM.addChild(M19);
  
  PShape M110 = createShape();
  M110.beginShape();
  M110.vertex(358, 130, 0);
  M110.vertex(358, 130, 50);
  M110.vertex(295, 330, 50);
  M110.vertex(295, 330, 0);
  M110.endShape(CLOSE);
  DMM.addChild(M110);
  
  PShape M111 = createShape();
  M111.beginShape();
  M111.vertex(295, 330, 0);
  M111.vertex(295, 330, 50);
  M111.vertex(265, 330, 50);
  M111.vertex(265, 330, 0);
  M111.endShape(CLOSE);
  DMM.addChild(M111);
  
  PShape M112 = createShape();
  M112.beginShape();
  M112.vertex(265, 330, 0);
  M112.vertex(265, 330, 50);
  M112.vertex(202, 130, 50);
  M112.vertex(202, 130, 0);
  M112.endShape(CLOSE);
  DMM.addChild(M112);
  
  PShape M113 = createShape();
  M113.beginShape();
  M113.vertex(202, 130, 0);
  M113.vertex(202, 130, 50);
  M113.vertex(202, 330, 50);
  M113.vertex(202, 330, 0);
  M113.endShape(CLOSE);
  DMM.addChild(M113);
  
  PShape M114 = createShape();
  M114.beginShape();
  M114.vertex(202, 330, 0);
  M114.vertex(202, 330, 50);
  M114.vertex(183, 330, 50);
  M114.vertex(183, 330, 0);
  M114.endShape(CLOSE);
  DMM.addChild(M114);
  
  PShape M115 = createShape();
  M115.beginShape();
  M115.vertex(183, 330, 0);
  M115.vertex(183, 330, 50);
  M115.vertex(183, 100, 50);
  M115.vertex(183, 100, 0);
  M115.endShape(CLOSE);
  DMM.addChild(M115);
  
  PShape M21 = createShape();
  M21.beginShape();
  M21.vertex(428, 100, 0);
  M21.vertex(458, 100, 0);
  M21.vertex(525, 300, 0);
  M21.vertex(592, 100, 0);
  M21.vertex(622, 100, 0);
  M21.vertex(622, 330, 0);
  M21.vertex(603, 330, 0);
  M21.vertex(603, 130, 0);
  M21.vertex(540, 330, 0);
  M21.vertex(510, 330, 0);
  M21.vertex(447, 130, 0);
  M21.vertex(447, 330, 0);
  M21.vertex(428, 330, 0);
  M21.endShape(CLOSE);
  DMM.addChild(M21);
  
  PShape M22= createShape();
  M22.beginShape();
  M22.vertex(428, 100, 50);
  M22.vertex(458, 100, 50);
  M22.vertex(525, 300, 50);
  M22.vertex(592, 100, 50);
  M22.vertex(622, 100, 50);
  M22.vertex(622, 330, 50);
  M22.vertex(603, 330, 50);
  M22.vertex(603, 130, 50);
  M22.vertex(540, 330, 50);
  M22.vertex(510, 330, 50);
  M22.vertex(447, 130, 50);
  M22.vertex(447, 330, 50);
  M22.vertex(428, 330, 50);
  M22.endShape(CLOSE);
  DMM.addChild(M22);
  
  PShape M23 = createShape();
  M23.beginShape();
  M23.vertex(428, 100, 0);
  M23.vertex(428, 100, 50);
  M23.vertex(458, 100, 50);
  M23.vertex(458, 100, 0);
  M23.endShape(CLOSE);
  DMM.addChild(M23);

  PShape M24 = createShape();
  M24.beginShape();
  M24.vertex(458, 100, 0);
  M24.vertex(458, 100, 50);
  M24.vertex(525, 300, 50);
  M24.vertex(525, 300, 0);
  M24.endShape(CLOSE);
  DMM.addChild(M24);

  PShape M25 = createShape();
  M25.beginShape();
  M25.vertex(525, 300, 0);
  M25.vertex(525, 300, 50);
  M25.vertex(592, 100, 50);
  M25.vertex(592, 100, 0);
  M25.endShape(CLOSE);
  DMM.addChild(M25);

  PShape M26 = createShape();
  M26.beginShape();
  M26.vertex(592, 100, 0);
  M26.vertex(592, 100, 50);
  M26.vertex(622, 100, 50);
  M26.vertex(622, 100, 0); 
  M26.endShape(CLOSE);
  DMM.addChild(M26);

  PShape M27 = createShape();
  M27.beginShape();
  M27.vertex(622, 100, 0);
  M27.vertex(622, 100, 50);
  M27.vertex(622, 330, 50);
  M27.vertex(622, 330, 0);
  M27.endShape(CLOSE);
  DMM.addChild(M27);

  PShape M28 = createShape();
  M28.beginShape();
  M28.vertex(622, 330, 0);
  M28.vertex(622, 330, 50);
  M28.vertex(603, 330, 50);
  M28.vertex(603, 330, 0);
  M28.endShape(CLOSE);
  DMM.addChild(M28);

  PShape M29 = createShape();
  M29.beginShape();
  M29.vertex(603, 330, 0);
  M29.vertex(603, 330, 50);
  M29.vertex(603, 130, 50);
  M29.vertex(603, 130, 0);
  M29.endShape(CLOSE);
  DMM.addChild(M29);

  PShape M210 = createShape();
  M210.beginShape();
  M210.vertex(603, 130, 0);
  M210.vertex(603, 130, 50);
  M210.vertex(540, 330, 50);
  M210.vertex(540, 330, 0);
  M210.endShape(CLOSE);
  DMM.addChild(M210);

  PShape M211 = createShape();
  M211.beginShape();
  M211.vertex(540, 330, 0);
  M211.vertex(540, 330, 50);
  M211.vertex(510, 330, 50);
  M211.vertex(510, 330, 0);
  M211.endShape(CLOSE);
  DMM.addChild(M211);
  
  PShape M212 = createShape();
  M212.beginShape();
  M212.vertex(510, 330, 0);
  M212.vertex(510, 330, 50);
  M212.vertex(447, 130, 50);
  M212.vertex(447, 130, 0);
  M212.endShape(CLOSE);
  DMM.addChild(M212);
  
  PShape M213 = createShape();
  M213.beginShape();
  M213.vertex(447, 130, 0);
  M213.vertex(447, 130, 50);
  M213.vertex(447, 330, 50);
  M213.vertex(447, 330, 0);
  M213.endShape(CLOSE);
  DMM.addChild(M213);
  
  PShape M214 = createShape();
  M214.beginShape();
  M214.vertex(447, 330, 0);
  M214.vertex(447, 330, 50);
  M214.vertex(428, 330, 50);
  M214.vertex(428, 330, 0);
  M214.endShape(CLOSE);
  DMM.addChild(M214);
  
  PShape M215 = createShape();
  M215.beginShape();
  M215.vertex(428, 330, 0);
  M215.vertex(428, 330, 50);
  M215.vertex(428, 100, 50);
  M215.vertex(428, 100, 0);
  M215.endShape(CLOSE);
  DMM.addChild(M215);

  
  centerObject(DMM);
}

void draw() {
  background(127);
  translate(width/2, height/2, 0);
  
  rotateX(pitch);
  rotateY(yaw);
  rotateZ(roll);
  
  shape(DMM);
  
  if (x) {
    pitch += 0.1;
  } 
  if (y) {
    yaw += 0.1;
  }
  if (z) {
    roll += 0.1;
  }
}

void keyPressed() {
  if (key == 'x' || key == 'X') {
    x = true;
  }
  if (key == 'y' || key == 'Y') {
    y = true;
  } 
  if (key == 'z' || key == 'Z') {
    z = true;
  }
}

void keyReleased() {
  if (key == 'x' || key == 'X') {
    x = false;
  }
  if (key == 'y' || key == 'Y') {
    y = false;
  } 
  if (key == 'z' || key == 'Z') {
    z = false;
  }
}

void centerObject(PShape DMM) {
  float minX = Float.MAX_VALUE;
  float minY = Float.MAX_VALUE;
  float minZ = Float.MAX_VALUE;
  float maxX = Float.MIN_VALUE;
  float maxY = Float.MIN_VALUE;
  float maxZ = Float.MIN_VALUE;
  
  for (int i = 0; i < DMM.getChildCount(); i++) {
    PShape child = DMM.getChild(i);
    for (int j = 0; j < child.getVertexCount(); j++) {
      PVector v = child.getVertex(j);
      minX = min(minX, v.x);
      minY = min(minY, v.y);
      minZ = min(minZ, v.z);
      maxX = max(maxX, v.x);
      maxY = max(maxY, v.y);
      maxZ = max(maxZ, v.z);
    }
  } 
  
  float centerX = (minX + maxX) / 2;
  float centerY = (minY + maxY) / 2;
  float centerZ = (minZ + maxZ) / 2;
  
  DMM.resetMatrix();
  DMM.translate(-centerX, -centerY, -centerZ);
}
