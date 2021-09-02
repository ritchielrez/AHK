#NoEnv
#SingleInstance, force

#q::
WinGetTitle, Title, A
PostMessage, 0x112, 0xF060,,, %Title%
return
