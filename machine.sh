# Reminder: this is a script executed by a source script
# so do not check on prompt

# Darwin
if(`uname` == "Darwin") then
	echo ".darwinrc"
# Linux: distinguishing between jlab and non-jlab
else if(`hostname -d` == "jlab.org" ) then
	echo ".jlabrc"
else
	echo ".linuxrc"
endif




