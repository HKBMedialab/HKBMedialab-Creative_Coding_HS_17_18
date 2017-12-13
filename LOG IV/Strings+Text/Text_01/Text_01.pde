/* 
 *  Text einlesen
 *  HKB 16 Parametric Design, MF
 */

PFont font;  // PFont Variable definieren
float posx=0;
float posy=0;

void setup() {
  size(400, 400);
  //Laden der Schrift  
  printArray(PFont.list());
  font = loadFont ("HelveticaNeue-48.vlw");
  textLeading(textAscent()+4);
}

void draw() {
  background(255);
  textFont(font, 30);                  // Font und Grösse angeben
  fill(0);
  String message = "Hello World!";
  text(message, 10, 100);
}