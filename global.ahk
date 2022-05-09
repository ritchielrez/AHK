#SingleInstance, force
#NoEnv

#w:: 
; Checks if Edge already running, if it's, focuses on the window. If it's already focused,
; press Ctrl+Tab in the Microsoft Edge, otherwise just launch the app
IfWinNotExist, ahk_exe msedge.exe
    run, "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
if WinActive("ahk_exe msedge.exe")
    Send ^{tab}
else 
    WinActivate, ahk_exe msedge.exe
Return

#+d:: 
; Waits program to launch
;Sleep, 100

IfWinNotExist, ahk_exe Discord.exe
    run, "C:\Users\ritux\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk"
WinActivate, ahk_exe Discord.exe
;run, "C:\Users\ritch\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk"
Return

!s:: run, "C:\Users\ritch\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Spotify.lnk" 

#Enter:: 
; Waits for the program to launch
Sleep, 250

IfWinNotExist, ahk_exe alacritty.exe
    run, "alacritty.exe"
if WinActive("ahk_exe alacritty.exe")
    Send ^n

WinActivate, ahk_exe alacritty.exe
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
