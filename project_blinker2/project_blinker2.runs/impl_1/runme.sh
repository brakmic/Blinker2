#!/bin/sh

# 
# PlanAhead(TM)
# runme.sh: a PlanAhead-generated Runs Script for UNIX
# Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=C:/bin/Xilinx/14.7/ISE_DS/EDK/bin/nt64;C:/bin/Xilinx/14.7/ISE_DS/EDK/lib/nt64;C:/bin/Xilinx/14.7/ISE_DS/ISE/bin/nt64;C:/bin/Xilinx/14.7/ISE_DS/ISE/lib/nt64;C:/bin/Xilinx/14.7/ISE_DS/common/bin/nt64;C:/bin/Xilinx/14.7/ISE_DS/common/lib/nt64:C:/bin/Xilinx/14.7/ISE_DS/PlanAhead/bin
else
  PATH=C:/bin/Xilinx/14.7/ISE_DS/EDK/bin/nt64;C:/bin/Xilinx/14.7/ISE_DS/EDK/lib/nt64;C:/bin/Xilinx/14.7/ISE_DS/ISE/bin/nt64;C:/bin/Xilinx/14.7/ISE_DS/ISE/lib/nt64;C:/bin/Xilinx/14.7/ISE_DS/common/bin/nt64;C:/bin/Xilinx/14.7/ISE_DS/common/lib/nt64:C:/bin/Xilinx/14.7/ISE_DS/PlanAhead/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD=`dirname "$0"`
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep ngdbuild -intstyle ise -p xc6slx9tqg144-3 -dd _ngo -uc "blinker2.ucf" "blinker2.edf"
EAStep map -intstyle pa -w -r 4 -ol high "blinker2.ngd"
EAStep par -intstyle pa "blinker2.ncd" -w "blinker2_routed.ncd" -ol high
EAStep trce -intstyle ise -o "blinker2.twr" -v 3 -l 30 -nodatasheet -fastpaths "blinker2_routed.ncd" "blinker2.pcf"
EAStep xdl -secure -ncd2xdl -nopips "blinker2_routed.ncd" "blinker2_routed.xdl"
