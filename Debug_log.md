#DEBUG LOG#

##1. Connecting *flex sensors* to the input.##
 i. Using analog pins, I wanted to get the input from the flex sensor on the serial monitor.
 ii. There was no value in the serial monitor.
 iii. There could be something wrong with the code, something between the analogRead and the Serial.println() function since the Serial.println() function does not get the value from analogRead.
 iv. Refer to examples of Serial.print and analogRead and see where it works and where it doesn't.
 v. My hypothesis is correct. I need a variable to store the value of analogRead and print that variable. 
 
