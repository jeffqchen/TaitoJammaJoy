# Taito Wolf System JAMMA Joystick Driver for Windows 98

![joytest](https://github.com/user-attachments/assets/b01f23eb-945b-4272-90f0-c97aeeb093a2)

The button input on the JAMMA edge of the Taito Wolf System can be read from the `U46 CPLD` at certain memory locations. I modified the Digijoy project from `Windows 98 DDK` to read from these locations and present it as a standard Gameport joystick to Windows, which can be used for PC games.

------------
## Limitations

The PC motherboard that came with the arcade system did not populate the onboard Crystal sound card, therefore the required Gameport device is not present. I've modified the standard Windows Gameport driver to provide the required resource. However this Gameport can only support one joystick at a time, and installing multiple instances of said Gameport driver will crash Windows. 

The end result is that I can only present one joystick to Windows at the same time. You can choose between all the 1P buttons, or 1P and 2P buttons combined into one single joystick.

------------
## Installation

1. Got to `Start` -> `Settings` -> `Control Panel`. Double click `Game Controllers`.
2. On the `General` tab, click `Add...`. Then, click `Add Other...`.
3. In the next window, click `Have Disk...`, then locate the driver files.
4. When `Select Device` windows is shown, two devices (`Virtual Gameport Joystick` and `Taito Wolf System JAMMA Input Driver`) will show up.
5. Install both devices following these steps.
6. Go back to the `Game Controllers` window. Then click `Add...`.
7. Find `JAMMA Input for Player 1` or `JAMMA Input Combined`, add the one you wish to use.
8. Test inputs after adding the joystick.

![install](https://github.com/user-attachments/assets/ac0f2e45-89d8-4998-8288-fd315e3c9682)

*In the case where Windows keeps reporting the joystick is not ready, run regedit and delete everything under `HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\MediaResources\joystick\<FixedKey>\CurrentJoystickSettings`, then add the JAMMA joystick from the list again.*

------------
## Compiling

This project is developed with `Windows 98 Driver Development Kit`, aka `98DDK`. The Visual Studio workspace is for viewing coding only. Attempt to compile through VS will fail.

Place all the project files under `98DDK\src\input\JAMMAKJoy`, then start the 98DDK building environment.

Use command `build -cZ` to compile. The result file can be found under `obj\i386`.

------------
## Technical Details

Byte values can be read from the following address.

Button state is inverted - 1 is released, 0 is pressed.

|Address                |High                                                                               |Low                                                                                              |
|-----------------------|-----------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------|
| 0xCB206               | 2P Directions:<br>`Bit4` - Right<br>`Bit3` - Left<br>`Bit2` - Down<br>`Bit1` - Up | 1P Directions:<br>`Bit4` - Right<br>`Bit3` - Left<br>`Bit2` - Down<br>`Bit1` - Up               |
| 0xCB201<br>1P Buttons | `Bit4` - Coin<br>`Bit3` - Start<br>`Bit1` - Button 5                              | `Bit4` - Button 4<br>`Bit3` - Button 3<br>`Bit2` - Button 2<br>`Bit1` - Button 1                |
| 0xCB200<br>2P Buttons | `Bit4` - Coin<br>`Bit3` - Start<br>`Bit1` - Button 5                              | `Bit4` - Button 4<br>`Bit3` - Button 3<br>`Bit2` - Button 2<br>`Bit1` - Button 1                |
| 0xCB203               | `Bit4` - Test Button<br>`Bit2` - Service Button                                   |                                                                                                 |
| 0xCB20B               |                                                                                   | `Byte` - 1P Analog X (Possible)                                                                 |
| 0xCB209               |                                                                                   | `Byte` - 1P Analog Y (Possible)                                                                 |
| 0xCB20F               |                                                                                   | `Byte` - 2P Analog X (Possible)                                                                 |
| 0xCB20D               |                                                                                   | `Byte` - 2P Analog Y (Possible)                                                                 |

