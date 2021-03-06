//Jacob Pawlak and Ryan Shah
//Cathacks and EKU Symposium 2016
#include <avr/pgmspace.h>
 
#define CUBESIZE 4
#define PLANESIZE 16
#define PLANETIME 3333
#define TIMECONST 5
 
int LEDPin[16] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}; 
int LEDPinCount = 16; 
int PlanePin[4] = {16,17,18,19}; 
int PlanePinCount = 4; 
 
int greens[57] = {7,11,12,6,6,4,6,12,6,10,4,12,6,5,12,5,7,5,5,7,6,3,12,7,10,12,3,12,10,5,9,9,10,5,6,12,12,6,7,7,10,3,10,6,5,6,9,9,5,4,10,4,9,12,5,12,12};
int reds[57] = {6,10,10,4,4,10,4,10,5,9,10,11,12,4,11,7,6,10,4,6,4,13,10,6,9,11,13,11,9,4,7,7,7,4,4,12,10,4,6,6,9,13,9,5,6,12,7,7,4,10,9,10,7,10,6,10,11};
int yellow[1] = {7};
int blue[1] = {8};
void setup(){
	 int pin;
	 for(pin = 0; pin < LEDPinCount; pin++){
		 pinMode( LEDPin[pin], OUTPUT ); }
	 for(pin = 0; pin < PlanePinCount; pin++){
		 pinMode( PlanePin[pin], OUTPUT); }
}
 
void loop(){
	 displayTotal();
	 delay(2000);
	 loopFor();
	 delay(2000);
}
 
void loopFor(){
	 planesOff();
	 digitalWrite(PlanePin[0], HIGH);
	 digitalWrite(PlanePin[3], HIGH);
	 for(int i = 0; i < sizeof(greens); i++){
		 if(greens[i] < reds[i]){
			 digitalWrite(PlanePin[0], LOW);
			 for(int j = 0; j < reds[i]; j++){
				 digitalWrite(LEDPin[j], HIGH);
			 } 
		 } 
		 else{ 
			 digitalWrite(PlanePin[3], LOW);
			 for(int j = 0; j < greens[i]; j++){
				 digitalWrite(LEDPin[j], HIGH); 
			 } 
		 } 
		 delay(500); 
		 if(greens[i] < reds[i]){
			 digitalWrite(PlanePin[0], HIGH);
			 for(int j = 0; j < reds[i]; j++){
				 digitalWrite(LEDPin[j], LOW);
			 } 
		 } 
		 else{ 
			 digitalWrite(PlanePin[3], HIGH);
			 for(int j = 0; j < greens[i]; j++){
				 digitalWrite(LEDPin[j], LOW); 
			 } 
		 } 
	 } 
} 


void displayTotal(){ 
	 planesOff(); 
	 digitalWrite(PlanePin[1], HIGH); 
		 digitalWrite(PlanePin[2], HIGH); 
	 if(sizeof(blue) >= 0){ 
		 digitalWrite(PlanePin[2], LOW); 
		 for(int i = 0; i < blue[0]; i++){ 
			 digitalWrite(LEDPin[i], HIGH); 
		 } 
	 } 
	 if(sizeof(yellow) >= 0){ 
		 digitalWrite(PlanePin[1], LOW); 
		 for(int i = 0; i < yellow[0]; i++){ 
			 digitalWrite(LEDPin[i], HIGH); 
		 } 
	 } 
	 delay(15000); 
	 if(sizeof(blue) >= 0){ 
		 digitalWrite(PlanePin[2], HIGH); 
		 for(int i = 0; i < blue[0]; i++){ 
			 digitalWrite(LEDPin[i], LOW); 
		 } 
	 } 
	 if(sizeof(yellow) >= 0){ 
		 digitalWrite(PlanePin[1], HIGH); 
		 for(int i = 0; i < yellow[0]; i++){ 
			 digitalWrite(LEDPin[i], LOW); 
		 } 
	 } 
} 


void planesOff(){ 
	 for(int i = 0; i < PlanePinCount; i++){ 
		 digitalWrite(PlanePin[i], HIGH); 
	 } 
} 
