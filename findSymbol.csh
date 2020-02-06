set symbol = $1

foreach f (`\ls *.a *.dylib`)
	echo ------------
	echo $f $f $f
	echo ------------
	nm -a $f | grep $symbol | grep -v U
end
