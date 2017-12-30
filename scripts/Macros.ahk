; Init
#NoEnv
SendMode, Input
SetWorkingDir, %A_ScriptDir%
#SingleInstance, force

F24:: ; ...yes.

; Read the Key
FileRead, k, F:\Data\Documents\Programs\luamacros\v2\scripts\key.temp

if (k = "num0")
	Send, 0
else if (k = "num1")
	Send, 1
else if (k = "num2")
	Send, 2
else if (k = "num3")
	Send, 3
else if (k = "num4")
	Send, 4
else if (k = "num5")
	Send, 5
else if (k = "num6")
	Send, 6
else if (k = "num7")
	Send, 7
else if (k = "num8")
	Send, 8
else if (k = "num9")
	Send, 9
else if (k = "numDiv")
	Send, woah
else if (k = "numMult")
	Send, dude
else if (k = "numSub")
	Send, nice
else if (k = "numAdd")
	Send, bro
else if (k = "backspace")
	Send, oh
else if (k = "enter")
	Send, no