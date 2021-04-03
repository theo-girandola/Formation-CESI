#include <Wire.h>
#include "rgb_lcd.h"

byte etatbp=0;
byte ex_etatbp=0;
byte etatbp1=0;
byte ex_etatbp1=0;


// LCD //
rgb_lcd lcd;
const int colorR = 38;
const int colorG = 27;
const int colorB = 255;
byte score=0;
byte score1=0;
int bp=4;
int bp1=2;

void setup() {

// LCD //
    Serial.begin(9600);
    lcd.begin(16, 2);
    lcd.setRGB(colorR, colorG, colorB);
    score=0;
    score1=0;
    pinMode(bp,INPUT);
    pinMode(bp1,INPUT);
   



}

void loop() {
  etatbp = digitalRead(bp);
        lcd.setCursor(0,0);
        lcd.print("Joueur 1: ");
        delay(10);
    if(etatbp == HIGH and ex_etatbp==0){
        
        score=score + 1;
        Serial.println(score);
        delay(10);
        lcd.setCursor(10,0);
        delay(10);
        lcd.print(score, 1);

    }  
     ex_etatbp=etatbp;
      etatbp1 = digitalRead(bp1);
        lcd.setCursor(0,1);
        lcd.print("Joueur 2: ");
        delay(10);
    if(etatbp1 == HIGH and ex_etatbp1==0){

        
        score1=score1 + 1;
        Serial.println(score1);
        delay(10);
        lcd.setCursor(10,1);
        delay(10);
        lcd.print(score1, 1);
                 
    }
    
    ex_etatbp1=etatbp1;

}
/*********************************************************************************************************
    END FILE
*********************************************************************************************************/
