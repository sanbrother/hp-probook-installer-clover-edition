#!/bin/bash
set -x

if [ -d /Volumes/EFI/EFI/CLOVER/kexts/10.9/RealtekRTL8111.kext ]
then
	rm -rf /Volumes/EFI/EFI/CLOVER/kexts/10.9/RealtekRTL8111.kext
fi

if [ -d /Volumes/EFI/EFI/CLOVER/kexts/10.10/RealtekRTL8111.kext ]
then
	rm -rf /Volumes/EFI/EFI/CLOVER/kexts/10.10/RealtekRTL8111.kext
fi

if [ -d /Volumes/EFI/EFI/CLOVER/kexts/10.10/FakePCIID_HD4600_HD4400.kext ]
then
	rm -rf /Volumes/EFI/EFI/CLOVER/kexts/10.10/FakePCIID_HD4600_HD4400.kext
fi

if [ -d /Volumes/EFI/EFI/CLOVER/kexts/10.9/FakePCIID.kext ]
then
	rm -rf /Volumes/EFI/EFI/CLOVER/kexts/10.9/FakePCIID.kext
fi

if [ -d /Volumes/EFI/EFI/CLOVER/kexts/10.10/FakePCIID.kext ]
then
	rm -rf /Volumes/EFI/EFI/CLOVER/kexts/10.10/FakePCIID.kext
fi

if [ -d /Volumes/EFI/EFI/CLOVER/kexts/10.9/FakePCIID_Intel_HDMI_Audio.kext ]
then
	rm -rf /Volumes/EFI/EFI/CLOVER/kexts/10.9/FakePCIID_Intel_HDMI_Audio.kext
fi

if [ -d /Volumes/EFI/EFI/CLOVER/kexts/10.10/FakePCIID_Intel_HDMI_Audio.kext ]
then
	rm -rf /Volumes/EFI/EFI/CLOVER/kexts/10.10/FakePCIID_Intel_HDMI_Audio.kext
fi

if [ -d /Volumes/EFI/EFI/CLOVER/kexts/10.9/GenericUSBXHCI.kext ]
then
	rm -rf /Volumes/EFI/EFI/CLOVER/kexts/10.9/GenericUSBXHCI.kext
fi

if [ -d /Volumes/EFI/EFI/CLOVER/kexts/10.10/GenericUSBXHCI.kext ]
then
	rm -rf /Volumes/EFI/EFI/CLOVER/kexts/10.10/GenericUSBXHCI.kext
fi