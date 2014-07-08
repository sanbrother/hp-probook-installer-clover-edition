##HP ProBook Installer Clover Edition 6.x repository  

**Maintainer: pokenguyen**

OS X support: Mavericks

Supported models:  

* 6-series laptop: HP Probook 4x30s, 6x60b, Elitebook 8x60p, 2x60p
* 7-series laptop: HP Probook 4x40s, 4x0 G0, 6x70b, Elitebook 8x70p, 2x70p, 9470m
* 8-series laptop: HP Probook 4x0 G1, Elitebook 8x0 G1

[Guide to install OS X on HP Probook](http://www.tonymacx86.com/hp-probook-mavericks/112383-guide-install-mavericks-clover-bootloader.html)  

###C h a n g e l o g  
    
* 07/08/2014: 6.1.14.1 Official Released
###C r e d i t s:

**Clover Bootloader** is courtesy of the **Clover Team**.  
[The Clover support thread](http://www.projectosx.com/forum/index.php?showtopic=2562)  

The **VoodooPS2Controller** fork is courtesy of **RehabMan**.
[The VoodooPS2Controller support thread](http://www.tonymacx86.com/hp-probook/75649-new-voodoops2controller-keyboard-trackpad.html)  

The **AppleSmartBatteryManager** fork is courtesy of **RehabMan**.
[The AppleSmartBatteryManager support thread](http://www.tonymacx86.com/mountain-lion-laptop-support/69472-battery-manager-fix-boot-without-batteries.html)  
[The original support thread](http://www.insanelymac.com/forum/topic/264597-hp-dvx-acpi-3x4x-battery-driver-106107/#entry1729132)  

The SSDT generator script is courtesy of **RevoGirl** and **PikeRAlpha**.  
[The SSDT generator support thread](http://www.tonymacx86.com/ssdt/86906-ssdt-generation-script-ivybridge-pm.html)  

**MaciASL** is courtesy of **SJ_UnderWater**.  
[The MaciASL support thread](http://www.tonymacx86.com/dsdt/83565-native-dsdt-aml-ide-compiler-maciasl-open-beta.html)  

**GenericUSBXHCI.kext** is courtesy of **Zenith432** and **RehabMan**.  
**RealtekRTL8111.kext** is courtesy of **Mieze** and **RehabMan**.  
[The main support thread](http://www.tonymacx86.com/hp-probook/93732-new-kexts-proposed-probook-installer-v6-1-a.html)  
[The original GenericUSBXHCI.kext support thread](http://www.insanelymac.com/forum/topic/286860-genericusbxhci-usb-30-driver-for-os-x-with-source/)  
[The original RealtekRTL8111.kext support thread](http://www.insanelymac.com/forum/topic/287161-new-driver-for-realtek-rtl8111/)  

The AHCI patch, **patch-hda.pl** and **patch-hda-codecs.pl** are courtesy of **bcc9**.  
[The AHCI patch support thread](http://www.insanelymac.com/forum/topic/280062-waiting-for-root-device-when-kernel-cache-used-only-with-some-disks-fix/)  
[The AppleHDA patch support thread](http://www.insanelymac.com/forum/topic/284004-script-to-patch-applehda-binary-for-osx107108/)  

**Kext Wizard** is courtesy of **janek202**.   
[The Kext Wizard support thread](http://www.insanelymac.com/forum/topic/253395-kext-wizard-easy-to-use-kext-installer-and-more/)  

**FakeSMC** is courtesy of **RehabMan**, **kozlek**, **netkas**, **slice** and **navi**.  
[The main support thread](http://www.tonymacx86.com/hp-probook/)  
[The original support thread](http://www.insanelymac.com/forum/topic/275429-hwsensors/)  

**Trim Enabler** is courtesy of **Cindori**.  
[The Trim Enabler support forums](http://www.groths.org/forums/)  

**AICPMPatch.pl** is courtesy of **el coniglio** with modifications by **RehabMan**.  
[The original support thread](http://olarila.com/forum/viewtopic.php?f=9&t=1003&sid=d6df188c360c6a74d9b788ae9568df84)   

The unified **AppleIntelFramebufferCapri.kext** patch is courtesy of **kpkp**.  
[The original support thread](http://www.tonymacx86.com/hp-probook/99533-testers-ivy-probooks-needed.html)    

**ACPIPoller.kext** and the fan reset driver for Clover are courtesy of **RehabMan**.  
The Atheros Bluetooth kext is courtesy of **mac4mat** and **RehabMan**.  
The **patchmatic** utility by **RehabMan** is based of the **MaciASL** source code and uses **RegexKitLite** by **John Engelhart**.  
The **DSDT generator/patcher** is courtesy of **RehabMan**, **BigDonkey** and **philip_petev**.  
The **EDID generator** is courtesy of **philip_petev**.  
The 3rd party AHCI kext is courtesy of **MacMan**.  
The HP ProBook logos in **About This Mac** are courtesy of **riodoro1**.  
The Installer's HP logo icon is courtesy of **Pilartem**.  
The colour profiles are courtesy of **metacollin** and several other sources.  
The **display_color.py** script is courtesy of **Daniel Fairhead (danthedeckie)**.  
**ProBookARPT.kext** is based on works, courtesy of **toleda** and **RehabMan**.  

###Special thanks to:

**BlueKing** - the original creator of HP ProBook Installer.  
**Tegezee** - the second maintainer of HP ProBook Installer.  
**philippetev** - the current maintainer of HP ProBook Installer.  


###Thanks to all testers:

**BigDonkey**  
**RehabMan**  
**MacMan**  
**BlueKing**  
**tonymacx86**  
**mac4mat**  
**maly70**  
**mactition**  
**Inmike09**  
**Tegezee**  
**toleda**  
**Lnx2Mac**  
**jamesah**  
**jimmysticks**  
**ubaid88**  
**d_a_l_3**  
**masso912**  
**frantisek.nesveda**  
**geejay**  
**segen**  
**drcrack**  
**ZAFFE**  
**ElectronShaper**  
**2MNY**  
**ryman of InsanelyMac**  
###and the users of the HP ProBook forum.  

**RegexKitLite** Copyright © 2008-2010, **John Engelhart**  
All rights reserved.  
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:  
Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.  
Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.  
Neither the name of the Zang Industries nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.  
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  