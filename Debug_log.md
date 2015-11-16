#DEBUG LOG#

##### Connecting *flex sensors* to the input#####

 i. Using analog pins, I wanted to get the input from the flex sensor on the serial monitor.
 
 ii. There was no value in the serial monitor.
 
 iii. There could be something wrong with the code, something between the analogRead and the Serial.println()              function since the Serial.println() function does not get the value from analogRead.
 
 iv. Refer to examples of Serial.print and analogRead and see where it works and where it doesn't.
 
 v. My hypothesis is correct. I need a variable to store the value of analogRead and print that variable. 
 


##### Manipulating LED's based on the input from the sensor#####

 i. Lights change as the sensor is flexed differently.
 
 ii. The value from the sensor is not very accurate or in fact the sensor does not change value until totally flexed.
 
 iii. Something could be wrong with the sensor. 
 
 iv. Can the sensor be made more sensitive, or the circuit be made more sensitive to the input from the sensor.
 
 v. Don't know yet. I could change the values in the if statement to o according to the values in the sensor resolve this, but that would be very limited and inappropriate.
