#!/bin/tcsh
set symbol = $1

foreach f (`\ls *.a *.dylib`)
	echo ------------
	echo $f
	nm -a $f | grep $symbol 
end
