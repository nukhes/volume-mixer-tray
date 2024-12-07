#Persistent
#SingleInstance
Menu, Tray, Icon, SndVol.exe, 1
Menu, Tray, NoStandard
Menu, Tray, Add, &Volume Mixer, SndVol
Menu, Tray, Add, &Close, Kill
Menu, Tray, Default, &Volume Mixer

SndVol:
    Run, SndVol.exe
    SetTitleMatchMode, 2
    WinWait, Volume Mixer
    WinMove, Volume Mixer,, A_ScreenWidth - 490, A_ScreenHeight - 380
Return

Kill:
    ExitApp
Return
