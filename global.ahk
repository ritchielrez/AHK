#SingleInstance, force
#NoEnv

#w:: run, firefox.exe

#+d:: 
; Waits program to launch
;Sleep, 100

; Checks if Discord already running, if it's, activates it. Otherwise launches the app
IfWinNotExist, ahk_exe Discord.exe
    run, "C:\Users\ritux\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk"
WinActivate, ahk_exe Discord.exe
;run, "C:\Users\ritch\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk"
Return

!s:: run, "C:\Users\ritch\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Spotify.lnk" 

#Enter:: 
; Waits for the program to launch
Sleep, 250

; Launches Windows Terminal
run, "wt"

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
#+e:: run, "./edit.bat" ; runs my edit batch script to open sublime text to edit this script

!q:: !f4 ; When you press Alt+q, it sends to windows the Alt+F4 shortcut