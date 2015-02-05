@echo --


@rem ###################################
@echo Setting general Cygwin environment
@rem ###################################
@set PATH=g:\bin;%PATH%


@rem #######################################
@echo Setting environment for using ssh, svn
@rem #######################################
@set PATH=D:\ssh;D:\Subversion\bin;%PATH%
@set APR_ICONV_PATH=D:\Subversion\iconv
@set EDITOR=notepad

   
@rem #####################################
@echo Setting environment for using mysql
@rem ##################################### 
@set MYSQL=D:\MYSQL
@set PATH=%MYSQL%\bin;%PATH%
@set LIB=%MYSQL%\lib\opt;%LIB%
@set LIBPATH=%MYSQL%\lib\opt;%LIBPATH%


@rem ##########################################
@echo Setting environment for using EVIO, Expat
@rem ##########################################
@set EVIO=D:\evio
@set LIB=%EVIO%\lib;%LIB%
@set EXPAT=D:\Expat
@set LIBPATH=%EXPAT%\bin;%EVIO%\lib;%LIBPATH%


@rem #####################################
@echo Setting environment for using CLHEP.
@rem #####################################
@set CLHEP_BASE_DIR=D:\clhep
@set LIB=%CLHEP_BASE_DIR%\lib;%LIB%;


@rem ###########################################
@echo Setting environment for using pyton, scons
@rem ###########################################
@set PATH=D:\Python26;D:\Python26\Scripts;%PATH%
@set PYTHONPATH=D:\pyscripts;%PYTHONPATH%


@rem #################################
@echo Setting environment for using Qt
@rem #################################
@set QTDIR=D:\qt\4.6.2
@set PATH=%QTDIR%\bin;%PATH%
@set LIB=%QTDIR%\lib;%LIB%;
@set INCLUDE=%QTDIR%\include;%INCLUDE%
@set LIBPATH=%QTDIR%\lib;%LIBPATH%


@rem ############################################
@echo Setting environment for using Microsoft SDK
@rem ############################################
@set MSSDK=C:\Program Files (x86)\Microsoft Visual Studio 9.0\VC
@set INCLUDE=%MSSDK%\Include;C:\Program Files\Microsoft SDKs\Windows\v6.0A\Include;%INCLUDE%
@set MSLIBS=%MSSDK%\lib
@set SDKLIBS=C:\Program Files\Microsoft SDKs\Windows\v6.0A\Lib



@rem ######################################
@echo Setting environment for using Geant4.
@rem ######################################
@set MAKECMD=make
@set G4SYSTEM=WIN32-VC
@set G4INSTALL=D:\geant4\geant4_9_3_p01
@set G4WORKDIR=%G4INSTALL%
@set PATH=%G4INSTALL\bin%;%PATH%
@set LIB=%G4INSTALL%\lib;%LIB%;
@set G4LIB=%G4INSTALL%\lib;
@set G4TMP=%G4INSTALL%\tmp;

@set G4LEVELGAMMADATA=D:\geant4\data\PhotonEvaporation2.0
@set G4RADIOACTIVEDATA=D:\geant4\data\RadioactiveDecay3.2
@set G4LEDATA=D:\geant4\data\G4EMLOW5.1
@set NeutronHPCrossSections=D:\geant4\data\G4NDL3.12
@set G4NEUTRONHPDATA=D:\geant4\data\G4NDL3.12
@set G4ABLADATA=D:\geant4\data\G4ABLA3.0

@set G4UI_BUILD_WIN32_SESSION=1
@set G4UI_USE_WIN32=1
@set G4VIS_USE_OPENGLWIN32=1
@set G4VIS_BUILD_OPENGLWIN32_DRIVER=1
@set G4VIS_USE_OPENGLWIN32=1
@set G4UI_BUILD_QT_SESSION=1
@set G4UI_USE_QT=1
@set G4VIS_BUILD_OPENGLQT_DRIVER=1
@set G4VIS_USE_OPENGLQT=1

@echo --








