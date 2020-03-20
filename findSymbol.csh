#!/bin/tcsh
set symbol = $1

# removing the undefined symbols in library " U "
foreach f (`\ls *.a *.dylib`)
	echo ------------
	echo $f
	nm -a $f | grep $symbol | grep -v " U "
end
