# HostedCloudGaming
Some ideas and automation tips for running your own PC as a cloud gaming server

## Advisory
This guide is designed to work on Windows for the gaming host. Additionally, two of the resolution configurations in Sunshine are for iPad and iPhone but can be removed or tweaked for different devices. It is also recommended that you use a Dummy DP or HDMI adapter as the remote connection monitor. The reason is that you can cheaply get a 4K equivalent virtual monitor that will adapt to many display resolutions and prevent the need for your primary monitor to change resolutions. I found this to be the cleanest approach. The adapter I used is here: https://www.amazon.com/dp/B0C2CGHRG4?psc=1&ref=ppx_yo2ov_dt_b_product_details

## Utilities
This setup utilizes a few pieces of software that are included, but more recent versions can also be acquired from these sites:
| Application | Download Link |
| -- | -- |
|GameStream LaunchPad: | https://github.com/cgarst/gamestream_launchpad|
MultiMonitorTool: |     https://www.nirsoft.net/utils/multimonitortool-x64.zip
Sunshine:          |    https://github.com/LizardByte/Sunshine
Playnite:           |   https://playnite.link/

## Setup
1. Run the Sunshine installer. It should install to C:\Program Files\Sunshine on Windows so place the **apps.json** and **sunshine.conf** files into the **config** folder in that directory.
2. Unzip GameStream Launchpad here: **C:\GameStreamLP**
3. Unzip MultiMonitorTool into the same directory as GameStream Launchpad
4. **NOTE**: You do not need to install those if you just copy the included folder into C:\
5. Restart Sunshine
6. Install Playnite on the hosting device (config instructions below)
7. Connect to Sunshine using the Moonlight application from your desired device

## Playnite Configuration
Playnite is quite powerful and will allow you to not only centralize all of your games into a single library but also make using Emulators seamless. There is one caveat. As of 10/21/2023 the FullScreen menu does not support DirectInput, meaning it only works with XInput devices (XBOX Controllers). This is fine if you use DS4 to emulate an XBOX 360 controller or set your Sunshine settings to emulate the 360 GamePad (in the included config).

### Adding standard PC games
Once Playnite is installed, you can get it up and working relatively quickly by opening it in Desktop Mode and then going into the Playnite Menu > Add-ons > Browse > Libraries. Then just add the integrations you need to find all of your games. Playnite will automatically add the games and download available metadata for them. If that is all you need, then this guide is complete. 

### Emulated games
However, if you want to play games from your favorite emulators easily from your mobile devices or even a home theater PC, then here is how you would do so. First, you will need to have whatever emulator you want to use installed along with the ROMs to use. How to do this is out of the scope of this guide. My standard practice is to keep the emulator in its own folder within a parent folder that contains the Emulator and the ROMs (Emulation > Dolphin + GC ROMs (ROM1, ROM2, etc.))

#### Configure Playnite
In Playnite, open the menu > Library > Configure Emulators. Select Add at the bottom left then give it a name that makes sense. I usually do the name of the console that is being emulated. Now for Installation Folder you will want to choose the folder that actually contains the .exe of your emulator. Under the Emulator specification dropdown, choose the emulator from the list. Add the default profile for the Emulator and then Save. Playnite even has an option to Download Emulators from this same window. Save and close the window.

#### Add Emulated Games
Open the menu for Playnite again and choose Add Game > Emulated Game. Now choose Add scanner and under the drop down for Scan with emulator you should see the emulator you have set up. The profile is going to be Default unless you created your own. The scan folder is going to be the ROMs folder for that emulator. Now just choose Start scan. It will find the ROMs you have in that folder and then you can rename them to what you wish and uncheck anything that you don't want. 
