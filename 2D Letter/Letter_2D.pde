PShape M1, M2;

// Transformation variables
float dx = 0, dy = 0; // Translation variables
float scaleFactor = 1.0; // Scale variable
float rotationAngle = 0; // Rotation variable
boolean mirrorX = false, mirrorY = false; // Mirroring variables

void setup() {
  size(700, 400);
  background(255);
  stroke(0);
  noFill();

  // Code for M1 letter
  M1 = createShape();
  M1.beginShape();
  M1.vertex(233, 100);
  M1.vertex(263, 100);
  M1.vertex(330, 300);
  M1.vertex(397, 100);
  M1.vertex(427, 100);
  M1.vertex(427, 330);
  M1.vertex(408, 330);
  M1.vertex(408, 130);
  M1.vertex(345, 330);
  M1.vertex(315, 330);
  M1.vertex(252, 130);
  M1.vertex(252, 330);
  M1.vertex(233, 330);
  M1.endShape(CLOSE);

  // Code for M2 letter
  M2 = createShape();
  M2.beginShape();
  M2.vertex(453, 100);
  M2.vertex(483, 100);
  M2.vertex(550, 300);
  M2.vertex(617, 100);
  M2.vertex(647, 100);
  M2.vertex(647, 330);
  M2.vertex(628, 330);
  M2.vertex(628, 130);
  M2.vertex(565, 330);
  M2.vertex(535, 330);
  M2.vertex(472, 130);
  M2.vertex(472, 330);
  M2.vertex(453, 330);
  M2.endShape(CLOSE);
}

void draw() {
  background(255);

  translate(width / 2, height / 2); // Center the letters
  translate(dx, dy);
  scale(mirrorX ? -scaleFactor : scaleFactor, mirrorY ? -scaleFactor : scaleFactor);
  rotate(rotationAngle);
  translate(-width / 2, -height / 2); // Translate back after rotation and scaling

  // Draw the letter 'D'
  float x1 = 70, y1 = 100;  // Start point
  float x2 = 263, y2 = 100;  // First control point
  float x3 = 263, y3 = 330;  // Second control point
  float x4 = 70, y4 = 330; // End point
  
  // Left vertical line of letter "D"
  line(x1, y1, x4, y4);
  line(90, 123, 90, 312);

  // Outer Bezier curve of letter "D"
  bezier(x1, y1, x2, y2, x3, y3, x4, y4);
  bezier(90, 123, 165, 125, 280, 250, 90, 312);

  // Draw shapes M1 and M2
  shape(M1);
  shape(M2);
}

void keyPressed() {
  // Movement
  if (keyCode == UP) dy -= 10;
  if (keyCode == DOWN) dy += 10;
  if (keyCode == LEFT) dx -= 10;
  if (keyCode == RIGHT) dx += 10;

  // Mirroring
  if (key == 'n') mirrorY = !mirrorY;
  if (key == 'm') mirrorX = !mirrorX;

  // Rotation
  if (key == 'x') rotationAngle += PI / 18; // Rotate clockwise
  if (key == 'c') rotationAngle -= PI / 18; // Rotate counterclockwise

  // Scaling
  if (key == '+') scaleFactor *= 1.1; // Zoom in
  if (key == '-') scaleFactor /= 1.1; // Zoom out
}
