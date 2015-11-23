#DEBUG LOG#

##### Connecting *flex sensors* to the input

 i. Using analog pins, I wanted to get the input from the flex sensor on the serial monitor.
 
 ii. There was no value in the serial monitor.
 
 iii. There could be something wrong with the code, something between the analogRead and the Serial.println()              function since the Serial.println() function does not get the value from analogRead.
 
 iv. Refer to examples of Serial.print and analogRead and see where it works and where it doesn't.
 
 v. My hypothesis is correct. I need a variable to store the value of analogRead and print that variable. 
 


##### Manipulating LED's based on the input from the sensor

 i. Lights change as the sensor is flexed differently.
 
 ii. The value from the sensor is not very accurate or in fact the sensor does not change value until totally flexed.
 
 iii. Something could be wrong with the sensor. 
 
 iv. Can the sensor be made more sensitive, or the circuit be made more sensitive to the input from the sensor.
 
 v. Don't know yet. I could change the values in the if statement to o according to the values in the sensor resolve this, but that would be very limited and inappropriate.

####Controlling blinking

i. The lights blink when the fist is completely closed, i.e sensor value 240 or lower.

ii. The blinking threshold is set to be 240(sensorValue). But once it reaches this threshold and the lights blink, it does not return back to the normal manipulation, it only keeps blinking.

iii. The code keeps running at the same sensor value.

iv. Use blink without delay. Setting an interval will be better!




#### Controlling brightness####

i. Trying to fade the lights out as I flex my finger.

ii. In my setup, three LED's are connected, and with my code, two of them respond but the third one does not. it turns on and off but does not respond to brightness change/analogWrite.

iii. Something wrong with the circuit?

v. My hypotheses was correct, the second LED was connected to a digital pin and hence could turn on or off but not not change brightness with analogWrite.


####Using blink without delay

i. Trying to get the LED's to blink without using delay()

ii. The LED's are checked for the interval only once, and are only barely visible as real blinking.

iii. The interval should be checked twice, both before an after the LED turns on. 

iv.

v. 


####Using RGB LED and manipulating color
i. Trying to set the color for the LED

ii. On using value 255 for red and 0 for the other two, the LED does not light up.

iii.

iv.

v.

