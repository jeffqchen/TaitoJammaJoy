# Microsoft Developer Studio Project File - Name="GamePort VxD Joy" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) External Target" 0x0106

CFG=GamePort VxD Joy - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "GamePort VxD Joy.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "GamePort VxD Joy.mak" CFG="GamePort VxD Joy - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "GamePort VxD Joy - Win32 Release" (based on "Win32 (x86) External Target")
!MESSAGE "GamePort VxD Joy - Win32 Debug" (based on "Win32 (x86) External Target")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""

!IF  "$(CFG)" == "GamePort VxD Joy - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Cmd_Line "NMAKE /f "GamePort VxD Joy.mak""
# PROP BASE Rebuild_Opt "/a"
# PROP BASE Target_File "GamePort VxD Joy.exe"
# PROP BASE Bsc_Name "GamePort VxD Joy.bsc"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Cmd_Line "C:\WINDOWS\COMMAND.COM /e:4096 /k c:\98DDK\bin\setenv.bat c:\98DDK free"
# PROP Rebuild_Opt "-cZ"
# PROP Target_File "digijoy.vxd"
# PROP Bsc_Name ""
# PROP Target_Dir ""

!ELSEIF  "$(CFG)" == "GamePort VxD Joy - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "GamePort_VxD_Joy___Win32_Debug"
# PROP BASE Intermediate_Dir "GamePort_VxD_Joy___Win32_Debug"
# PROP BASE Cmd_Line "NMAKE /f "GamePort VxD Joy.mak""
# PROP BASE Rebuild_Opt "/a"
# PROP BASE Target_File "GamePort VxD Joy.exe"
# PROP BASE Bsc_Name "GamePort VxD Joy.bsc"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "GamePort_VxD_Joy___Win32_Debug"
# PROP Intermediate_Dir "GamePort_VxD_Joy___Win32_Debug"
# PROP Cmd_Line "C:\WINDOWS\COMMAND.COM /e:4096 /k c:\98DDK\bin\setenv.bat c:\98DDK checked"
# PROP Rebuild_Opt "-cZ"
# PROP Target_File "Digijoy.vxd"
# PROP Bsc_Name ""
# PROP Target_Dir ""

!ENDIF 

# Begin Target

# Name "GamePort VxD Joy - Win32 Release"
# Name "GamePort VxD Joy - Win32 Debug"

!IF  "$(CFG)" == "GamePort VxD Joy - Win32 Release"

!ELSEIF  "$(CFG)" == "GamePort VxD Joy - Win32 Debug"

!ENDIF 

# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Group "Assembly Files"

# PROP Default_Filter "asm"
# Begin Source File

SOURCE=.\I386\Poll.asm
# End Source File
# Begin Source File

SOURCE=.\I386\Timing.asm
# End Source File
# End Group
# Begin Source File

SOURCE=.\I386\Debug.c
# End Source File
# Begin Source File

SOURCE=.\I386\Main.c
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\I386\Digijoy.h
# End Source File
# Begin Source File

SOURCE=.\I386\jeffdebug.h
# End Source File
# Begin Source File

SOURCE=.\I386\wolfjamma.h
# End Source File
# Begin Source File

SOURCE=.\I386\Wraps.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\Digijoy.rc
# End Source File
# End Group
# Begin Source File

SOURCE=.\Makefile
# End Source File
# Begin Source File

SOURCE=.\Makefile.inc
# End Source File
# Begin Source File

SOURCE=.\Sources
# End Source File
# End Target
# End Project
