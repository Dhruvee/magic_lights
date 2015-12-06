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



####Using RGB LED and manipulating color
i. Trying to set the color for the LED

ii. On every value of brightness for the RGB, only green works. And, the light also blinks. 

v. The LED was defected.

#### Connecting NeoPixel to arduino and DC Supply


#### Control color change
i. Trying to fade out the LED'S with change in flex (essence of project), but there isn't a smooth gradient change.

ii. Need smaller intervals in 'for' loop, and something to fade other color before new color comes.

iii. some sort of interval setting might be required for fading

iv. testing out fader program from adafruit

v. fader program does not change all LED's, instead works on fading the color from one LED onto another.

#### Smooth color gradient
i. Trying to smoothly transition from one color to the other based on inout from sensor.

ii. There are color changes but very sudden.

iii. I have a bunch of if statements, with a for loop in each, so many for loops probably cause redundancy and cause the program to slow down between changes.

iv. Not using if statements, rather just using the value of input from sensor will cause a smooth gradient. Using map function to convert inout data from 0-1023 to 0-255 and then feeding into RGB.

v. Yes, making a seperate function that relies on sensor value for its R G B values makes a smooth transition. But it still does not give desired range of colors.



#### Determining RGB values in relation to the sensor
i. Trying to put values of R,G and B for rainbow color depending on the input from sensor.

ii. There is a gradient, but not the whole spectrum. Only from red to blue with purple and pink in transition.

iii. The colors need to be adjusted in a better way, some trick or relation between sensor value and RGB values.

iv. Identify rainbow colors and see if there is a relation between the RGB values.

v.

####Smooth Color Gradient 2
i. Getting a smooth color gradient.

ii. On using if statements and setting up intervals, the color transition wasn't smooth

iii. There must be something with the intervals of the if statement.

iv. Make intervals overlap.

v. It helps for smoother transition. Having further more if statements will help more. 

####Connecting RF Transmitter
i. Using transmission between 2 arduino's to make the project work.

ii. The transmitter/reciever both do not send/receive any information even with the example code.

iii. Some circuit problem? 

iv. Make transmission better/ stronger.Antenna?

v. Yes, the antenna boosts the transmission and makes it work.

####Sending information from tranmitter to reveiver
i.Sending both values of input(from sensors) from transmitter to the reciever at once and seperating them.

ii. In the example code, a wait function is used to send the file and wait until its completely sent. If I do this for both of the inputs, there will be a delay in information that may cause my output to be different from what I expect.

iii. Sending them together. Array?

iv. Using a buffer with three entries to send to reciever. 

v. Yes, it works and accessing it just like an array in the receiver section should work.

#### Using values for programming in receiver end.
i. Trying to put the value of buf[0]/buf[3] into another variable that is used to run all the codes.

ii. The code doesn't do anything.

iii. Maybe the receiver is not receiving the information?

iv. Use debug to check. 

v. It is receiving information. My hypothesis was wrong. 
   It doesn't work because of the statement buf[o]=sensorvalue; which puts the value of buf into sensorvalue, which is not     anything yet. The order of the terms on either side of the '=' needs to be reversed for this to work.




