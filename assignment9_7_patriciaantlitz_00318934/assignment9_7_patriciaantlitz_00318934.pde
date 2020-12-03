/* Assigment 9-7
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
18 November 2020 

7 - char_gen: write a program that prints letters on the screen until 
it gets to a vowel (A E I O U). Use those vowels to break/stop loop

This program runs at clicking the start bottom. There is a loop delay of 0.1
sec, the random letter and color will change at the pace of the delay. Loop
will stop after a vowel is selected.

I have used other sources, as detailed in my submitted source file.
File:  ChapterLettering/lettering.cpp  Author: Mihaela Malita
*/

//setup holds the settings of the screen
void setup() {
  size(500,500);
}
//Function draw holds the commands to run the program
void draw() {
  //calls function writeLetters to display letters on the screen
  writeLetter();
} 
//Function writeLetters
void writeLetter(){
  //select a random character from A to Z
   char letter = (char)(random('A','Z'));
   //gives it a random size from 40px to 150px
  textSize(random(40,150));
  //selects a random color for the text
  fill(random(255),random(255),random(255));
  //writes the random character at a random location
  text(letter, random(30, 14*width/16), random(30, 14*height/16));
  //adds a delay 
  delay(100);
  //if random letter is a A, E, I, O, or U (vowel) end the loop
  if (letter == 'A' || letter == 'E' || letter == 'I' ||
  letter == 'O' || letter == 'U') {
    noLoop();
  }
}

//end.
