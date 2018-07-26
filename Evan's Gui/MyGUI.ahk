#include C:\Users\estone\Desktop\Evan's AHK\Libraries\GUILibrary.ahk 
#persistent 
#SingleInstance, force 
#NoTrayIcon

DetectHiddenWindows, On
SetTitleMatchMode, 2

ButtonArray := ["MyScript", "ETemplates", "excel", "AHKEdit", "CypherGUI"]

TapArray := ["ERefSheet", "FunctionRefSheet", "HotStringRef", "CustomAHKView", "Reload"]

BuildButtonArray(5, 15, 200, 30, 5, ButtonArray)
BuildTapArray(210, 15, 200, 30, 5, TapArray)

Gui, Add, Radio, x25 y240 vRadioOn gTOP_ON, AHK window always displayed
Gui, Add, Radio, x210 y240 Checked vRadioOff gTOP_OFF, AHK window not always displayed 

;BuildTap("Exit", "ExitAll", 107, 265, 200, 30)
;BuildGui("MyGui", 1000, 1000)
Gui, Show, h300 w415 

return 

;----------------------------------- MYSCRIPT BUTTON -------------------------------------------------------------------------------------------------------------
MyScriptOn:
{
	OnButton("MyScript")
	return
}

MyScriptOff:
{
	OffButton("MyScript")
	return 
}

;----------------------------------- ETEMPLATES BUTTON -------------------------------------------------------------------------------------------------------------

ETemplatesOn:
{
	OnButton("ETemplates")
	return 
}

ETemplatesOff:
{
	OffButton("ETemplates")
	return 
}

;----------------------------------- EXCEL BUTTON -------------------------------------------------------------------------------------------------------------

excelOn:
{
	OnButton("excel")
	return
}

excelOff:
{
	OffButton("excel")
	return 
}

;----------------------------------- AHK EDITOR BUTTON -------------------------------------------------------------------------------------------------------------

AHKEditOn:
{
	OnButton("AHKEdit")
	return 
}

AHKEditOff:
{
	OffButton("AHKEdit")
	return 
}

;----------------------------------- CYPHER GUI -------------------------------------------------------------------------------------------------------------
CypherGUIOn:
{
	OnButton("CypherGUI")
	return
}

CypherGUIOff:
{
	OffButton("CypherGUI")
	return 
}
;----------------------------------- RADIO -------------------------------------------------------------------------------------------------------------
TOP_ON:
{
	Gui, +AlwaysOnTop
	return
}

TOP_OFF:
{
	WinSet, AlwaysOnTop, Off 
	return 
}
;----------------------------------- TAP BUTTONS -------------------------------------------------------------------------------------------------------------
ERefSheetOn:
{
	Tap("ERefSheet")
	return 
}

FunctionRefSheetOn:
{
	Tap("FunctionRefSheet")
	return 
}

HotStringRefOn:
{
	Tap("HotStringRef")
	return 
}

CustomAHKViewOn:
{
	Tap("CustomAHKView")
	return 
}

ExitOn:
{
	ExitAllArray(ButtonArray, TapArray)
	return 
}

ReloadOn:
{
	ExitAllArray(ButtonArray, TapArray)
	Reload 
	return 
}

;----------------------------------- GUI CLOSE -------------------------------------------------------------------------------------------------------------

GuiClose:
ExitAllArray(ButtonArray, TapArray)
ExitApp

