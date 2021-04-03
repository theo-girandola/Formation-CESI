#include <Wire.h>
#include "rgb_lcd.h"

byte etatbp=0;
byte ex_etatbp=0;

// LCD //
rgb_lcd lcd;
const int colorR = 38;
const int colorG = 27;
const int colorB = 255;
byte score=0;
int bp=7;

void setup() {

// LCD //
    lcd.begin(16, 2);
    lcd.setRGB(colorR, colorG, colorB);
    score=0;
    pinMode(bp,INPUT);
   



}

void loop() {
  etatbp = digitalRead(bp);
        lcd.setCursor(0,0);
        lcd.print("Score: ");
        delay(100);
    if(etatbp == HIGH and ex_etatbp==0){
        
        score=score + 1;
        Serial.println(score);
        delay(100);
        lcd.setCursor(10,0);
        delay(100);
        lcd.print(score, 1);
                 
    }
    ex_etatbp=etatbp;
}

/*********************************************************************************************************
    END FILE
*********************************************************************************************************/
