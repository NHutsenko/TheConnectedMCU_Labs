Device IoT, which allows you to control the color and brightness of the RGB LED. To manage the LED, the state machine was implemented in which the further development of the project is envisaged. So, the LED is controlled by commands like:

- "c135" - sets the red LED to half power;
- "b55" - sets the brightness of white to a maximum;
- "f" - turns on the mode of smooth color change of the LED.

All management is done through an application in which all these commands are already implemented in a convenient graphical interface. You can also control the LED using the UART interface, which uses bluetooth.