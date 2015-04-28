#!/bin/sh

let SANDY_BRIDGE=2
let IVY_BRIDGE=4
let gBridgeType=-1
let gProcessorNumber=0
let gTypeCPU=0

gMobileSandyBridgeCPUList=(
# i7 Mobile Extreme Series
i7-2960XM,55,800,2700,3700,4,8
i7-2920XM,55,800,2500,3500,4,8
# i7 Mobile Series
i7-2860QM,45,800,2500,3600,4,8
i7-2820QM,45,800,2300,3400,4,8
i7-2760QM,45,800,2400,3500,4,8
i7-2720QM,45,800,2200,3300,4,8
i7-2715QE,45,800,2100,3000,4,8
i7-2710QE,45,800,2100,3000,4,8
i7-2677M,17,800,1800,2900,2,4
i7-2675QM,45,800,2200,3100,4,8
i7-2670QM,45,800,2200,3100,4,8
i7-2675M,17,800,1600,2700,2,4
i7-2655LE,25,800,2200,2900,2,4
i7-2649M,25,800,2300,3200,2,4
i7-2640M,35,800,2800,3500,2,4
i7-2637M,17,800,1700,2800,2,4
i7-2635QM,45,800,2000,2900,4,8
i7-2630QM,45,800,2000,2900,4,8
i7-2629M,25,800,2100,3000,2,4
i7-2620M,35,800,2700,3400,2,4
i7-2617M,17,800,1500,2600,2,4
i7-2610UE,17,800,1500,2400,2,4
# i5 Mobile Series
i5-2467M,17,800,1600,2300,2,4
i5-2450M,35,800,2300,3100,2,4
i5-2435M,35,800,2400,3000,2,4
i5-2430M,35,800,2400,3000,2,4
i5-2410M,35,800,2300,2900,2,4
i5-2557M,17,800,1700,2700,2,4
i5-2540M,35,800,2600,3300,2,4
i5-2537M,17,800,1400,2300,2,4
i5-2520M,35,800,2500,3200,2,4
i5-2515E,35,800,2500,3100,2,4
i5-2510E,35,800,2500,3100,2,4
# i3 2300 Mobile Series
i3-2377M,17,800,1500,0,2,4
i3-2370M,35,800,2400,0,2,4
i3-2367M,17,800,1400,0,2,4
i3-2365M,17,800,1400,0,2,4
i3-2357M,17,800,1300,0,2,4
i3-2350M,35,800,2300,0,2,4
i3-2348M,35,800,2300,0,2,4
i3-2340UE,17,800,1300,0,2,4
i3-2330M,35,800,2200,0,2,4
i3-2330E,35,800,2200,0,2,4
i3-2328M,35,800,2200,0,2,4
i3-2312M,35,800,2100,0,2,4
i3-2310M,35,800,2100,0,2,4
i3-2310E,35,800,2100,0,2,4
)

gMobileIvyBridgeCPUList=(
# i7-3800 Mobile Processor Series
i7-3840QM,45,1200,2800,3800,4,8
i7-3820QM,45,1200,2700,3700,4,8
# i7-3700 Mobile Processor Series
i7-3740QM,45,1200,2700,3700,4,8
i7-3720QM,45,1200,2600,3600,4,8
# i7-3600 Mobile Processor Series
i7-3689Y,13,0,1500,2600,2,4
i7-3687U,17,800,2100,3300,2,4
i7-3667U,17,800,2000,3200,2,4
i7-3635QM,45,0,2400,3400,4,8
i7-3620QM,35,0,2200,3200,4,8
i7-3632QM,35,0,2200,3200,4,8
i7-3630QM,45,0,2400,3400,4,8
i7-3615QM,45,0,2300,3300,4,8
i7-3615QE,45,0,2300,3300,4,8
i7-3612QM,35,0,2100,3100,4,8
i7-3612QE,35,0,2100,3100,4,8
i7-3610QM,45,0,2300,3300,4,8
i7-3610QE,45,0,2300,3300,4,8
# i7-3500 Mobile Processor Series
i7-3555LE,25,0,2500,3200,2,4
i7-3540M,35,1200,3000,3700,2,4
i7-3537U,17,800,2000,3100,2,4
i7-3520M,35,1200,2900,3600,2,4
i7-3517UE,17,0,1700,2800,2,4
i7-3517U,17,800,1900,3000,2,4
# i5-3600 Mobile Processor Series
i5-3610ME,35,0,2700,3300,2,4
# i5-3400 Mobile Processor Series
i5-3439Y,13,0,1500,2300,2,4
i5-3437U,17,800,1900,2900,2,4
i5-3427U,17,800,1800,2800,2,4
# i5-3300 Mobile Processor Series
i5-3380M,35,1200,2900,3600,2,4
i5-3360M,35,1200,2800,3500,2,4
i5-3340M,35,1200,2700,3400,2,4
i5-3339Y,13,0,1500,2000,2,4
i5-3337U,17,0,1800,2700,2,4
i5-3320M,35,1200,2600,3300,2,4
i5-3317U,17,0,1700,2600,2,4
# i5-3200 Mobile Processor Series
i5-3230M,35,1200,2600,3200,2,4
i5-3210M,35,1200,2500,3100,2,4
# i3-3200 Mobile Processor Series
i3-3239Y,13,0,1400,0,2,4
i3-3227U,17,800,1900,0,2,4
i3-3217UE,17,0,1600,0,2,4
i3-3217U,17,0,1800,0,2,4
# i3-3100 Mobile Processor Series
i3-3130M,35,1200,2600,0,2,4
i3-3120ME,35,0,2400,0,2,4
i3-3120M,35,0,2500,0,2,4
i3-3110M,35,0,2400,0,2,4
)

function _getCPUNumberFromBrandString
{
  local modelSpecified=$1
  #
  # Get CPU brandstring
  #
  gBrandString=$(echo `sysctl machdep.cpu.brand_string` | sed -e 's/machdep.cpu.brand_string: //')
  #
  # Show brandstring (this helps me to debug stuff).
  #
  printf "Brandstring '${gBrandString}'\n\n"

  if [[ $modelSpecified -eq 0 ]];
    then
      #
      # Save default (0) delimiter
      #
      local ifs=$IFS
      #
      # Change delimiter to a space character
      #
      IFS=" "
      #
      # Split brandstring into array (data)
      #
      local data=($gBrandString)
    
      IFS=$ifs

      let length=${#data[@]}

      if (( length > 7 ));
        then
          echo 'Warning: The brandstring has an unexpected length!'
      fi
      #
      # Is this a Xeon processor model?
      #
      if [[ "${data[1]}" == "Xeon(R)" ]];
        then
          #
          # Yes. Check for lower/upper case 'v' or '0' for OEM processors.
          #
          if [[ "${data[4]}" =~ "v" || "${data[4]}" =~ "V" ]];
            then
                #
                # Use a lowercase 'v' because that is what we use in our data.
                #
                gProcessorNumber="${data[3]} v${data[4]:1:1}"
            elif [[ "${data[4]}" == "0" ]];
              then
                #
                # OEM CPU's have been reported to use a "0" instead of "v2"
                # and thus let's use that to make our data match the CPU.
                #
                # -c argument used?
                #
                if [[ $gBridgeType -gt 0 ]];
                  then
                    #
                    # Yes. Check target CPU model (represented here as 'gBridgeType').
                    #
                    case "$gBridgeType" in
                      $SANDY_BRIDGE) gProcessorNumber="${data[3]}"
                                     ;;
                      $IVY_BRIDGE)   gProcessorNumber="${data[3]} v2"
                                     ;;
                    esac
                  else
                    #
                    # No. Check CPU model.
                    #
                    case $(_getCPUModel) in
                      0x2A|0x2C|0x2D) gProcessorNumber="${data[3]}"
                                      ;;
                      0x3A|0x3B|0x3E) gProcessorNumber="${data[3]} v2"
                                      ;;
                    esac
                fi
          fi
        else
          #
          # All other non-Xeon processor models.
          #
          gProcessorNumber="${data[2]}"
      fi
  fi
}


#
#--------------------------------------------------------------------------------
#

function _getCPUDataByProcessorNumber
{
  #
  # Local function definition
  #
  function __searchList()
  {

    let targetType=0

    case $1 in
        2) local cpuSpecLists=("gMobileSandyBridgeCPUList[@]")
           ;;
        4) local cpuSpecLists=("gMobileIvyBridgeCPUList[@]")
           ;;
    esac

    for cpuList in ${cpuSpecLists[@]}
    do
      let targetType+=1
      local targetCPUList=("${!cpuList}")

      for cpuData in "${targetCPUList[@]}"
      do
      	IFS=","
        data=($cpuData)

        if [[ ${data[0]} == $gProcessorNumber ]];
          then
            gProcessorData="$cpuData"
            #
            # Is gBridgeType still uninitialised i.e. is argument -c not used?
            #
            if [[ $gBridgeType -eq -1 ]];
              then
                let gBridgeType=$1
            fi

            return
        fi
      done
    done

    IFS=$ifs
  }

  #
  # Local function callers
  #
  __searchList $SANDY_BRIDGE

  if [[ $gBridgeType -eq -1 ]];
    then

      __searchList $IVY_BRIDGE
  fi

}

_getCPUNumberFromBrandString
_getCPUDataByProcessorNumber

case $gBridgeType in
       2)  bridgeTypeString="Sandy Bridge"
		  
          ;;
       4)  bridgeTypeString="Ivy Bridge"
		  	if [ -d /System/Library/Extensions/ACPI_SMC_PlatformPlugin_MacBookPro9_2.kext ]
			then
				rm -rf /System/Library/Extensions/ACPI_SMC_PlatformPlugin_MacBookPro9_2.kext
				rm -rf /System/Library/Extensions/AppleGraphicsPowerManagement_MacBookPro9_2.kext
			fi
          ;;
       *)  bridgeTypeString="Unknown"
          ;;
  esac

  echo $bridgeTypeString;



if [ -d /Volumes/EFI/EFI/CLOVER/kexts/10.9/AppleIntelE1000e.kext ]
then
	rm -rf /Volumes/EFI/EFI/CLOVER/kexts/10.9/AppleIntelE1000e.kext
fi

if [ -d /Volumes/EFI/EFI/CLOVER/kexts/10.10/AppleIntelE1000e.kext ]
then
	rm -rf /Volumes/EFI/EFI/CLOVER/kexts/10.10/AppleIntelE1000e.kext
fi

if [ -d /Volumes/EFI/EFI/CLOVER/kexts/10.9/GenericUSBXHCI.kext ]
then
	rm -rf /Volumes/EFI/EFI/CLOVER/kexts/10.9/GenericUSBXHCI.kext
fi

if [ -d /Volumes/EFI/EFI/CLOVER/kexts/10.10/GenericUSBXHCI.kext ]
then
	rm -rf /Volumes/EFI/EFI/CLOVER/kexts/10.10/GenericUSBXHCI.kext
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