# Taito Wolf System JAMMA Joystick Driver for Windows 98

The button input on the JAMMA edge of the Taito Wolf System can be read from the `U46 CPLD` at certain memory locations. I modified the Digijoy project from `Windows 98 DDK` to read from these locations and present it as a standard Gameport joystick to Windows, which can be used for PC games.

------------
## Limitations

The PC motherboard that came with the arcade system did not populate the onboard Crystal sound card, therefore the required Gameport device is not present. I've modified the standard Windows Gameport driver to provide the required resource. However this Gameport can only support one joystick at a time, and installing multiple instances of said Gameport driver will crash Windows. 

The end result is that I can only present one joystick to Windows at the same time. You can choose between all the 1P buttons, or 1P and 2P buttons combined into one single joystick.

------------
## Installation
