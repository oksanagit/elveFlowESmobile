rem set apth to your base
set PATH=C:\epics\epics-base\bin\windows-x64-static;^
C:\epics\elveFlow\elveFlowSupport\os\windows-x64;^
%PATH%
rem set your EPICS_HOST_ARCH
set EPICS_HOST_ARCH=windows-x64-static
..\..\bin\windows-x64-static\elveFlowESmobile.exe st.cmd
pause