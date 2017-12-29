; Init
#NoEnv
SendMode, Input
SetWorkingDir, %A_ScriptDir%
#SingleInstance, force

F24:: ; ...yes.

; Read the Key
FileRead, key, F:\Data\Documents\Programs\luamacros\v2\scripts\key.temp

if (key = "num1")
	MsgBox, , AHK, woah dude spicy,

/*
; Check for Buttons
NumpadAdd::Send, Add
NumpadSub::Send, Subtract
NumpadDiv::Send, Divide
NumpadMult::Send, Multiply
; BackSpace::Send, Backspace
; Enter::Send, Enter
Numpad0::Send, 0
Numpad1::Send, 1
Numpad2::Send, 2
Numpad3::Send, 3
Numpad4::Send, 4
Numpad5::Send, 5
Numpad6::Send, 6
Numpad7::Send, 7
Numpad8::Send, 8
Numpad9::Send, 9
*/