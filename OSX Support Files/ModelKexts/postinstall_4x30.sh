#!/bin/bash
set -x

if [ -d /Volumes/EFI/EFI/CLOVER/kexts/10.9/AppleIntelE1000e.kext ]
then
	rm -rf /Volumes/EFI/EFI/CLOVER/kexts/10.9/AppleIntelE1000e.kext
fi

if [ -d /Volumes/EFI/EFI/CLOVER/kexts/10.10/AppleIntelE1000e.kext ]
then
	rm -rf /Volumes/EFI/EFI/CLOVER/kexts/10.10/AppleIntelE1000e.kext
fi