# LS Color 
- generator: https://geoff.greer.fm/lscolors/
- see pics for order and colors



# ZSH goodies

## multiIO: 

system_profiler SPHardwareDataType >hardwareprofile.txt | awk '/Serial Number/ { print $4 }' >&1 >serialnumber.txt

recursive globbing:

You can use the ** to denote an arbitrary string that can span multiple directories in a path
echo /opt/jlab_software/**/scons_bm


## variable type:

fpath is function path

% echo ${(t)fpath}
array-special
% echo ${(t)FPATH}
scalar-special


## Also nice: 

path+=~/bin

## Suffix Aliases

alias -s txt="open -t"
When you then type a path ending with .txt and no command, zsh will execute open -t /path/to/file.txt.
(The open -t command opens a file in the default application)

You can use other command line tools for the suffix alias:

alias -s log="tail -f"
Then, typing /var/log/install.log will show the last lines of that file and update the output when the file changes



## splitting: zsh does not split

wordlist="one two three"
wordarray=( $wordlist )

for word in $wordarray; do
echo "->$word<-"
done

#output
->one two three<-



so? how to split?

array=(${(ps:\n:)"$(cmd)"})

p is to enable those \x expansions. As ps:\n: is a common one, it's got a shorter alias: f (to split on line feeds):

array=(${(f)"$(cmd)"})

Example: see zfunction dockerRemoveAllContainers

## file list

fileList=(/Applications/*)

print $#list   number of files in that dir

print -l $list[1,3]   print between 1 and 2  



## hash variables

declare -A hash

hash[brown]="Mmm..  hash browns"

hash[table]="clever data structure"
 
print ${hash[brown]}


## loops

echo "Bash version ${BASH_VERSION}..."
for i in {0..10..2}
do 
echo "Welcome $i times"
done


## conditionals


