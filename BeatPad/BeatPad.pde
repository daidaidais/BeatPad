import ddf.minim.*;

Minim minim;
AudioPlayer song1, song2, song3, song4, song5, song6, song7;
int rectNum = 4;

void displayRect() {
  float rectSize = width / rectNum;


  println("rectNum: ", rectNum, " rectSize: ", rectSize);

  for (int y = 0; y < height; y += rectSize) {
    for (int x = 0; x < width; x += rectSize) {
      noStroke();
      fill(255 * x / width, 255 * y / height, 255);
      println("R: ", 255 * x / width, " G: ", 255*y / height, " B: 255");
      rect(x, y, rectSize, rectSize);
    }
  }
}

void displayText() {
  PFont f;
  f = createFont("Helvetica", 16, true);

  textFont(f, 40);
  fill(0);
  text ("kick", 60, 60);
}

void setup() {
  size(1280, 960);
  minim = new Minim(this);
  song1 = minim.loadFile("./data/kick_deep3.wav", 512);
  song2 = minim.loadFile("./data/snare1.wav", 512);
  song3 = minim.loadFile("./data/hat.WAV", 512);
  song4 = minim.loadFile("./data/clap.wav", 512);
  song5 = minim.loadFile("./data/synth.wav", 512);
  song6 = minim.loadFile("./data/Boom.wav", 512);
  song7 = minim.loadFile("./data/sweep.wav", 512);
  
  displayRect();
  displayText();
}

void draw() {
  //background(0);
}

void mousePressed() {

  float rectSize = width / rectNum;

  if (mouseX < rectSize && mouseY < rectSize) {
    song1.play();
    song1.rewind();
  } else if (mouseX >= rectSize && mouseX < rectSize*2 && mouseY < rectSize) {
    song2.play();
    song2.rewind();
  } else if (mouseX >= rectSize*2 && mouseX < rectSize*3 && mouseY < rectSize) {
    song3.play();
    song3.rewind();
  } else if (mouseX >= rectSize*3 && mouseX < rectSize*4 && mouseY < rectSize) {
    song4.play();
    song4.rewind();
  } else if (mouseX < rectSize && mouseY >= rectSize && mouseY < rectSize*2) {
    song5.play();
    song5.rewind();
  } else if (mouseX >= rectSize && mouseX < rectSize*2 && mouseY < rectSize*2) {
    song6.play();
    song6.rewind();
  } else if (mouseX >= rectSize*2 && mouseX < rectSize*3 && mouseY < rectSize*2) {
    song7.play();
    song7.rewind();
  }
}

