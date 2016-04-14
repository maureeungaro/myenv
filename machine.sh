#!/bin/csh -f
# For macs (not jlab)
if(`uname` == "Darwin" && `hostname -s` != "jlabm1") then
	echo ".darwinrc"
# For claspc machines
else if(`hostname` == "claspc17.jlab.org" || `hostname` == "claspc26.jlab.org" ) then
	echo "claspcrc"
# For DAQ machines
else if(`hostname` == "cdaql3.jlab.org" ) then
	echo ".cdaqrc"
# For JLAB machines
else if(`hostname -f | awk -F. '{print $2}'` == "jlab") then
	echo ".jlabrc"
else if(`uname` == "Linux") then
	echo ".linuxrc"
endif
