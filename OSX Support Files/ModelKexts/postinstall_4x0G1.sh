#!/bin/bash

if [ -d /Volumes/EFI/EFI/CLOVER/kexts/10.9/JMB38X.kext ]
then
	rm -rf /Volumes/EFI/EFI/CLOVER/kexts/10.9/JMB38X.kext
fi

if [ -d /Volumes/EFI/EFI/CLOVER/kexts/10.9/HSSDBlockStorage.kext ]
then
	rm -rf /Volumes/EFI/EFI/CLOVER/kexts/10.9/HSSDBlockStorage.kext
fi

if [ -d /Volumes/EFI/EFI/CLOVER/kexts/10.9/ACPIPoller.kext ]
then
	rm -rf /Volumes/EFI/EFI/CLOVER/kexts/10.9/ACPIPoller.kext
fi