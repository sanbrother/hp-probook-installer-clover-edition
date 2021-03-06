#!/bin/bash
set -x

Kexts=("RealtekRTL8111.kext" "FakePCIID_HD4600_HD4400.kext" "FakePCIID_Intel_HDMI_Audio.kext" "FakePCIID_XHCIMux.kext")
for kext in ${Kexts[@]}; 
do
if [ -d "/Volumes/EFI/EFI/CLOVER/kexts/10.9/$kext" ]
then
  rm -rf "/Volumes/EFI/EFI/CLOVER/kexts/10.9/$kext"
fi
done

Kexts=("RealtekRTL8111.kext" "FakePCIID_HD4600_HD4400.kext" "FakePCIID_Intel_HDMI_Audio.kext" "FakePCIID_XHCIMux.kext")
for kext in ${Kexts[@]}; 
do
if [ -d "/Volumes/EFI/EFI/CLOVER/kexts/10.10/$kext" ]
then
  rm -rf "/Volumes/EFI/EFI/CLOVER/kexts/10.10/$kext"
fi
done


Kexts=("RealtekRTL8111.kext" "FakePCIID_HD4600_HD4400.kext" "FakePCIID_Intel_HDMI_Audio.kext" "USBXHCI_4x40s.kext" "FakePCIID_XHCIMux.kext")
for kext in ${Kexts[@]}; 
do
if [ -d "/Volumes/EFI/EFI/CLOVER/kexts/10.11/$kext" ]
then
  rm -rf "/Volumes/EFI/EFI/CLOVER/kexts/10.11/$kext"
fi
done