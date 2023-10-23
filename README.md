# HostedCloudGaming
Some ideas and automation tips for running your own PC as a cloud gaming server

## DEMO
https://github.com/GeneBO98/HostedCloudGaming/assets/60564320/32a0da4d-4ef7-4e54-832b-a6f49a5224bf

## Advisory
Sunshine now supports variables for the display resolution and FPS. So, there is no longer a need for multiple applications in Sunshine for different resolutions. It will work OOTB if you copy the included apps.json file and make sure you have this path: C:\RemoteGaming\MultiMonitorTool.exe. You can change that path to whatever but will need to edit Sunshine if you do so.

I recommended that you use a Dummy DP or HDMI adapter as the remote connection monitor. The reason is that you can cheaply get a 4K equivalent virtual monitor that will adapt to many display resolutions and prevent the need for your primary monitor to change resolutions. I found this to be the cleanest approach. The adapter I used is here: https://www.amazon.com/dp/B0C2CGHRG4?psc=1&ref=ppx_yo2ov_dt_b_product_details

## Utilities
This setup utilizes a few pieces of software that are included, but more recent versions can also be acquired from these sites:
| Application | Download Link |
| -- | -- |
MultiMonitorTool: |     https://www.nirsoft.net/utils/multimonitortool-x64.zip
Sunshine:          |    https://github.com/LizardByte/Sunshine
Playnite:           |   https://playnite.link/
JoyToKey:            |  https://joytokey.net/en/

## Setup
1. Run the Sunshine installer. It should install to C:\Program Files\Sunshine on Windows so place the **apps.json** and **sunshine.conf** files into the **config** folder in that directory.
2. Unzip MultiMonitorTool into any directory
3. **NOTE**: You do not need to install those if you just copy the included folder into C:\
4. Restart Sunshine
5. Install Playnite on the host device (config instructions below)
6. Connect to Sunshine using the Moonlight application from your desired device

## MultiMonitorTool and JoyToKey
If you look into the configuration file for Sunshine, you will see that there are Global Prep Commands. These are commands that run at the beginning of every session with Sunshine and terminate when the session disconnects. I have this configured to launch JoyToKey. JoyToKey will allow you to set any buttons on your controller to keyboard shortcuts. This is especially important for older emulated games that don't have a quit option within the game. In my case, I use a PS4 controller so I mapped the select and start buttons to be ALT + F4 so that when I press them together, my game exits. 
MultiMonitorTool is configured now within the application itself due to the latest Sunshine updates. It changes the primary display before Playnite opens so that it opens on the proper display each time (you can also choose what display Sunshine always opens on). In my case, the virtual display is DISPLAY3, but all you will need to do is launch MultiMonitorTool.exe while your dummy adapter is plugged in (if you choose to use that) and then find what display is the correct one. Also, you will notice that the undo command uses the default_monitors.cfg. This is so that when Playnite exits my monitor arrangement and resolution reverts to exactly how it was before I connected. You will need to create your own multi-monitor tool configuration, or just edit the one provided to have the proper DISPLAY and resolution values.

## Playnite Configuration
Playnite is quite powerful and will allow you to not only centralize all of your games into a single library but also make using Emulators seamless. There is one caveat. As of 10/21/2023 the FullScreen menu does not support DirectInput, meaning it only works with XInput devices (XBOX Controllers). This is fine if you use DS4 to emulate an XBOX 360 controller or set your Sunshine settings to emulate the 360 GamePad (in the included config).

### Adding standard PC games
Once Playnite is installed, you can get it up and working relatively quickly by opening it in Desktop Mode and then going into the Playnite Menu > Add-ons > Browse > Libraries. Then just add the integrations you need to find all of your games. Playnite will automatically add the games and download available metadata for them. If that is all you need, then this guide is complete. 

### Emulated games
However, if you want to play games from your favorite emulators easily from your mobile devices or even a home theater PC, then here is how you would do so. First, you will need to have whatever emulator you want to use installed along with the ROMs to use. How to do this is out of the scope of this guide. My standard practice is to keep the emulator in its own folder within a parent folder that contains the Emulator and the ROMs (Emulation > Dolphin + GC ROMs (ROM1, ROM2, etc.)). The first time you connect to an Emulated game through Playnite, your controller will likely not work. You will need to configure the controller input for the emulator while connected through Moonlight/Sunshine. Even if you have done this for your controller while connected locally to the PC, the controller profile will be different when connected remotely.

#### Configure Playnite
In Playnite, open the menu > Library > Configure Emulators. Select Add at the bottom left then give it a name that makes sense. I usually do the name of the console that is being emulated. Now for Installation Folder you will want to choose the folder that actually contains the .exe of your emulator. Under the Emulator specification dropdown, choose the emulator from the list. Add the default profile for the Emulator and then Save. Playnite even has an option to Download Emulators from this same window. Save and close the window.
You can do even more to make Playnite look and feel much better. I used this guide for the add-ons and theme: https://www.youtube.com/watch?v=Xurs63Ccnlo&t=139s

#### Add Emulated Games
Open the menu for Playnite again and choose Add Game > Emulated Game. Now choose Add scanner and under the drop down for Scan with emulator you should see the emulator you have set up. The profile is going to be Default unless you created your own. The scan folder is going to be the ROMs folder for that emulator. Now just choose Start scan. It will find the ROMs you have in that folder and then you can rename them to what you wish and uncheck anything that you don't want. 
