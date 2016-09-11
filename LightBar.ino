/*
  Project: LightBoard
  Author: Jacob Pawlak
  Date: March 11th, 2016
*/

int blue1 = 13;
int blue2 = 12;
int red1 = 11;
int red2 = 10;
int red3 = 9;
int white1 = 8;
int white2 = 7;
int white3 = 6;
int white4 = 5;
int white5 = 4;
int yellow1 = 3;
int yellow2 = 2;
int green1 = 1;
int green2 = 0;

void setup()
{
  pinMode(blue1, OUTPUT);
  pinMode(blue2, OUTPUT);
  pinMode(red1, OUTPUT);
  pinMode(red2, OUTPUT);
  pinMode(red3, OUTPUT);
  pinMode(white1, OUTPUT);
  pinMode(white2, OUTPUT);
  pinMode(white3, OUTPUT);
  pinMode(white4, OUTPUT);
  pinMode(white5, OUTPUT);
  pinMode(yellow1, OUTPUT);
  pinMode(yellow2, OUTPUT);
  pinMode(green1, OUTPUT);
  pinMode(green2, OUTPUT);
}

void loop()
{
  digitalWrite(blue1, HIGH);
  digitalWrite(blue2, HIGH);
  digitalWrite(red1, HIGH);
  digitalWrite(red2, HIGH);
  digitalWrite(red3, HIGH);
  digitalWrite(white1, HIGH);
  digitalWrite(white2, HIGH);
  digitalWrite(white3, HIGH);
  digitalWrite(white4, HIGH);
  digitalWrite(white5, HIGH);
  digitalWrite(yellow1, HIGH);
  digitalWrite(yellow2, HIGH);
  digitalWrite(green1, HIGH);
  digitalWrite(green2, HIGH);
  delay(10000);  
  digitalWrite(blue1, LOW);
  digitalWrite(blue2, LOW);
  digitalWrite(red1, LOW);
  digitalWrite(red2, LOW);
  digitalWrite(red3, LOW);
  digitalWrite(white1, LOW);
  digitalWrite(white2, LOW);
  digitalWrite(white3, LOW);
  digitalWrite(white4, LOW);
  digitalWrite(white5, LOW);
  digitalWrite(yellow1, LOW);
  digitalWrite(yellow2, LOW);
  digitalWrite(green1, LOW);
  digitalWrite(green2, LOW);
  delay(1000);
}
