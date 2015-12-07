#include <Adafruit_NeoPixel.h>
#include <VirtualWire.h>



int inputPin = 11;
int ledPin = 6;
Adafruit_NeoPixel strip = Adafruit_NeoPixel(240, ledPin, NEO_GRB + NEO_KHZ800);
int sensorvalue; //color
int sensorvalue1;  //brightness
int bright;

void setup() {
  Serial.begin(9600);
  pinMode(inputPin, INPUT);
  pinMode(ledPin, OUTPUT);
  strip.begin();
  strip.show();

  // initialize virtual wire library
  vw_set_rx_pin(inputPin);
  vw_set_ptt_inverted(true); // Required for DR3100
  vw_setup(2000);  // Bits per sec

  vw_rx_start();       // Start the receiver PLL running

}

void loop() {
  uint8_t buf[VW_MAX_MESSAGE_LEN];
  uint8_t buflen = VW_MAX_MESSAGE_LEN;

  if (vw_get_message(buf, &buflen))
  {
    sensorvalue = buf[0];
    Serial.print("color :");
    Serial.print(buf[0]);
    sensorvalue1 = buf[2];
    Serial.print("\tbrightness :");
    Serial.println(buf[2]);


    // Color Changing
    if (sensorvalue <=  225 && sensorvalue >= 190) {
      for (int n = 0; n < 240; n++) {
        strip.setPixelColor(n, 0 , 0 , 255);
        strip.show();
      }
    }
    if (sensorvalue < 190 && sensorvalue >= 185) {
      for (int n = 0; n < 5; n++) {
        strip.setPixelColor(n, 27, 102 , 255);
        strip.show();
      }
    }
    if (sensorvalue < 185 && sensorvalue >= 170) {
      for (int n = 0; n < 240; n++) {
        strip.setPixelColor(n, 55, 58, 255);
        strip.show();
      }
    }
    if (sensorvalue < 170 && sensorvalue >= 165) {
      for (int n = 0; n < 240; n++) {
        strip.setPixelColor(n, 76, 110, 255);
        strip.show();
      }
    }
    if (sensorvalue < 165 && sensorvalue >= 160) {
      for (int n = 0; n < 240; n++) {
        strip.setPixelColor(n, 86, 25, 255);
        strip.show();
      }
    }
    if (sensorvalue < 160 && sensorvalue >= 155) {
      for (int n = 0; n < 240; n++) {
        strip.setPixelColor(n, 125, 139, 255);
        strip.show();
      }
    }
    if (sensorvalue < 155 && sensorvalue >= 150) {
      for (int n = 0; n < 240; n++) {
        strip.setPixelColor(n, 100, 255, 198);
        strip.show();
      }
    }
    if (sensorvalue < 150 && sensorvalue >= 140) {
      for (int n = 0; n < 240; n++) {
        strip.setPixelColor(n, 36, 255, 145 );
        strip.show();
      }
    }
    if (sensorvalue < 140 && sensorvalue >= 135) {
      for (int n = 0; n < 240; n++) {
        strip.setPixelColor(n, 0, 255, 0);
        strip.show();
      }
    }
    if (sensorvalue < 135 && sensorvalue >= 130) {
      for (int n = 0; n < 240; n++) {
        strip.setPixelColor(n, 206, 255, 69 );
        strip.show();
      }
    }
    if (sensorvalue < 130 && sensorvalue >= 125) {
      for (int n = 0; n < 240; n++) {
        strip.setPixelColor(n, 255, 230, 33 );
        strip.show();
      }
    }
    if (sensorvalue < 125 && sensorvalue >= 120) {
      for (int n = 0; n < 240; n++) {
        strip.setPixelColor(n, 255, 144, 63 );
        strip.show();
      }
    }
    if (sensorvalue < 120 && sensorvalue >= 115) {
      for (int n = 0; n < 240; n++) {
        strip.setPixelColor(n, 255, 148, 85 );
        strip.show();
      }
    }
    if (sensorvalue < 115 && sensorvalue >= 110) {
      for (int n = 0; n < 240; n++) {
        strip.setPixelColor(n, 255, 93, 134 );
        strip.show();
      }
    }
    if (sensorvalue < 110 && sensorvalue >= 105) {
      for (int n = 0; n < 240; n++) {
        strip.setPixelColor(n, 255, 0, 0 );
        strip.show();
      }
    }


    // brightness control
    bright = (255 - buf[2]);

    for (int i = 0; i < 240; i++) {
      strip.setBrightness(100);
      strip.show();
    }
  }
}
