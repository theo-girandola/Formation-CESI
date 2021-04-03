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
int LED_aleatoire;
int Couleur_aleatoire;
byte R;
byte V;
byte B;

void setup() {
  
  leds.init();
}

void loop() {
LED_aleatoire = random(3);
Couleur_aleatoire= random(3);
switch (Couleur_aleatoire){
  case 0: R=255;V=0;B=0;break;
  case 1: R=0;V=255;B=0;break;
  case 2: R=0;V=0;B=255;break;
}
  
  // Envoie des informations suivantes après la commande
  //leds.setColorsRGB(a,b,c,d)
  //a = le numéro de la led, on commence toujours par l'adresse 0
  //b = la valeur de la couleur rouge 
  //c = la valeur de la couleur verte
  //d = la valeur de la couleur bleu
  
leds.setColorRGB(LED_aleatoire , R, V, B);
//tempo de stabilisation de 10 ms
delay(1000);
leds.setColorRGB(LED_aleatoire , 0, 0, 0);
delay(10);

}
