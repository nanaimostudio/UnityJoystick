UnityJoystick
=============

### Folder structure ###
* Arduino code -- code for Arduino UNO (both Joystick code and WiFi shield library)
* NewPenelope -- Unity project for Penelope character control
* Xcode file -- 4 files to send Joystick to Unity. Drag & Drop to Xcode class folder

### How to use all files ###
1.Copy & Paste /WiShield/ Folder under your Arduino IDE's libraries folder
2.Using Arduino IDE to open the file in /Arduino/RedButtonAPI/ folder, compile and upload it to your Arduino.
3.In Unity, open CameraRelativeSetup.unity under /NewPenelope/Assets/Control Setups folder
4.Set it's Build Settings's platform to iOS. In Player Settings make sure you set the Bundle Identifier as com.yourcompany.projectname
5.Build and Run it. Unity will open Xcode for you.
6.In Xcode, drap and drop those 4 files under /Xcode file/ folder to under "Class" folder
7.Run the program on your iOS device.
8.On your iOS device's WiFi Settings, select "RedButtonAPI" as your WiFi network.
9.Start the NewPenelope app on your iOS device, control the penelope character's movement from Joystick.