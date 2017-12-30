; Init
#NoEnv
SendMode, Input
SetWorkingDir, %A_ScriptDir%
#SingleInstance, force

F24:: ; ...yes.

; Read the Key
FileRead, k, F:\Data\Documents\Programs\luamacros\v2\scripts\key.temp

; Detect the Key
if (k = "num0") {
	a = False
	if (A_TimeSincePriorHotkey>75 || A_PriorHotkey<>A_ThisHotkey)
		a = False
	else
		a = True

	if (%a% = True) {
		Send, ^+#{PrintScreen}
	} else {
		; Open a Terminal and Run: git init
		MsgBox, Title
	}
}
else if (k = "numDelete")
	Run, www.github.com/new
else if (k = "num1")
	Send, ^!{PrintScreen}
else if (k = "num2") {
	FileRead, lenny, F:\Data\Documents\Programs\luamacros\v2\scripts\lenny.txt
	Send, %lenny%
}
else if (k = "num3")
	SendInput, % Chr(0x1F914)
else if (k = "num4")
	Send, ^+{PrintScreen}
else if (k = "num5")
	Send, {Browser_Forward}
else if (k = "num6")
	Send, {Browser_Refresh}
else if (k = "num7")
	Send, ^+!{PrintScreen}
else if (k = "num8")
	Send, {Volume_Mute}
else if (k = "num9")
	Send, {Volume_Down}
else if (k = "numDiv")
	Send, {Media_Prev}
else if (k = "numMult")
	Send, {Media_Play_Pause}
else if (k = "numSub")
	Send, {Volume_Up}
else if (k = "numAdd")
	Send, {Browser_Back}
else if (k = "backspace")
	Send, {Media_Next}
else if (k = "enter")
	DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)