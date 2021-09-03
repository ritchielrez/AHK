#SingleInstance, force
#NoEnv

#w:: run, msedge.exe

!d:: run, "C:\Users\LiteOS\AppData\Local\Discord\app-1.0.9002\Discord.exe"
!s:: run, "C:\Users\LiteOS\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Spotify.lnk" 

#Enter:: 
; Waits for the program to launch
Sleep, 250

; Launches Windows Terminal
run, "C:\Program Files\WindowsApps\Microsoft.WindowsTerminal_1.9.1942.0_x64__8wekyb3d8bbwe\WindowsTerminal.exe"

; Activates it
WinActivate, ahk_class CASCADIA_HOSTING_WINDOW_CLASS
Return

#c:: run, "code" ; Launches Vscode

#b:: 
; Waits for the program to launch
Sleep, 250

; Checks if Bitwarden already running, if it's, activates it. Otherwise launches the app
IfWinNotExist, ahk_exe Bitwarden.exe
    run, "C:\Program Files\Bitwarden\Bitwarden.exe"
WinActivate, ahk_exe Bitwarden.exe
Return

#+r:: Reload
#+e:: run, "./edit.bat" ; runs my edit batch script to open vscode to edit this script

!q:: !f4 ; When you press Alt+q, it sends to windows the Alt+F4 shortcut