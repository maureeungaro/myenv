#!/usr/bin/python3

import os
import platform

osreleasVersion = ''
compilerVersion = ''

# Darwin
if platform.system() == 'Darwin':
	# Getting macos version
	# platform.mac_ver() returns:
	# ('10.15.3', ('', '', ''), 'x86_64')
	version = platform.mac_ver()[0]
	# Examples: 10.15.3 or 11.1
	tags = version.split('.')
	osreleasVersion = 'macosx' + tags[0] + '.' + tags[1]

	# Getting clang version
	# This assumes a return from clang like this:
	#
	# Apple clang version 11.0.0 (clang-1100.0.33.17)
	# Target: x86_64-apple-darwin19.3.0
	# Thread model: posix
	# InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin

	compiler = os.popen('clang --version').readlines()[0] # first line of output above
	compilerVersion = 'clang' + compiler.split()[3] # clang version, see above

elif platform.system() == 'Linux':

    if os.path.exists('/etc/redhat-release'):
        with open('/etc/redhat-release') as f:
          columns = f.read().strip().split()
          osreleasVersion = columns[0]+columns[3]
    else:
      raise ValueError('Unsupported Linux Version')

    compilerVersion = os.popen('gcc --version').readlines()
    compilerVersion = 'gcc'+compilerVersion[0].split()[2]

else:
    raise ValueError(('Unsupported platform: '+platform.system()))

osname = platform.system() + '_' + osreleasVersion
osname += '-' + compilerVersion

print (osname)

