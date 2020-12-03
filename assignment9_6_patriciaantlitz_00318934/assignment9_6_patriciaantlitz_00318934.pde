/* Assigment 9-6
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
18 November 2020 

6 - random_letter: prints a random letter in upper case on the canvas.

This program runs at clicking the start bottom. There is a loop delay of 1.5
sec, the random letter and color will change at the pace of the delay. Loop
caused the program to take about 2 secs to initiate.

The work I am submitting is my own in its entirety + the hint
*/

//setup holds the settings of this program
void setup(){
  //screen size of 500px by 500px
  size(500, 500);
}

//draw call all commands to run the program
void draw(){
  //gived the background color of white
  background(255);
  //calls function writeLetter to write a letter on the screen
  writeLetter();
  //delays the loop by 1.5sec
  delay(1500);
}
//function writeLetter
void writeLetter(){
  //selects a random character from capital A to Z
  char letter = (char)random('A', 'Z');
  //fills the text with a random color
  fill(random(255), random(255), random(255));
  //Align it to the center of the page
  textAlign(CENTER);
  //Makes the text the size of of the screen
  textSize(width);
  //calls the random letter as the text, places on half of the page
  text(letter, width/2, height-100);
}

//end.
