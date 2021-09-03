#SingleInstance, force
#NoEnv

#w:: run, msedge.exe

!d:: run, "C:\Users\LiteOS\AppData\Local\Discord\app-1.0.9002\Discord.exe"
!s:: run, "C:\Users\LiteOS\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Spotify.lnk" 

#Enter:: 
Sleep, 500
IfWinNotExist, ahk_class CASCADIA_HOSTING_WINDOW_CLASS
    run, "C:\Program Files\WindowsApps\Microsoft.WindowsTerminal_1.9.1942.0_x64__8wekyb3d8bbwe\WindowsTerminal.exe"
WinActivate, ahk_class CASCADIA_HOSTING_WINDOW_CLASS
Return

#c:: run, "code"

#b:: run, "C:\Program Files\Bitwarden\Bitwarden.exe"

#+r:: Reload
#+e:: run, "./edit.bat"

!q:: !f4