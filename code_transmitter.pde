#include <VirtualWire.h>
int sensorPin1 = A0; //color//
int sensorPin2 = A1; //brightness//
int transmit_pin = 12;
float color;
float brightness;
void setup() {
  pinMode(sensorPin1, INPUT);
  pinMode(sensorPin2, INPUT);
  Serial.begin(9600);
  vw_setup(2000);
  // Initialise the IO and ISR
  vw_set_tx_pin(transmit_pin);
  vw_set_ptt_inverted(true); // Required for DR3100
  vw_setup(2000);       // Bits per sec

}
void loop() {
  color = analogRead(sensorPin1);
  brightness = analogRead(sensorPin2);
  int msg[3];
  msg[0] =  map(color, 0, 1023, 0, 225);
  Serial.print (msg[0]);
  Serial.print ("\t");
  msg[1] = ',';
  //Serial.println(",");
  msg[2] = map(brightness, 0, 1023, 0, 255);
  Serial.println(msg[2]);
  //  Serial.println("sending message");
  vw_send((uint8_t*)msg, 3); //send message//
  vw_wait_tx; //wait after//
  //   Serial.println("message sent");
}




