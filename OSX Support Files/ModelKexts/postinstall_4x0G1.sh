#!/bin/bash


if [ -d /Volumes/EFI/EFI/CLOVER/kexts/10.9/ACPIPoller.kext ]
then
	rm -rf /Volumes/EFI/EFI/CLOVER/kexts/10.9/ACPIPoller.kext
fi

if [ -d /Volumes/EFI/EFI/CLOVER/kexts/10.10/ACPIPoller.kext ]
then
	rm -rf /Volumes/EFI/EFI/CLOVER/kexts/10.10/ACPIPoller.kext
fi