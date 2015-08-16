##HP ProBook Installer Clover Edition 6.x repository  

**Maintainer: pokenguyen**
  

[![Paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](http://goo.gl/wx65Is)
  

 
OS X support: Mavericks, Yosemite, El Capitan

Supported models:  

* 6-series laptop: HP Probook 4x30s, 6x60b, Elitebook 8x60p, 2x60p
* 7-series laptop: HP Probook 4x40s, 4x0 G0, 6x70b, Elitebook 8x70p, 2x70p, 9470m
* 8-series laptop: HP 3x0, Probook 4x0 G1/G2, Elitebook 8x0 G1, ZBook

[Guide to install OS X Mavericks on HP Probook](http://www.tonymacx86.com/hp-probook-mavericks/112383-guide-install-mavericks-clover-bootloader.html)  
[Guide to install OS X Yosemite on HP Probook](http://www.tonymacx86.com/hp-probook-yosemite/143675-guide-install-yosemite-hp-laptops-clover-uefi.html)  

###C h a n g e l o g   

**Version 6.3.9.5 (August 13th 2015)**

* Fix HDMI audio for HD4000 1600x900+.
* Remove AppleBacklightInjector.kext for models with only AMD graphics card.
* Change AMD Framebuffer for 8x70p from Typha to Ebi.

**Version 6.3.9 (August 5th 2015)**

* Add CsrActiveConfig=0x67 and BooterConfig=0x28 to  config.plist

**Version 6.3.8.5 (August 1st 2015)**

* Update Clover 3253.
* Update BrcmPatchRAM.
* Remove rootless=0 from bootflag.

**Version 6.3.8 (July 27th 2015)**

* Remove FakePCIID_XHCIMux.kext for 8-series laptops.
	
**Version 6.3.7.5 (July 16th 2015)**

* Update ACPIBacklight, BrcmPatchRAM.

**Version 6.3.7 (July 15th 2015)**

* Some fixes for El Capitan.
* Update FakeSMC, FakePCIID and VoodooPS2Controller.
* 7-series laptops: switch to FakePCIID_XHCIMux.kext for USB 3.0 instead of Multiplex DSDT patch (10.10 and 10.11).
* 8-series laptops: add FakePCIID_XHCIMux.kext for USB 3.0 (10.10 and 10.11).

**Version 6.3.6 (July 12th 2015)**

* Update Atheros Bluetooth.

**Version 6.3.5.5 (July 1st 2015)**

* UpdateSSDT Generator.
* Revert ig-platform-id for 6x0/8x0/ZBook to 0x0a260006.
* Add DP port patch (non-4K) for 6x0/8x0 series.

**Version 6.3.5 (June 27th 2015)**

* Update Clover 3241.
* Disable hibernation completely.

**Version 6.3.4 (June 25th 2015)**

* Remove USB sleep patch for 8-series in config.plist.
* Add USB sleep DSDT patch for 8-series.
* Change ig-platform-id to 0x0d260007 for 6x0/8x0/Zbook to enable DP port
* Set SMBIOS Trust=True to fix El Capitan boot for 8-series.
* Update Clover Configurator.

**Version 6.3.3 (June 22nd 2015)**

* Fix El Capitan USB 3.0 on 7-series model.

**Version 6.3.2 (June 21st 2015)**

* Fix for El Capitan.
* Clover 3237.

**Version 6.3.1 (June 20th 2015)**

* Bug fix.

**Version 6.3.0 (June 17th 2015)**

* Ready for OS X El Capitan.
* Clover 3227.
* Replace AppleIntelE1000e.kext by IntelMausiEthernet.kext.
* XtraFinder.

**Version 6.2.17.5 (May 13th 2015)**

* Change ProbookARPT to ProbookAtheros.
* Add FakePCIID for Broadcom wifi.

**Version 6.2.17 (May 8th 2015)**

* Update VoodooPS2Controller, BrcmPatchRAM kext.
* Add 8x60w nVidia model.

**Version 6.2.16 (May 1st 2015)**

* Install kexts to both EFI folder and /S/L/E.
* Change to 5Ghz US patch.

**Version 6.2.15.7 (April 29th 2015)**

* Update Clover 3202.
* Update Clover Configurator.
* Add AGPM fix for Sandy 7-series.

**Version 6.2.15.6 (April 14th 2015)**

* Update Clover Configurator.
* Update Second Stage patch.
* Fix config for Haswell model.

**Version 6.2.15.5 (April 9th 2015)**

* Remove Second Stage Patch.
* Fix USB Sleep for Haswell model.

**Version 6.2.15.4.3 (March 25th 2015)**

* Update Clover 3193.
* Update Macbook Pro 8,1 SMBIOS.

**Version 6.2.15.4 (March 12th 2015)**

* Add 8x70w nVidia model.
* Update Clover 3192.
* Update ACPIBatteryManager, VoodooPS2Controller, BrcmPatchRAM.
* Update Clover Configurator.

**Version 6.2.15.2 (February 9th 2015)**

* Change ig-platform-id for ZBook models.
* Update Clover 3167.
* Update Clover Configurator.

**Version 6.2.15.1 (February 5th 2015)**

* Remove GenericUSBXHCI in Haswell models.
* Update Clover 3156.
* Update Broadcom 5Ghz patch for 10.10.2.
* Update Clover Configurator.

**Version 6.2.15 (January 28th 2015)**

* Add HP 3x0 G1 model.
* Add 6x60b/8x60p with AMD 6470M (experiment) thanks to vusun123.
* Add FakePCIIID_HDMI_Audio to fix HDMI Freeze on Haswell laptops.
* Replace BTFirmwareUploader by IOath3kfrmwr and BrcmPatchRAM.
* Replace GenericUSBXHCI in 6-series laptops by AppleUSBXHCI patches.
* Replace HD4600 patches in 10.10 by RehabMan’s FakePCIID.
* Update Clover 3142.
* Update Handoff/Broadcom patch for 10.10.2.
* Update Clover Configurator.
* Update XtraFinder.
* Update HP logos.

**Version 6.2.14.2 (November 20th 2014)**

* Switch back to GenericUSBXHCI for Haswell laptops.

**Version 6.2.14.1 (November 18th 2014)**

* Update HDMI Audio patch for HD4400/4600 in config.plist.
* Add fan patches for Haswell laptops.
* Add HD4400/4600 OpenCL patches by the-darkvoid and vbo.

**Version 6.2.14 (November 17th 2014)**

* Add dart=0 to config.plist.
* Add Broadcom 43224 whitelist patch to config.plist.
* Remove Bluetooth 30 seconds patch in config.plist.
* Update Clover 3027.
* Update Clover Configurator.
* Switch from GenericUSBXHCI to vanilla kext in Haswell laptops.
* Fix 4x40s Sandy Bridge model.

**Version 6.2.13 (November 8th 2014)**

* Add Handoff fix in config.plist.
* Update Clover 2999.
* Update Clover Configurator.
* Update Logo for Probook and Elitebook.
* BTFirmwareUploader will be installed as optional.
* Disable InjectIntel for HD3000/HD4000 in config.plist.

**Version 6.2.12.1 (October 20th 2014)**

* Add Broadcom Wifi patches in config.plist.
* Fix SSDTPrgen on 10.10.
* Fix Quiet Fan patch.
* Fix 4x40s SandyBridge model.
* Update Clover 2972.
* Update Clover Configurator.
* Update SSDTPrGen 14.1.
* Retain BSN/MLB, SerialNumber and ROM when recreating config.plist.

**Version 6.2.11.2 (October 17th 2014)**

* Add HP 8x60w AMD and 4x0 G2 support.
* Add BT patch again in config.plist.
* Fix HD4600 on 10.10.
* Update Clover 2959.
* Update Clover Configurator.
* Update ACIPIBacklight, ACPIBatteryManager, RTL8111, BTFirmwareUploader, GenericUSBXHCI kexts.

**Version 6.2.10 (October 1st 2014)**

* Add HP Zbook support.
* Add Second Stage patch for 10.10 in config.plist.
* Fix SMBIOS 9,2 for 4x40 SandyBridge.
* Update Clover 2932.
* Update Clover Configurator, Kext Wizard.
* Update ProBook, EliteBook logos.
* Remove BT patch in config.plist.

**Version 6.2.9 (September 18th 2014)**

* Update BTFirmwareUploader and AppleIntelE1000e kexts.
* Move BTFirmwareUploader to /S/L/E.
* Auto disable "Wake for network access" (thanks to thesbay).

**Version 6.2.8 (September 17th 2014)**

* Update Clover 2911.
* Drop all SSDT in config.plist.
* Add 10.9.1 kexts for Haswell HDMI.

**Version 6.2.7.1 (September 8th 2014)**

* Update Clover 2895.
* Update Clover Configurator.

**Version 6.2.6 (September 3rd 2014)**

* Fix 6x70 AMD model config.
* Update Clover 2865.
* New GUI.

**Version 6.2.5 (August 29th 2014)**

* Fix 4x40s SB model detection.
* Remove EmuVariable driver.
* Update Clover 2854, XtraFinder.

**Version 6.2.4 (August 24th 2014)**  

* Add HDMI Audio patch for Haswell.
* Remove ACPIBacklight for 10.10.
* Update Clover 2838, XtraFinder, CloverConfigurator.

**Version 6.2.3 (July 27th 2014)**  

* Add FixEDID for 6x70b AMD.
* Add Espanol keyboard layout (eduk33s).
* Enable toggling Clover Config.
* Revert FakeSMC 6.0.1330.
* Fix 6x70AMD model and 4x0G1 model.
* Fix keyboard layout in 10.10 by DSDT.
* Fix EFI mount problem.
* UI Improvement.
* Update Clover 2779, XtraFinder.

**Version 6.2.2 (July 20th 2014)**  

* Remove CustomLogo in config.
* Fix 6x70AMD model and 4x0G1 model.
* Update Clover 2771.
  
**Version 6.2.1 (July 17th 2014)**  

* Check invalid EFI mount point.
* Replace UseAlternateLogo by CustomLogo.
* Replace IOath3kfrmwr.kext by BTFirmwareUploader.kext.
* Update Clover Configurator, Clover.

**Version 6.2 (July 13th 2014)**  

* Fix kext backup.
* Add UseAlternateLogo to config.plist.
* Add 6x70b/8x70p AMD support (experiment).
* Update SSDTPrgen, Clover Configurator, Clover, VoodooPS2.

**Version 6.1.14.2 (July 10th 2014):**  

* Getting DSDT from origin folder.
* Change theme to Yosemite.
* Update XtraFinder.

    
**Version 6.1.14.1 (July 7th 2014)**  

* Officially release!


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

**BTFirmwareUploader.kext** is courtesy of **EMlyDinEsH**.  
[The original BTFirmwareUploader.kext support thread](http://forum.osxlatitude.com/index.php?/topic/2925-bluetooth-firmware-uploader/)  

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
**Time2Win**  
**Joyfult**  
**mr-andrek**  
###and the users of the HP ProBook forum.  

**RegexKitLite** Copyright © 2008-2010, **John Engelhart**  
All rights reserved.  
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:  
Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.  
Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.  
Neither the name of the Zang Industries nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.  
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.