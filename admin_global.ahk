#NoEnv
#SingleInstance

#q:: ; Windows and C closes active window
WinGetTitle, Title, A
PostMessage, 0x112, 0xF060,,, %Title%
return
