#include <ChainableLED.h>

// Définir le nombre de LED utilisées
#define NUM_LEDS 3

//Définitions des broches derrière la commande
//ChainableLED leds(e, f, g)
//Choisir 2 pins qui se suivent
//e = pin 7
//f = pin 8
//g = le nombre de leds
ChainableLED leds(7, 8, NUM_LEDS);

void setup() {
  
  leds.init();
}

void loop() {
  // Envoie des informations suivantes après la commande
  //leds.setColorsRGB(a,b,c,d)
  //a = le numéro de la led, on commence toujours par l'adresse 0
  //b = la valeur de la couleur rouge 
  //c = la valeur de la couleur verte
  //d = la valeur de la couleur bleu
  
leds.setColorRGB(0 , 0, 0, 255);
//tempo de stabilisation de 10 ms
delay(10);
leds.setColorRGB(1 , 255, 255, 255);
//tempo de stabilisation de 10 ms
delay(10);
leds.setColorRGB(2 , 255, 0, 0);
//tempo de stabilisation de 10 ms
delay(10);
}
