#!/bin/bash
set -x

Kexts=("RealtekRTL8111.kext" "ACPIBacklight.kext" "FakePCIID_HD4600_HD4400.kext" "FakePCIID_Intel_HDMI_Audio.kext")
for kext in ${Kexts[@]}; 
do
if [ -d "/Volumes/EFI/EFI/CLOVER/kexts/10.9/$kext" ]
then
  rm -rf "/Volumes/EFI/EFI/CLOVER/kexts/10.9/$kext"
fi
done

Kexts=("RealtekRTL8111.kext" "ACPIBacklight.kext" "FakePCIID_HD4600_HD4400.kext" "FakePCIID_Intel_HDMI_Audio.kext")
for kext in ${Kexts[@]}; 
do
if [ -d "/Volumes/EFI/EFI/CLOVER/kexts/10.10/$kext" ]
then
  rm -rf "/Volumes/EFI/EFI/CLOVER/kexts/10.10/$kext"
fi
done


Kexts=("RealtekRTL8111.kext" "ACPIBacklight.kext" "FakePCIID_HD4600_HD4400.kext" "FakePCIID_Intel_HDMI_Audio.kext")
for kext in ${Kexts[@]}; 
do
if [ -d "/Volumes/EFI/EFI/CLOVER/kexts/10.11/$kext" ]
then
  rm -rf "/Volumes/EFI/EFI/CLOVER/kexts/10.11/$kext"
fi
done


uid=10

ioreg -n AppleBacklightDisplay -arxw0>/tmp/org.rehabman.display.plist
id=`/usr/libexec/PlistBuddy -c "Print :0:DisplayProductID" /tmp/org.rehabman.display.plist`
id=`printf "F%02dT%04x" $uid $id`
sed "s/F99T1234/$id/g" 4x40s_Backlight.plist >/tmp/org.rehabman.merge.plist


plist=./AppleBacklightInjector.kext/Contents/Info.plist
cp -R "/System/Library/Extensions/AppleBacklight.kext" ./AppleBacklightInjector.kext
#/usr/libexec/PlistBuddy -c "Copy ':IOKitPersonalities:AppleIntelPanelA:ApplePanels' ':ApplePanelsBackup'" $plist
/usr/libexec/PlistBuddy -c "Delete ':IOKitPersonalities:AppleIntelPanelA:ApplePanels'" $plist
/usr/libexec/PlistBuddy -c "Merge /tmp/org.rehabman.merge.plist ':IOKitPersonalities:AppleIntelPanelA'" $plist
#/usr/libexec/PlistBuddy -c "Copy ':ApplePanelsBackup:Default' ':IOKitPersonalities:AppleIntelPanelA:ApplePanels:Default'" $plist
#/usr/libexec/PlistBuddy -c "Delete ':ApplePanelsBackup'" $plist
/usr/libexec/PlistBuddy -c "Delete ':CFBundleExecutable'" $plist
/usr/libexec/PlistBuddy -c "Delete ':BuildMachineOSBuild'" $plist
/usr/libexec/PlistBuddy -c "Delete ':DTCompiler'" $plist
/usr/libexec/PlistBuddy -c "Delete ':DTPlatformBuild'" $plist
/usr/libexec/PlistBuddy -c "Delete ':DTPlatformVersion'" $plist
/usr/libexec/PlistBuddy -c "Delete ':DTSDKBuild'" $plist
/usr/libexec/PlistBuddy -c "Delete ':DTSDKName'" $plist
/usr/libexec/PlistBuddy -c "Delete ':DTXcode'" $plist
/usr/libexec/PlistBuddy -c "Delete ':DTXcodeBuild'" $plist
/usr/libexec/PlistBuddy -c "Delete ':OSBundleLibraries'" $plist
/usr/libexec/PlistBuddy -c "Set ':CFBundleGetInfoString' '0.9.0, Copyright 2013 RehabMan Inc. All rights reserved.'" $plist
/usr/libexec/PlistBuddy -c "Set ':CFBundleIdentifier' 'org.rehabman.driver.AppleBacklightInjector'" $plist
/usr/libexec/PlistBuddy -c "Set ':CFBundleName' 'AppleBacklightInjector'" $plist
/usr/libexec/PlistBuddy -c "Set ':CFBundleShortVersionString' '0.9.0'" $plist
/usr/libexec/PlistBuddy -c "Set ':CFBundleVersion' '0.9.0'" $plist
/usr/libexec/PlistBuddy -c "Set ':IOKitPersonalities:AppleIntelPanelA:IOProbeScore' 2500" $plist
rm -R ./AppleBacklightInjector.kext/Contents/_CodeSignature
rm -R ./AppleBacklightInjector.kext/Contents/MacOS
rm ./AppleBacklightInjector.kext/Contents/version.plist

if [ -d /Volumes/EFI/EFI/CLOVER/kexts/10.9 ]
then
	cp -rf ./AppleBacklightInjector.kext /Volumes/EFI/EFI/CLOVER/kexts/10.9
fi

if [ -d /Volumes/EFI/EFI/CLOVER/kexts/10.10 ]
then
	cp -rf ./AppleBacklightInjector.kext /Volumes/EFI/EFI/CLOVER/kexts/10.10
fi

if [ -d /Volumes/EFI/EFI/CLOVER/kexts/10.11 ]
then
	cp -rf ./AppleBacklightInjector.kext /Volumes/EFI/EFI/CLOVER/kexts/10.11
fi