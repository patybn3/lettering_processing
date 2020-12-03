/* Assigment 9-5
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
18 November 2020 

5 - my_poet: display a verse by your favorite poet.

This program runs by clicking on start. It displays a piece of a my favorite 
poem called Sonnet of Fidelity by Vinicius de Moraes.

The work I am submitting is my own in its entirety
*/

//allows the usage of an image of the poet
PImage poet;
//allows the usage of two different fonts
PFont savoye;
PFont sign;
//color used as the background
int back = color(252, 251, 244);
//Function setup holds the settigns to run the program
void setup(){
  //five a screen size of 800px wide by 400px tall
  size(800, 400);
  //loads the image of the poet saved on file
  poet = loadImage("download.jpeg");
  //loads the first font used
  savoye = loadFont("SavoyeLetPlain-48.vlw");
  //loads the send font used
  sign = loadFont("Times-BoldItalic-48.vlw");
}
//function draw holds the commands of this program
void draw(){
  //set color of the background
  background(back);
  //calls the image on PImage and places  it at x and y 0
  image(poet, 0, 0);
  //calls function poem that writes the poem on the screen
  poem();
}
/*Function writeText holds the setup to write all the text used by the program.
It calls param f of type PFont to select the font used, s for the size of the font,
phrase for the text to be displayed and x and y for the location of the text on
the screen*/
void writeText(PFont f, int s, String phrase, int x, int y){
  //fill the text in the color black
  fill(0);
  //selects the font and the size
  textFont(f, s);
  //prints the phrase at the given location
  text(phrase, x, y);
}
//Funtio poem used the previous function, writeText to write the poem
void poem(){
  //Title
  writeText(savoye, 50, "Sonnet of Fidelity", 420, 70);
  //"Fist" paragraph
  writeText(sign, 25, "''...And thus, when later comes looking for me", 305, 120);
  writeText(sign, 25, "Who knows, the death, anxiety of the living,", 325, 150);
  writeText(sign, 25, "Who knows, loneliness, end of all lovers", 340, 180);
  //"Second" paragraph
  writeText(sign, 25, "I'll be able to say to myself of the love (I had):", 310, 210);
  writeText(savoye, 40, "Be not immortal, since it is flame", 380, 260);
  writeText(savoye, 40, "But may it be infinite, while it lasts.''", 370, 300);
  //Author
  writeText(savoye, 40, "- Vinicius de Moraes", 550, 370);
}

//end.
