# Taito Wolf System JAMMA Joystick Driver for Windows 98

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

*In the case where Windows keeps reporting the joystick is not ready, run regedit and delete everything under `HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\MediaResources\joystick\<FixedKey>\CurrentJoystickSettings`, then add the JAMMA joystick from the list again.*

------------
## Technical Details

|Address  |High        |Low         |
|---------|------------|------------|
| 0xCB206 | 2P D-Pad   | 1P D-Pad   |
| 0xCB201 | 1P Buttons | 1PButtons  |
| 0xCB200 | 2P Buttons | 2PButtons  |
