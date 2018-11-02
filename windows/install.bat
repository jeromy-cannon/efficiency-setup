@rem @echo off
@rem -- init
echo username=%username%
set _basedir=C:\Users\%username%\Documents\Quick Access Shortcuts
echo _basedir="%_basedir%"
if exist "%_basedir%" (
    echo %_basedir% already exists.
) else (
    mkdir %_basedir%
)
@rem -- run
mklink /J "%_basedir%\MyStartMenu" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows"
mklink /J "%_basedir%\AllStartMenu" "C:\ProgramData\Microsoft\Windows\Start Menu"

@rem -- cleanup
set _basedir=
