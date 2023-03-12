#include <LiquidCrystal_I2C.h>

//  Ultrasonic:
//    trig -> D9
//    echo -> D8
//  LCD:
//    scl -> A5 
//    scd -> A4 
//

LiquidCrystal_I2C lcd(0x27,16,2);

// functions 
float get_distance() ; 


// costants
const int temperature = 23 ; // as the speed of sound varies with temp
const float sound_speed = 332 +  .59 * temperature ;   
const float MAX_SPEED = 255 ;
const int turn_speed = 70 ;
const int base_speed = 90 ;
// Pin defination   
int trigPin = 9;   
int echoPin = 8;   

int motor1pin1 	  = 2;
int motor1pin2 	  = 3;

int motor2pin1 	  = 4;
int motor2pin2    = 5;

int motor1enable  = 10 ;
int motor2enable  = 11 ;
// variables 
float distance ;



void setup()
{

	// initialize the lcd 
	lcd.init();                      
	lcd.backlight();

	Serial.begin(9600);
	// initialize Ultrasonic pins
	pinMode(trigPin, OUTPUT);
	pinMode(echoPin, INPUT);
	
	pinMode(motor1pin1  , OUTPUT);
  	pinMode(motor1pin2  , OUTPUT);
  	pinMode(motor2pin1  , OUTPUT);
  	pinMode(motor2pin2  , OUTPUT);
  	pinMode(motor1enable, OUTPUT); 
  	pinMode(motor2enable, OUTPUT);
}

float get_distance(){

	//local variables
	float duration_us ;
	float distance_cm ;
	// generate 10-microsecond pulse to TRIG pin
	digitalWrite(trigPin, HIGH);
	delayMicroseconds(10);
	digitalWrite(trigPin, LOW);

  	// measure duration of pulse from ECHO pin
  	duration_us = pulseIn(echoPin, HIGH);

  	// calculate the distance
	distance_cm = (sound_speed /10000)  * duration_us / 2;

  lcd.clear();
	lcd.setCursor(0,0);
	lcd.print("Distance:");
	lcd.setCursor(10,0);
	lcd.print(distance_cm) ;
	delay(100);
  if (distance_cm > 2000){
    distance_cm = 0.1 ; 
  }
	return distance_cm ;
}

void RightMotor(float speed){

	if(speed < 0 ){ // back
		digitalWrite(motor1pin1 , HIGH);	
		digitalWrite(motor1pin2 , LOW);	

	}
	else{ // forward
		digitalWrite(motor1pin1 , LOW);	
		digitalWrite(motor1pin2 , HIGH);	

	}
	analogWrite(motor1enable , abs(speed));
}



void LeftMotor(float speed){

	if(speed < 0 ){ // back
		digitalWrite(motor2pin1 , LOW);	
		digitalWrite(motor2pin2 , HIGH);	

	}
	else{ // forward
		digitalWrite(motor2pin1 , HIGH);	
		digitalWrite(motor2pin2 , LOW);	

	}
	analogWrite(motor2enable , abs(speed));
		
}


void Forward(){

	analogWrite(motor1enable ,base_speed);
	analogWrite(motor2enable ,base_speed);
	
	digitalWrite(motor1pin1 , LOW);	
	digitalWrite(motor1pin2 , HIGH);
	
	digitalWrite(motor2pin1 , HIGH);	
	digitalWrite(motor2pin2 , LOW);

}


void Stop(){

	analogWrite(motor1enable ,0);
	analogWrite(motor2enable ,0);
	
	digitalWrite(motor1pin1 , LOW);	
	digitalWrite(motor1pin2 , LOW);
	
	digitalWrite(motor2pin1 , LOW);	
	digitalWrite(motor2pin2 , LOW);

}

void TurnLeft(){

	analogWrite(motor1enable ,turn_speed);
	analogWrite(motor2enable ,turn_speed);
	//Forward
	digitalWrite(motor1pin1 , LOW);	
	digitalWrite(motor1pin2 , HIGH);
	// Backward
	digitalWrite(motor2pin1 , LOW);	
	digitalWrite(motor2pin2 , HIGH);

}

void TurnRight(){

	analogWrite(motor1enable ,turn_speed);
	analogWrite(motor2enable ,turn_speed);
	//Forward
	digitalWrite(motor1pin1 , HIGH);	
	digitalWrite(motor1pin2 , LOW);
	// Backward
	digitalWrite(motor2pin1 , HIGH);	
	digitalWrite(motor2pin2 , LOW);

}

void loop() {

	distance = get_distance();
	Forward();
	if(distance <=25) {
	  Stop();
	  delay(100);
	  
	  TurnRight();
	  delay(150);
	  
	  Forward();
	  delay(300);
	  
	  TurnLeft();
	  delay(150);
	  
	  Forward();
	  delay(500);
	  
	  TurnLeft();
	  delay(200);
	  
	  Forward();
	  delay(300);
	  
	  TurnRight();
	  delay(400);
	}
    

/*
  if (distance < 25 ){
    LeftMotor(-60) ;
    RightMotor(60) ;
    delay(150) ;    
    LeftMotor(60) ;
    RightMotor(-60) ;
    delay(150) ;
  }
  */
}


